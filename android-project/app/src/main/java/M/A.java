package M;

import android.view.View;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class A extends Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f139a;
    public Scroller b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h0 f140c = new h0(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public B f141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public B f142e;

    public static View c(O o2, C c2) {
        int iV = o2.v();
        View view = null;
        if (iV == 0) {
            return null;
        }
        int iL = (c2.l() / 2) + c2.k();
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iV; i3++) {
            View viewU = o2.u(i3);
            int iAbs = Math.abs(((c2.c(viewU) / 2) + c2.e(viewU)) - iL);
            if (iAbs < i2) {
                view = viewU;
                i2 = iAbs;
            }
        }
        return view;
    }

    public final int[] a(O o2, View view) {
        int[] iArr = new int[2];
        if (o2.d()) {
            C cD = d(o2);
            iArr[0] = ((cD.c(view) / 2) + cD.e(view)) - ((cD.l() / 2) + cD.k());
        } else {
            iArr[0] = 0;
        }
        if (o2.e()) {
            C cE = e(o2);
            iArr[1] = ((cE.c(view) / 2) + cE.e(view)) - ((cE.l() / 2) + cE.k());
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final int b(O o2, C c2, int i2, int i3) {
        this.b.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        int[] iArr = {this.b.getFinalX(), this.b.getFinalY()};
        int iV = o2.v();
        float f = 1.0f;
        if (iV != 0) {
            View view = null;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            View view2 = null;
            for (int i6 = 0; i6 < iV; i6++) {
                View viewU = o2.u(i6);
                int iD = O.D(viewU);
                if (iD != -1) {
                    if (iD < i5) {
                        view = viewU;
                        i5 = iD;
                    }
                    if (iD > i4) {
                        view2 = viewU;
                        i4 = iD;
                    }
                }
            }
            if (view != null && view2 != null) {
                int iMax = Math.max(c2.b(view), c2.b(view2)) - Math.min(c2.e(view), c2.e(view2));
                if (iMax != 0) {
                    f = (iMax * 1.0f) / ((i4 - i5) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArr[0]) > Math.abs(iArr[1]) ? iArr[0] : iArr[1]) / f);
    }

    public final C d(O o2) {
        B b = this.f142e;
        if (b == null || ((O) b.b) != o2) {
            this.f142e = new B(o2, 0);
        }
        return this.f142e;
    }

    public final C e(O o2) {
        B b = this.f141d;
        if (b == null || ((O) b.b) != o2) {
            this.f141d = new B(o2, 1);
        }
        return this.f141d;
    }

    public final void f() {
        O layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f139a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager.e()) {
            viewC = c(layoutManager, e(layoutManager));
        } else {
            viewC = layoutManager.d() ? c(layoutManager, d(layoutManager)) : null;
        }
        if (viewC == null) {
            return;
        }
        int[] iArrA = a(layoutManager, viewC);
        int i2 = iArrA[0];
        if (i2 == 0 && iArrA[1] == 0) {
            return;
        }
        this.f139a.Z(i2, iArrA[1], false);
    }
}
