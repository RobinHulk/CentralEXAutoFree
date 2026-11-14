package T;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.util.Log;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class O1 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f719a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f721d;

    public /* synthetic */ O1(Object obj, Object obj2, Serializable serializable, int i2) {
        this.f719a = i2;
        this.b = obj;
        this.f720c = obj2;
        this.f721d = serializable;
    }

    @Override // H0.a
    public final Object a() {
        Serializable serializable = this.f721d;
        Object obj = this.f720c;
        Object obj2 = this.b;
        switch (this.f719a) {
            case 0:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) obj2;
                lyricsFloaterService.f2326c.post(new RunnableC0168z(lyricsFloaterService, (String) obj, (String) serializable, 6));
                return v0.e.f4161c;
            default:
                ActivityManager activityManager = (ActivityManager) obj2;
                C0096l4 c0096l4 = (C0096l4) obj;
                List list = QuickAccessFloaterService.f2436j0;
                try {
                    activityManager.moveTaskToFront(c0096l4.f1041a, 1);
                    Log.i("QuickAccessFloater", "Gesto 3 dedos: indo para " + c0096l4.b + " (taskId=" + c0096l4.f1041a + ')');
                    break;
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("goToLastApp: moveTaskToFront falhou: "), "QuickAccessFloater");
                }
                Object obj3 = ((I0.l) serializable).b;
                if (obj3 != null) {
                    ((AlertDialog) obj3).dismiss();
                    return v0.e.f4161c;
                }
                I0.f.h("dlg");
                throw null;
        }
    }
}
