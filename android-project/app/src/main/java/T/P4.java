package T;

import android.graphics.Typeface;
import android.view.View;
import com.ex.auto.VhalProviderService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class P4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f758a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f759c;

    public /* synthetic */ P4(Object obj, int i2, Object obj2) {
        this.f758a = i2;
        this.b = obj;
        this.f759c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String] */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f758a) {
            case 0:
                VhalProviderService vhalProviderService = (VhalProviderService) this.b;
                Socket socket = (Socket) this.f759c;
                boolean z2 = VhalProviderService.f2558j;
                vhalProviderService.getClass();
                VhalProviderService.f2559k++;
                vhalProviderService.d();
                try {
                    try {
                        socket.setTcpNoDelay(true);
                        OutputStream outputStream = socket.getOutputStream();
                        try {
                            S0 s1 = vhalProviderService.f2563e;
                            if (s1 != null) {
                                Iterator it = s1.a().iterator();
                                while (it.hasNext()) {
                                    outputStream.write((((String) it.next()) + "\n").getBytes());
                                }
                            }
                            outputStream.write("{\"tripsDone\":true}\n".getBytes());
                            S0 s2 = vhalProviderService.f2564g;
                            if (s2 != null) {
                                Iterator it2 = s2.a().iterator();
                                while (it2.hasNext()) {
                                    outputStream.write((((String) it2.next()) + "\n").getBytes());
                                }
                            }
                            outputStream.write("{\"chargesDone\":true}\n".getBytes());
                            outputStream.flush();
                            break;
                        } catch (Exception unused) {
                        }
                        ?? r5 = 0;
                        long jCurrentTimeMillis = 0;
                        while (vhalProviderService.f2562d && socket.isConnected()) {
                            ?? C2 = vhalProviderService.c();
                            if (C2 != 0 && (!C2.equals(r5) || System.currentTimeMillis() - jCurrentTimeMillis > 5000)) {
                                outputStream.write((C2 + "\n").getBytes());
                                outputStream.flush();
                                jCurrentTimeMillis = System.currentTimeMillis();
                                r5 = C2;
                            }
                            Thread.sleep(500L);
                            r5 = r5;
                            break;
                        }
                        socket.close();
                    } catch (Throwable th) {
                        if (socket != null) {
                            try {
                                socket.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            break;
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th3) {
                    VhalProviderService.f2559k--;
                    vhalProviderService.d();
                    throw th3;
                }
                VhalProviderService.f2559k--;
                vhalProviderService.d();
                return;
            case 1:
                boolean z3 = DriveRegenFloaterService.f2579J;
                ((DriveRegenFloaterService) this.b).getClass();
                C0162x3 c0162x3 = new C0162x3(1);
                View view = (View) this.f759c;
                view.setOutlineProvider(c0162x3);
                view.setClipToOutline(true);
                return;
            case 2:
                ((DriveRegenFloaterService) this.b).f2597i.setText((String) this.f759c);
                return;
            case 3:
                Runnable runnable = (Runnable) this.f759c;
                p007e.D d2 = (p007e.D) this.b;
                d2.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    d2.a();
                }
            default:
                ((p026q.b) this.b).e((Typeface) this.f759c);
                return;
        }
    }
}
