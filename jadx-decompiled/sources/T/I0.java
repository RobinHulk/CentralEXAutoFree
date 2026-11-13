package T;

import android.net.ConnectivityManager;
import android.net.Network;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final class I0 extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f623a;

    public I0(CentralWatchdogService centralWatchdogService) {
        this.f623a = centralWatchdogService;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        I0.f.e(network, "network");
        int[] iArr = CentralWatchdogService.d2;
        if (CentralWatchdogService.f2) {
            CentralWatchdogService centralWatchdogService = this.f623a;
            centralWatchdogService.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService, 18), 3000L);
        }
    }
}
