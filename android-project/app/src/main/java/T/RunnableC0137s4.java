package T;

import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;

/* JADX INFO: renamed from: T.s4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0137s4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1146a;
    public final /* synthetic */ x4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplitFloaterService f1147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x4 f1148d;

    public /* synthetic */ RunnableC0137s4(x4 x4Var, SplitFloaterService splitFloaterService, x4 x4Var2, int i2) {
        this.f1146a = i2;
        this.b = x4Var;
        this.f1147c = splitFloaterService;
        this.f1148d = x4Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1146a) {
            case 0:
                x4 x4Var = this.b;
                SplitFloaterService splitFloaterService = this.f1147c;
                x4 x4Var2 = this.f1148d;
                if (x4Var != null) {
                    SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                    z4.b(x4Var);
                }
                y4 y4VarE = splitFloaterService.f2514l;
                if (y4VarE == null) {
                    y4VarE = z4.e();
                }
                if (x4Var2 != null && y4VarE != null) {
                    I0.l lVar = z4.f1244a;
                    z4.j(x4Var2, new w4(0, splitFloaterService.f2523u, y4VarE.f1225a, y4VarE.b));
                }
                splitFloaterService.f2512j = null;
                splitFloaterService.f2513k = null;
                splitFloaterService.f2517o = false;
                splitFloaterService.f2511i.post(new t4(splitFloaterService, 2));
                String string = splitFloaterService.getString(R.string.k_split_closed);
                I0.f.d(string, "getString(...)");
                splitFloaterService.g(string);
                break;
            default:
                x4 x4Var3 = this.b;
                if (x4Var3 != null) {
                    SplitFloaterService splitFloaterService3 = SplitFloaterService.f2504v;
                    z4.b(x4Var3);
                }
                SplitFloaterService splitFloaterService4 = this.f1147c;
                y4 y4VarE2 = splitFloaterService4.f2514l;
                if (y4VarE2 == null) {
                    y4VarE2 = z4.e();
                }
                x4 x4Var4 = this.f1148d;
                if (x4Var4 != null && y4VarE2 != null) {
                    I0.l lVar2 = z4.f1244a;
                    z4.j(x4Var4, new w4(0, splitFloaterService4.f2523u, y4VarE2.f1225a, y4VarE2.b));
                }
                splitFloaterService4.f2512j = null;
                splitFloaterService4.f2513k = null;
                splitFloaterService4.f2511i.post(new t4(splitFloaterService4, 7));
                break;
        }
    }
}
