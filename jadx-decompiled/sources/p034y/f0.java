package p034y;

import android.graphics.Insets;
import android.view.WindowInsets;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public class f0 extends e0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f4252l;

    public f0(j0 j0Var, WindowInsets windowInsets) {
        super(j0Var, windowInsets);
        this.f4252l = null;
    }

    @Override // p034y.i0
    public c f() {
        if (this.f4252l == null) {
            Insets mandatorySystemGestureInsets = this.f4244c.getMandatorySystemGestureInsets();
            this.f4252l = c.a(mandatorySystemGestureInsets.left, mandatorySystemGestureInsets.top, mandatorySystemGestureInsets.right, mandatorySystemGestureInsets.bottom);
        }
        return this.f4252l;
    }

    @Override // p034y.c0, p034y.i0
    public j0 i(int i2, int i3, int i4, int i5) {
        return j0.g(this.f4244c.inset(i2, i3, i4, i5), null);
    }

    @Override // p034y.d0, p034y.i0
    public void n(c cVar) {
    }
}
