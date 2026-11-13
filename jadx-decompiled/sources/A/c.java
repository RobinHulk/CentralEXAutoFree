package A;

import H0.l;
import I0.f;
import T.L3;
import T.RunnableC0104n0;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import java.util.concurrent.ArrayBlockingQueue;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c(Object obj, int i2) {
        this.f1a = i2;
        this.b = obj;
    }

    @Override // H0.l
    public Object b(Object obj) {
        String string;
        int i2 = 1;
        Object obj2 = this.b;
        switch (this.f1a) {
            case 1:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((ArrayBlockingQueue) obj2).offer(bool);
                return v0.e.f4161c;
            case 2:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int[] iArr = CentralWatchdogService.d2;
                L3.f671a.b("CentralWatchdog", zBooleanValue ? "viagem zerada pelo toque no ícone da barra" : "toque no ícone da barra: NÃO zerou (odômetro ilegível)");
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) obj2;
                centralWatchdogService.f2190a.post(new RunnableC0104n0(i2, centralWatchdogService, zBooleanValue));
                return v0.e.f4161c;
            case 3:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i3 = MainActivity.u0;
                if (!zBooleanValue2) {
                    DialogC0209i dialogC0209i = (DialogC0209i) obj2;
                    if (dialogC0209i.isShowing()) {
                        dialogC0209i.dismiss();
                        L3.f671a.b("BanChecker", "bloqueio removido — este XDSN saiu da banlist");
                    }
                }
                return v0.e.f4161c;
            case 4:
                return Boolean.valueOf(!f.a(((ActivityInfo) obj).packageName, ((Context) obj2).getPackageName()));
            default:
                ActivityInfo activityInfo = (ActivityInfo) obj;
                CharSequence charSequenceLoadLabel = activityInfo.loadLabel((PackageManager) obj2);
                if (charSequenceLoadLabel == null || (string = charSequenceLoadLabel.toString()) == null) {
                    string = activityInfo.packageName;
                }
                return new v0.a(string, activityInfo.packageName);
        }
    }
}
