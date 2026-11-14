package T;

import android.content.Intent;
import com.ex.auto.WifiFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Q4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f772a;
    public final /* synthetic */ WifiFloaterService b;

    public /* synthetic */ Q4(WifiFloaterService wifiFloaterService, int i2) {
        this.f772a = i2;
        this.b = wifiFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WifiFloaterService wifiFloaterService = this.b;
        switch (this.f772a) {
            case 0:
                int i2 = WifiFloaterService.f2567n;
                wifiFloaterService.getClass();
                try {
                    Intent intent = new Intent("android.settings.WIFI_SETTINGS");
                    intent.setFlags(268435456);
                    wifiFloaterService.startActivity(intent);
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                int i3 = WifiFloaterService.f2567n;
                wifiFloaterService.a();
                break;
        }
    }
}
