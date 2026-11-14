package T;

import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.FavoriteAppsActivity;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: renamed from: T.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0079j implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1014a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ ViewOnClickListenerC0079j(ContextWrapper contextWrapper, int i2) {
        this.f1014a = i2;
        this.b = contextWrapper;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ContextWrapper contextWrapper = this.b;
        switch (this.f1014a) {
            case 0:
                int i2 = AcProgramListActivity.f2112u;
                ((AcProgramListActivity) contextWrapper).finish();
                break;
            case 1:
                int i3 = BackgroundKeepAliveActivity.f2133a;
                ((BackgroundKeepAliveActivity) contextWrapper).finish();
                break;
            case 2:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) contextWrapper;
                if (!blackoutFloaterService.f2149o) {
                    boolean z2 = blackoutFloaterService.f2138c;
                    if (!z2) {
                        if (!z2 && !blackoutFloaterService.f2139d) {
                            blackoutFloaterService.f2139d = true;
                            boolean z3 = DriveRegenFloaterService.f2579J;
                            blackoutFloaterService.f = z3;
                            blackoutFloaterService.f2141g = TempStepperService.f2617Z;
                            if (z3) {
                                blackoutFloaterService.stopService(new Intent(blackoutFloaterService, (Class<?>) DriveRegenFloaterService.class));
                            }
                            if (blackoutFloaterService.f2141g) {
                                blackoutFloaterService.stopService(new Intent(blackoutFloaterService, (Class<?>) TempStepperService.class));
                            }
                            new Thread(new L(blackoutFloaterService, 0)).start();
                            break;
                        }
                    } else {
                        blackoutFloaterService.e();
                        break;
                    }
                }
                break;
            case 3:
                int i4 = CloseAppsWhitelistActivity.f2236a;
                ((CloseAppsWhitelistActivity) contextWrapper).finish();
                break;
            default:
                int i5 = FavoriteAppsActivity.f2260a;
                ((FavoriteAppsActivity) contextWrapper).finish();
                break;
        }
    }
}
