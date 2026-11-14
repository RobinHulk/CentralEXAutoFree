package T;

import android.net.wifi.WifiManager;
import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Y3 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f865a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ Y3(QuickAccessFloaterService quickAccessFloaterService, int i2) {
        this.f865a = i2;
        this.b = quickAccessFloaterService;
    }

    @Override // H0.a
    public final Object a() {
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f865a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.N(570491137);
                return v0.e.f4161c;
            case 1:
                List list2 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.N(570491138);
                return v0.e.f4161c;
            case 2:
                List list3 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.N(570491139);
                return v0.e.f4161c;
            case 3:
                List list4 = QuickAccessFloaterService.f2436j0;
                return quickAccessFloaterService.getSharedPreferences("quick_access_prefs", 0);
            case 4:
                List list5 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.O(537003265);
                return v0.e.f4161c;
            case 5:
                List list6 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.O(537003266);
                return v0.e.f4161c;
            case 6:
                List list7 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.O(537003267);
                return v0.e.f4161c;
            case PlaybackState.STATE_ERROR /* 7 */:
                List list8 = QuickAccessFloaterService.f2436j0;
                return DriveRegenFloaterService.h(quickAccessFloaterService);
            case Response.NO /* 8 */:
                List list9 = QuickAccessFloaterService.f2436j0;
                return quickAccessFloaterService.getSharedPreferences("tela_preta_prefs", 0);
            case 9:
                List list10 = QuickAccessFloaterService.f2436j0;
                Object systemService = quickAccessFloaterService.getApplicationContext().getSystemService("wifi");
                I0.f.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                return (WifiManager) systemService;
            default:
                TextView textView = quickAccessFloaterService.f2494r;
                if (textView != null) {
                    quickAccessFloaterService.f2471a.post(new V3(quickAccessFloaterService, textView, 0));
                }
                return v0.e.f4161c;
        }
    }
}
