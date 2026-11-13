package C;

import android.app.Service;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import p014j.a1;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f36a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(Service service, Handler handler, int i2) {
        super(handler);
        this.f36a = i2;
        this.b = service;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.f36a) {
            case 0:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2) {
        Cursor cursor;
        switch (this.f36a) {
            case 0:
                a1 a1Var = (a1) this.b;
                if (a1Var.b && (cursor = a1Var.f39c) != null && !cursor.isClosed()) {
                    a1Var.f38a = a1Var.f39c.requery();
                    break;
                }
                break;
            case 1:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) this.b;
                if (blackoutFloaterService.f2138c) {
                    Log.i("BlackoutFloater", "Volume (Settings) alterado — restaurando backlight");
                    blackoutFloaterService.e();
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                if (quickAccessFloaterService.f2459L && SystemClock.elapsedRealtime() - quickAccessFloaterService.P >= 1500) {
                    quickAccessFloaterService.Z();
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(a1 a1Var) {
        super(new Handler());
        this.f36a = 0;
        this.b = a1Var;
    }
}
