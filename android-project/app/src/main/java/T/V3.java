package T;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class V3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f819a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f820c;

    public /* synthetic */ V3(QuickAccessFloaterService quickAccessFloaterService, TextView textView, int i2) {
        this.f819a = i2;
        this.b = quickAccessFloaterService;
        this.f820c = textView;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0026: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:12:0x0026 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Car carCreateCar;
        Exception e2;
        Car car;
        TextView textView = this.f820c;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f819a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.Y(textView);
                return;
            case 1:
                List list2 = QuickAccessFloaterService.f2436j0;
                Car car2 = null;
                boolValueOf = null;
                Boolean boolValueOf = null;
                try {
                    try {
                        carCreateCar = Car.createCar(quickAccessFloaterService);
                        try {
                            Object carManager = carCreateCar.getCarManager("property");
                            CarPropertyManager carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                            if (carPropertyManager != null) {
                                Integer numC = U.c(carPropertyManager, 557858874, 0);
                                if (numC != null) {
                                    boolValueOf = Boolean.valueOf(numC.intValue() != 0);
                                }
                            }
                            quickAccessFloaterService.f2497u = boolValueOf;
                            if (boolValueOf != null) {
                                quickAccessFloaterService.r().edit().putBoolean("aeb_state_saved", boolValueOf.booleanValue()).apply();
                            }
                        } catch (Exception e3) {
                            e2 = e3;
                            Log.w("QuickAccessFloater", "AEB read: " + e2.getMessage());
                            if (carCreateCar != null) {
                            }
                            quickAccessFloaterService.f2471a.post(new V3(quickAccessFloaterService, textView, 2));
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        car2 = car;
                        if (car2 != null) {
                            try {
                                car2.disconnect();
                                break;
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                    break;
                } catch (Exception e4) {
                    carCreateCar = null;
                    e2 = e4;
                } catch (Throwable th2) {
                    th = th2;
                    if (car2 != null) {
                        car2.disconnect();
                        break;
                    }
                    throw th;
                }
                try {
                    carCreateCar.disconnect();
                    break;
                } catch (Exception unused2) {
                }
                quickAccessFloaterService.f2471a.post(new V3(quickAccessFloaterService, textView, 2));
                return;
            default:
                List list3 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.U(textView);
                return;
        }
    }
}
