package T;

import android.os.Handler;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0153w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1188a;
    public final /* synthetic */ AppPipFloaterService b;

    public /* synthetic */ RunnableC0153w(AppPipFloaterService appPipFloaterService, int i2) {
        this.f1188a = i2;
        this.b = appPipFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1188a) {
            case 0:
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                AppPipFloaterService appPipFloaterService2 = this.b;
                appPipFloaterService2.i();
                Handler handler = appPipFloaterService2.f2120h;
                B.b bVar = appPipFloaterService2.f2132t;
                handler.removeCallbacks(bVar);
                handler.postDelayed(bVar, 2000L);
                String string = appPipFloaterService2.getString(R.string.k_pip_opened_hint);
                I0.f.d(string, "getString(...)");
                appPipFloaterService2.h(string);
                break;
            case 1:
                AppPipFloaterService appPipFloaterService3 = AppPipFloaterService.f2114u;
                AppPipFloaterService appPipFloaterService4 = this.b;
                appPipFloaterService4.i();
                String string2 = appPipFloaterService4.getString(R.string.k_pip_closed);
                I0.f.d(string2, "getString(...)");
                appPipFloaterService4.h(string2);
                break;
            case 2:
                AppPipFloaterService appPipFloaterService5 = AppPipFloaterService.f2114u;
                this.b.stopSelf();
                break;
            default:
                AppPipFloaterService appPipFloaterService6 = AppPipFloaterService.f2114u;
                this.b.i();
                break;
        }
    }
}
