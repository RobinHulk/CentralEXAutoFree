package T;

import android.os.Handler;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;

/* JADX INFO: loaded from: classes.dex */
public final class A3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f473a;

    public /* synthetic */ A3(int i2) {
        this.f473a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.f473a) {
            case 0:
                if (!B3.f496g) {
                    B3.f492a.a("poll");
                    Handler handler = B3.f500k;
                    if (handler != null) {
                        handler.postDelayed(this, 5000L);
                    }
                    break;
                }
                break;
            default:
                if (!B3.f496g) {
                    B3 b3 = B3.f492a;
                    MediaCenterAPI mediaCenterAPI = B3.f494d;
                    if (mediaCenterAPI != null && (obj = B3.f495e) != null && B3.f) {
                        if (!mediaCenterAPI.isServiceAlive()) {
                            B3.k();
                        } else if (B3.f505p == 1 && !B3.f514y) {
                            try {
                                String strQueryCurrentFocusClient = mediaCenterAPI.queryCurrentFocusClient(obj);
                                if (strQueryCurrentFocusClient == null || strQueryCurrentFocusClient.length() == 0) {
                                    mediaCenterAPI.requestPlay(obj);
                                }
                            } catch (Throwable th) {
                                M.d0.r(th, new StringBuilder("checkFocus IPC: "), "MediaCenterBridge");
                            }
                        }
                    }
                    Handler handler2 = B3.f500k;
                    if (handler2 != null) {
                        handler2.postDelayed(this, 10000L);
                    }
                    break;
                }
                break;
        }
    }
}
