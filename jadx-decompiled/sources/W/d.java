package W;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.geely.driveregenfloater.DriveRegenFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class d extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1359a;
    public final /* synthetic */ DriveRegenFloaterService b;

    public /* synthetic */ d(DriveRegenFloaterService driveRegenFloaterService, int i2) {
        this.f1359a = i2;
        this.b = driveRegenFloaterService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f1359a) {
            case 0:
                String action = intent.getAction();
                boolean zEquals = "UPDATE_FLOATER_ALPHA".equals(action);
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                if (zEquals) {
                    int intExtra = intent.getIntExtra("alpha", 100);
                    View view = driveRegenFloaterService.b;
                    if (view != null) {
                        view.setAlpha(intExtra / 100.0f);
                    }
                    break;
                } else if ("UPDATE_DRIVE_REGEN_MODES".equals(action) && driveRegenFloaterService.f2605q != null) {
                    driveRegenFloaterService.c("external_update");
                    break;
                }
                break;
            default:
                String action2 = intent.getAction();
                if ("android.intent.action.SCREEN_ON".equals(action2) || "android.intent.action.USER_PRESENT".equals(action2)) {
                    DriveRegenFloaterService driveRegenFloaterService2 = this.b;
                    if (driveRegenFloaterService2.f2605q != null) {
                        driveRegenFloaterService2.c("wake");
                    }
                }
                break;
        }
    }
}
