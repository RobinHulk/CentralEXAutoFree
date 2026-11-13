package T;

import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0132s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1139a;
    public final /* synthetic */ x4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppPipFloaterService f1140c;

    public /* synthetic */ RunnableC0132s(x4 x4Var, AppPipFloaterService appPipFloaterService, int i2) {
        this.f1139a = i2;
        this.b = x4Var;
        this.f1140c = appPipFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1139a) {
            case 0:
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                I0.l lVar = z4.f1244a;
                z4.b(this.b);
                AppPipFloaterService appPipFloaterService2 = this.f1140c;
                appPipFloaterService2.f2121i = null;
                appPipFloaterService2.f2123k = null;
                appPipFloaterService2.f2120h.post(new RunnableC0153w(appPipFloaterService2, 2));
                break;
            case 1:
                x4 x4Var = this.b;
                AppPipFloaterService appPipFloaterService3 = this.f1140c;
                AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f2114u;
                z4.b(x4Var);
                appPipFloaterService3.f2121i = null;
                appPipFloaterService3.f2123k = null;
                appPipFloaterService3.f2126n = false;
                appPipFloaterService3.f2120h.post(new RunnableC0153w(appPipFloaterService3, 1));
                break;
            default:
                AppPipFloaterService appPipFloaterService5 = this.f1140c;
                x4 x4Var2 = appPipFloaterService5.f2121i;
                if (x4Var2 != null) {
                    if (x4Var2.b == this.b.b) {
                        String string = appPipFloaterService5.getString(R.string.k_pip_app_closed_itself);
                        I0.f.d(string, "getString(...)");
                        appPipFloaterService5.h(string);
                        appPipFloaterService5.f2121i = null;
                        appPipFloaterService5.f2123k = null;
                        appPipFloaterService5.i();
                        appPipFloaterService5.f2120h.removeCallbacks(appPipFloaterService5.f2132t);
                    }
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0132s(AppPipFloaterService appPipFloaterService, x4 x4Var) {
        this.f1139a = 2;
        this.f1140c = appPipFloaterService;
        this.b = x4Var;
    }
}
