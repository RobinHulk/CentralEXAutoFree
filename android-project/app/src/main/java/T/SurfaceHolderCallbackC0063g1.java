package T;

import android.media.MediaCodec;
import android.view.Surface;
import android.view.SurfaceHolder;

/* JADX INFO: renamed from: T.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class SurfaceHolderCallbackC0063g1 implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f971a;

    public /* synthetic */ SurfaceHolderCallbackC0063g1(int i2) {
        this.f971a = i2;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        switch (this.f971a) {
            case 0:
                I0.f.e(surfaceHolder, "holder");
                break;
            default:
                I0.f.e(surfaceHolder, "holder");
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        switch (this.f971a) {
            case 0:
                I0.f.e(surfaceHolder, "holder");
                Surface surface = surfaceHolder.getSurface();
                I0.f.d(surface, "getSurface(...)");
                C0105n1 c0105n1 = C0097m.f1049i;
                if (c0105n1 != null) {
                    c0105n1.f1064e = surface;
                    MediaCodec mediaCodec = c0105n1.f1067i;
                    if (mediaCodec == null) {
                        c0105n1.h();
                    } else {
                        try {
                            mediaCodec.setOutputSurface(surface);
                        } catch (Exception e2) {
                            M.d0.n(e2, new StringBuilder("setOutputSurface: "), "ExSapoCast");
                            return;
                        }
                    }
                }
                break;
            default:
                I0.f.e(surfaceHolder, "holder");
                Surface surface2 = surfaceHolder.getSurface();
                I0.f.d(surface2, "getSurface(...)");
                C0105n1 c0105n2 = C0097m.f1049i;
                if (c0105n2 != null) {
                    c0105n2.f1064e = surface2;
                    MediaCodec mediaCodec2 = c0105n2.f1067i;
                    if (mediaCodec2 == null) {
                        c0105n2.h();
                    } else {
                        try {
                            mediaCodec2.setOutputSurface(surface2);
                        } catch (Exception e3) {
                            M.d0.n(e3, new StringBuilder("setOutputSurface: "), "ExSapoCast");
                            return;
                        }
                    }
                }
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        switch (this.f971a) {
            case 0:
                I0.f.e(surfaceHolder, "holder");
                C0105n1 c0105n1 = C0097m.f1049i;
                if (c0105n1 != null) {
                    c0105n1.f1064e = null;
                }
                break;
            default:
                I0.f.e(surfaceHolder, "holder");
                C0105n1 c0105n2 = C0097m.f1049i;
                if (c0105n2 != null) {
                    c0105n2.f1064e = null;
                }
                break;
        }
    }
}
