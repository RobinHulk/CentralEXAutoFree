package T;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.media.session.MediaController;
import android.os.Handler;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: renamed from: T.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0026a0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f879a;

    public /* synthetic */ RunnableC0026a0(int i2) {
        this.f879a = i2;
    }

    /* JADX WARN: Code duplicated, block: B:244:0x024e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x00de A[SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() throws IOException {
        BluetoothServerSocket bluetoothServerSocketListenUsingRfcommWithServiceRecord;
        String address;
        MediaController mediaController;
        int i2 = 0;
        switch (this.f879a) {
            case 0:
                C0032b0 c0032b0 = C0032b0.f889a;
                while (C0032b0.f891d) {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                        L3.f671a.b("CarplaySdp", "Bluetooth indisponível — nova tentativa em 15s");
                        if (!C0032b0.a(15000L)) {
                            return;
                        }
                    } else {
                        try {
                            UUID uuid = C0032b0.b;
                            bluetoothServerSocketListenUsingRfcommWithServiceRecord = defaultAdapter.listenUsingRfcommWithServiceRecord("CarPlay", uuid);
                            try {
                                synchronized (c0032b0) {
                                    if (C0032b0.f891d) {
                                        C0032b0.f890c = bluetoothServerSocketListenUsingRfcommWithServiceRecord;
                                        L3.f671a.b("CarplaySdp", "registro SDP publicado (CarPlay / " + uuid + ')');
                                        while (true) {
                                            int i3 = 0;
                                            while (true) {
                                                if (C0032b0.f891d && i3 < 300) {
                                                    try {
                                                        BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingRfcommWithServiceRecord.accept();
                                                        try {
                                                            BluetoothDevice remoteDevice = bluetoothSocketAccept.getRemoteDevice();
                                                            address = remoteDevice != null ? remoteDevice.getAddress() : null;
                                                            break;
                                                        } catch (Throwable unused) {
                                                        }
                                                        try {
                                                            StringBuilder sb = new StringBuilder();
                                                            sb.append("conexão RFCOMM de ");
                                                            if (address == null) {
                                                                address = "?";
                                                            }
                                                            sb.append(address);
                                                            sb.append(" — fechando (o stack do vendor assume)");
                                                            Log.i("CarplaySdp", sb.toString());
                                                            bluetoothSocketAccept.close();
                                                        } catch (IOException unused2) {
                                                            i3 = 0;
                                                            if (!C0032b0.f891d) {
                                                                if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                                                    try {
                                                                        bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                                                        break;
                                                                    } catch (Throwable unused3) {
                                                                    }
                                                                }
                                                                synchronized (c0032b0) {
                                                                    if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                                        C0032b0.f890c = null;
                                                                    }
                                                                    break;
                                                                }
                                                            } else {
                                                                i3++;
                                                                if (i3 == 1) {
                                                                    Log.i("CarplaySdp", "accept() estourou (normal nesta pilha) — reciclando, registro segue no ar");
                                                                }
                                                                if (!C0032b0.a(1000L)) {
                                                                    if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                                                        try {
                                                                            bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                                                            break;
                                                                        } catch (Throwable unused4) {
                                                                        }
                                                                    }
                                                                    synchronized (c0032b0) {
                                                                        if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                                            C0032b0.f890c = null;
                                                                        }
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            return;
                                                        }
                                                    } catch (IOException unused5) {
                                                    }
                                                }
                                            }
                                        }
                                        if (C0032b0.f891d) {
                                            Log.w("CarplaySdp", "accept() falhou 300 vezes seguidas — republicando o registro");
                                        }
                                        if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                            try {
                                                bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                                break;
                                            } catch (Throwable unused6) {
                                            }
                                        }
                                        synchronized (c0032b0) {
                                            if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                C0032b0.f890c = null;
                                            }
                                            if (!C0032b0.a(15000L)) {
                                                return;
                                            }
                                            break;
                                        }
                                    } else {
                                        try {
                                            bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                            break;
                                        } catch (Throwable unused7) {
                                        }
                                        if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                            bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                        }
                                        synchronized (c0032b0) {
                                            if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                C0032b0.f890c = null;
                                            }
                                        }
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    if (!C0032b0.f891d) {
                                        if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                            try {
                                                bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                                break;
                                            } catch (Throwable unused8) {
                                            }
                                        }
                                        synchronized (c0032b0) {
                                            if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                C0032b0.f890c = null;
                                            }
                                        }
                                    } else {
                                        Log.w("CarplaySdp", "anúncio caiu (" + th.getClass().getSimpleName() + ": " + th.getMessage() + ") — retentando");
                                        if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                            try {
                                                bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                                break;
                                            } catch (Throwable unused9) {
                                            }
                                        }
                                        synchronized (c0032b0) {
                                            if (C0032b0.f890c == bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                                C0032b0.f890c = null;
                                            }
                                            if (!C0032b0.a(15000L)) {
                                                return;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    if (bluetoothServerSocketListenUsingRfcommWithServiceRecord != null) {
                                        try {
                                            bluetoothServerSocketListenUsingRfcommWithServiceRecord.close();
                                            break;
                                        } catch (Throwable unused10) {
                                        }
                                    }
                                    synchronized (c0032b0) {
                                        if (C0032b0.f890c != bluetoothServerSocketListenUsingRfcommWithServiceRecord) {
                                            throw th2;
                                        }
                                        C0032b0.f890c = null;
                                        throw th2;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bluetoothServerSocketListenUsingRfcommWithServiceRecord = null;
                        }
                    }
                    break;
                }
                return;
            case 1:
                int[] iArr = CentralWatchdogService.d2;
                try {
                    Log.i("CentralWatchdog", "doorAudioPause: keyevent 127 OK, saída=\"" + C0097m.v("input keyevent 127", 3000, null, new C0103n(i2)) + '\"');
                    return;
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("doorAudioPause: keyevent 127 falhou: "), "CentralWatchdog");
                    return;
                }
            case 2:
                if (B3.f496g) {
                    return;
                }
                B3 b3 = B3.f492a;
                B3.e();
                return;
            case 3:
                if (B3.f496g || (mediaController = B3.f501l) == null) {
                    return;
                }
                B3 b4 = B3.f492a;
                B3.j(mediaController);
                return;
            case 4:
                B3.f492a.h();
                return;
            case 5:
                if (B3.f496g) {
                    return;
                }
                B3 b5 = B3.f492a;
                B3.e();
                return;
            case 6:
                if (B3.f496g) {
                    return;
                }
                B3.f492a.h();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                B3 b6 = B3.f492a;
                B3.e();
                return;
            case Response.NO /* 8 */:
                B3 b7 = B3.f492a;
                B3.e();
                return;
            case 9:
                MediaController mediaController2 = B3.f501l;
                if (mediaController2 != null) {
                    B3 b8 = B3.f492a;
                    B3.j(mediaController2);
                    return;
                }
                return;
            case 10:
                Y.f850h = 0L;
                Handler handler = Y.f849g;
                if (handler == null) {
                    return;
                }
                handler.postDelayed(new RunnableC0026a0(11), 600L);
                return;
            case 11:
                new Thread(new RunnableC0026a0(12)).start();
                return;
            default:
                try {
                    Log.i("SwcModeCtrl", "cancelPendingAaVoice: BACK desativado (investigação) — topo da pilha: " + O0.j.X0(C0097m.v("dumpsys activity activities 2>/dev/null | grep mResumedActivity", 3000, null, new C0103n(i2))).toString());
                    return;
                } catch (Exception e3) {
                    M.d0.n(e3, new StringBuilder("cancelPendingAaVoice falhou: "), "SwcModeCtrl");
                    return;
                }
        }
    }
}
