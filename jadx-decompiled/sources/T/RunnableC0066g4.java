package T;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: renamed from: T.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0066g4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f976a;
    public final /* synthetic */ KeyEvent.Callback b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f979e;

    public /* synthetic */ RunnableC0066g4(TextView textView, boolean z2, QuickAccessFloaterService quickAccessFloaterService, String str, int i2) {
        this.f976a = i2;
        this.b = textView;
        this.f977c = z2;
        this.f978d = quickAccessFloaterService;
        this.f979e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String string;
        Serializable serializable = this.f979e;
        boolean z2 = this.f977c;
        Object obj = this.f978d;
        KeyEvent.Callback callback = this.b;
        switch (this.f976a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                TextView textView = (TextView) callback;
                textView.setText(z2 ? "▶ AA\n✓" : "▶ AA\n✗");
                ((QuickAccessFloaterService) obj).f2471a.postDelayed(new RunnableC0053e3(textView, (String) serializable, 1), 3000L);
                break;
            case 1:
                List list2 = QuickAccessFloaterService.f2436j0;
                TextView textView2 = (TextView) callback;
                textView2.setText(z2 ? "↺ AA\n✓" : "↺ AA\n✗");
                ((QuickAccessFloaterService) obj).f2471a.postDelayed(new RunnableC0053e3(textView2, (String) serializable, 2), 2000L);
                break;
            default:
                int i2 = MainActivity.u0;
                MainActivity mainActivity = (MainActivity) callback;
                mainActivity.d1();
                if (I0.f.a(((I0.l) obj).b, Boolean.valueOf(z2))) {
                    string = mainActivity.getString(z2 ? R.string.k_aeb_turned_on : R.string.k_aeb_turned_off);
                } else {
                    string = ((I0.i) serializable).f122a ? mainActivity.getString(R.string.k_aeb_sent_unconfirmed) : mainActivity.getString(R.string.k_aeb_write_failed);
                }
                I0.f.b(string);
                Toast.makeText(mainActivity, string, 0).show();
                break;
        }
    }

    public /* synthetic */ RunnableC0066g4(MainActivity mainActivity, I0.l lVar, boolean z2, I0.i iVar) {
        this.f976a = 2;
        this.b = mainActivity;
        this.f978d = lVar;
        this.f977c = z2;
        this.f979e = iVar;
    }
}
