package T;

import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: renamed from: T.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0144u0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1158a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ RunnableC0144u0(int i2, boolean z2) {
        this.f1158a = i2;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 0;
        boolean z2 = this.b;
        switch (this.f1158a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                String str = z2 ? "true" : "false";
                try {
                    if (!I0.f.a(O0.j.X0(C0097m.v("getprop persist.launcher.app_monitor_disabled", 3000, null, new C0103n(i2))).toString(), str)) {
                        String str2 = "setprop persist.launcher.app_monitor_disabled " + str + "\nam force-stop com.flyme.auto.launcher";
                        I0.f.e(str2, "cmd");
                        C0097m.v(str2, 6000, null, new C0103n(i2));
                        Log.i("CentralWatchdog", "keepAlive: launcher app_monitor_disabled=" + str + " (launcher reiniciado p/ reler)");
                    }
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("keepAlive app_monitor prop: "), "CentralWatchdog");
                    return;
                }
                break;
            default:
                B3.f492a.a(z2 ? "CarPlay conectado" : "CarPlay desconectado");
                break;
        }
    }
}
