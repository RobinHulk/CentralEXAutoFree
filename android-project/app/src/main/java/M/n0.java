package M;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f295a = new ArrayList();
    public int b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f296c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f297d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f298e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public n0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i2) {
        this.f = staggeredGridLayoutManager;
        this.f298e = i2;
    }

    public final void a() {
        ArrayList arrayList = this.f295a;
        View view = (View) arrayList.get(arrayList.size() - 1);
        k0 k0Var = (k0) view.getLayoutParams();
        this.f296c = this.f.f2086r.b(view);
        k0Var.getClass();
    }

    public final void b() {
        this.f295a.clear();
        this.b = Integer.MIN_VALUE;
        this.f296c = Integer.MIN_VALUE;
        this.f297d = 0;
    }

    public final int c() {
        boolean z2 = this.f.f2091w;
        ArrayList arrayList = this.f295a;
        return z2 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z2 = this.f.f2091w;
        ArrayList arrayList = this.f295a;
        return z2 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i2, int i3) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int iK = staggeredGridLayoutManager.f2086r.k();
        int iG = staggeredGridLayoutManager.f2086r.g();
        int i4 = i3 > i2 ? 1 : -1;
        while (i2 != i3) {
            View view = (View) this.f295a.get(i2);
            int iE = staggeredGridLayoutManager.f2086r.e(view);
            int iB = staggeredGridLayoutManager.f2086r.b(view);
            boolean z2 = iE <= iG;
            boolean z3 = iB >= iK;
            if (z2 && z3 && (iE < iK || iB > iG)) {
                return O.D(view);
            }
            i2 += i4;
        }
        return -1;
    }

    public final int f(int i2) {
        int i3 = this.f296c;
        if (i3 != Integer.MIN_VALUE) {
            return i3;
        }
        if (this.f295a.size() == 0) {
            return i2;
        }
        a();
        return this.f296c;
    }

    public final View g(int i2, int i3) {
        ArrayList arrayList = this.f295a;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        View view = null;
        if (i3 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f2091w && O.D(view2) >= i2) || ((!staggeredGridLayoutManager.f2091w && O.D(view2) <= i2) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                View view3 = (View) arrayList.get(i4);
                if ((staggeredGridLayoutManager.f2091w && O.D(view3) <= i2) || ((!staggeredGridLayoutManager.f2091w && O.D(view3) >= i2) || !view3.hasFocusable())) {
                    break;
                }
                i4++;
                view = view3;
            }
        }
        return view;
    }

    public final int h(int i2) {
        int i3 = this.b;
        if (i3 != Integer.MIN_VALUE) {
            return i3;
        }
        if (this.f295a.size() == 0) {
            return i2;
        }
        View view = (View) this.f295a.get(0);
        k0 k0Var = (k0) view.getLayoutParams();
        this.b = this.f.f2086r.e(view);
        k0Var.getClass();
        return this.b;
    }
}
