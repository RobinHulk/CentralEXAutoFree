package T;

import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0104n0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1059a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1060c;

    public /* synthetic */ RunnableC0104n0(int i2, CentralWatchdogService centralWatchdogService, boolean z2) {
        this.f1059a = i2;
        this.b = centralWatchdogService;
        this.f1060c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = false;
        switch (this.f1059a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    centralWatchdogService.getClass();
                    String string = O0.j.X0(CentralWatchdogService.c(5000, "settings get global global_http_proxy_host 2>/dev/null")).toString();
                    z2 = string.length() > 0 && !string.equals("null");
                } catch (Throwable unused) {
                }
                if (this.f1060c || z2) {
                    centralWatchdogService.f2190a.post(new RunnableC0044d0(centralWatchdogService, 17));
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr2 = CentralWatchdogService.d2;
                try {
                    Toast.makeText(centralWatchdogService2, centralWatchdogService2.getString(this.f1060c ? R.string.k_status_km_reset_done : R.string.k_status_km_reset_falhou), 0).show();
                } catch (Throwable unused2) {
                    return;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService3 = this.b;
                boolean z3 = this.f1060c;
                centralWatchdogService3.f2191a0 = false;
                if (!z3) {
                    CentralWatchdogService.f(centralWatchdogService3, true);
                } else {
                    centralWatchdogService3.f2192b0 = 0;
                }
                break;
        }
    }
}
