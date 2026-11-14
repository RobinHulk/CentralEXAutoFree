package T;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class S1 extends MediaController.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f789a;
    public final /* synthetic */ Object b;

    public /* synthetic */ S1(Object obj, int i2) {
        this.f789a = i2;
        this.b = obj;
    }

    @Override // android.media.session.MediaController.Callback
    public final void onMetadataChanged(MediaMetadata mediaMetadata) {
        Object obj = this.b;
        switch (this.f789a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                ((LyricsFloaterService) obj).i();
                break;
            case 1:
                Set set2 = MediaBarFloaterService.f2392u;
                ((MediaBarFloaterService) obj).f(null);
                break;
            default:
                B3 b3 = B3.f492a;
                B3.j((MediaController) obj);
                break;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        MediaCenterAPI mediaCenterAPI;
        Object obj;
        switch (this.f789a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                ((LyricsFloaterService) this.b).i();
                break;
            case 1:
                Set set2 = MediaBarFloaterService.f2392u;
                ((MediaBarFloaterService) this.b).f(null);
                break;
            default:
                B3 b3 = B3.f492a;
                boolean z2 = false;
                if (playbackState != null && playbackState.getState() == 3) {
                    z2 = true;
                }
                if (z2 && !B3.f515z && (mediaCenterAPI = B3.f494d) != null && (obj = B3.f495e) != null && !B3.f487C) {
                    try {
                        mediaCenterAPI.updateCurrentSourceType(obj, 6);
                        B3.f487C = true;
                        Log.i("MediaCenterBridge", "fonte corrente declarada (mídia nossa tocando)");
                    } catch (Throwable th) {
                        M.d0.r(th, new StringBuilder("updateCurrentSourceType falhou: "), "MediaCenterBridge");
                    }
                }
                if (playbackState == null || playbackState.getState() != 3) {
                    MediaController mediaController = B3.f501l;
                    if (I0.f.a(mediaController != null ? mediaController.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                        try {
                            MediaSessionManager mediaSessionManager = B3.f497h;
                            B3.g(mediaSessionManager != null ? mediaSessionManager.getActiveSessions(null) : null);
                            break;
                        } catch (Throwable unused) {
                        }
                        MediaController mediaController2 = B3.f501l;
                        if (!I0.f.a(mediaController2 != null ? mediaController2.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                        }
                    }
                }
                B3 b4 = B3.f492a;
                B3.j((MediaController) this.b);
                break;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onSessionDestroyed() {
        switch (this.f789a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                ((LyricsFloaterService) this.b).h();
                break;
            case 1:
                Set set2 = MediaBarFloaterService.f2392u;
                ((MediaBarFloaterService) this.b).d();
                break;
            default:
                MediaController mediaController = B3.f501l;
                if (I0.f.a(mediaController != null ? mediaController.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                    B3 b3 = B3.f492a;
                    B3.c();
                    try {
                        MediaSessionManager mediaSessionManager = B3.f497h;
                        B3.g(mediaSessionManager != null ? mediaSessionManager.getActiveSessions(null) : null);
                    } catch (Throwable unused) {
                        return;
                    }
                }
                break;
        }
    }
}
