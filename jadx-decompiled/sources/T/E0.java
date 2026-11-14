package T;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class E0 implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f549a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ E0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f549a = i2;
        this.b = centralWatchdogService;
    }

    private final void a(int i2, int i3) {
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0335 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x033a  */
    /* JADX WARN: Code duplicated, block: B:133:0x033f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x0351 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r0v92, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object, java.util.Map] */
    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        boolean z2;
        int i2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        Integer num;
        boolean z5;
        CarPropertyManager carPropertyManager;
        Integer num2;
        switch (this.f549a) {
            case 0:
                I0.f.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() == 0) {
                    Object value = carPropertyValue.getValue();
                    Integer num3 = value instanceof Integer ? (Integer) value : null;
                    if (num3 != null) {
                        int iIntValue = num3.intValue();
                        boolean z6 = iIntValue != 0;
                        Log.i("CentralWatchdog", "aebObserver: AEB int=" + iIntValue + " → on=" + z6);
                        CentralWatchdogService centralWatchdogService = this.b;
                        int[] iArr = CentralWatchdogService.d2;
                        centralWatchdogService.M().edit().putBoolean("aeb_state_saved", z6).apply();
                        CentralWatchdogService centralWatchdogService2 = this.b;
                        if (!centralWatchdogService2.f2152B) {
                            centralWatchdogService2.f2152B = true;
                            break;
                        } else if (SystemClock.elapsedRealtime() - this.b.f2154C > 30000 && this.b.M().getBoolean("aeb_desired", z6) != z6) {
                            this.b.M().edit().putBoolean("aeb_desired", z6).apply();
                            Log.i("CentralWatchdog", "aebObserver: usuário mudou o AEB pelo carro → desejado=" + z6);
                            break;
                        }
                    }
                }
                break;
            case 1:
                I0.f.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() == 0) {
                    Object value2 = carPropertyValue.getValue();
                    Integer num4 = value2 instanceof Integer ? (Integer) value2 : null;
                    if (num4 != null) {
                        int iIntValue2 = num4.intValue();
                        int propertyId = carPropertyValue.getPropertyId();
                        CentralWatchdogService centralWatchdogService3 = this.b;
                        switch (propertyId) {
                            case 289408000:
                                z2 = iIntValue2 != centralWatchdogService3.f2163H;
                                centralWatchdogService3.f2163H = iIntValue2;
                                break;
                            case 289408001:
                                z2 = iIntValue2 != centralWatchdogService3.f2165I;
                                centralWatchdogService3.f2165I = iIntValue2;
                                break;
                            default:
                                z2 = false;
                                break;
                        }
                        if (z2) {
                            Log.i("CentralWatchdog", "troca de marcha (prop=" + carPropertyValue.getPropertyId() + " val=" + iIntValue2 + ") — reaplicar drive/regen");
                            int[] iArr2 = CentralWatchdogService.d2;
                            if (!DriveRegenFloaterService.f2579J) {
                                Handler handler = centralWatchdogService3.f2190a;
                                RunnableC0116p0 runnableC0116p0 = centralWatchdogService3.Q1;
                                handler.removeCallbacks(runnableC0116p0);
                                handler.postDelayed(runnableC0116p0, 600L);
                            } else {
                                centralWatchdogService3.getClass();
                            }
                        }
                    }
                    break;
                }
                break;
            case 2:
                I0.f.e(carPropertyValue, "value");
                Log.i("CentralWatchdog", String.format("rearCamTurnSignal: onChangeEvent prop=0x%x status=" + carPropertyValue.getStatus() + " value=" + carPropertyValue.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(carPropertyValue.getPropertyId())}, 1)));
                Object value3 = carPropertyValue.getValue();
                Integer num5 = value3 instanceof Integer ? (Integer) value3 : null;
                if (num5 != null) {
                    int iIntValue3 = num5.intValue();
                    CentralWatchdogService centralWatchdogService4 = this.b;
                    Integer num6 = centralWatchdogService4.f2162G;
                    centralWatchdogService4.f2162G = num5;
                    if (num6 != null) {
                        i2 = 1;
                        if (num6.intValue() == 1) {
                            i3 = 2;
                        }
                        if (iIntValue3 != i2 || iIntValue3 == i3) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        Handler handler2 = centralWatchdogService4.f2190a;
                        if (!z3 && i4 == 0) {
                            Runnable runnable = centralWatchdogService4.M1;
                            if (runnable != null) {
                                handler2.removeCallbacks(runnable);
                                centralWatchdogService4.M1 = null;
                            }
                            centralWatchdogService4.u0(true);
                            break;
                        } else if (z3 && i4 != 0) {
                            if (!centralWatchdogService4.M().getBoolean("rear_cam_hold_open_5s", false)) {
                                centralWatchdogService4.u0(false);
                            } else {
                                RunnableC0169z0 runnableC0169z0 = new RunnableC0169z0(centralWatchdogService4, 15);
                                centralWatchdogService4.M1 = runnableC0169z0;
                                handler2.postDelayed(runnableC0169z0, 5000L);
                                Log.i("CentralWatchdog", "rearCamTurnSignal: seta desligou, segurando o PiP aberto por 5000ms (ícone 5s)");
                            }
                            break;
                        }
                    } else {
                        i2 = 1;
                    }
                    if (num6 == null) {
                        i3 = 2;
                    } else {
                        int iIntValue4 = num6.intValue();
                        i3 = 2;
                        i4 = iIntValue4 == 2 ? i2 : 0;
                        if (iIntValue3 != i2) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        Handler handler3 = centralWatchdogService4.f2190a;
                        if (!z3) {
                        }
                        if (z3) {
                        }
                    }
                    if (iIntValue3 != i2) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    Handler handler4 = centralWatchdogService4.f2190a;
                    if (!z3) {
                    }
                    if (z3) {
                    }
                }
                break;
            case 3:
                I0.f.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() == 0) {
                    Object value4 = carPropertyValue.getValue();
                    Boolean bool = value4 instanceof Boolean ? (Boolean) value4 : null;
                    if (bool != null) {
                        boolean zBooleanValue = bool.booleanValue();
                        int propertyId2 = carPropertyValue.getPropertyId();
                        CentralWatchdogService centralWatchdogService5 = this.b;
                        if (propertyId2 == 270535680) {
                            Boolean bool2 = centralWatchdogService5.f2227v;
                            centralWatchdogService5.f2227v = bool;
                            if (I0.f.a(bool2, Boolean.FALSE) && zBooleanValue) {
                                CentralWatchdogService.h(centralWatchdogService5, "windshieldHeat→true");
                                break;
                            }
                        } else if (propertyId2 == 354419975) {
                            Boolean bool3 = centralWatchdogService5.f2226u;
                            centralWatchdogService5.f2226u = bool;
                            if (I0.f.a(bool3, Boolean.FALSE) && zBooleanValue) {
                                CentralWatchdogService.h(centralWatchdogService5, "frontMaxDefrost→true");
                                break;
                            }
                        } else if (propertyId2 == 354419984) {
                            Boolean bool4 = centralWatchdogService5.f2224t;
                            centralWatchdogService5.f2224t = bool;
                            if (I0.f.a(bool4, Boolean.TRUE) && !zBooleanValue) {
                                CentralWatchdogService.h(centralWatchdogService5, "HVAC_POWER_ON→false");
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                I0.f.e(carPropertyValue, "value");
                Object value5 = carPropertyValue.getValue();
                Integer num7 = value5 instanceof Integer ? (Integer) value5 : null;
                if (num7 != null) {
                    int iIntValue5 = num7.intValue();
                    Log.i("CentralWatchdog", String.format("DOOR_POS área=0x%x val=%d status=%d", Arrays.copyOf(new Object[]{Integer.valueOf(carPropertyValue.getAreaId()), num7, Integer.valueOf(carPropertyValue.getStatus())}, 3)));
                    CentralWatchdogService centralWatchdogService6 = this.b;
                    int areaId = carPropertyValue.getAreaId();
                    int[] iArr3 = CentralWatchdogService.d2;
                    if (centralWatchdogService6.M().getBoolean("window_driver_on_door", false) && (num = (Integer) AbstractC0121q.f1101c.get(Integer.valueOf(areaId))) != null) {
                        int iIntValue6 = num.intValue();
                        if (iIntValue5 == 1) {
                            z5 = true;
                        } else if (iIntValue5 == 2) {
                            z5 = false;
                        }
                        Boolean bool5 = (Boolean) centralWatchdogService6.f2209l.get(Integer.valueOf(areaId));
                        centralWatchdogService6.f2209l.put(Integer.valueOf(areaId), Boolean.valueOf(z5));
                        if (bool5 != null && !bool5.equals(Boolean.valueOf(z5)) && (carPropertyManager = centralWatchdogService6.f2207k) != null) {
                            int iIntValue7 = (!centralWatchdogService6.M().getBoolean("window_opposite_on_door", false) || (num2 = (Integer) AbstractC0121q.f1102d.get(num)) == null) ? iIntValue6 : num2.intValue();
                            String str = iIntValue7 != iIntValue6 ? "oposta " : "";
                            Integer numC = U.c(carPropertyManager, 322964416, iIntValue7);
                            if (numC != null) {
                                int iIntValue8 = numC.intValue();
                                if (z5) {
                                    if (iIntValue8 > 7) {
                                        Log.i("CentralWatchdog", String.format(M.d0.f("janela ", str, "0x%x não está fechada (pos=%d) — porta 0x%x abriu, não mexe"), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), numC, Integer.valueOf(areaId)}, 3)));
                                    } else {
                                        try {
                                            carPropertyManager.setIntProperty(322964416, iIntValue7, 10);
                                            Log.i("CentralWatchdog", String.format("janela " + str + "0x%x → POS %d (porta 0x%x aberta)", Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), 10, Integer.valueOf(areaId)}, 3)));
                                        } catch (Throwable th) {
                                            Log.w("CentralWatchdog", String.format(M.d0.f("windowDriver set ", str, "0x%x falhou: %s"), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), th.getMessage()}, 2)));
                                        }
                                    }
                                } else if (Math.abs(iIntValue8 - 10) > 3) {
                                    Log.i("CentralWatchdog", String.format(M.d0.f("janela ", str, "0x%x não está mais perto de POS %d (pos=%d) — porta 0x%x fechou, não mexe"), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), 10, numC, Integer.valueOf(areaId)}, 4)));
                                } else {
                                    try {
                                        carPropertyManager.setIntProperty(322964416, iIntValue7, 0);
                                        Log.i("CentralWatchdog", String.format("janela " + str + "0x%x → POS 0 (porta 0x%x fechada)", Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), Integer.valueOf(areaId)}, 2)));
                                    } catch (Throwable th2) {
                                        Log.w("CentralWatchdog", String.format(M.d0.f("windowDriver set ", str, "0x%x falhou: %s"), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7), th2.getMessage()}, 2)));
                                    }
                                }
                            } else {
                                Log.w("CentralWatchdog", String.format(M.d0.f("windowDriver leitura ", str, "0x%x falhou (timeout/erro)"), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue7)}, 1)));
                            }
                        }
                    }
                    CentralWatchdogService centralWatchdogService7 = this.b;
                    int areaId2 = carPropertyValue.getAreaId();
                    if (centralWatchdogService7.M().getBoolean("pause_audio_on_door", false) && areaId2 == 1) {
                        if (iIntValue5 == 1) {
                            z4 = true;
                        } else if (iIntValue5 == 2) {
                            z4 = false;
                        }
                        HashMap map = centralWatchdogService7.f2211m;
                        Boolean bool6 = (Boolean) map.get(Integer.valueOf(areaId2));
                        map.put(Integer.valueOf(areaId2), Boolean.valueOf(z4));
                        if (bool6 != null && !bool6.equals(Boolean.valueOf(z4)) && z4) {
                            Log.i("CentralWatchdog", String.format("doorAudioPause: porta 0x%x abriu — pausando mídia (keyevent 127)", Arrays.copyOf(new Object[]{Integer.valueOf(areaId2)}, 1)));
                            new Thread(new RunnableC0026a0(1)).start();
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i2, int i3) {
        switch (this.f549a) {
            case 0:
                Log.w("CentralWatchdog", String.format("aebObserver: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
            case 1:
                break;
            case 2:
                Log.w("CentralWatchdog", String.format("rearCamTurnSignal: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
            case 3:
                Log.w("CentralWatchdog", String.format("recircGuard: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
            default:
                Log.w("CentralWatchdog", String.format("windowDriver: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
        }
    }
}
