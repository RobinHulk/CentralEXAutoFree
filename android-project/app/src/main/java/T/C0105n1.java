package T;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;

/* JADX INFO: renamed from: T.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0105n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Socket f1061a;
    public final DataInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedOutputStream f1062c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Surface f1064e;
    public volatile byte[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile int f1065g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f1066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaCodec f1067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HandlerThread f1068j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f1063d = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedBlockingQueue f1069k = new LinkedBlockingQueue();

    public C0105n1(Socket socket, DataInputStream dataInputStream, OutputStream outputStream) {
        this.f1061a = socket;
        this.b = dataInputStream;
        this.f1062c = new BufferedOutputStream(outputStream);
    }

    public static void d(byte[] bArr, int i2, float f) {
        int iFloatToRawIntBits = Float.floatToRawIntBits(f);
        bArr[i2] = (byte) (iFloatToRawIntBits >>> 24);
        bArr[i2 + 1] = (byte) (iFloatToRawIntBits >>> 16);
        bArr[i2 + 2] = (byte) (iFloatToRawIntBits >>> 8);
        bArr[i2 + 3] = (byte) iFloatToRawIntBits;
    }

    public final void a(byte[] bArr) {
        MediaCodec mediaCodec = this.f1067i;
        if (mediaCodec != null && bArr.length >= 9) {
            long j2 = 0;
            for (int i2 = 0; i2 < 8; i2++) {
                j2 = (j2 << 8) | (((long) bArr[i2]) & 255);
            }
            int length = bArr.length - 9;
            Integer num = (Integer) this.f1069k.poll();
            if (num == null) {
                f();
                return;
            }
            int iIntValue = num.intValue();
            try {
                ByteBuffer inputBuffer = mediaCodec.getInputBuffer(iIntValue);
                if (inputBuffer == null) {
                    return;
                }
                inputBuffer.clear();
                inputBuffer.put(bArr, 9, length);
                mediaCodec.queueInputBuffer(iIntValue, 0, length, j2, 0);
            } catch (Exception e2) {
                M.d0.n(e2, new StringBuilder("feedFrame: "), "ExSapoCast");
            }
        }
    }

    public final void b(byte[] bArr) {
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr, O0.a.f412a));
            this.f1065g = jSONObject.optInt("w", 0);
            this.f1066h = jSONObject.optInt("h", 0);
            new Handler(Looper.getMainLooper()).post(new RunnableC0093l1(this, jSONObject.optInt("rot", 0)));
        } catch (Exception e2) {
            M.d0.n(e2, new StringBuilder("meta: "), "ExSapoCast");
        }
    }

    public final synchronized void c(byte[] bArr) {
        byte[] bArr2 = this.f;
        if (bArr2 == null || !Arrays.equals(bArr2, bArr)) {
            this.f = bArr;
            if (this.f1067i != null) {
                e();
            }
            h();
        }
    }

    public final void e() {
        try {
            MediaCodec mediaCodec = this.f1067i;
            if (mediaCodec != null) {
                mediaCodec.stop();
            }
        } catch (Exception unused) {
        }
        try {
            MediaCodec mediaCodec2 = this.f1067i;
            if (mediaCodec2 != null) {
                mediaCodec2.release();
            }
        } catch (Exception unused2) {
        }
        this.f1067i = null;
        try {
            HandlerThread handlerThread = this.f1068j;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
        } catch (Exception unused3) {
        }
        this.f1068j = null;
        this.f1069k.clear();
    }

    public final void f() {
        byte[] bytes = "{\"cmd\":\"idr\"}".getBytes(O0.a.f412a);
        I0.f.d(bytes, "getBytes(...)");
        i(bytes, 32);
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [T.k1, android.content.ContextWrapper] */
    public final synchronized void g(String str) {
        if (this.f1063d) {
            this.f1063d = false;
            Log.i("ExSapoCast", "sessão encerrada: ".concat(str));
            try {
                BufferedOutputStream bufferedOutputStream = this.f1062c;
                byte[] bytes = "{\"cmd\":\"stop\"}".getBytes(O0.a.f412a);
                I0.f.d(bytes, "getBytes(...)");
                C0097m.A(bufferedOutputStream, 32, bytes);
            } catch (Exception unused) {
            }
            e();
            try {
                this.f1061a.close();
            } catch (Exception unused2) {
            }
            if (C0097m.f1049i == this) {
                C0097m.f1049i = null;
            }
            ?? r3 = C0097m.f1044c;
            if (r3 != 0) {
                r3.b();
            }
        }
    }

    public final synchronized void h() {
        try {
            if (this.f1067i != null) {
                return;
            }
            Surface surface = this.f1064e;
            if (surface == null) {
                return;
            }
            byte[] bArr = this.f;
            if (bArr == null) {
                return;
            }
            try {
                int i2 = this.f1065g > 0 ? this.f1065g : 1280;
                int i3 = this.f1066h > 0 ? this.f1066h : 720;
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i2, i3);
                I0.f.d(mediaFormatCreateVideoFormat, "createVideoFormat(...)");
                mediaFormatCreateVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                I0.f.d(mediaCodecCreateDecoderByType, "createDecoderByType(...)");
                HandlerThread handlerThread = new HandlerThread("exsapocast-codec");
                handlerThread.start();
                mediaCodecCreateDecoderByType.setCallback(new C0099m1(this), new Handler(handlerThread.getLooper()));
                mediaCodecCreateDecoderByType.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
                mediaCodecCreateDecoderByType.start();
                this.f1067i = mediaCodecCreateDecoderByType;
                this.f1068j = handlerThread;
                f();
                Log.i("ExSapoCast", "decoder configurado " + i2 + 'x' + i3);
            } catch (Exception e2) {
                Log.e("ExSapoCast", "tryConfigure: " + e2.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void i(byte[] bArr, int i2) {
        try {
            C0097m.A(this.f1062c, i2, bArr);
        } catch (Exception e2) {
            if (this.f1063d) {
                M.d0.n(e2, new StringBuilder("write: "), "ExSapoCast");
            }
        }
    }
}
