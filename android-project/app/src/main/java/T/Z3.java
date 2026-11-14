package T;

import android.car.hardware.property.CarPropertyManager;
import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Z3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f873a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f874c;

    public /* synthetic */ Z3(QuickAccessFloaterService quickAccessFloaterService, int i2, int i3) {
        this.f873a = i3;
        this.b = quickAccessFloaterService;
        this.f874c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f873a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                this.b.v(this.f874c - 1);
                break;
            case 1:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i2 = this.f874c;
                CarPropertyManager carPropertyManager = quickAccessFloaterService.f2458K;
                if (carPropertyManager != null) {
                    new Thread(new C2(carPropertyManager, i2, 2)).start();
                    break;
                }
                break;
            default:
                TextView textView = this.b.f;
                if (textView != null) {
                    textView.setAlpha(this.f874c / 100.0f);
                }
                break;
        }
    }
}
