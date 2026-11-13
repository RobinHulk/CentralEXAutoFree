package T;

import com.ex.auto.AppPipFloaterService;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f475a = 0;
    public final /* synthetic */ AppPipFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x4 f476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ B.b f477d;

    public /* synthetic */ B(x4 x4Var, AppPipFloaterService appPipFloaterService, B.b bVar) {
        this.f476c = x4Var;
        this.b = appPipFloaterService;
        this.f477d = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f475a) {
            case 0:
                x4 x4Var = this.f476c;
                AppPipFloaterService appPipFloaterService = this.b;
                B.b bVar = this.f477d;
                String strA = z4.a(6000, "am stack list");
                String str = "taskId=" + x4Var.b + ':';
                I0.f.e(str, "pattern");
                Pattern patternCompile = Pattern.compile(str);
                I0.f.d(patternCompile, "compile(...)");
                boolean zFind = patternCompile.matcher(strA).find();
                String str2 = "taskId=" + x4Var.b + ":.*visible=true";
                I0.f.e(str2, "pattern");
                Pattern patternCompile2 = Pattern.compile(str2);
                I0.f.d(patternCompile2, "compile(...)");
                boolean zFind2 = patternCompile2.matcher(strA).find();
                if (!zFind) {
                    appPipFloaterService.f2120h.post(new RunnableC0132s(appPipFloaterService, x4Var));
                } else {
                    if (!zFind2) {
                        String strA2 = z4.a(8000, "am start -n " + x4Var.f1210d);
                        if (O0.s.w0(strA2, "ADB_FAIL") || O0.j.x0(strA2, "Exception", true)) {
                            z4.f = strA2;
                        }
                    }
                    appPipFloaterService.f2120h.post(new B(appPipFloaterService, x4Var, bVar));
                }
                break;
            default:
                AppPipFloaterService appPipFloaterService2 = this.b;
                x4 x4Var2 = appPipFloaterService2.f2121i;
                if (x4Var2 != null) {
                    if (x4Var2.b == this.f476c.b) {
                        appPipFloaterService2.f2120h.postDelayed(this.f477d, 2000L);
                    }
                }
                break;
        }
    }

    public /* synthetic */ B(AppPipFloaterService appPipFloaterService, x4 x4Var, B.b bVar) {
        this.b = appPipFloaterService;
        this.f476c = x4Var;
        this.f477d = bVar;
    }
}
