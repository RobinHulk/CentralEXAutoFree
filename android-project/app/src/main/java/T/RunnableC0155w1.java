package T;

import com.ex.auto.HomeFloatingWidgetsService;
import java.util.List;

/* JADX INFO: renamed from: T.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0155w1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1190a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ RunnableC0155w1(HomeFloatingWidgetsService homeFloatingWidgetsService, int i2) {
        this.f1190a = i2;
        this.b = homeFloatingWidgetsService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Double dF;
        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
        switch (this.f1190a) {
            case 0:
                List list = HomeFloatingWidgetsService.f2262Q;
                homeFloatingWidgetsService.r();
                break;
            case 1:
                HomeFloatingWidgetsService.a(homeFloatingWidgetsService);
                break;
            default:
                Integer numG = null;
                try {
                    dF = AbstractC0126q4.f();
                } catch (Throwable unused) {
                    dF = null;
                }
                try {
                    numG = AbstractC0126q4.g();
                    break;
                } catch (Throwable unused2) {
                }
                homeFloatingWidgetsService.f2280c.post(new RunnableC0168z(homeFloatingWidgetsService, dF, numG, 5));
                break;
        }
    }
}
