package T;

import android.bluetooth.BluetoothServerSocket;
import android.util.Log;
import java.util.UUID;

/* JADX INFO: renamed from: T.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0032b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0032b0 f889a = new C0032b0();
    public static final UUID b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static BluetoothServerSocket f890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f891d;

    static {
        UUID uuidFromString = UUID.fromString("1a29eaab-0173-bc88-1c45-4de166248d2d");
        I0.f.d(uuidFromString, "fromString(...)");
        b = uuidFromString;
    }

    public static boolean a(long j2) {
        while (f891d && j2 > 0) {
            long jMin = Math.min(500L, j2);
            try {
                Thread.sleep(jMin);
                j2 -= jMin;
            } catch (InterruptedException unused) {
                return false;
            }
        }
        return f891d;
    }

    public final synchronized void b() {
        if (f891d) {
            return;
        }
        f891d = true;
        Thread thread = new Thread(new RunnableC0026a0(0), "carplay-sdp");
        thread.setDaemon(true);
        thread.start();
        L3.f671a.b("CarplaySdp", "anúncio SDP de CarPlay iniciado");
    }

    public final synchronized void c() {
        if (f891d) {
            f891d = false;
            try {
                BluetoothServerSocket bluetoothServerSocket = f890c;
                if (bluetoothServerSocket != null) {
                    bluetoothServerSocket.close();
                }
            } catch (Throwable unused) {
            }
            f890c = null;
            Log.i("CarplaySdp", "anúncio SDP de CarPlay parado");
        }
    }
}
