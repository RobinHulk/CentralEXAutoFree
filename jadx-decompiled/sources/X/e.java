package X;

import T.RunnableC0159x0;
import T.T0;
import android.app.Service;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: loaded from: classes.dex */
public final class e implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1366a;
    public final /* synthetic */ Service b;

    public /* synthetic */ e(Service service, int i2) {
        this.f1366a = i2;
        this.b = service;
    }

    private final void a(int i2, int i3) {
    }

    private final void b(int i2, int i3) {
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        int iIntValue;
        switch (this.f1366a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.b;
                if (tempStepperService.P && carPropertyValue.getPropertyId() == 356517120 && (carPropertyValue.getValue() instanceof Integer) && SystemClock.uptimeMillis() >= tempStepperService.f2634R) {
                    if ((tempStepperService.f2653r < 0 || carPropertyValue.getAreaId() == tempStepperService.f2653r) && ((Integer) carPropertyValue.getValue()).intValue() != tempStepperService.f2633Q) {
                        RunnableC0159x0 runnableC0159x0 = tempStepperService.S;
                        boolean z2 = runnableC0159x0 != null || tempStepperService.P;
                        Handler handler = tempStepperService.f2649n;
                        if (runnableC0159x0 != null) {
                            handler.removeCallbacks(runnableC0159x0);
                            tempStepperService.S = null;
                        }
                        tempStepperService.P = false;
                        tempStepperService.f2633Q = -1;
                        tempStepperService.f2634R = 0L;
                        if (z2) {
                            Log.i("HvacStepperV2", "Programa ventoinha: ".concat("Alteração manual — temporizador desligado"));
                            handler.post(new b(tempStepperService, 5));
                        }
                    }
                }
                break;
            case 1:
                if (carPropertyValue.getPropertyId() == 358614275) {
                    int areaId = carPropertyValue.getAreaId();
                    TempStepperService tempStepperService2 = (TempStepperService) this.b;
                    if (areaId == tempStepperService2.f2647l && (carPropertyValue.getValue() instanceof Float)) {
                        float fFloatValue = ((Float) carPropertyValue.getValue()).floatValue();
                        if (fFloatValue >= tempStepperService2.f2638a && fFloatValue <= tempStepperService2.b) {
                            tempStepperService2.f2648m = fFloatValue;
                            tempStepperService2.f2649n.post(new T0(this, 12));
                            break;
                        }
                    }
                }
                break;
            default:
                if (carPropertyValue != null && carPropertyValue.getStatus() == 0 && carPropertyValue.getPropertyId() == 289408000) {
                    try {
                        Object value = carPropertyValue.getValue();
                        if ((value instanceof Integer) && (iIntValue = ((Integer) value).intValue()) != ((DriveRegenFloaterService) this.b).f2612x) {
                            ((DriveRegenFloaterService) this.b).f2612x = iIntValue;
                            Log.i("DriveRegenFloater", "troca de marcha GEAR_SELECTION=" + iIntValue + " — reaplicar");
                            DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                            if (driveRegenFloaterService.f2605q != null) {
                                driveRegenFloaterService.c("gear_change");
                            }
                            break;
                        }
                    } catch (Exception unused) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i2, int i3) {
        switch (this.f1366a) {
            case 1:
                Log.w("HvacStepperV2", String.format("Erro CarProperty propId=0x%x area=0x%x", Integer.valueOf(i2), Integer.valueOf(i3)));
                break;
        }
    }
}
