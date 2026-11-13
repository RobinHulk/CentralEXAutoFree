package X;

import M.d0;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1365a;
    public final /* synthetic */ TempStepperService b;

    public /* synthetic */ d(TempStepperService tempStepperService, int i2) {
        this.f1365a = i2;
        this.b = tempStepperService;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00be  */
    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        boolean z2;
        int i3;
        Float fD;
        int i4;
        switch (this.f1365a) {
            case 0:
                TempStepperService tempStepperService = this.b;
                boolean z3 = tempStepperService.f2650o;
                if (z3) {
                    CarPropertyManager carPropertyManager = tempStepperService.f2646k;
                    Handler handler = tempStepperService.f2649n;
                    if (carPropertyManager != null && z3 && !tempStepperService.f2660y && !tempStepperService.P && tempStepperService.f2651p && (i2 = tempStepperService.f2652q) >= 0) {
                        try {
                            float floatProperty = carPropertyManager.getFloatProperty(358614274, i2);
                            tempStepperService.f2656u = floatProperty;
                            float f = tempStepperService.f2648m;
                            float fAbs = Math.abs(f - floatProperty);
                            int iMin = 1;
                            int iMax = Math.max(1, tempStepperService.f2654s);
                            if (fAbs > 0.35f) {
                                if (fAbs <= 0.7f) {
                                    iMin = Math.min(2, iMax);
                                } else if (fAbs <= 1.2f) {
                                    iMin = Math.min(3, iMax);
                                } else if (fAbs <= 2.0f) {
                                    iMin = Math.min(4, iMax);
                                } else if (fAbs <= 3.5f) {
                                    iMin = Math.min(5, iMax);
                                } else {
                                    iMin = fAbs <= 5.0f ? Math.min(6, iMax) : iMax;
                                }
                            }
                            int iG = tempStepperService.g();
                            if (iMin != tempStepperService.f2655t) {
                                tempStepperService.f2646k.setIntProperty(356517120, iG, iMin);
                                tempStepperService.f2655t = iMin;
                                Log.i("HvacStepperV2", String.format("AUTO: cabina=%.1f°C alvo=%.1f°C err=%.1f → ventoinha=%d (area=0x%x)", Float.valueOf(floatProperty), Float.valueOf(f), Float.valueOf(fAbs), Integer.valueOf(iMin), Integer.valueOf(iG)));
                            }
                            handler.post(new b(tempStepperService, 2));
                        } catch (Exception e2) {
                            d0.n(e2, new StringBuilder("AUTO tick: "), "HvacStepperV2");
                        }
                    }
                    if (tempStepperService.f2650o) {
                        handler.postDelayed(this, 2500L);
                    }
                    break;
                }
                break;
            case 1:
                TempStepperService tempStepperService2 = this.b;
                if (tempStepperService2.f2618A) {
                    CarPropertyManager carPropertyManager2 = tempStepperService2.f2646k;
                    Handler handler2 = tempStepperService2.f2649n;
                    if (carPropertyManager2 != null) {
                        float f2 = tempStepperService2.f2656u;
                        if (tempStepperService2.f2651p && (i4 = tempStepperService2.f2652q) >= 0) {
                            try {
                                tempStepperService2.f2656u = carPropertyManager2.getFloatProperty(358614274, i4);
                                break;
                            } catch (Exception unused) {
                            }
                        }
                        boolean z4 = true;
                        try {
                            CarPropertyValue property = tempStepperService2.f2646k.getProperty(358614275, tempStepperService2.f2647l);
                            if (property == null || !(property.getValue() instanceof Float)) {
                                z2 = false;
                            } else {
                                Float f3 = (Float) property.getValue();
                                float fFloatValue = f3.floatValue();
                                if (fFloatValue < tempStepperService2.f2638a || fFloatValue > tempStepperService2.b || Math.abs(fFloatValue - tempStepperService2.f2648m) < 0.01f) {
                                    z2 = false;
                                } else {
                                    Log.i("HvacStepperV2", String.format("Poll UI: %.1f°C → %.1f°C (HAL=%.1f area=0x%x)", Float.valueOf(tempStepperService2.f2648m), f3, f3, Integer.valueOf(tempStepperService2.f2647l)));
                                    tempStepperService2.f2648m = fFloatValue;
                                    z2 = true;
                                }
                            }
                        } catch (Exception e3) {
                            Log.d("HvacStepperV2", "pollCurrentTemp falhou: " + e3.getMessage());
                        }
                        boolean z5 = tempStepperService2.f2651p && !(Float.isNaN(f2) == Float.isNaN(tempStepperService2.f2656u) && (Float.isNaN(f2) || Float.isNaN(tempStepperService2.f2656u) || Math.abs(f2 - tempStepperService2.f2656u) < 0.05f));
                        float f4 = tempStepperService2.f2659x;
                        if (tempStepperService2.f2657v && (i3 = tempStepperService2.f2658w) >= 0 && (fD = tempStepperService2.d(i3)) != null) {
                            tempStepperService2.f2659x = fD.floatValue();
                        }
                        if (!tempStepperService2.f2657v || (Float.isNaN(f4) == Float.isNaN(tempStepperService2.f2659x) && (Float.isNaN(f4) || Float.isNaN(tempStepperService2.f2659x) || Math.abs(f4 - tempStepperService2.f2659x) < 0.05f))) {
                            z4 = false;
                        }
                        if (z2 || z5 || z4) {
                            handler2.post(new b(tempStepperService2, 3));
                        }
                    }
                    handler2.postDelayed(this, 3000L);
                    break;
                }
                break;
            default:
                TempStepperService tempStepperService3 = this.b;
                View view = tempStepperService3.f2640d;
                if (view != null && tempStepperService3.f2639c != null) {
                    tempStepperService3.f2626I = true;
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
                    tempStepperService3.f2620C = layoutParams.x;
                    tempStepperService3.f2621D = layoutParams.y;
                    tempStepperService3.f2622E = tempStepperService3.f2624G;
                    tempStepperService3.f2623F = tempStepperService3.f2625H;
                    break;
                }
                break;
        }
    }
}
