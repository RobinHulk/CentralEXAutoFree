package T;

import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.c4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0042c4 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f922a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ ViewOnClickListenerC0042c4(QuickAccessFloaterService quickAccessFloaterService, int i2) {
        this.f922a = i2;
        this.b = quickAccessFloaterService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f922a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.F(null, "drive_regen");
                break;
            case 1:
                List list2 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.Z();
                break;
            default:
                List list3 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.r().edit().putBoolean("screen_off_warning_seen", true).apply();
                LinearLayout linearLayout = quickAccessFloaterService.f2478e;
                if (linearLayout != null) {
                    try {
                        WindowManager windowManager = quickAccessFloaterService.b;
                        if (windowManager != null) {
                            windowManager.removeView(linearLayout);
                        }
                        break;
                    } catch (Exception unused) {
                    }
                }
                quickAccessFloaterService.f2478e = null;
                quickAccessFloaterService.S(false);
                break;
        }
    }
}
