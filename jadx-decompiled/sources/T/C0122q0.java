package T;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.sun.mail.imap.IMAPStore;
import java.util.Arrays;

/* JADX INFO: renamed from: T.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0122q0 implements Car.CarServiceLifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1104a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ C0122q0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f1104a = i2;
        this.b = centralWatchdogService;
    }

    @Override // android.car.Car.CarServiceLifecycleListener
    public final void onLifecycleChanged(Car car, boolean z2) {
        CarPropertyManager carPropertyManager;
        switch (this.f1104a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int[] iArr = CentralWatchdogService.d2;
                if (z2) {
                    Object carManager = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "swcModes: getCarManager(PROPERTY_SERVICE) null");
                        centralWatchdogService.l0();
                    } else {
                        int[] iArr2 = Y.f848e;
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int i4 = iArr2[i3];
                            try {
                                carPropertyManager.registerCallback(centralWatchdogService.J1, i4, 0.0f);
                                i2++;
                            } catch (Throwable th) {
                                Log.i("CentralWatchdog", String.format("swcModes: registro 0x%x ignorado (%s)", Arrays.copyOf(new Object[]{Integer.valueOf(i4), th.getMessage()}, 2)));
                            }
                        }
                        if (i2 == 0) {
                            Log.w("CentralWatchdog", "swcModes: nenhum prop registrou");
                            centralWatchdogService.l0();
                        } else {
                            centralWatchdogService.f2214o = carPropertyManager;
                            centralWatchdogService.f2216p = 0;
                            Handler handler = centralWatchdogService.f2190a;
                            I0.f.e(handler, "h");
                            Y.f849g = handler;
                            Y.f850h = 0L;
                            Y.f = true;
                            Log.i("SwcModeCtrl", "start: observando mic pra cancelar o Gemini no segurar");
                            Log.i("CentralWatchdog", "swcModes: registerCallback OK (" + i2 + " props) — aguardando botões do volante");
                        }
                    }
                } else {
                    Log.w("CentralWatchdog", "swcModes: Car desconectado (ready=false)");
                    centralWatchdogService.l0();
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr3 = CentralWatchdogService.d2;
                if (!z2) {
                    Log.w("CentralWatchdog", "recircGuard: Car desconectado (ready=false)");
                    centralWatchdogService2.k0();
                } else {
                    Object carManager2 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager2 instanceof CarPropertyManager ? (CarPropertyManager) carManager2 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "recircGuard: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService2.k0();
                    } else {
                        try {
                            centralWatchdogService2.f2224t = U.a(carPropertyManager, 354419984, 5);
                            centralWatchdogService2.f2226u = H1.f(carPropertyManager);
                            centralWatchdogService2.f2227v = H1.n(carPropertyManager);
                            centralWatchdogService2.f2229w = H1.i(carPropertyManager);
                            carPropertyManager.registerCallback(centralWatchdogService2.L1, 354419984, 0.0f);
                            carPropertyManager.registerCallback(centralWatchdogService2.L1, 354419975, 0.0f);
                            carPropertyManager.registerCallback(centralWatchdogService2.L1, 270535680, 0.0f);
                            centralWatchdogService2.f2220r = carPropertyManager;
                            centralWatchdogService2.f2222s = 0;
                            Log.i("CentralWatchdog", "recircGuard: registerCallback OK (hvacPower=" + centralWatchdogService2.f2224t + ", frontMaxDefrost=" + centralWatchdogService2.f2226u + ", windshieldHeat=" + centralWatchdogService2.f2227v + ", recirc=" + centralWatchdogService2.f2229w + ')');
                            centralWatchdogService2.f2190a.post(centralWatchdogService2.K1);
                        } catch (Throwable th2) {
                            Log.w("CentralWatchdog", "recircGuard: registerCallback falhou: " + th2.getMessage());
                            centralWatchdogService2.k0();
                            return;
                        }
                    }
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr4 = CentralWatchdogService.d2;
                if (z2) {
                    Object carManager3 = car != null ? car.getCarManager("property") : null;
                    centralWatchdogService3.f2200g = carManager3 instanceof CarPropertyManager ? (CarPropertyManager) carManager3 : null;
                    if (centralWatchdogService3.f2200g == null) {
                        Log.w("CentralWatchdog", "CarPropertyManager null");
                    } else {
                        if (centralWatchdogService3.P != 0) {
                            long jElapsedRealtime = (SystemClock.elapsedRealtime() - centralWatchdogService3.P) / ((long) IMAPStore.RESPONSE);
                            centralWatchdogService3.P = 0L;
                            L3.f671a.b("CentralWatchdog", "CarService voltou após " + jElapsedRealtime + "s fora — tratando como despertar");
                            centralWatchdogService3.f2190a.post(new RunnableC0139t0(centralWatchdogService3, 13));
                        }
                        try {
                            CarPropertyManager carPropertyManager2 = centralWatchdogService3.f2200g;
                            I0.f.b(carPropertyManager2);
                            carPropertyManager2.registerCallback(centralWatchdogService3.P1, 289408000, 0.0f);
                        } catch (Throwable th3) {
                            M.d0.r(th3, new StringBuilder("registerCallback GEAR_SELECTION falhou: "), "CentralWatchdog");
                        }
                        try {
                            CarPropertyManager carPropertyManager3 = centralWatchdogService3.f2200g;
                            I0.f.b(carPropertyManager3);
                            carPropertyManager3.registerCallback(centralWatchdogService3.P1, 289408001, 0.0f);
                        } catch (Throwable th4) {
                            M.d0.r(th4, new StringBuilder("registerCallback CURRENT_GEAR falhou: "), "CentralWatchdog");
                        }
                        new Thread(new RunnableC0139t0(centralWatchdogService3, 14)).start();
                        centralWatchdogService3.f2167J = 0;
                        centralWatchdogService3.f2190a.removeCallbacks(centralWatchdogService3.R1);
                        centralWatchdogService3.f2190a.postDelayed(centralWatchdogService3.R1, centralWatchdogService3.f2169K);
                        Log.i("CentralWatchdog", "DriveRegen watchdog iniciado");
                    }
                } else {
                    Log.w("CentralWatchdog", "Car desconectado");
                    centralWatchdogService3.P = SystemClock.elapsedRealtime();
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr5 = CentralWatchdogService.d2;
                if (!z2) {
                    Log.w("CentralWatchdog", "rearCamTurnSignal: Car desconectado (ready=false)");
                    centralWatchdogService4.j0();
                } else {
                    Object carManager4 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager4 instanceof CarPropertyManager ? (CarPropertyManager) carManager4 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "rearCamTurnSignal: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService4.j0();
                    } else {
                        try {
                            carPropertyManager.registerCallback(centralWatchdogService4.N1, 557883909, 0.0f);
                            centralWatchdogService4.f2158E = carPropertyManager;
                            centralWatchdogService4.f2160F = 0;
                            Log.i("CentralWatchdog", "rearCamTurnSignal: registerCallback OK — aguardando seta");
                        } catch (Throwable th5) {
                            Log.w("CentralWatchdog", "rearCamTurnSignal: registerCallback falhou: " + th5.getMessage());
                            centralWatchdogService4.j0();
                            return;
                        }
                    }
                }
                break;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                int[] iArr6 = CentralWatchdogService.d2;
                if (!z2) {
                    Log.w("CentralWatchdog", "windowDriver: Car desconectado (ready=false)");
                    centralWatchdogService5.m0();
                } else {
                    Object carManager5 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager5 instanceof CarPropertyManager ? (CarPropertyManager) carManager5 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "windowDriver: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService5.m0();
                    } else {
                        centralWatchdogService5.f2209l.clear();
                        try {
                            carPropertyManager.registerCallback(centralWatchdogService5.I1, 373295872, 0.0f);
                            centralWatchdogService5.f2207k = carPropertyManager;
                            centralWatchdogService5.H1 = 0;
                            Log.i("CentralWatchdog", "windowDriver: registerCallback(DOOR_POS) OK — aguardando eventos de porta");
                        } catch (Throwable th6) {
                            Log.w("CentralWatchdog", "windowDriver: registerCallback DOOR_POS falhou: " + th6.getMessage());
                            centralWatchdogService5.m0();
                            return;
                        }
                    }
                }
                break;
            case 5:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr7 = CentralWatchdogService.d2;
                if (!z2) {
                    centralWatchdogService6.h0();
                } else {
                    Object carManager6 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager6 instanceof CarPropertyManager ? (CarPropertyManager) carManager6 : null;
                    if (carPropertyManager == null) {
                        centralWatchdogService6.h0();
                    } else {
                        try {
                            centralWatchdogService6.f2152B = false;
                            carPropertyManager.registerCallback(centralWatchdogService6.S1, 557858874, 0.0f);
                            centralWatchdogService6.f2234z = carPropertyManager;
                            centralWatchdogService6.f2150A = 0;
                            Log.i("CentralWatchdog", "aebObserver: registerCallback(AEB) OK");
                        } catch (Throwable th7) {
                            Log.w("CentralWatchdog", "aebObserver: registerCallback falhou: " + th7.getMessage());
                            centralWatchdogService6.h0();
                            return;
                        }
                    }
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr8 = CentralWatchdogService.d2;
                if (z2) {
                    Object carManager7 = car != null ? car.getCarManager("property") : null;
                    centralWatchdogService7.f2203i = carManager7 instanceof CarPropertyManager ? (CarPropertyManager) carManager7 : null;
                    break;
                }
                break;
        }
    }
}
