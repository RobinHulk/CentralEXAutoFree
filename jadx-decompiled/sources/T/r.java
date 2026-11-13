package T;

import android.widget.Toast;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1112a;
    public final /* synthetic */ AppPipFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1113c;

    public /* synthetic */ r(AppPipFloaterService appPipFloaterService, String str, int i2) {
        this.f1112a = i2;
        this.b = appPipFloaterService;
        this.f1113c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1112a) {
            case 0:
                AppPipFloaterService appPipFloaterService = this.b;
                String str = this.f1113c;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                try {
                    appPipFloaterService.e(str);
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 1:
                AppPipFloaterService appPipFloaterService3 = this.b;
                String str2 = this.f1113c;
                AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f2114u;
                y4 y4VarE = z4.e();
                if (y4VarE != null) {
                    appPipFloaterService3.f2122j = y4VarE;
                    String strK = z4.k(appPipFloaterService3, str2);
                    if (strK != null) {
                        int i2 = y4VarE.f1225a;
                        int i3 = (int) (((double) i2) * 0.32d);
                        if (i3 < 260) {
                            i3 = 260;
                        }
                        int i4 = (i3 * 9) / 16;
                        if (i4 < 150) {
                            i4 = 150;
                        }
                        int iC = i2 - appPipFloaterService3.c(24);
                        int iC2 = appPipFloaterService3.c(24) + 72;
                        w4 w4Var = new w4(iC - i3, iC2, iC, i4 + iC2);
                        x4 x4VarI = z4.i(strK, str2, w4Var);
                        if (x4VarI != null) {
                            appPipFloaterService3.f2121i = x4VarI;
                            appPipFloaterService3.f2123k = w4Var;
                            appPipFloaterService3.f2124l = false;
                            appPipFloaterService3.f2126n = false;
                            appPipFloaterService3.f2120h.post(new RunnableC0153w(appPipFloaterService3, 0));
                        } else {
                            String string = appPipFloaterService3.getString(R.string.k_error_open_pip, z4.f);
                            I0.f.d(string, "getString(...)");
                            appPipFloaterService3.d(string);
                        }
                    } else {
                        String string2 = appPipFloaterService3.getString(R.string.k_error_open_app);
                        I0.f.d(string2, "getString(...)");
                        appPipFloaterService3.d(string2);
                    }
                } else {
                    String string3 = appPipFloaterService3.getString(R.string.k_error_read_resolution, z4.f);
                    I0.f.d(string3, "getString(...)");
                    appPipFloaterService3.d(string3);
                }
                break;
            default:
                AppPipFloaterService appPipFloaterService5 = AppPipFloaterService.f2114u;
                Toast.makeText(this.b, this.f1113c, 1).show();
                break;
        }
    }
}
