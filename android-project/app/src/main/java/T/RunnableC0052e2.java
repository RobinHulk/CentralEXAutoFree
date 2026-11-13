package T;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0052e2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f948a;
    public final /* synthetic */ CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f949c;

    public /* synthetic */ RunnableC0052e2(CarPropertyManager carPropertyManager, MainActivity mainActivity, int i2) {
        this.f948a = i2;
        this.b = carPropertyManager;
        this.f949c = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Float f;
        CarPropertyManager carPropertyManager = this.b;
        switch (this.f948a) {
            case 0:
                int i2 = MainActivity.u0;
                try {
                    f = new G4(carPropertyManager).a().f579n;
                } catch (Exception unused) {
                    f = null;
                }
                Float f2 = f;
                MainActivity mainActivity = this.f949c;
                mainActivity.f2387v.post(new RunnableC0164y0(mainActivity, f2, MainActivity.Z0(carPropertyManager, 537003264, mainActivity.f2381q0, mainActivity.f2383s0), MainActivity.Z0(carPropertyManager, 570491136, mainActivity.f2382r0, mainActivity.f2385t0), 2));
                break;
            default:
                MainActivity mainActivity2 = this.f949c;
                int i3 = MainActivity.u0;
                try {
                    Integer numC = U.c(carPropertyManager, 557858874, 0);
                    if (numC != null) {
                        mainActivity2.B0().edit().putBoolean("aeb_desired", numC.intValue() != 0).apply();
                    }
                } catch (Throwable unused2) {
                    return;
                }
                break;
        }
    }
}
