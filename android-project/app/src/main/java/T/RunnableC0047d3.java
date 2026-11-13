package T;

import android.content.ContextWrapper;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.d3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0047d3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f935a = 0;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f938e;
    public final /* synthetic */ Object f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f939g;

    public /* synthetic */ RunnableC0047d3(TextView textView, String str, MainActivity mainActivity, String str2, Button button, Button button2) {
        this.f937d = textView;
        this.b = str;
        this.f938e = mainActivity;
        this.f936c = str2;
        this.f = button;
        this.f939g = button2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f939g;
        ContextWrapper contextWrapper = this.f938e;
        Object obj2 = this.f;
        String str = this.f936c;
        String str2 = this.b;
        switch (this.f935a) {
            case 0:
                int i2 = MainActivity.u0;
                this.f937d.setText(str2);
                MainActivity mainActivity = (MainActivity) contextWrapper;
                Toast.makeText(mainActivity, str2, 1).show();
                mainActivity.v("Apps", str);
                ((Button) obj2).setEnabled(true);
                ((Button) obj).setEnabled(true);
                mainActivity.f2388w.execute(new U1(23, mainActivity));
                break;
            default:
                List list = QuickAccessFloaterService.f2436j0;
                StringBuilder sb = new StringBuilder("\n                setenforce 0\n                ls -l ");
                M.d0.q(sb, str2, " 2>&1 || { echo \"ERRO_falta_ca_fix\"; exit 30; }\n                chown root:root ", str2, "; chmod 644 ");
                M.d0.q(sb, str2, "\n                chcon u:object_r:system_app_file:s0 ", str2, "\n                umount ");
                sb.append(str);
                sb.append(" 2>/dev/null || true\n                mount --bind ");
                sb.append(str2);
                sb.append(' ');
                M.d0.q(sb, str, "\n                restorecon -v ", str, " 2>/dev/null || true\n                rm -rf /data/dalvik-cache/*/system@app@ConnAdaptor*\n                ip link set ap0 down 2>/dev/null || true\n                am force-stop com.njda.adapter; am force-stop com.njda.aauto\n                for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do\n                  _s=$(getprop init.svc.AAutoMonitor); [ \"$_s\" != \"running\" ] && break; sleep 1; done\n                setprop ctl.restart AAutoMonitor\n                if grep -F ");
                sb.append((String) obj2);
                sb.append(" /proc/mounts >/dev/null 2>&1; then echo \"MOUNT_OK\"; else echo \"MOUNT_FAIL\"; fi\n            ");
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) contextWrapper;
                String strB = quickAccessFloaterService.b(70000, O0.l.n0(sb.toString()));
                quickAccessFloaterService.f2471a.post(new RunnableC0066g4(this.f937d, O0.j.x0(strB, "MOUNT_OK", false) && !O0.j.x0(strB, "ERRO", false), quickAccessFloaterService, (String) obj, 0));
                break;
        }
    }

    public /* synthetic */ RunnableC0047d3(QuickAccessFloaterService quickAccessFloaterService, String str, String str2, String str3, TextView textView, String str4) {
        this.f938e = quickAccessFloaterService;
        this.b = str;
        this.f936c = str2;
        this.f = str3;
        this.f937d = textView;
        this.f939g = str4;
    }
}
