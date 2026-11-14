package T;

import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0050e0 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f946a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ C0050e0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f946a = i2;
        this.b = centralWatchdogService;
    }

    @Override // H0.a
    public final Object a() throws InterruptedException {
        switch (this.f946a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                this.b.f0("despertar");
                return v0.e.f4161c;
            case 1:
                int[] iArr2 = CentralWatchdogService.d2;
                return this.b.getSharedPreferences("tela_preta_prefs", 0);
            case 2:
                CentralWatchdogService centralWatchdogService = this.b;
                centralWatchdogService.f2190a.post(new RunnableC0116p0(centralWatchdogService, 24));
                return v0.e.f4161c;
            case 3:
                int[] iArr3 = CentralWatchdogService.d2;
                this.b.a(true);
                return v0.e.f4161c;
            case 4:
                CentralWatchdogService centralWatchdogService2 = this.b;
                boolean zR = Y.R(centralWatchdogService2);
                int[] iArr4 = CentralWatchdogService.d2;
                List list = QuickAccessFloaterService.f2436j0;
                if (!QuickAccessFloaterService.n0 && !BlackoutFloaterService.f2136q && !centralWatchdogService2.f2223s0) {
                    if (centralWatchdogService2.f2185U == null || Boolean.valueOf(zR).equals(centralWatchdogService2.f2185U)) {
                        Y.c0(centralWatchdogService2, centralWatchdogService2.M());
                    } else {
                        Y.b0(centralWatchdogService2, centralWatchdogService2.M());
                    }
                }
                centralWatchdogService2.f2185U = Boolean.valueOf(zR);
                return v0.e.f4161c;
            default:
                int[] iArr5 = CentralWatchdogService.d2;
                this.b.f0("conexão BT");
                return v0.e.f4161c;
        }
    }
}
