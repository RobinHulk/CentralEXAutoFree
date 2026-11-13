package M;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: M.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0011l extends S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0014o f281a;

    public C0011l(C0014o c0014o) {
        this.f281a = c0014o;
    }

    @Override // M.S
    public final void b(RecyclerView recyclerView, int i2, int i3) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0014o c0014o = this.f281a;
        int iComputeVerticalScrollRange = c0014o.f319s.computeVerticalScrollRange();
        int i4 = c0014o.f318r;
        int i5 = iComputeVerticalScrollRange - i4;
        int i6 = c0014o.f303a;
        c0014o.f320t = i5 > 0 && i4 >= i6;
        int iComputeHorizontalScrollRange = c0014o.f319s.computeHorizontalScrollRange();
        int i7 = c0014o.f317q;
        boolean z2 = iComputeHorizontalScrollRange - i7 > 0 && i7 >= i6;
        c0014o.f321u = z2;
        boolean z3 = c0014o.f320t;
        if (!z3 && !z2) {
            if (c0014o.f322v != 0) {
                c0014o.f(0);
                return;
            }
            return;
        }
        if (z3) {
            float f = i4;
            c0014o.f312l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            c0014o.f311k = Math.min(i4, (i4 * i4) / iComputeVerticalScrollRange);
        }
        if (c0014o.f321u) {
            float f2 = iComputeHorizontalScrollOffset;
            float f3 = i7;
            c0014o.f315o = (int) ((((f3 / 2.0f) + f2) * f3) / iComputeHorizontalScrollRange);
            c0014o.f314n = Math.min(i7, (i7 * i7) / iComputeHorizontalScrollRange);
        }
        int i8 = c0014o.f322v;
        if (i8 == 0 || i8 == 1) {
            c0014o.f(1);
        }
    }
}
