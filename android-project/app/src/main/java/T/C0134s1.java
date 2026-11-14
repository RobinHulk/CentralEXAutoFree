package T;

import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.ContextWrapper;
import android.os.Handler;
import android.util.Log;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.VhalProviderService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: renamed from: T.s1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0134s1 implements Car.CarServiceLifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1142a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ C0134s1(ContextWrapper contextWrapper, int i2) {
        this.f1142a = i2;
        this.b = contextWrapper;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x027f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0280 A[Catch: Exception -> 0x029e, TryCatch #0 {Exception -> 0x029e, blocks: (B:103:0x0262, B:106:0x0280, B:108:0x0291), top: B:213:0x0262 }] */
    /* JADX WARN: Code duplicated, block: B:194:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:207:0x0404  */
    /* JADX WARN: Code duplicated, block: B:213:0x0262 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0200  */
    /* JADX WARN: Code duplicated, block: B:87:0x020a  */
    /* JADX WARN: Code duplicated, block: B:89:0x0213  */
    @Override // android.car.Car.CarServiceLifecycleListener
    public final void onLifecycleChanged(Car car, boolean z2) {
        CarPropertyManager carPropertyManager;
        Object carManager;
        CarPropertyManager carPropertyManager2;
        Object carManager2;
        int i2;
        Object objInvoke;
        Object objInvoke2;
        int iIntValue;
        int[] iArr;
        Float fD;
        int i3 = 0;
        int i4 = 1;
        switch (this.f1142a) {
            case 0:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                if (z2) {
                    List list = HomeFloatingWidgetsService.f2262Q;
                    if (car != null) {
                        try {
                            carManager = car.getCarManager("property");
                        } catch (Exception unused) {
                        }
                    } else {
                        carManager = null;
                    }
                    if (carManager instanceof CarPropertyManager) {
                        carPropertyManager = (CarPropertyManager) carManager;
                    } else {
                        carPropertyManager = null;
                    }
                } else {
                    carPropertyManager = null;
                }
                homeFloatingWidgetsService.f2282e = carPropertyManager;
                break;
            case 1:
                if (z2) {
                    int i5 = HomeWidgetsPollService.f2303r;
                    if (car != null) {
                        try {
                            carManager2 = car.getCarManager("property");
                        } catch (Exception unused2) {
                        }
                    } else {
                        carManager2 = null;
                    }
                    if (carManager2 instanceof CarPropertyManager) {
                        carPropertyManager2 = (CarPropertyManager) carManager2;
                    } else {
                        carPropertyManager2 = null;
                    }
                } else {
                    carPropertyManager2 = null;
                }
                ((HomeWidgetsPollService) this.b).f2305c = carPropertyManager2;
                break;
            case 2:
                MainActivity mainActivity = (MainActivity) this.b;
                if (z2) {
                    int i6 = MainActivity.u0;
                    Object carManager3 = car.getCarManager("property");
                    mainActivity.f2350G = carManager3 instanceof CarPropertyManager ? (CarPropertyManager) carManager3 : null;
                    Object carManager4 = car.getCarManager("audio");
                    mainActivity.f2351H = carManager4 instanceof CarAudioManager ? (CarAudioManager) carManager4 : null;
                    mainActivity.f2387v.post(new U1(26, mainActivity));
                } else {
                    mainActivity.f2350G = null;
                    mainActivity.f2351H = null;
                    mainActivity.f2387v.post(new U1(27, mainActivity));
                }
                break;
            case 3:
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.b;
                if (z2) {
                    boolean z3 = PhoneSyncService.f2416v;
                    Object carManager5 = car.getCarManager("property");
                    phoneSyncService.f = carManager5 instanceof CarPropertyManager ? (CarPropertyManager) carManager5 : null;
                    Object carManager6 = car.getCarManager("audio");
                    phoneSyncService.f2421g = carManager6 instanceof CarAudioManager ? (CarAudioManager) carManager6 : null;
                    CarPropertyManager carPropertyManager3 = phoneSyncService.f;
                    if (carPropertyManager3 != null) {
                        phoneSyncService.f2422h = new G4(carPropertyManager3);
                    }
                } else {
                    phoneSyncService.f = null;
                    phoneSyncService.f2421g = null;
                    phoneSyncService.f2422h = null;
                }
                break;
            case 4:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                List list2 = QuickAccessFloaterService.f2436j0;
                if (z2) {
                    Object carManager7 = car != null ? car.getCarManager("property") : null;
                    quickAccessFloaterService.f2458K = carManager7 instanceof CarPropertyManager ? (CarPropertyManager) carManager7 : null;
                    break;
                }
                break;
            case 5:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f2524u;
                if (z2) {
                    Object carManager8 = car != null ? car.getCarManager("property") : null;
                    tempBattPillFloaterService.f2529g = carManager8 instanceof CarPropertyManager ? (CarPropertyManager) carManager8 : null;
                    break;
                }
                break;
            case 6:
                boolean z4 = VhalProviderService.f2558j;
                VhalProviderService vhalProviderService = (VhalProviderService) this.b;
                vhalProviderService.getClass();
                if (z2) {
                    vhalProviderService.b = new G4((CarPropertyManager) car.getCarManager("property"));
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                boolean z5 = DriveRegenFloaterService.f2579J;
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                if (z2) {
                    driveRegenFloaterService.getClass();
                    driveRegenFloaterService.f2605q = (CarPropertyManager) car.getCarManager("property");
                    driveRegenFloaterService.o("Car OK");
                    CarPropertyManager carPropertyManager4 = driveRegenFloaterService.f2605q;
                    if (carPropertyManager4 != null) {
                        try {
                            carPropertyManager4.registerCallback(driveRegenFloaterService.f2590I, 289408000, 0.0f);
                        } catch (Exception e2) {
                            M.d0.n(e2, new StringBuilder("registerGearCallback failed: "), "DriveRegenFloater");
                        }
                    }
                    driveRegenFloaterService.k();
                    driveRegenFloaterService.c("car_ready");
                    driveRegenFloaterService.f2607s.postDelayed(driveRegenFloaterService.f2587F, 3000L);
                } else {
                    driveRegenFloaterService.o("Car desconectado");
                }
                break;
            default:
                int[] iArr2 = TempStepperService.f2615X;
                TempStepperService tempStepperService = (TempStepperService) this.b;
                tempStepperService.getClass();
                if (!z2) {
                    Log.w("HvacStepperV2", "CarService desconectado — operação offline");
                } else {
                    CarPropertyManager carPropertyManager5 = (CarPropertyManager) car.getCarManager("property");
                    tempStepperService.f2646k = carPropertyManager5;
                    if (carPropertyManager5 != null) {
                        tempStepperService.f2638a = 16.0f;
                        tempStepperService.b = 30.0f;
                        try {
                            Object objInvoke3 = CarPropertyManager.class.getMethod("getCarPropertyConfig", Integer.TYPE).invoke(tempStepperService.f2646k, 358614275);
                            if (objInvoke3 != null) {
                                Class<?> cls = objInvoke3.getClass();
                                Object objInvoke4 = cls.getMethod("getMinValue", null).invoke(objInvoke3, null);
                                Object objInvoke5 = cls.getMethod("getMaxValue", null).invoke(objInvoke3, null);
                                if ((objInvoke4 instanceof Float) && (objInvoke5 instanceof Float)) {
                                    Float f = (Float) objInvoke4;
                                    float fFloatValue = f.floatValue();
                                    float fFloatValue2 = ((Float) objInvoke5).floatValue();
                                    if (fFloatValue < fFloatValue2 && fFloatValue2 - fFloatValue <= 40.0f) {
                                        float fMax = Math.max(fFloatValue, 16.0f);
                                        tempStepperService.f2638a = fMax;
                                        tempStepperService.b = fFloatValue2;
                                        if (fFloatValue < fMax) {
                                            Log.i("HvacStepperV2", String.format("HAL min %.1f ignorado — uso mínimo UI %.1f °C", f, Float.valueOf(fMax)));
                                        }
                                        Log.i("HvacStepperV2", String.format("Intervalo activo: %.1f°C – %.1f°C (invert HAL=%s)", Float.valueOf(tempStepperService.f2638a), Float.valueOf(tempStepperService.b), Boolean.FALSE));
                                    }
                                }
                                break;
                            }
                        } catch (Exception e3) {
                            Log.d("HvacStepperV2", "getCarPropertyConfig indisponível ou falhou: " + e3.getMessage());
                        }
                    }
                    CarPropertyManager carPropertyManager6 = tempStepperService.f2646k;
                    int[] iArr3 = TempStepperService.f2615X;
                    Handler handler = tempStepperService.f2649n;
                    int i7 = 4;
                    if (carPropertyManager6 != null) {
                        int i8 = 0;
                        while (true) {
                            if (i8 < i7) {
                                int i9 = iArr3[i8];
                                try {
                                    CarPropertyValue property = tempStepperService.f2646k.getProperty(358614275, i9);
                                    if (property != null && (property.getValue() instanceof Float)) {
                                        Float f2 = (Float) property.getValue();
                                        tempStepperService.f2648m = f2.floatValue();
                                        tempStepperService.f2647l = i9;
                                        Log.i("HvacStepperV2", String.format("Temp HAL=%.1f → UI=%.1f°C (area=0x%x)", f2, f2, Integer.valueOf(i9)));
                                        handler.post(new X.b(tempStepperService, 8));
                                    }
                                } catch (Exception e4) {
                                    Log.d("HvacStepperV2", String.format("area 0x%x inválida: %s", Integer.valueOf(i9), e4.getMessage()));
                                }
                                i8++;
                                i7 = 4;
                            } else {
                                Log.w("HvacStepperV2", "Não foi possível ler temperatura — usando valor padrão 22.0");
                                handler.post(new X.b(tempStepperService, 0));
                            }
                        }
                    }
                    CarPropertyManager carPropertyManager7 = tempStepperService.f2646k;
                    if (carPropertyManager7 != null) {
                        try {
                            X.e eVar = new X.e(tempStepperService, i4);
                            tempStepperService.f2635T = eVar;
                            carPropertyManager7.registerCallback(eVar, 358614275, 0.0f);
                        } catch (Exception e5) {
                            M.d0.n(e5, new StringBuilder("registerCallback falhou: "), "HvacStepperV2");
                            tempStepperService.f2635T = null;
                        }
                    }
                    CarPropertyManager carPropertyManager8 = tempStepperService.f2646k;
                    if (carPropertyManager8 != null) {
                        try {
                            carPropertyManager8.registerCallback(tempStepperService.f2636U, 356517120, 0.0f);
                        } catch (Exception e6) {
                            M.d0.n(e6, new StringBuilder("registerCallback ventoinha falhou: "), "HvacStepperV2");
                        }
                    }
                    if (!tempStepperService.f2618A) {
                        tempStepperService.f2618A = true;
                        handler.postDelayed(tempStepperService.f2619B, 3000L);
                        Log.d("HvacStepperV2", "Polling iniciado (intervalo=3000ms)");
                    }
                    if (tempStepperService.f2646k != null) {
                        tempStepperService.f2651p = false;
                        tempStepperService.f2652q = -1;
                        for (int i10 = 0; i10 < 4; i10++) {
                            int i11 = iArr3[i10];
                            try {
                                float floatProperty = tempStepperService.f2646k.getFloatProperty(358614274, i11);
                                if (!Float.isNaN(floatProperty) && floatProperty > -45.0f && floatProperty < 65.0f) {
                                    tempStepperService.f2652q = i11;
                                    tempStepperService.f2651p = true;
                                    tempStepperService.f2656u = floatProperty;
                                    Log.i("HvacStepperV2", String.format("Sensor cabina OK (HVAC_TEMPERATURE_CURRENT) area=0x%x → %.1f°C", Integer.valueOf(i11), Float.valueOf(floatProperty)));
                                    if (!tempStepperService.f2651p) {
                                        Log.w("HvacStepperV2", "HVAC_TEMPERATURE_CURRENT indisponível — AUTO usará só modo sistema (OEM) se activar.");
                                    }
                                    if (tempStepperService.f2646k != null) {
                                        tempStepperService.f2657v = false;
                                        tempStepperService.f2658w = -1;
                                        iArr = TempStepperService.f2616Y;
                                        while (true) {
                                            if (i3 >= 4) {
                                                Log.w("HvacStepperV2", "ENV_OUTSIDE_TEMPERATURE indisponível em todas as zonas testadas.");
                                            } else {
                                                int i12 = iArr[i3];
                                                fD = tempStepperService.d(i12);
                                                if (fD != null || Float.isNaN(fD.floatValue()) || fD.floatValue() <= -55.0f || fD.floatValue() >= 70.0f) {
                                                    i3++;
                                                } else {
                                                    tempStepperService.f2658w = i12;
                                                    tempStepperService.f2657v = true;
                                                    tempStepperService.f2659x = fD.floatValue();
                                                    Log.i("HvacStepperV2", String.format("Exterior OK (ENV_OUTSIDE_TEMPERATURE) area=0x%x → %.1f°C", Integer.valueOf(i12), fD));
                                                }
                                            }
                                        }
                                    }
                                    i2 = 7;
                                    if (tempStepperService.f2646k != null) {
                                        try {
                                            objInvoke = CarPropertyManager.class.getMethod("getCarPropertyConfig", Integer.TYPE).invoke(tempStepperService.f2646k, 356517120);
                                            if (objInvoke == null) {
                                                objInvoke2 = objInvoke.getClass().getMethod("getMaxValue", null).invoke(objInvoke, null);
                                                if ((objInvoke2 instanceof Integer) && (iIntValue = ((Integer) objInvoke2).intValue()) >= 1 && iIntValue <= 16) {
                                                    i2 = iIntValue;
                                                }
                                            }
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    tempStepperService.f2654s = i2;
                                    tempStepperService.f2653r = -1;
                                    handler.post(new X.b(tempStepperService, 1));
                                    break;
                                }
                            } catch (Exception e7) {
                                Log.d("HvacStepperV2", String.format("cabina area 0x%x: %s", Integer.valueOf(i11), e7.getMessage()));
                            }
                        }
                        if (!tempStepperService.f2651p) {
                            Log.w("HvacStepperV2", "HVAC_TEMPERATURE_CURRENT indisponível — AUTO usará só modo sistema (OEM) se activar.");
                        }
                        if (tempStepperService.f2646k != null) {
                            tempStepperService.f2657v = false;
                            tempStepperService.f2658w = -1;
                            iArr = TempStepperService.f2616Y;
                            while (true) {
                                if (i3 >= 4) {
                                    Log.w("HvacStepperV2", "ENV_OUTSIDE_TEMPERATURE indisponível em todas as zonas testadas.");
                                } else {
                                    int i13 = iArr[i3];
                                    fD = tempStepperService.d(i13);
                                    if (fD != null) {
                                    }
                                    i3++;
                                }
                            }
                        }
                        i2 = 7;
                        if (tempStepperService.f2646k != null) {
                            objInvoke = CarPropertyManager.class.getMethod("getCarPropertyConfig", Integer.TYPE).invoke(tempStepperService.f2646k, 356517120);
                            if (objInvoke == null) {
                                objInvoke2 = objInvoke.getClass().getMethod("getMaxValue", null).invoke(objInvoke, null);
                                if (objInvoke2 instanceof Integer) {
                                    i2 = iIntValue;
                                }
                            }
                        }
                        tempStepperService.f2654s = i2;
                        tempStepperService.f2653r = -1;
                        handler.post(new X.b(tempStepperService, 1));
                        break;
                    }
                }
                break;
        }
    }
}
