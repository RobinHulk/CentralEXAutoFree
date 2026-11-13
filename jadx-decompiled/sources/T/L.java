package T;

import android.os.Handler;
import android.util.Log;
import com.ex.auto.BlackoutFloaterService;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class L implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f663a;
    public final /* synthetic */ BlackoutFloaterService b;

    public /* synthetic */ L(BlackoutFloaterService blackoutFloaterService, int i2) {
        this.f663a = i2;
        this.b = blackoutFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iO;
        int i2 = 1;
        switch (this.f663a) {
            case 0:
                boolean z2 = BlackoutFloaterService.f2135p;
                BlackoutFloaterService blackoutFloaterService = this.b;
                blackoutFloaterService.getClass();
                boolean zA = BlackoutFloaterService.a();
                Handler handler = blackoutFloaterService.f2142h;
                if (!zA) {
                    Log.w("BlackoutFloater", "SELinux enforcing — não foi possível garantir permissão; abortando blackout");
                    handler.post(new L(blackoutFloaterService, i2));
                } else {
                    try {
                        iO = A.b.o(Integer.parseInt(O0.j.X0(A.b.b0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString()), 1, 255);
                    } catch (Exception unused) {
                        iO = 166;
                    }
                    if (!BlackoutFloaterService.f(0)) {
                        Log.w("BlackoutFloater", "Escrita do backlight falhou — não fazendo toggle");
                        handler.post(new L(blackoutFloaterService, 2));
                    } else {
                        handler.post(new K(blackoutFloaterService, iO, 1));
                    }
                }
                break;
            case 1:
                BlackoutFloaterService blackoutFloaterService2 = this.b;
                blackoutFloaterService2.f2139d = false;
                if (BlackoutFloaterService.f2135p) {
                    blackoutFloaterService2.b();
                }
                break;
            default:
                BlackoutFloaterService blackoutFloaterService3 = this.b;
                blackoutFloaterService3.f2139d = false;
                if (BlackoutFloaterService.f2135p) {
                    blackoutFloaterService3.b();
                }
                break;
        }
    }
}
