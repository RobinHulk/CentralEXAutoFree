package p034y;

import M.D;
import android.view.WindowInsets;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public class Z extends b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f4236a;

    public Z() {
        this.f4236a = D.d();
    }

    @Override // p034y.b0
    public j0 b() {
        a();
        j0 j0VarG = j0.g(this.f4236a.build(), null);
        j0VarG.f4257a.l(null);
        return j0VarG;
    }

    @Override // p034y.b0
    public void c(c cVar) {
        this.f4236a.setStableInsets(cVar.b());
    }

    @Override // p034y.b0
    public void d(c cVar) {
        this.f4236a.setSystemWindowInsets(cVar.b());
    }

    public Z(j0 j0Var) {
        WindowInsets.Builder builderD;
        super(j0Var);
        WindowInsets windowInsetsF = j0Var.f();
        if (windowInsetsF != null) {
            builderD = D.e(windowInsetsF);
        } else {
            builderD = D.d();
        }
        this.f4236a = builderD;
    }
}
