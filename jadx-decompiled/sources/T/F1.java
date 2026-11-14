package T;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.HomeFloatingWidgetsService;

/* JADX INFO: loaded from: classes.dex */
public final class F1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f561a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ F1(HomeFloatingWidgetsService homeFloatingWidgetsService, int i2) {
        this.f561a = i2;
        this.b = homeFloatingWidgetsService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f561a) {
            case 0:
                CarPropertyManager carPropertyManager = this.b.f2282e;
                if (carPropertyManager != null) {
                    HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                    int[] iArr = H1.f606a;
                    homeFloatingWidgetsService.f2284h = H1.g(carPropertyManager, 570491136, H1.f, H1.f611h);
                    this.b.f2285i = H1.g(carPropertyManager, 537003264, H1.f609e, H1.f612i);
                    this.b.f2286j = H1.e(carPropertyManager);
                    this.b.f2287k = H1.k(carPropertyManager);
                    this.b.f2288l = H1.l(carPropertyManager);
                    this.b.f2289m = H1.i(carPropertyManager);
                    this.b.f2290n = H1.h(carPropertyManager);
                    this.b.f2291o = H1.m(carPropertyManager);
                    this.b.f2292p = H1.f(carPropertyManager);
                    this.b.f2293q = H1.n(carPropertyManager);
                    this.b.f2294r = H1.j(carPropertyManager, 1);
                    this.b.f2295s = H1.j(carPropertyManager, 4);
                    this.b.f2296t = H1.d(carPropertyManager);
                }
                this.b.E();
                this.b.F();
                this.b.H();
                this.b.J();
                this.b.I();
                this.b.G();
                this.b.f2280c.postDelayed(this, 3000L);
                break;
            case 1:
                new Thread(new H(this.b, 8, this)).start();
                break;
            default:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = this.b;
                new Thread(new RunnableC0155w1(homeFloatingWidgetsService2, 2)).start();
                homeFloatingWidgetsService2.f2280c.postDelayed(this, 2000L);
                break;
        }
    }
}
