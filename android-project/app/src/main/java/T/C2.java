package T;

import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f529a;
    public final /* synthetic */ CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f530c;

    public /* synthetic */ C2(CarPropertyManager carPropertyManager, int i2, int i3) {
        this.f529a = i3;
        this.b = carPropertyManager;
        this.f530c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 0;
        int i3 = this.f530c;
        CarPropertyManager carPropertyManager = this.b;
        switch (this.f529a) {
            case 0:
                int i4 = MainActivity.u0;
                int[] iArr = AbstractC0121q.f1100a;
                int length = iArr.length;
                while (i2 < length) {
                    int i5 = iArr[i2];
                    try {
                        carPropertyManager.setIntProperty(557871191, i5, i3);
                    } catch (Exception e2) {
                        StringBuilder sbH = M.d0.h("restoreSavedAvasSoundType area=", i5, ": ");
                        sbH.append(e2.getMessage());
                        Log.w("MainActivity", sbH.toString());
                        i2++;
                    }
                    break;
                }
                break;
            case 1:
                List list = QuickAccessFloaterService.f2436j0;
                int[] iArr2 = {0, 1, 16777216};
                while (i2 < 3) {
                    try {
                        carPropertyManager.setIntProperty(570491136, iArr2[i2], i3);
                    } catch (Exception unused) {
                        i2++;
                    }
                    break;
                }
                break;
            default:
                List list2 = QuickAccessFloaterService.f2436j0;
                int[] iArr3 = {0, 1};
                while (i2 < 2) {
                    try {
                        carPropertyManager.setIntProperty(537003264, iArr3[i2], i3);
                    } catch (Exception unused2) {
                        i2++;
                    }
                    break;
                }
                break;
        }
    }
}
