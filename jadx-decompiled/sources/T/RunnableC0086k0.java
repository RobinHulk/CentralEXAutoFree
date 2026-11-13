package T;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: renamed from: T.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0086k0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1027a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1029d;

    public /* synthetic */ RunnableC0086k0(int i2, CentralWatchdogService centralWatchdogService, String str) {
        this.f1027a = 2;
        this.b = centralWatchdogService;
        this.f1029d = i2;
        this.f1028c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1027a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                String str = this.f1028c;
                int i2 = this.f1029d;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    ProxyInfo proxyInfoBuildDirectProxy = ProxyInfo.buildDirectProxy(str, i2);
                    ConnectivityManager connectivityManager = (ConnectivityManager) centralWatchdogService.getSystemService(ConnectivityManager.class);
                    if (connectivityManager != null) {
                        ConnectivityManager.class.getMethod("setGlobalProxy", ProxyInfo.class).invoke(connectivityManager, proxyInfoBuildDirectProxy);
                        break;
                    }
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("setGlobalProxy erro: "), "CentralWatchdog");
                }
                try {
                    String strB = new I1(5555).b(8000, O0.l.n0("\n                    setenforce 0 2>/dev/null || true\n                    settings delete global http_proxy 2>/dev/null || true\n                    settings delete global global_http_proxy_exclusion_list 2>/dev/null || true\n                    settings put global global_http_proxy_host \"" + str + "\"\n                    settings put global global_http_proxy_port " + i2 + "\n                    echo \"PROXY_AUTO_SET=" + str + ':' + i2 + "\"\n                    "));
                    StringBuilder sb = new StringBuilder("Auto-proxy aplicado: ");
                    sb.append(strB);
                    Log.i("CentralWatchdog", sb.toString());
                    centralWatchdogService.sendBroadcast(new Intent("com.ex.auto.AUTO_PROXY_APPLIED").putExtra("ip", str).putExtra("port", i2));
                } catch (Exception e3) {
                    M.d0.n(e3, new StringBuilder("applyProxyToCentral erro: "), "CentralWatchdog");
                    return;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f1028c;
                int i3 = this.f1029d;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService2.L(i3 + 1, str2);
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int i4 = this.f1029d;
                String str3 = this.f1028c;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService3.U(i4 + 1, str3);
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService4 = this.b;
                String str4 = this.f1028c;
                centralWatchdogService4.V = str4;
                centralWatchdogService4.f2187X = str4;
                centralWatchdogService4.f2188Y = 5000L;
                centralWatchdogService4.w(this.f1029d, str4);
                break;
        }
    }

    public /* synthetic */ RunnableC0086k0(CentralWatchdogService centralWatchdogService, String str, int i2, int i3) {
        this.f1027a = i3;
        this.b = centralWatchdogService;
        this.f1028c = str;
        this.f1029d = i2;
    }
}
