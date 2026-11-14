package T;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.util.Log;
import com.ex.auto.QuickAccessFloaterService;
import java.io.File;
import java.util.List;

/* JADX INFO: renamed from: T.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0060f4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f965a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f966c;

    public /* synthetic */ RunnableC0060f4(QuickAccessFloaterService quickAccessFloaterService, boolean z2, int i2) {
        this.f965a = i2;
        this.b = quickAccessFloaterService;
        this.f966c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0207 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0136 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x00c5: MOVE (r2 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:39:0x00c5 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Car car;
        int i2;
        Integer numC;
        Car carCreateCar;
        Car car2;
        Integer numC2;
        int iO;
        int iIntValue;
        int iIntValue2;
        Car car3 = null;
        boolean z2 = false;
        boolean z3 = this.f966c;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f965a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                try {
                    try {
                        Car carCreateCar2 = Car.createCar(quickAccessFloaterService);
                        try {
                            try {
                                Object carManager = carCreateCar2.getCarManager("audio");
                                CarAudioManager carAudioManager = carManager instanceof CarAudioManager ? (CarAudioManager) carManager : null;
                                if (carAudioManager != null) {
                                    if (z3) {
                                        Object carManager2 = carCreateCar2.getCarManager("property");
                                        CarPropertyManager carPropertyManager = carManager2 instanceof CarPropertyManager ? (CarPropertyManager) carManager2 : null;
                                        for (int i3 : AbstractC0121q.f1100a) {
                                            if (carPropertyManager != null) {
                                                try {
                                                    numC = U.c(carPropertyManager, 557871191, i3);
                                                } catch (Exception unused) {
                                                    continue;
                                                }
                                            } else {
                                                numC = null;
                                            }
                                            if (numC != null) {
                                                quickAccessFloaterService.r().edit().putInt("avas_sound_type_saved", numC.intValue()).apply();
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                    carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, Integer.valueOf(!z3 ? 1 : 0));
                                    if (!z3 && (i2 = quickAccessFloaterService.r().getInt("avas_sound_type_saved", -1)) > 0) {
                                        Object carManager3 = carCreateCar2.getCarManager("property");
                                        CarPropertyManager carPropertyManager2 = carManager3 instanceof CarPropertyManager ? (CarPropertyManager) carManager3 : null;
                                        for (int i4 : AbstractC0121q.f1100a) {
                                            if (carPropertyManager2 != null) {
                                                try {
                                                    carPropertyManager2.setIntProperty(557871191, i4, i2);
                                                } catch (Exception unused2) {
                                                }
                                            }
                                        }
                                    }
                                }
                                carCreateCar2.disconnect();
                            } catch (Throwable th) {
                                th = th;
                                car = carCreateCar2;
                                if (car != null) {
                                    try {
                                        car.disconnect();
                                        break;
                                    } catch (Exception unused3) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            car = carCreateCar2;
                            try {
                                Log.w("QuickAccessFloater", "toggleAvas: " + e.getMessage());
                                if (car == null) {
                                    return;
                                } else {
                                    car.disconnect();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (car != null) {
                                    car.disconnect();
                                    break;
                                }
                                throw th;
                            }
                        }
                    } catch (Exception unused4) {
                        return;
                    }
                } catch (Exception e3) {
                    e = e3;
                    car = null;
                } catch (Throwable th3) {
                    th = th3;
                    car = null;
                }
                return;
            case 1:
                List list2 = QuickAccessFloaterService.f2436j0;
                try {
                    try {
                        carCreateCar = Car.createCar(quickAccessFloaterService);
                        try {
                            Object carManager4 = carCreateCar.getCarManager("property");
                            CarPropertyManager carPropertyManager3 = carManager4 instanceof CarPropertyManager ? (CarPropertyManager) carManager4 : null;
                            if (carPropertyManager3 != null) {
                                carPropertyManager3.setIntProperty(557858874, 0, z3 ? 1 : 0);
                            }
                            Thread.sleep(400L);
                            Boolean boolValueOf = (carPropertyManager3 == null || (numC2 = U.c(carPropertyManager3, 557858874, 0)) == null) ? Boolean.valueOf(z3) : Boolean.valueOf(numC2.intValue() != 0);
                            quickAccessFloaterService.f2497u = boolValueOf;
                            quickAccessFloaterService.r().edit().putBoolean("aeb_state_saved", boolValueOf.booleanValue()).apply();
                        } catch (Exception e4) {
                            e = e4;
                            Log.w("QuickAccessFloater", "AEB write: " + e.getMessage());
                            quickAccessFloaterService.f2497u = null;
                            if (carCreateCar != null) {
                            }
                            quickAccessFloaterService.f2471a.post(new X3(quickAccessFloaterService, 11));
                            return;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        car3 = car2;
                        if (car3 != null) {
                            try {
                                car3.disconnect();
                                break;
                            } catch (Exception unused5) {
                            }
                        }
                        throw th;
                    }
                    break;
                } catch (Exception e5) {
                    e = e5;
                    carCreateCar = null;
                } catch (Throwable th5) {
                    th = th5;
                    if (car3 != null) {
                        car3.disconnect();
                        break;
                    }
                    throw th;
                }
                try {
                    carCreateCar.disconnect();
                    break;
                } catch (Exception unused6) {
                }
                quickAccessFloaterService.f2471a.post(new X3(quickAccessFloaterService, 11));
                return;
            default:
                List list3 = QuickAccessFloaterService.f2436j0;
                try {
                    new I1(5555).b(3000, "setenforce 0 2>/dev/null");
                    break;
                } catch (Exception unused7) {
                }
                try {
                    iO = A.b.o(Integer.parseInt(O0.j.X0(A.b.b0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString()), 1, 255);
                    break;
                } catch (Exception unused8) {
                    iO = 166;
                }
                quickAccessFloaterService.f2460M = iO;
                try {
                    Integer numP0 = O0.r.p0(O0.j.X0(quickAccessFloaterService.b(3000, "settings get global heads_up_notifications_enabled")).toString());
                    iIntValue = numP0 != null ? numP0.intValue() : 1;
                    break;
                } catch (Exception unused9) {
                }
                quickAccessFloaterService.f2461N = iIntValue;
                try {
                    quickAccessFloaterService.b(3000, "settings put global heads_up_notifications_enabled 0");
                    break;
                } catch (Exception unused10) {
                }
                try {
                    Integer numP1 = O0.r.p0(O0.j.X0(quickAccessFloaterService.b(3000, "settings get global audio_speed_volume_enable")).toString());
                    iIntValue2 = numP1 != null ? numP1.intValue() : 1;
                    break;
                } catch (Exception unused11) {
                }
                quickAccessFloaterService.f2462O = iIntValue2;
                try {
                    quickAccessFloaterService.b(3000, "settings put global audio_speed_volume_enable 0");
                    break;
                } catch (Exception unused12) {
                }
                try {
                    A.b.k0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(z3 ? 12 : 0));
                    z2 = true;
                } catch (Exception e6) {
                    M.d0.n(e6, new StringBuilder("backlight write: "), "QuickAccessFloater");
                }
                quickAccessFloaterService.f2471a.post(new H2(quickAccessFloaterService, z2, z3, 3));
                return;
        }
    }
}
