package T;

import M.C0016q;
import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public final class I1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f624a;

    public static C0016q a(DataInputStream dataInputStream) throws IOException {
        byte[] bArr = new byte[24];
        dataInputStream.readFully(bArr);
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i2 = byteBufferOrder.getInt();
        int i3 = byteBufferOrder.getInt();
        int i4 = byteBufferOrder.getInt();
        int i5 = byteBufferOrder.getInt();
        int i6 = byteBufferOrder.getInt();
        if ((~i2) != byteBufferOrder.getInt()) {
            throw new IOException("cabecalho ADB invalido");
        }
        byte[] bArr2 = new byte[i5];
        if (i5 > 0) {
            dataInputStream.readFully(bArr2);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < i5; i8++) {
            i7 += bArr2[i8] & 255;
        }
        if (i7 != i6) {
            throw new IOException("checksum ADB invalido");
        }
        C0016q c0016q = new C0016q();
        c0016q.f335a = i2;
        c0016q.b = i3;
        c0016q.f336c = i4;
        c0016q.f337d = bArr2;
        return c0016q;
    }

    public static void d(OutputStream outputStream, int i2, int i3, int i4, byte[] bArr) throws IOException {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(i2);
        byteBufferOrder.putInt(i3);
        byteBufferOrder.putInt(i4);
        byteBufferOrder.putInt(bArr.length);
        int i5 = 0;
        for (byte b : bArr) {
            i5 += b & 255;
        }
        byteBufferOrder.putInt(i5);
        byteBufferOrder.putInt(~i2);
        outputStream.write(byteBufferOrder.array());
        outputStream.write(bArr);
        outputStream.flush();
    }

    public String b(int i2, String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            return c(i2, str);
        } finally {
            G3.f592a.c(G3.f595e, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
        }
    }

    public String c(int i2, String str) throws Throwable {
        long j2;
        int i3;
        long jCurrentTimeMillis = System.currentTimeMillis() + ((long) i2);
        Socket socket = new Socket();
        try {
            try {
                socket.connect(new InetSocketAddress("127.0.0.1", this.f624a), i2);
                socket.setSoTimeout(i2);
                DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                OutputStream outputStream = socket.getOutputStream();
                byte[] bytes = "host::central-geely".getBytes(StandardCharsets.UTF_8);
                int length = bytes.length;
                byte[] bArr = new byte[length + 1];
                System.arraycopy(bytes, 0, bArr, 0, bytes.length);
                bArr[length] = 0;
                d(outputStream, 1314410051, 16777216, 4096, bArr);
                do {
                    long jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis();
                    j2 = 0;
                    if (jCurrentTimeMillis2 <= 0) {
                        throw new IOException("prazo total do comando ADB estourado");
                    }
                    socket.setSoTimeout((int) Math.min(jCurrentTimeMillis2, 2147483647L));
                    i3 = a(dataInputStream).f335a;
                    if (i3 == 1213486401) {
                        throw new IOException("adbd pediu autenticacao por chave");
                    }
                } while (i3 != 1314410051);
                if (i3 != 1314410051) {
                    throw new IOException("handshake ADB inesperado");
                }
                byte[] bytes2 = ("shell:" + str).getBytes(StandardCharsets.UTF_8);
                int length2 = bytes2.length;
                byte[] bArr2 = new byte[length2 + 1];
                System.arraycopy(bytes2, 0, bArr2, 0, bytes2.length);
                bArr2[length2] = 0;
                d(outputStream, 1313165391, 1, 0, bArr2);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                boolean z2 = false;
                int i4 = 0;
                while (true) {
                    long jCurrentTimeMillis3 = jCurrentTimeMillis - System.currentTimeMillis();
                    if (jCurrentTimeMillis3 <= j2) {
                        throw new IOException("prazo total do comando ADB estourado");
                    }
                    socket.setSoTimeout((int) Math.min(jCurrentTimeMillis3, 2147483647L));
                    C0016q c0016qA = a(dataInputStream);
                    int i5 = c0016qA.f335a;
                    if (i5 == 1213486401) {
                        throw new IOException("adbd pediu autenticacao por chave");
                    }
                    int i6 = c0016qA.b;
                    if (i5 == 1497451343) {
                        if (c0016qA.f336c == 1) {
                            i4 = i6;
                            z2 = true;
                        }
                        j2 = 0;
                    } else {
                        if (i5 != 1163154007) {
                            if (i5 == 1163086915) {
                                d(outputStream, 1163086915, 1, i4, new byte[0]);
                                String strTrim = byteArrayOutputStream.toString("UTF-8").trim();
                                socket.close();
                                return strTrim;
                            }
                            throw new IOException("mensagem ADB inesperada: 0x" + Integer.toHexString(i5));
                        }
                        if (!z2) {
                            i4 = i6;
                            z2 = true;
                        }
                        byteArrayOutputStream.write((byte[]) c0016qA.f337d);
                        d(outputStream, 1497451343, 1, i6, new byte[0]);
                    }
                    j2 = 0;
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                try {
                    socket.close();
                    throw th2;
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
