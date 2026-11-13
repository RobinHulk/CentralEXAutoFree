package T;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.DpadFloaterService;

/* JADX INFO: renamed from: T.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0154w0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1189a;
    public final /* synthetic */ int b;

    public /* synthetic */ RunnableC0154w0(int i2, int i3) {
        this.f1189a = i3;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaController mediaController;
        int i2 = 0;
        switch (this.f1189a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                Y.b(this.b);
                break;
            case 1:
                int i3 = this.b;
                int i4 = DpadFloaterService.f2237i;
                try {
                    String str = "input keyevent " + i3;
                    I0.f.e(str, "cmd");
                    C0097m.v(str, 3000, null, new C0103n(i2));
                } catch (Exception e2) {
                    M.d0.n(e2, M.d0.h("keyevent ", i3, " falhou: "), "DpadFloater");
                    return;
                }
                break;
            case 2:
                int i5 = this.b;
                try {
                    String str2 = "input keyevent " + i5;
                    I0.f.e(str2, "cmd");
                    Log.i("SwcMediaControl", "dispatch: input keyevent " + i5 + " OK, saída=\"" + C0097m.v(str2, 3000, null, new C0103n(i2)) + '\"');
                } catch (Exception e3) {
                    M.d0.n(e3, M.d0.h("dispatch: input keyevent ", i5, " falhou: "), "SwcMediaControl");
                    return;
                }
                break;
            default:
                int i6 = this.b;
                Handler handler = Y.f849g;
                if (handler != null) {
                    RunnableC0026a0 runnableC0026a0 = Y.f851i;
                    if (i6 == 0) {
                        boolean z2 = Y.f850h != 0 && SystemClock.uptimeMillis() - Y.f850h >= 2000;
                        handler.removeCallbacks(runnableC0026a0);
                        Y.f850h = 0L;
                        if (!z2) {
                            B3 b3 = B3.f492a;
                            if (!B3.f515z && (mediaController = B3.f501l) != null) {
                                PlaybackState playbackState = mediaController.getPlaybackState();
                                if (playbackState != null && playbackState.getState() == 3) {
                                    i2 = 1;
                                }
                                try {
                                    if (i2 != 0) {
                                        mediaController.getTransportControls().pause();
                                    } else {
                                        mediaController.getTransportControls().play();
                                    }
                                    L3 l3 = L3.f671a;
                                    StringBuilder sb = new StringBuilder("mic do volante: ");
                                    sb.append(i2 != 0 ? "pause" : "play");
                                    sb.append(" em ");
                                    sb.append(mediaController.getPackageName());
                                    l3.b("MediaCenterBridge", sb.toString());
                                } catch (Throwable th) {
                                    M.d0.r(th, new StringBuilder("mic do volante: play/pause falhou: "), "MediaCenterBridge");
                                }
                            }
                        }
                        break;
                    } else if (i6 == 1) {
                        Y.f850h = SystemClock.uptimeMillis();
                        handler.removeCallbacks(runnableC0026a0);
                        handler.postDelayed(runnableC0026a0, 2000L);
                        break;
                    }
                }
                break;
        }
    }
}
