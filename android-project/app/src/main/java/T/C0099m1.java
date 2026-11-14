package T;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Log;

/* JADX INFO: renamed from: T.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0099m1 extends MediaCodec.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0105n1 f1052a;

    public C0099m1(C0105n1 c0105n1) {
        this.f1052a = c0105n1;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        I0.f.e(mediaCodec, "codec");
        I0.f.e(codecException, "e");
        Log.w("ExSapoCast", "codec erro: " + codecException.getMessage());
        C0105n1 c0105n1 = this.f1052a;
        c0105n1.getClass();
        c0105n1.f();
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i2) {
        I0.f.e(mediaCodec, "codec");
        this.f1052a.f1069k.offer(Integer.valueOf(i2));
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i2, MediaCodec.BufferInfo bufferInfo) {
        I0.f.e(mediaCodec, "codec");
        I0.f.e(bufferInfo, "info");
        try {
            mediaCodec.releaseOutputBuffer(i2, true);
        } catch (Exception unused) {
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        I0.f.e(mediaCodec, "codec");
        I0.f.e(mediaFormat, "format");
    }
}
