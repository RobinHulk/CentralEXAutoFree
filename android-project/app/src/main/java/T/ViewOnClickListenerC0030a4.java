package T;

import android.app.AlertDialog;
import android.content.Intent;
import android.view.View;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.a4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0030a4 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f884a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ I0.l f885c;

    public /* synthetic */ ViewOnClickListenerC0030a4(QuickAccessFloaterService quickAccessFloaterService, I0.l lVar, int i2) {
        this.f884a = i2;
        this.b = quickAccessFloaterService;
        this.f885c = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        I0.l lVar = this.f885c;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f884a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                try {
                    quickAccessFloaterService.startActivity(new Intent(quickAccessFloaterService, (Class<?>) FavoriteAppsActivity.class).addFlags(268435456));
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("showFavoriteAppsPicker: abrir FavoriteAppsActivity falhou: "), "QuickAccessFloater");
                }
                Object obj = lVar.b;
                if (obj != null) {
                    ((AlertDialog) obj).dismiss();
                    return;
                } else {
                    I0.f.h("dlg");
                    throw null;
                }
            default:
                List list2 = QuickAccessFloaterService.f2436j0;
                try {
                    quickAccessFloaterService.startActivity(new Intent(quickAccessFloaterService, (Class<?>) CloseAppsWhitelistActivity.class).addFlags(268435456));
                } catch (Exception e3) {
                    M.d0.n(e3, new StringBuilder("confirmCloseUserApps: abrir CloseAppsWhitelistActivity falhou: "), "QuickAccessFloater");
                }
                Object obj2 = lVar.b;
                if (obj2 != null) {
                    ((AlertDialog) obj2).dismiss();
                    return;
                } else {
                    I0.f.h("dlg");
                    throw null;
                }
        }
    }
}
