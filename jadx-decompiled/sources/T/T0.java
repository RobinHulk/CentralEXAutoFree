package T;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.MappedByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Set;
import p007e.AbstractActivityC0210j;
import p007e.AbstractC0201a;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class T0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f797a;
    public final /* synthetic */ Object b;

    public /* synthetic */ T0(Object obj, int i2) {
        this.f797a = i2;
        this.b = obj;
    }

    /* JADX INFO: Removed unreachable split cross block B:247:0x02f4 */
    @Override // java.lang.Runnable
    public final void run() throws IOException {
        Socket socketAccept;
        String strK;
        String strK2;
        x4 x4VarI;
        int i2 = 2;
        int i3 = 0;
        switch (this.f797a) {
            case 0:
                ((H0.a) this.b).a();
                return;
            case 1:
                ((C0097m) this.b).getClass();
                ServerSocket serverSocket = null;
                int i4 = 0;
                while (C0097m.f1046e && serverSocket == null) {
                    try {
                        try {
                            try {
                                ServerSocket serverSocket2 = new ServerSocket();
                                serverSocket2.setReuseAddress(true);
                                serverSocket2.bind(new InetSocketAddress(47802));
                                serverSocket = serverSocket2;
                            } catch (Exception e2) {
                                i4++;
                                Log.w("ExSapoCast", "bind 47802 falhou (tentativa " + i4 + "): " + e2.getMessage());
                                if (i4 >= 25) {
                                    Log.e("ExSapoCast", "desistindo do bind da 47802");
                                } else {
                                    try {
                                        Thread.sleep(1200L);
                                    } catch (InterruptedException | Exception unused) {
                                    }
                                }
                                C0097m.f1046e = false;
                                return;
                            }
                        } catch (Exception e3) {
                            Log.e("ExSapoCast", "acceptLoop: " + e3.getMessage());
                            if (serverSocket != null) {
                                serverSocket.close();
                            }
                        }
                    } catch (Throwable th) {
                        if (serverSocket != null) {
                            try {
                                serverSocket.close();
                                break;
                            } catch (Exception unused2) {
                            }
                        }
                        C0097m.f1046e = false;
                        throw th;
                    }
                }
                if (serverSocket == null) {
                    if (serverSocket != null) {
                    }
                    C0097m.f1046e = false;
                    return;
                }
                Log.i("ExSapoCast", "escutando em 0.0.0.0:47802");
                while (C0097m.f1046e) {
                    try {
                        socketAccept = serverSocket.accept();
                    } catch (Exception unused3) {
                        socketAccept = null;
                    }
                    if (socketAccept != null) {
                        Thread thread = new Thread(new T0(socketAccept, i2), "exsapocast-hs");
                        thread.setDaemon(true);
                        thread.start();
                    }
                    break;
                }
                serverSocket.close();
                C0097m.f1046e = false;
                return;
            case 2:
                Socket socket = (Socket) this.b;
                try {
                    if (C0097m.f1049i != null) {
                        socket.close();
                    } else {
                        try {
                            socket.setTcpNoDelay(true);
                            socket.setSoTimeout(10000);
                            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
                            byte[] bArr = new byte[4];
                            dataInputStream.readFully(bArr);
                            Charset charset = O0.a.b;
                            if (new String(bArr, charset).equals("ESC1")) {
                                byte[] bArr2 = new byte[32];
                                dataInputStream.readFully(bArr2);
                                String string = O0.j.X0(new String(bArr2, charset)).toString();
                                String str = C0097m.f;
                                if (str == null || SystemClock.elapsedRealtime() > C0097m.f1047g || string.length() <= 0 || !string.equals(str)) {
                                    Log.w("ExSapoCast", "token inválido/expirado");
                                    socket.close();
                                } else if (C0097m.o(socket)) {
                                    C0097m.f = null;
                                    OutputStream outputStream = socket.getOutputStream();
                                    I0.f.d(outputStream, "getOutputStream(...)");
                                    C0105n1 c0105n1 = new C0105n1(socket, dataInputStream, outputStream);
                                    C0097m.f1049i = c0105n1;
                                    Thread thread2 = new Thread(new RunnableC0093l1(c0105n1), "exsapocast-read");
                                    thread2.setDaemon(true);
                                    thread2.start();
                                    C0097m.q();
                                    Log.i("ExSapoCast", "sessão iniciada com " + socket.getRemoteSocketAddress() + " (display=" + C0097m.f1048h + ')');
                                } else {
                                    Log.w("ExSapoCast", "IP não vizinho: " + socket.getRemoteSocketAddress());
                                    socket.close();
                                }
                            } else {
                                Log.w("ExSapoCast", "magic inválido");
                                socket.close();
                            }
                        } catch (Exception e4) {
                            M.d0.n(e4, new StringBuilder("handshake falhou: "), "ExSapoCast");
                            socket.close();
                        }
                    }
                    return;
                } catch (Exception unused4) {
                    return;
                }
            case 3:
                String str2 = (String) this.b;
                List list = HomeFloatingWidgetsService.f2262Q;
                try {
                    String strConcat = "am force-stop ".concat(str2);
                    I0.f.e(strConcat, "cmd");
                    C0097m.v(strConcat, 5000, null, new C0103n(i3));
                    return;
                } catch (Throwable unused5) {
                    return;
                }
            case 4:
                int i5 = HomeWidgetsPollService.f2303r;
                ((HomeWidgetsPollService) this.b).c();
                return;
            case 5:
                InstallerActivity installerActivity = (InstallerActivity) this.b;
                TextView textView = installerActivity.f2323t;
                if (textView != null) {
                    textView.setText(installerActivity.getString(R.string.k_installer_copying));
                    return;
                } else {
                    I0.f.h("tvStatus");
                    throw null;
                }
            case 6:
                Set set = MediaBarFloaterService.f2392u;
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                mediaBarFloaterService.b();
                mediaBarFloaterService.e();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                B3 b3 = (B3) this.b;
                if (B3.f496g) {
                    return;
                }
                b3.h();
                return;
            case Response.NO /* 8 */:
                try {
                    ((MediaCenterAPI) this.b).reconnect();
                    return;
                } catch (Throwable unused6) {
                    B3.f492a.h();
                    return;
                }
            case 9:
                D d2 = (D) this.b;
                List list2 = QuickAccessFloaterService.f2436j0;
                try {
                    Thread.sleep(1200L);
                    break;
                } catch (InterruptedException unused7) {
                }
                SplitFloaterService splitFloaterService = SplitFloaterService.f2504v;
                if (splitFloaterService != null) {
                    String str3 = d2.b;
                    String str4 = d2.f536c;
                    y4 y4VarE = z4.e();
                    if (y4VarE == null || (strK = z4.k(splitFloaterService, str3)) == null || (strK2 = z4.k(splitFloaterService, str4)) == null || (x4VarI = z4.i(strK, str3, splitFloaterService.d(y4VarE))) == null) {
                        return;
                    }
                    try {
                        Thread.sleep(700L);
                        break;
                    } catch (InterruptedException unused8) {
                    }
                    I0.l lVar = z4.f1244a;
                    x4 x4VarI2 = z4.i(strK2, str4, splitFloaterService.e(y4VarE));
                    L3 l3 = L3.f671a;
                    StringBuilder sbK = M.d0.k("par: ", str3, " | ", str4, " → ");
                    sbK.append(x4VarI2 != null ? "ok" : "direita falhou");
                    l3.b("Split", sbK.toString());
                    if (x4VarI2 != null) {
                        z4.f(x4VarI);
                        return;
                    }
                    return;
                }
                return;
            case 10:
                boolean z2 = DriveRegenFloaterService.f2579J;
                ((DriveRegenFloaterService) this.b).d();
                return;
            case 11:
                N n2 = (N) this.b;
                n2.getClass();
                int[] iArr = TempStepperService.f2615X;
                TempStepperService tempStepperService = (TempStepperService) n2.b;
                tempStepperService.e();
                if (tempStepperService.f2631N) {
                    int i6 = 0;
                    while (i3 < 3) {
                        if (A.b.J(tempStepperService, i3) != null) {
                            i6++;
                        }
                        i3++;
                    }
                    if (i6 == 0) {
                        tempStepperService.b();
                        return;
                    }
                }
                if (tempStepperService.f2631N) {
                    Handler handler = tempStepperService.f2649n;
                    X.b bVar = tempStepperService.f2632O;
                    handler.removeCallbacks(bVar);
                    handler.postDelayed(bVar, 5000L);
                    return;
                }
                return;
            case Response.BAD /* 12 */:
                X.e eVar = (X.e) this.b;
                eVar.getClass();
                int[] iArr2 = TempStepperService.f2615X;
                ((TempStepperService) eVar.b).k("cb");
                return;
            case 13:
                ((AbstractActivityC0210j) this.b).invalidateOptionsMenu();
                return;
            case 14:
                DialogC0209i.a((DialogC0209i) this.b);
                return;
            case 15:
                ((androidx.activity.m) this.b).b();
                return;
            default:
                androidx.emoji2.text.n nVar = (androidx.emoji2.text.n) this.b;
                synchronized (nVar.f1713d) {
                    try {
                        if (nVar.f1716h == null) {
                            return;
                        }
                        try {
                            v.h hVarB = nVar.b();
                            int i7 = hVarB.f4153e;
                            if (i7 == 2) {
                                synchronized (nVar.f1713d) {
                                }
                            }
                            if (i7 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i7 + ")");
                            }
                            try {
                                int i8 = p031u.h.f4139a;
                                p031u.g.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                p025p0.e eVar2 = nVar.f1712c;
                                Context context = nVar.f1711a;
                                eVar2.getClass();
                                Typeface typefaceS = p028r.f.f4046a.s(context, new v.h[]{hVarB}, 0);
                                MappedByteBuffer mappedByteBufferH = AbstractC0201a.H(nVar.f1711a, hVarB.f4150a);
                                if (mappedByteBufferH == null || typefaceS == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    p031u.g.a("EmojiCompat.MetadataRepo.create");
                                    androidx.emoji2.text.q qVar = new androidx.emoji2.text.q(typefaceS, A.b.X(mappedByteBufferH));
                                    p031u.g.b();
                                    p031u.g.b();
                                    synchronized (nVar.f1713d) {
                                        try {
                                            A.b bVar2 = nVar.f1716h;
                                            if (bVar2 != null) {
                                                bVar2.P(qVar);
                                            }
                                        } catch (Throwable th2) {
                                            throw th2;
                                        }
                                        break;
                                    }
                                    nVar.a();
                                    return;
                                } catch (Throwable th3) {
                                    int i9 = p031u.h.f4139a;
                                    p031u.g.b();
                                    throw th3;
                                }
                            } catch (Throwable th4) {
                                int i10 = p031u.h.f4139a;
                                p031u.g.b();
                                throw th4;
                            }
                            break;
                        } catch (Throwable th5) {
                            synchronized (nVar.f1713d) {
                                try {
                                    A.b bVar3 = nVar.f1716h;
                                    if (bVar3 != null) {
                                        bVar3.M(th5);
                                    }
                                    nVar.a();
                                    return;
                                } catch (Throwable th6) {
                                    throw th6;
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        throw th7;
                    }
                }
        }
    }
}
