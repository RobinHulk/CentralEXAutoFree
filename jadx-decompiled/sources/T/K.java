package T;

import android.content.IntentFilter;
import android.provider.Settings;
import com.ex.auto.BlackoutFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class K implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f644a;
    public final /* synthetic */ BlackoutFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f645c;

    public /* synthetic */ K(BlackoutFloaterService blackoutFloaterService, int i2, int i3) {
        this.f644a = i3;
        this.b = blackoutFloaterService;
        this.f645c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f644a) {
            case 0:
                boolean z2 = BlackoutFloaterService.f2135p;
                this.b.getClass();
                int i2 = this.f645c;
                if (!BlackoutFloaterService.f(i2)) {
                    BlackoutFloaterService.a();
                    BlackoutFloaterService.f(i2);
                }
                break;
            default:
                BlackoutFloaterService blackoutFloaterService = this.b;
                int i3 = this.f645c;
                blackoutFloaterService.f2139d = false;
                if (BlackoutFloaterService.f2135p) {
                    blackoutFloaterService.f2140e = i3;
                    blackoutFloaterService.f2138c = true;
                    BlackoutFloaterService.f2136q = true;
                    blackoutFloaterService.d();
                    C.a aVar = new C.a(blackoutFloaterService, blackoutFloaterService.f2142h, 1);
                    blackoutFloaterService.f2143i = aVar;
                    blackoutFloaterService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, aVar);
                    N n2 = new N(blackoutFloaterService, 0);
                    blackoutFloaterService.f2144j = n2;
                    blackoutFloaterService.registerReceiver(n2, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                    break;
                }
                break;
        }
    }
}
