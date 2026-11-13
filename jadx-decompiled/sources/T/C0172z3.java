package T;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ecarx.eas.sdk.mediacenter.MusicPlaybackInfo;

/* JADX INFO: renamed from: T.z3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0172z3 extends MusicClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile MusicPlaybackInfo f1243a;

    public static MediaController.TransportControls a() {
        MediaController mediaController = B3.f501l;
        if (mediaController != null) {
            return mediaController.getTransportControls();
        }
        return null;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int ctrlCollect(int i2, boolean z2) {
        B3 b3 = B3.f492a;
        B3.q();
        return 0;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void ctrlCollectByUUID(int i2, String str, boolean z2) {
        B3 b3 = B3.f492a;
        B3.q();
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final long getCurrentProgress() {
        PlaybackState playbackState;
        MediaController mediaController = B3.f501l;
        if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getPosition();
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int getCurrentSourceType() {
        return 6;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int[] getMediaSourceTypeList() {
        return new int[]{6};
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final MusicPlaybackInfo getMusicPlaybackInfo() {
        return this.f1243a;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onCollect(int i2, boolean z2) {
        Log.i("MediaCenterBridge", "MC→onCollect " + z2);
        B3 b3 = B3.f492a;
        B3.q();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onExit() {
        Log.i("MediaCenterBridge", "MC→onExit");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.stop();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onForward() {
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.fastForward();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void onMediaCenterFocusChanged(String str) {
        Log.i("MediaCenterBridge", "MC→onMediaCenterFocusChanged foco=" + str);
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onMediaForward(boolean z2) {
        MediaController.TransportControls transportControlsA;
        if (!z2 || (transportControlsA = a()) == null) {
            return true;
        }
        transportControlsA.fastForward();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onMediaRewind(boolean z2) {
        MediaController.TransportControls transportControlsA;
        if (!z2 || (transportControlsA = a()) == null) {
            return true;
        }
        transportControlsA.rewind();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onNext() {
        Log.i("MediaCenterBridge", "MC→onNext");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.skipToNext();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPause() {
        Log.i("MediaCenterBridge", "MC→onPause");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.pause();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPlay() {
        Log.i("MediaCenterBridge", "MC→onPlay");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.play();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPrevious() {
        Log.i("MediaCenterBridge", "MC→onPrevious");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.skipToPrevious();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onReplay() {
        Log.i("MediaCenterBridge", "MC→onReplay");
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.play();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onRewind() {
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA == null) {
            return true;
        }
        transportControlsA.rewind();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void onSeek(long j2) {
        Log.i("MediaCenterBridge", "MC→onSeek " + j2);
        MediaController.TransportControls transportControlsA = a();
        if (transportControlsA != null) {
            transportControlsA.seekTo(j2);
        }
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onSourceChanged(int i2, String str) {
        Log.i("MediaCenterBridge", "MC→onSourceChanged type=" + i2 + " pkg=" + str);
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onSourceSelected(int i2) {
        MediaController.TransportControls transportControlsA;
        Log.i("MediaCenterBridge", "MC→onSourceSelected " + i2);
        if (i2 != 6 || (transportControlsA = a()) == null) {
            return true;
        }
        transportControlsA.play();
        return true;
    }
}
