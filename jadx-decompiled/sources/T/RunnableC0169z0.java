package T;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: renamed from: T.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0169z0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1229a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ RunnableC0169z0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f1229a = i2;
        this.b = centralWatchdogService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception e2;
        boolean z2 = true;
        boolean z3 = false;
        switch (this.f1229a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (!centralWatchdogService.M().getBoolean("keyserver_bind_enabled", false)) {
                    try {
                        CarPropertyManager carPropertyManager = centralWatchdogService.f2214o;
                        if (carPropertyManager != null) {
                            carPropertyManager.unregisterCallback(centralWatchdogService.J1);
                        }
                        break;
                    } catch (Throwable unused) {
                    }
                    try {
                        Car car = centralWatchdogService.f2213n;
                        if (car != null) {
                            car.disconnect();
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    centralWatchdogService.f2213n = null;
                    centralWatchdogService.f2214o = null;
                    Y.f = false;
                    Handler handler = Y.f849g;
                    if (handler != null) {
                        handler.removeCallbacks(Y.f851i);
                    }
                    Log.i("SwcModeCtrl", "stop");
                } else {
                    centralWatchdogService.f2216p = 0;
                    centralWatchdogService.R();
                }
                break;
            case 1:
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService2 = this.b;
                centralWatchdogService2.getClass();
                Log.i("CentralWatchdog", "DriveRegen: floater parou, iniciando watchdog");
                centralWatchdogService2.O();
                break;
            case 2:
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (centralWatchdogService3.M().getBoolean("ap_sempre_aberto", false)) {
                    boolean zP = CentralWatchdogService.p();
                    Log.i("CentralWatchdog", "pedido de AP pelo celular (sync por Bluetooth): ap0 ".concat(zP ? "já no ar — nada a fazer" : "fechado — vou reabrir"));
                    if (!zP) {
                        L3.f671a.b("CentralWatchdog", "celular chegou por outro canal (sync por Bluetooth) com o ap0 fechado — reabrindo o AP");
                        new Thread(new RunnableC0169z0(centralWatchdogService3, 4)).start();
                        break;
                    }
                }
                break;
            case 3:
                CentralWatchdogService.e(this.b);
                break;
            case 4:
                CentralWatchdogService centralWatchdogService4 = this.b;
                try {
                    int[] iArr3 = CentralWatchdogService.d2;
                    centralWatchdogService4.K("celular por outro canal (sync por Bluetooth)");
                } catch (Throwable unused3) {
                    return;
                }
                break;
            case 5:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (centralWatchdogService5.f2200g != null) {
                    Log.i("CentralWatchdog", "DriveRegen: floater iniciou, liberando Car");
                    centralWatchdogService5.F();
                    break;
                }
                break;
            case 6:
                CentralWatchdogService centralWatchdogService6 = this.b;
                if (centralWatchdogService6.f2200g == null) {
                    Log.w("CentralWatchdog", "triggerDriveRegenApply: cpm continua null após init");
                } else {
                    new Thread(new RunnableC0139t0(centralWatchdogService6, 27)).start();
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                this.b.v("quick_access");
                break;
            case Response.NO /* 8 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr4 = CentralWatchdogService.d2;
                if (!centralWatchdogService7.M().getBoolean("rear_cam_turn_signal_enabled", false)) {
                    try {
                        CarPropertyManager carPropertyManager2 = centralWatchdogService7.f2158E;
                        if (carPropertyManager2 != null) {
                            carPropertyManager2.unregisterCallback(centralWatchdogService7.N1);
                        }
                        break;
                    } catch (Throwable unused4) {
                    }
                    try {
                        Car car2 = centralWatchdogService7.f2156D;
                        if (car2 != null) {
                            car2.disconnect();
                        }
                        break;
                    } catch (Throwable unused5) {
                    }
                    centralWatchdogService7.f2156D = null;
                    centralWatchdogService7.f2158E = null;
                    centralWatchdogService7.f2162G = null;
                    RunnableC0169z0 runnableC0169z0 = centralWatchdogService7.M1;
                    if (runnableC0169z0 != null) {
                        centralWatchdogService7.f2190a.removeCallbacks(runnableC0169z0);
                        centralWatchdogService7.M1 = null;
                    }
                    centralWatchdogService7.u0(false);
                } else {
                    centralWatchdogService7.f2160F = 0;
                    centralWatchdogService7.P();
                }
                break;
            case 9:
                CentralWatchdogService centralWatchdogService8 = this.b;
                if (!centralWatchdogService8.M().getBoolean("swc_media_control_enabled", false)) {
                    B3.f492a.p();
                } else {
                    B3.f492a.o(centralWatchdogService8);
                    B3.n(centralWatchdogService8.z1);
                }
                break;
            case 10:
                int[] iArr5 = CentralWatchdogService.d2;
                this.b.b0();
                break;
            case 11:
                CentralWatchdogService centralWatchdogService9 = this.b;
                int[] iArr6 = CentralWatchdogService.d2;
                if (!centralWatchdogService9.M().getBoolean("recirc_guard_enabled", false)) {
                    centralWatchdogService9.f2190a.removeCallbacks(centralWatchdogService9.K1);
                    try {
                        CarPropertyManager carPropertyManager3 = centralWatchdogService9.f2220r;
                        if (carPropertyManager3 != null) {
                            carPropertyManager3.unregisterCallback(centralWatchdogService9.L1);
                        }
                        break;
                    } catch (Throwable unused6) {
                    }
                    try {
                        Car car3 = centralWatchdogService9.f2218q;
                        if (car3 != null) {
                            car3.disconnect();
                        }
                        break;
                    } catch (Throwable unused7) {
                    }
                    centralWatchdogService9.f2218q = null;
                    centralWatchdogService9.f2220r = null;
                } else {
                    centralWatchdogService9.f2222s = 0;
                    centralWatchdogService9.Q();
                }
                break;
            case Response.BAD /* 12 */:
                CentralWatchdogService centralWatchdogService10 = this.b;
                int[] iArr7 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2 && centralWatchdogService10.G0) {
                    U0.a(new C0050e0(centralWatchdogService10, 3));
                    break;
                }
                break;
            case 13:
                CentralWatchdogService centralWatchdogService11 = this.b;
                int[] iArr8 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0169z0(centralWatchdogService11, 14)).start();
                }
                break;
            case 14:
                CentralWatchdogService centralWatchdogService12 = this.b;
                try {
                    int[] iArr9 = CentralWatchdogService.d2;
                    centralWatchdogService12.K("AP sempre aberto (caiu)");
                } catch (Throwable unused8) {
                    return;
                }
                break;
            case 15:
                CentralWatchdogService centralWatchdogService13 = this.b;
                centralWatchdogService13.M1 = null;
                centralWatchdogService13.u0(false);
                break;
            case Response.BYE /* 16 */:
                CentralWatchdogService centralWatchdogService14 = this.b;
                int[] iArr10 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0056f0(centralWatchdogService14.f2174M0, centralWatchdogService14, "ACL_CONNECTED")).start();
                }
                break;
            case 17:
                CentralWatchdogService centralWatchdogService15 = this.b;
                int[] iArr11 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    CentralWatchdogService.A0(centralWatchdogService15);
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService16 = this.b;
                int[] iArr12 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    boolean z4 = E3.f552a;
                    E3.a(centralWatchdogService16, centralWatchdogService16.M());
                    boolean z5 = J.f629a;
                    J.a(centralWatchdogService16, centralWatchdogService16.M());
                    Y0 y0 = Y0.f854a;
                    if (Y0.f(centralWatchdogService16.M())) {
                        new Thread(new RunnableC0169z0(centralWatchdogService16, 19)).start();
                    }
                    break;
                }
                break;
            case 19:
                Y0 y1 = Y0.f854a;
                int[] iArr13 = CentralWatchdogService.d2;
                y1.d(this.b.M());
                break;
            case 20:
                CentralWatchdogService centralWatchdogService17 = this.b;
                try {
                    Object systemService = centralWatchdogService17.getApplicationContext().getSystemService("wifi");
                    I0.f.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                    WifiManager wifiManager = (WifiManager) systemService;
                    if (!wifiManager.isWifiEnabled()) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        boolean z6 = jCurrentTimeMillis - centralWatchdogService17.f2235z0 < centralWatchdogService17.f2151A0;
                        if (z6 || !centralWatchdogService17.o()) {
                            if (z6) {
                                L3.f671a.b("CentralWatchdog", "ícone WiFi: ligando mesmo com sessão no ap0 (confirmado pelo 2º toque)");
                            }
                            wifiManager.setWifiEnabled(true);
                        } else {
                            centralWatchdogService17.f2235z0 = jCurrentTimeMillis;
                            try {
                                L3.f671a.b("CentralWatchdog", "ícone WiFi: NÃO liguei — há celular no ap0 (sessão em curso). Toque de novo pra ligar assim mesmo");
                                centralWatchdogService17.f2190a.post(new RunnableC0169z0(centralWatchdogService17, 21));
                            } catch (Exception e3) {
                                e2 = e3;
                                M.d0.n(e2, new StringBuilder("statusWifiApplyReceiver: falha ao ligar WiFi: "), "CentralWatchdog");
                            }
                            z2 = z3;
                        }
                    }
                } catch (Exception e4) {
                    z3 = true;
                    e2 = e4;
                }
                if (z2) {
                    centralWatchdogService17.f2190a.post(new RunnableC0169z0(centralWatchdogService17, 22));
                }
                break;
            case 21:
                CentralWatchdogService centralWatchdogService18 = this.b;
                try {
                    Toast.makeText(centralWatchdogService18, centralWatchdogService18.getString(R.string.k_wifi_ap0_em_uso), 1).show();
                } catch (Throwable unused9) {
                    return;
                }
                break;
            case 22:
                A.b.V(this.b);
                break;
            default:
                this.b.v("wifi_reconnected");
                break;
        }
    }
}
