package p034y;

import android.view.WindowInsets;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class d0 extends c0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public c f4247k;

    public d0(j0 j0Var, WindowInsets windowInsets) {
        super(j0Var, windowInsets);
        this.f4247k = null;
    }

    @Override // p034y.i0
    public j0 b() {
        return j0.g(this.f4244c.consumeStableInsets(), null);
    }

    @Override // p034y.i0
    public j0 c() {
        return j0.g(this.f4244c.consumeSystemWindowInsets(), null);
    }

    @Override // p034y.i0
    public final c g() {
        if (this.f4247k == null) {
            WindowInsets windowInsets = this.f4244c;
            this.f4247k = c.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f4247k;
    }

    @Override // p034y.i0
    public boolean j() {
        return this.f4244c.isConsumed();
    }

    @Override // p034y.i0
    public void n(c cVar) {
        this.f4247k = cVar;
    }
}
