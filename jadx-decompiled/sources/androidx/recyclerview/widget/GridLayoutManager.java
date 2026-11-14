package androidx.recyclerview.widget;

import G.a;
import M.C0016q;
import M.C0018t;
import M.C0020v;
import M.C0021w;
import M.C0022x;
import M.O;
import M.P;
import M.V;
import M.a0;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.N;
import p035z.e;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f1988E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f1989F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f1990G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public View[] f1991H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseIntArray f1992I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final SparseIntArray f1993J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final a f1994K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Rect f1995L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f1988E = false;
        this.f1989F = -1;
        this.f1992I = new SparseIntArray();
        this.f1993J = new SparseIntArray();
        this.f1994K = new a(2);
        this.f1995L = new Rect();
        g1(O.E(context, attributeSet, i2, i3).b);
    }

    @Override // M.O
    public final int F(V v2, a0 a0Var) {
        if (this.f2000p == 0) {
            return this.f1989F;
        }
        if (a0Var.b() < 1) {
            return 0;
        }
        return c1(a0Var.b() - 1, v2, a0Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View I0(V v2, a0 a0Var, int i2, int i3, int i4) {
        B0();
        int iK = this.f2002r.k();
        int iG = this.f2002r.g();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View viewU = u(i2);
            int iD = O.D(viewU);
            if (iD >= 0 && iD < i4 && d1(iD, v2, a0Var) == 0) {
                if (((P) viewU.getLayoutParams()).f170a.i()) {
                    if (view2 == null) {
                        view2 = viewU;
                    }
                } else {
                    if (this.f2002r.e(viewU) < iG && this.f2002r.b(viewU) >= iK) {
                        return viewU;
                    }
                    if (view == null) {
                        view = viewU;
                    }
                }
            }
            i2 += i5;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x010b  */
    /* JADX WARN: Code duplicated, block: B:82:0x011c  */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e1, code lost:
    
        if (r13 == (r2 > r15)) goto L55;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View N(android.view.View r23, int r24, M.V r25, M.a0 r26) {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.N(android.view.View, int, M.V, M.a0):android.view.View");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v38 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void O0(V v2, a0 a0Var, C0022x c0022x, C0021w c0021w) {
        int i2;
        int i3;
        int i4;
        int iD;
        int iA;
        int iD2;
        int i5;
        int iW;
        int iW2;
        ?? r8;
        int i6;
        View viewB;
        int iJ = this.f2002r.j();
        boolean z2 = iJ != 1073741824;
        int i7 = v() > 0 ? this.f1990G[this.f1989F] : 0;
        if (z2) {
            h1();
        }
        boolean z3 = c0022x.f364e == 1;
        int iD1 = this.f1989F;
        if (!z3) {
            iD1 = d1(c0022x.f363d, v2, a0Var) + e1(c0022x.f363d, v2, a0Var);
        }
        int i8 = 0;
        while (i8 < this.f1989F && (i6 = c0022x.f363d) >= 0 && i6 < a0Var.b() && iD1 > 0) {
            int i9 = c0022x.f363d;
            int iE1 = e1(i9, v2, a0Var);
            if (iE1 > this.f1989F) {
                throw new IllegalArgumentException("Item at position " + i9 + " requires " + iE1 + " spans but GridLayoutManager has only " + this.f1989F + " spans.");
            }
            iD1 -= iE1;
            if (iD1 < 0 || (viewB = c0022x.b(v2)) == null) {
                break;
            }
            this.f1991H[i8] = viewB;
            i8++;
        }
        if (i8 == 0) {
            c0021w.b = true;
            return;
        }
        if (z3) {
            i4 = 1;
            i3 = i8;
            i2 = 0;
        } else {
            i2 = i8 - 1;
            i3 = -1;
            i4 = -1;
        }
        int i10 = 0;
        while (i2 != i3) {
            View view = this.f1991H[i2];
            C0018t c0018t = (C0018t) view.getLayoutParams();
            int iE2 = e1(O.D(view), v2, a0Var);
            c0018t.f = iE2;
            c0018t.f346e = i10;
            i10 += iE2;
            i2 += i4;
        }
        float f = 0.0f;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            View view2 = this.f1991H[i12];
            if (c0022x.f369k != null) {
                r8 = 0;
                r8 = 0;
                if (z3) {
                    b(view2, -1, true);
                } else {
                    b(view2, 0, true);
                }
            } else if (z3) {
                r8 = 0;
                b(view2, -1, false);
            } else {
                r8 = 0;
                b(view2, 0, false);
            }
            RecyclerView recyclerView = this.b;
            Rect rect = this.f1995L;
            if (recyclerView == null) {
                rect.set(r8, r8, r8, r8);
            } else {
                rect.set(recyclerView.J(view2));
            }
            f1(view2, iJ, r8);
            int iC = this.f2002r.c(view2);
            if (iC > i11) {
                i11 = iC;
            }
            float fD = (this.f2002r.d(view2) * 1.0f) / ((C0018t) view2.getLayoutParams()).f;
            if (fD > f) {
                f = fD;
            }
        }
        if (z2) {
            Z0(Math.max(Math.round(f * this.f1989F), i7));
            i11 = 0;
            for (int i13 = 0; i13 < i8; i13++) {
                View view3 = this.f1991H[i13];
                f1(view3, 1073741824, true);
                int iC2 = this.f2002r.c(view3);
                if (iC2 > i11) {
                    i11 = iC2;
                }
            }
        }
        for (int i14 = 0; i14 < i8; i14++) {
            View view4 = this.f1991H[i14];
            if (this.f2002r.c(view4) != i11) {
                C0018t c0018t2 = (C0018t) view4.getLayoutParams();
                Rect rect2 = c0018t2.b;
                int i15 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0018t2).topMargin + ((ViewGroup.MarginLayoutParams) c0018t2).bottomMargin;
                int i16 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0018t2).leftMargin + ((ViewGroup.MarginLayoutParams) c0018t2).rightMargin;
                int iB1 = b1(c0018t2.f346e, c0018t2.f);
                if (this.f2000p == 1) {
                    iW2 = O.w(false, iB1, 1073741824, i16, ((ViewGroup.MarginLayoutParams) c0018t2).width);
                    iW = View.MeasureSpec.makeMeasureSpec(i11 - i15, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11 - i16, 1073741824);
                    iW = O.w(false, iB1, 1073741824, i15, ((ViewGroup.MarginLayoutParams) c0018t2).height);
                    iW2 = iMakeMeasureSpec;
                }
                if (r0(view4, iW2, iW, (P) view4.getLayoutParams())) {
                    view4.measure(iW2, iW);
                }
            }
        }
        c0021w.f358a = i11;
        if (this.f2000p != 1) {
            if (c0022x.f == -1) {
                int i17 = c0022x.b;
                iA = i17 - i11;
                iD = i17;
            } else {
                int i18 = c0022x.b;
                iD = i18 + i11;
                iA = i18;
            }
            iD2 = 0;
            i5 = 0;
        } else if (c0022x.f == -1) {
            int i19 = c0022x.b;
            iA = 0;
            iD = 0;
            i5 = i19 - i11;
            iD2 = i19;
        } else {
            i5 = c0022x.b;
            iD2 = i5 + i11;
            iA = 0;
            iD = 0;
        }
        for (int i20 = 0; i20 < i8; i20++) {
            View view5 = this.f1991H[i20];
            C0018t c0018t3 = (C0018t) view5.getLayoutParams();
            if (this.f2000p != 1) {
                int iC3 = C() + this.f1990G[c0018t3.f346e];
                i5 = iC3;
                iD2 = this.f2002r.d(view5) + iC3;
            } else if (N0()) {
                int iA2 = A() + this.f1990G[this.f1989F - c0018t3.f346e];
                iD = iA2;
                iA = iA2 - this.f2002r.d(view5);
            } else {
                iA = A() + this.f1990G[c0018t3.f346e];
                iD = this.f2002r.d(view5) + iA;
            }
            O.J(view5, iA, i5, iD, iD2);
            if (c0018t3.f170a.i() || c0018t3.f170a.l()) {
                c0021w.f359c = true;
            }
            c0021w.f360d = view5.hasFocusable() | c0021w.f360d;
        }
        Arrays.fill(this.f1991H, (Object) null);
    }

    @Override // M.O
    public final void P(V v2, a0 a0Var, View view, e eVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0018t)) {
            Q(view, eVar);
            return;
        }
        C0018t c0018t = (C0018t) layoutParams;
        int iC1 = c1(c0018t.f170a.b(), v2, a0Var);
        if (this.f2000p == 0) {
            eVar.f(A.e.v(false, c0018t.f346e, c0018t.f, iC1, 1));
        } else {
            eVar.f(A.e.v(false, iC1, 1, c0018t.f346e, c0018t.f));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void P0(V v2, a0 a0Var, C0020v c0020v, int i2) {
        h1();
        if (a0Var.b() > 0 && !a0Var.f195g) {
            boolean z2 = i2 == 1;
            int iD1 = d1(c0020v.b, v2, a0Var);
            if (z2) {
                while (iD1 > 0) {
                    int i3 = c0020v.b;
                    if (i3 <= 0) {
                        break;
                    }
                    int i4 = i3 - 1;
                    c0020v.b = i4;
                    iD1 = d1(i4, v2, a0Var);
                }
            } else {
                int iB = a0Var.b() - 1;
                int i5 = c0020v.b;
                while (i5 < iB) {
                    int i6 = i5 + 1;
                    int iD2 = d1(i6, v2, a0Var);
                    if (iD2 <= iD1) {
                        break;
                    }
                    i5 = i6;
                    iD1 = iD2;
                }
                c0020v.b = i5;
            }
        }
        a1();
    }

    @Override // M.O
    public final void R(int i2, int i3) {
        a aVar = this.f1994K;
        aVar.v();
        ((SparseIntArray) aVar.f93c).clear();
    }

    @Override // M.O
    public final void S() {
        a aVar = this.f1994K;
        aVar.v();
        ((SparseIntArray) aVar.f93c).clear();
    }

    @Override // M.O
    public final void T(int i2, int i3) {
        a aVar = this.f1994K;
        aVar.v();
        ((SparseIntArray) aVar.f93c).clear();
    }

    @Override // M.O
    public final void U(int i2, int i3) {
        a aVar = this.f1994K;
        aVar.v();
        ((SparseIntArray) aVar.f93c).clear();
    }

    @Override // M.O
    public final void V(int i2, int i3) {
        a aVar = this.f1994K;
        aVar.v();
        ((SparseIntArray) aVar.f93c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void V0(boolean z2) {
        if (z2) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.V0(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final void W(V v2, a0 a0Var) {
        boolean z2 = a0Var.f195g;
        SparseIntArray sparseIntArray = this.f1993J;
        SparseIntArray sparseIntArray2 = this.f1992I;
        if (z2) {
            int iV = v();
            for (int i2 = 0; i2 < iV; i2++) {
                C0018t c0018t = (C0018t) u(i2).getLayoutParams();
                int iB = c0018t.f170a.b();
                sparseIntArray2.put(iB, c0018t.f);
                sparseIntArray.put(iB, c0018t.f346e);
            }
        }
        super.W(v2, a0Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final void X(a0 a0Var) {
        super.X(a0Var);
        this.f1988E = false;
    }

    public final void Z0(int i2) {
        int i3;
        int[] iArr = this.f1990G;
        int i4 = this.f1989F;
        if (iArr == null || iArr.length != i4 + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i4 + 1];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i2 / i4;
        int i7 = i2 % i4;
        int i8 = 0;
        for (int i9 = 1; i9 <= i4; i9++) {
            i5 += i7;
            if (i5 <= 0 || i4 - i5 >= i7) {
                i3 = i6;
            } else {
                i3 = i6 + 1;
                i5 -= i4;
            }
            i8 += i3;
            iArr[i9] = i8;
        }
        this.f1990G = iArr;
    }

    public final void a1() {
        View[] viewArr = this.f1991H;
        if (viewArr == null || viewArr.length != this.f1989F) {
            this.f1991H = new View[this.f1989F];
        }
    }

    public final int b1(int i2, int i3) {
        if (this.f2000p != 1 || !N0()) {
            int[] iArr = this.f1990G;
            return iArr[i3 + i2] - iArr[i2];
        }
        int[] iArr2 = this.f1990G;
        int i4 = this.f1989F;
        return iArr2[i4 - i2] - iArr2[(i4 - i2) - i3];
    }

    public final int c1(int i2, V v2, a0 a0Var) {
        boolean z2 = a0Var.f195g;
        a aVar = this.f1994K;
        if (!z2) {
            int i3 = this.f1989F;
            aVar.getClass();
            return a.t(i2, i3);
        }
        int iB = v2.b(i2);
        if (iB != -1) {
            int i4 = this.f1989F;
            aVar.getClass();
            return a.t(iB, i4);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }

    public final int d1(int i2, V v2, a0 a0Var) {
        boolean z2 = a0Var.f195g;
        a aVar = this.f1994K;
        if (!z2) {
            int i3 = this.f1989F;
            aVar.getClass();
            return i2 % i3;
        }
        int i4 = this.f1993J.get(i2, -1);
        if (i4 != -1) {
            return i4;
        }
        int iB = v2.b(i2);
        if (iB != -1) {
            int i5 = this.f1989F;
            aVar.getClass();
            return iB % i5;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 0;
    }

    public final int e1(int i2, V v2, a0 a0Var) {
        boolean z2 = a0Var.f195g;
        a aVar = this.f1994K;
        if (!z2) {
            aVar.getClass();
            return 1;
        }
        int i3 = this.f1992I.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        if (v2.b(i2) != -1) {
            aVar.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    @Override // M.O
    public final boolean f(P p2) {
        return p2 instanceof C0018t;
    }

    public final void f1(View view, int i2, boolean z2) {
        int iW;
        int iW2;
        C0018t c0018t = (C0018t) view.getLayoutParams();
        Rect rect = c0018t.b;
        int i3 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0018t).topMargin + ((ViewGroup.MarginLayoutParams) c0018t).bottomMargin;
        int i4 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0018t).leftMargin + ((ViewGroup.MarginLayoutParams) c0018t).rightMargin;
        int iB1 = b1(c0018t.f346e, c0018t.f);
        if (this.f2000p == 1) {
            iW2 = O.w(false, iB1, i2, i4, ((ViewGroup.MarginLayoutParams) c0018t).width);
            iW = O.w(true, this.f2002r.l(), this.f167m, i3, ((ViewGroup.MarginLayoutParams) c0018t).height);
        } else {
            int iW3 = O.w(false, iB1, i2, i3, ((ViewGroup.MarginLayoutParams) c0018t).height);
            int iW4 = O.w(true, this.f2002r.l(), this.f166l, i4, ((ViewGroup.MarginLayoutParams) c0018t).width);
            iW = iW3;
            iW2 = iW4;
        }
        P p2 = (P) view.getLayoutParams();
        if (z2 ? r0(view, iW2, iW, p2) : p0(view, iW2, iW, p2)) {
            view.measure(iW2, iW);
        }
    }

    public final void g1(int i2) {
        if (i2 == this.f1989F) {
            return;
        }
        this.f1988E = true;
        if (i2 < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i2);
        }
        this.f1989F = i2;
        this.f1994K.v();
        g0();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int h0(int i2, V v2, a0 a0Var) {
        h1();
        a1();
        return super.h0(i2, v2, a0Var);
    }

    public final void h1() {
        int iZ;
        int iC;
        if (this.f2000p == 1) {
            iZ = this.f168n - B();
            iC = A();
        } else {
            iZ = this.f169o - z();
            iC = C();
        }
        Z0(iZ - iC);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int j0(int i2, V v2, a0 a0Var) {
        h1();
        a1();
        return super.j0(i2, v2, a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int k(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int l(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // M.O
    public final void m0(Rect rect, int i2, int i3) {
        int iG;
        int iG2;
        if (this.f1990G == null) {
            super.m0(rect, i2, i3);
        }
        int iB = B() + A();
        int iZ = z() + C();
        if (this.f2000p == 1) {
            int iHeight = rect.height() + iZ;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = N.f4222a;
            iG2 = O.g(i3, iHeight, AbstractC0290y.d(recyclerView));
            int[] iArr = this.f1990G;
            iG = O.g(i2, iArr[iArr.length - 1] + iB, AbstractC0290y.e(this.b));
        } else {
            int iWidth = rect.width() + iB;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = N.f4222a;
            iG = O.g(i2, iWidth, AbstractC0290y.e(recyclerView2));
            int[] iArr2 = this.f1990G;
            iG2 = O.g(i3, iArr2[iArr2.length - 1] + iZ, AbstractC0290y.d(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int n(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final int o(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final P r() {
        return this.f2000p == 0 ? new C0018t(-2, -1) : new C0018t(-1, -2);
    }

    @Override // M.O
    public final P s(Context context, AttributeSet attributeSet) {
        C0018t c0018t = new C0018t(context, attributeSet);
        c0018t.f346e = -1;
        c0018t.f = 0;
        return c0018t;
    }

    @Override // M.O
    public final P t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C0018t c0018t = new C0018t((ViewGroup.MarginLayoutParams) layoutParams);
            c0018t.f346e = -1;
            c0018t.f = 0;
            return c0018t;
        }
        C0018t c0018t2 = new C0018t(layoutParams);
        c0018t2.f346e = -1;
        c0018t2.f = 0;
        return c0018t2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final boolean u0() {
        return this.f2010z == null && !this.f1988E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void w0(a0 a0Var, C0022x c0022x, C0016q c0016q) {
        int i2;
        int i3 = this.f1989F;
        for (int i4 = 0; i4 < this.f1989F && (i2 = c0022x.f363d) >= 0 && i2 < a0Var.b() && i3 > 0; i4++) {
            c0016q.a(c0022x.f363d, Math.max(0, c0022x.f365g));
            this.f1994K.getClass();
            i3--;
            c0022x.f363d += c0022x.f364e;
        }
    }

    @Override // M.O
    public final int x(V v2, a0 a0Var) {
        if (this.f2000p == 1) {
            return this.f1989F;
        }
        if (a0Var.b() < 1) {
            return 0;
        }
        return c1(a0Var.b() - 1, v2, a0Var) + 1;
    }

    public GridLayoutManager(int i2) {
        super(1);
        this.f1988E = false;
        this.f1989F = -1;
        this.f1992I = new SparseIntArray();
        this.f1993J = new SparseIntArray();
        this.f1994K = new a(2);
        this.f1995L = new Rect();
        g1(i2);
    }
}
