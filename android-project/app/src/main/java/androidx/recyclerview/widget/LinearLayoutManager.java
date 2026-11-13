package androidx.recyclerview.widget;

import A.b;
import M.C;
import M.C0016q;
import M.C0020v;
import M.C0021w;
import M.C0022x;
import M.C0023y;
import M.C0024z;
import M.O;
import M.P;
import M.V;
import M.Z;
import M.a0;
import M.e0;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends O implements Z {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final C0020v f1996A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final C0021w f1997B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f1998C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int[] f1999D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2000p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public C0022x f2001q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public C f2002r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2003s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f2004t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2005u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2006v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f2007w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2008x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2009y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C0023y f2010z;

    public LinearLayoutManager(int i2) {
        this.f2000p = 1;
        this.f2004t = false;
        this.f2005u = false;
        this.f2006v = false;
        this.f2007w = true;
        this.f2008x = -1;
        this.f2009y = Integer.MIN_VALUE;
        this.f2010z = null;
        this.f1996A = new C0020v();
        this.f1997B = new C0021w();
        this.f1998C = 2;
        this.f1999D = new int[2];
        U0(i2);
        c(null);
        if (this.f2004t) {
            this.f2004t = false;
            g0();
        }
    }

    public final int A0(int i2) {
        if (i2 == 1) {
            return (this.f2000p != 1 && N0()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.f2000p != 1 && N0()) ? -1 : 1;
        }
        if (i2 == 17) {
            return this.f2000p == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 == 33) {
            return this.f2000p == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 != 66) {
            return (i2 == 130 && this.f2000p == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f2000p == 0 ? 1 : Integer.MIN_VALUE;
    }

    public final void B0() {
        if (this.f2001q == null) {
            C0022x c0022x = new C0022x();
            c0022x.f361a = true;
            c0022x.f366h = 0;
            c0022x.f367i = 0;
            c0022x.f369k = null;
            this.f2001q = c0022x;
        }
    }

    public final int C0(V v2, C0022x c0022x, a0 a0Var, boolean z2) {
        int i2;
        int i3 = c0022x.f362c;
        int i4 = c0022x.f365g;
        if (i4 != Integer.MIN_VALUE) {
            if (i3 < 0) {
                c0022x.f365g = i4 + i3;
            }
            Q0(v2, c0022x);
        }
        int i5 = c0022x.f362c + c0022x.f366h;
        while (true) {
            if ((!c0022x.f370l && i5 <= 0) || (i2 = c0022x.f363d) < 0 || i2 >= a0Var.b()) {
                break;
            }
            C0021w c0021w = this.f1997B;
            c0021w.f358a = 0;
            c0021w.b = false;
            c0021w.f359c = false;
            c0021w.f360d = false;
            O0(v2, a0Var, c0022x, c0021w);
            if (!c0021w.b) {
                int i6 = c0022x.b;
                int i7 = c0021w.f358a;
                c0022x.b = (c0022x.f * i7) + i6;
                if (!c0021w.f359c || c0022x.f369k != null || !a0Var.f195g) {
                    c0022x.f362c -= i7;
                    i5 -= i7;
                }
                int i8 = c0022x.f365g;
                if (i8 != Integer.MIN_VALUE) {
                    int i9 = i8 + i7;
                    c0022x.f365g = i9;
                    int i10 = c0022x.f362c;
                    if (i10 < 0) {
                        c0022x.f365g = i9 + i10;
                    }
                    Q0(v2, c0022x);
                }
                if (z2 && c0021w.f360d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i3 - c0022x.f362c;
    }

    public final View D0(boolean z2) {
        return this.f2005u ? H0(0, v(), z2) : H0(v() - 1, -1, z2);
    }

    public final View E0(boolean z2) {
        return this.f2005u ? H0(v() - 1, -1, z2) : H0(0, v(), z2);
    }

    public final int F0() {
        View viewH0 = H0(v() - 1, -1, false);
        if (viewH0 == null) {
            return -1;
        }
        return O.D(viewH0);
    }

    public final View G0(int i2, int i3) {
        int i4;
        int i5;
        B0();
        if (i3 <= i2 && i3 >= i2) {
            return u(i2);
        }
        if (this.f2002r.e(u(i2)) < this.f2002r.k()) {
            i4 = 16644;
            i5 = 16388;
        } else {
            i4 = 4161;
            i5 = 4097;
        }
        return this.f2000p == 0 ? this.f158c.s(i2, i3, i4, i5) : this.f159d.s(i2, i3, i4, i5);
    }

    @Override // M.O
    public final boolean H() {
        return true;
    }

    public final View H0(int i2, int i3, boolean z2) {
        B0();
        int i4 = z2 ? 24579 : 320;
        return this.f2000p == 0 ? this.f158c.s(i2, i3, i4, 320) : this.f159d.s(i2, i3, i4, 320);
    }

    public View I0(V v2, a0 a0Var, int i2, int i3, int i4) {
        B0();
        int iK = this.f2002r.k();
        int iG = this.f2002r.g();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View viewU = u(i2);
            int iD = O.D(viewU);
            if (iD >= 0 && iD < i4) {
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

    public final int J0(int i2, V v2, a0 a0Var, boolean z2) {
        int iG;
        int iG2 = this.f2002r.g() - i2;
        if (iG2 <= 0) {
            return 0;
        }
        int i3 = -T0(-iG2, v2, a0Var);
        int i4 = i2 + i3;
        if (!z2 || (iG = this.f2002r.g() - i4) <= 0) {
            return i3;
        }
        this.f2002r.p(iG);
        return iG + i3;
    }

    public final int K0(int i2, V v2, a0 a0Var, boolean z2) {
        int iK;
        int iK2 = i2 - this.f2002r.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i3 = -T0(iK2, v2, a0Var);
        int i4 = i2 + i3;
        if (!z2 || (iK = i4 - this.f2002r.k()) <= 0) {
            return i3;
        }
        this.f2002r.p(-iK);
        return i3 - iK;
    }

    public final View L0() {
        return u(this.f2005u ? 0 : v() - 1);
    }

    @Override // M.O
    public final void M(RecyclerView recyclerView) {
    }

    public final View M0() {
        return u(this.f2005u ? v() - 1 : 0);
    }

    @Override // M.O
    public View N(View view, int i2, V v2, a0 a0Var) {
        int iA0;
        View viewG0;
        S0();
        if (v() == 0 || (iA0 = A0(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        B0();
        W0(iA0, (int) (this.f2002r.l() * 0.33333334f), false, a0Var);
        C0022x c0022x = this.f2001q;
        c0022x.f365g = Integer.MIN_VALUE;
        c0022x.f361a = false;
        C0(v2, c0022x, a0Var, true);
        if (iA0 == -1) {
            viewG0 = this.f2005u ? G0(v() - 1, -1) : G0(0, v());
        } else {
            viewG0 = this.f2005u ? G0(0, v()) : G0(v() - 1, -1);
        }
        View viewM0 = iA0 == -1 ? M0() : L0();
        if (!viewM0.hasFocusable()) {
            return viewG0;
        }
        if (viewG0 == null) {
            return null;
        }
        return viewM0;
    }

    public final boolean N0() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = N.f4222a;
        return AbstractC0291z.d(recyclerView) == 1;
    }

    @Override // M.O
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (v() > 0) {
            View viewH0 = H0(0, v(), false);
            accessibilityEvent.setFromIndex(viewH0 == null ? -1 : O.D(viewH0));
            accessibilityEvent.setToIndex(F0());
        }
    }

    public void O0(V v2, a0 a0Var, C0022x c0022x, C0021w c0021w) {
        int iA;
        int i2;
        int i3;
        int iD;
        View viewB = c0022x.b(v2);
        if (viewB == null) {
            c0021w.b = true;
            return;
        }
        P p2 = (P) viewB.getLayoutParams();
        if (c0022x.f369k == null) {
            if (this.f2005u == (c0022x.f == -1)) {
                b(viewB, -1, false);
            } else {
                b(viewB, 0, false);
            }
        } else {
            if (this.f2005u == (c0022x.f == -1)) {
                b(viewB, -1, true);
            } else {
                b(viewB, 0, true);
            }
        }
        P p3 = (P) viewB.getLayoutParams();
        Rect rectJ = this.b.J(viewB);
        int i4 = rectJ.left + rectJ.right;
        int i5 = rectJ.top + rectJ.bottom;
        int iW = O.w(d(), this.f168n, this.f166l, B() + A() + ((ViewGroup.MarginLayoutParams) p3).leftMargin + ((ViewGroup.MarginLayoutParams) p3).rightMargin + i4, ((ViewGroup.MarginLayoutParams) p3).width);
        int iW2 = O.w(e(), this.f169o, this.f167m, z() + C() + ((ViewGroup.MarginLayoutParams) p3).topMargin + ((ViewGroup.MarginLayoutParams) p3).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) p3).height);
        if (p0(viewB, iW, iW2, p3)) {
            viewB.measure(iW, iW2);
        }
        c0021w.f358a = this.f2002r.c(viewB);
        if (this.f2000p == 1) {
            if (N0()) {
                iD = this.f168n - B();
                iA = iD - this.f2002r.d(viewB);
            } else {
                iA = A();
                iD = this.f2002r.d(viewB) + iA;
            }
            if (c0022x.f == -1) {
                i2 = c0022x.b;
                i3 = i2 - c0021w.f358a;
            } else {
                i3 = c0022x.b;
                i2 = c0021w.f358a + i3;
            }
        } else {
            int iC = C();
            int iD2 = this.f2002r.d(viewB) + iC;
            if (c0022x.f == -1) {
                int i6 = c0022x.b;
                int i7 = i6 - c0021w.f358a;
                iD = i6;
                i2 = iD2;
                iA = i7;
                i3 = iC;
            } else {
                int i8 = c0022x.b;
                int i9 = c0021w.f358a + i8;
                iA = i8;
                i2 = iD2;
                i3 = iC;
                iD = i9;
            }
        }
        O.J(viewB, iA, i3, iD, i2);
        if (p2.f170a.i() || p2.f170a.l()) {
            c0021w.f359c = true;
        }
        c0021w.f360d = viewB.hasFocusable();
    }

    public void P0(V v2, a0 a0Var, C0020v c0020v, int i2) {
    }

    public final void Q0(V v2, C0022x c0022x) {
        if (!c0022x.f361a || c0022x.f370l) {
            return;
        }
        int i2 = c0022x.f365g;
        int i3 = c0022x.f367i;
        if (c0022x.f == -1) {
            int iV = v();
            if (i2 < 0) {
                return;
            }
            int iF = (this.f2002r.f() - i2) + i3;
            if (this.f2005u) {
                for (int i4 = 0; i4 < iV; i4++) {
                    View viewU = u(i4);
                    if (this.f2002r.e(viewU) < iF || this.f2002r.o(viewU) < iF) {
                        R0(v2, 0, i4);
                        return;
                    }
                }
                return;
            }
            int i5 = iV - 1;
            for (int i6 = i5; i6 >= 0; i6--) {
                View viewU2 = u(i6);
                if (this.f2002r.e(viewU2) < iF || this.f2002r.o(viewU2) < iF) {
                    R0(v2, i5, i6);
                    return;
                }
            }
            return;
        }
        if (i2 < 0) {
            return;
        }
        int i7 = i2 - i3;
        int iV2 = v();
        if (!this.f2005u) {
            for (int i8 = 0; i8 < iV2; i8++) {
                View viewU3 = u(i8);
                if (this.f2002r.b(viewU3) > i7 || this.f2002r.n(viewU3) > i7) {
                    R0(v2, 0, i8);
                    return;
                }
            }
            return;
        }
        int i9 = iV2 - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            View viewU4 = u(i10);
            if (this.f2002r.b(viewU4) > i7 || this.f2002r.n(viewU4) > i7) {
                R0(v2, i9, i10);
                return;
            }
        }
    }

    public final void R0(V v2, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        if (i3 <= i2) {
            while (i2 > i3) {
                View viewU = u(i2);
                e0(i2);
                v2.f(viewU);
                i2--;
            }
            return;
        }
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            View viewU2 = u(i4);
            e0(i4);
            v2.f(viewU2);
        }
    }

    public final void S0() {
        if (this.f2000p == 1 || !N0()) {
            this.f2005u = this.f2004t;
        } else {
            this.f2005u = !this.f2004t;
        }
    }

    public final int T0(int i2, V v2, a0 a0Var) {
        if (v() == 0 || i2 == 0) {
            return 0;
        }
        B0();
        this.f2001q.f361a = true;
        int i3 = i2 > 0 ? 1 : -1;
        int iAbs = Math.abs(i2);
        W0(i3, iAbs, true, a0Var);
        C0022x c0022x = this.f2001q;
        int iC0 = C0(v2, c0022x, a0Var, false) + c0022x.f365g;
        if (iC0 < 0) {
            return 0;
        }
        if (iAbs > iC0) {
            i2 = i3 * iC0;
        }
        this.f2002r.p(-i2);
        this.f2001q.f368j = i2;
        return i2;
    }

    public final void U0(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i2);
        }
        c(null);
        if (i2 != this.f2000p || this.f2002r == null) {
            C cA = C.a(this, i2);
            this.f2002r = cA;
            this.f1996A.f354a = cA;
            this.f2000p = i2;
            g0();
        }
    }

    public void V0(boolean z2) {
        c(null);
        if (this.f2006v == z2) {
            return;
        }
        this.f2006v = z2;
        g0();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:107:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:110:0x01da  */
    /* JADX WARN: Code duplicated, block: B:112:0x01de  */
    /* JADX WARN: Code duplicated, block: B:114:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:115:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:116:0x020c  */
    /* JADX WARN: Code duplicated, block: B:118:0x0210  */
    /* JADX WARN: Code duplicated, block: B:119:0x0226  */
    /* JADX WARN: Code duplicated, block: B:121:0x023b  */
    /* JADX WARN: Code duplicated, block: B:123:0x0246  */
    /* JADX WARN: Code duplicated, block: B:131:0x026c  */
    /* JADX WARN: Code duplicated, block: B:132:0x0273  */
    /* JADX WARN: Code duplicated, block: B:134:0x027c  */
    /* JADX WARN: Code duplicated, block: B:136:0x0283  */
    /* JADX WARN: Code duplicated, block: B:137:0x0289  */
    /* JADX WARN: Code duplicated, block: B:91:0x018c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0190  */
    @Override // M.O
    public void W(V v2, a0 a0Var) {
        View focusedChild;
        int iB;
        RecyclerView recyclerView;
        View focusedChild2;
        View viewI0;
        int iK;
        P p2;
        int i2;
        int i3;
        int i4;
        List list;
        int i5;
        int i6;
        int iJ0;
        int i7;
        View viewQ;
        int iE;
        int iG;
        int i8;
        int i9 = -1;
        if (!(this.f2010z == null && this.f2008x == -1) && a0Var.b() == 0) {
            b0(v2);
            return;
        }
        C0023y c0023y = this.f2010z;
        if (c0023y != null && (i8 = c0023y.f371a) >= 0) {
            this.f2008x = i8;
        }
        B0();
        this.f2001q.f361a = false;
        S0();
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || ((ArrayList) this.f157a.f216d).contains(focusedChild)) {
            focusedChild = null;
        }
        C0020v c0020v = this.f1996A;
        if (!c0020v.f357e || this.f2008x != -1 || this.f2010z != null) {
            c0020v.d();
            c0020v.f356d = this.f2005u ^ this.f2006v;
            if (a0Var.f195g || (i2 = this.f2008x) == -1) {
                if (v() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || ((ArrayList) this.f157a.f216d).contains(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        p2 = (P) focusedChild2.getLayoutParams();
                        if (p2.f170a.i() && p2.f170a.b() >= 0 && p2.f170a.b() < a0Var.b()) {
                            c0020v.c(focusedChild2, O.D(focusedChild2));
                        } else if (this.f2003s == this.f2006v) {
                            if (c0020v.f356d) {
                                if (this.f2005u) {
                                    viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                                } else {
                                    viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                                }
                            } else if (this.f2005u) {
                                viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                            } else {
                                viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                            }
                            if (viewI0 != null) {
                                c0020v.b(viewI0, O.D(viewI0));
                                if (!a0Var.f195g && u0() && (this.f2002r.e(viewI0) >= this.f2002r.g() || this.f2002r.b(viewI0) < this.f2002r.k())) {
                                    if (c0020v.f356d) {
                                        iK = this.f2002r.g();
                                    } else {
                                        iK = this.f2002r.k();
                                    }
                                    c0020v.f355c = iK;
                                }
                            } else {
                                c0020v.a();
                                if (this.f2006v) {
                                    iB = a0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0020v.b = iB;
                            }
                        } else {
                            c0020v.a();
                            if (this.f2006v) {
                                iB = a0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0020v.b = iB;
                        }
                    } else if (this.f2003s == this.f2006v) {
                        if (c0020v.f356d) {
                            if (this.f2005u) {
                                viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                            } else {
                                viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                            }
                        } else if (this.f2005u) {
                            viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                        } else {
                            viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                        }
                        if (viewI0 != null) {
                            c0020v.b(viewI0, O.D(viewI0));
                            if (!a0Var.f195g) {
                                if (c0020v.f356d) {
                                    iK = this.f2002r.g();
                                } else {
                                    iK = this.f2002r.k();
                                }
                                c0020v.f355c = iK;
                            }
                        } else {
                            c0020v.a();
                            if (this.f2006v) {
                                iB = a0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0020v.b = iB;
                        }
                    } else {
                        c0020v.a();
                        if (this.f2006v) {
                            iB = a0Var.b() - 1;
                        } else {
                            iB = 0;
                        }
                        c0020v.b = iB;
                    }
                } else {
                    c0020v.a();
                    if (this.f2006v) {
                        iB = a0Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    c0020v.b = iB;
                }
            } else if (i2 < 0 || i2 >= a0Var.b()) {
                this.f2008x = -1;
                this.f2009y = Integer.MIN_VALUE;
                if (v() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null) {
                        focusedChild2 = null;
                    } else {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        p2 = (P) focusedChild2.getLayoutParams();
                        if (p2.f170a.i()) {
                            if (this.f2003s == this.f2006v) {
                                if (c0020v.f356d) {
                                    if (this.f2005u) {
                                        viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                                    } else {
                                        viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                                    }
                                } else if (this.f2005u) {
                                    viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                                } else {
                                    viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                                }
                                if (viewI0 != null) {
                                    c0020v.b(viewI0, O.D(viewI0));
                                    if (!a0Var.f195g) {
                                        if (c0020v.f356d) {
                                            iK = this.f2002r.g();
                                        } else {
                                            iK = this.f2002r.k();
                                        }
                                        c0020v.f355c = iK;
                                    }
                                } else {
                                    c0020v.a();
                                    if (this.f2006v) {
                                        iB = a0Var.b() - 1;
                                    } else {
                                        iB = 0;
                                    }
                                    c0020v.b = iB;
                                }
                            } else {
                                c0020v.a();
                                if (this.f2006v) {
                                    iB = a0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0020v.b = iB;
                            }
                        } else if (this.f2003s == this.f2006v) {
                            if (c0020v.f356d) {
                                if (this.f2005u) {
                                    viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                                } else {
                                    viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                                }
                            } else if (this.f2005u) {
                                viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                            } else {
                                viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                            }
                            if (viewI0 != null) {
                                c0020v.b(viewI0, O.D(viewI0));
                                if (!a0Var.f195g) {
                                    if (c0020v.f356d) {
                                        iK = this.f2002r.g();
                                    } else {
                                        iK = this.f2002r.k();
                                    }
                                    c0020v.f355c = iK;
                                }
                            } else {
                                c0020v.a();
                                if (this.f2006v) {
                                    iB = a0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0020v.b = iB;
                            }
                        } else {
                            c0020v.a();
                            if (this.f2006v) {
                                iB = a0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0020v.b = iB;
                        }
                    } else if (this.f2003s == this.f2006v) {
                        if (c0020v.f356d) {
                            if (this.f2005u) {
                                viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                            } else {
                                viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                            }
                        } else if (this.f2005u) {
                            viewI0 = I0(v2, a0Var, v() - 1, -1, a0Var.b());
                        } else {
                            viewI0 = I0(v2, a0Var, 0, v(), a0Var.b());
                        }
                        if (viewI0 != null) {
                            c0020v.b(viewI0, O.D(viewI0));
                            if (!a0Var.f195g) {
                                if (c0020v.f356d) {
                                    iK = this.f2002r.g();
                                } else {
                                    iK = this.f2002r.k();
                                }
                                c0020v.f355c = iK;
                            }
                        } else {
                            c0020v.a();
                            if (this.f2006v) {
                                iB = a0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0020v.b = iB;
                        }
                    } else {
                        c0020v.a();
                        if (this.f2006v) {
                            iB = a0Var.b() - 1;
                        } else {
                            iB = 0;
                        }
                        c0020v.b = iB;
                    }
                } else {
                    c0020v.a();
                    if (this.f2006v) {
                        iB = a0Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    c0020v.b = iB;
                }
            } else {
                int i10 = this.f2008x;
                c0020v.b = i10;
                C0023y c0023y2 = this.f2010z;
                if (c0023y2 != null && c0023y2.f371a >= 0) {
                    boolean z2 = c0023y2.f372c;
                    c0020v.f356d = z2;
                    if (z2) {
                        c0020v.f355c = this.f2002r.g() - this.f2010z.b;
                    } else {
                        c0020v.f355c = this.f2002r.k() + this.f2010z.b;
                    }
                } else if (this.f2009y == Integer.MIN_VALUE) {
                    View viewQ2 = q(i10);
                    if (viewQ2 == null) {
                        if (v() > 0) {
                            c0020v.f356d = (this.f2008x < O.D(u(0))) == this.f2005u;
                        }
                        c0020v.a();
                    } else if (this.f2002r.c(viewQ2) > this.f2002r.l()) {
                        c0020v.a();
                    } else if (this.f2002r.e(viewQ2) - this.f2002r.k() < 0) {
                        c0020v.f355c = this.f2002r.k();
                        c0020v.f356d = false;
                    } else if (this.f2002r.g() - this.f2002r.b(viewQ2) < 0) {
                        c0020v.f355c = this.f2002r.g();
                        c0020v.f356d = true;
                    } else {
                        c0020v.f355c = c0020v.f356d ? this.f2002r.m() + this.f2002r.b(viewQ2) : this.f2002r.e(viewQ2);
                    }
                } else {
                    boolean z3 = this.f2005u;
                    c0020v.f356d = z3;
                    if (z3) {
                        c0020v.f355c = this.f2002r.g() - this.f2009y;
                    } else {
                        c0020v.f355c = this.f2002r.k() + this.f2009y;
                    }
                }
            }
            c0020v.f357e = true;
        } else if (focusedChild != null && (this.f2002r.e(focusedChild) >= this.f2002r.g() || this.f2002r.b(focusedChild) <= this.f2002r.k())) {
            c0020v.c(focusedChild, O.D(focusedChild));
        }
        C0022x c0022x = this.f2001q;
        c0022x.f = c0022x.f368j >= 0 ? 1 : -1;
        int[] iArr = this.f1999D;
        iArr[0] = 0;
        iArr[1] = 0;
        v0(a0Var, iArr);
        int iK2 = this.f2002r.k() + Math.max(0, iArr[0]);
        int iH = this.f2002r.h() + Math.max(0, iArr[1]);
        if (a0Var.f195g && (i7 = this.f2008x) != -1 && this.f2009y != Integer.MIN_VALUE && (viewQ = q(i7)) != null) {
            if (this.f2005u) {
                iG = this.f2002r.g() - this.f2002r.b(viewQ);
                iE = this.f2009y;
            } else {
                iE = this.f2002r.e(viewQ) - this.f2002r.k();
                iG = this.f2009y;
            }
            int i11 = iG - iE;
            if (i11 > 0) {
                iK2 += i11;
            } else {
                iH -= i11;
            }
        }
        if (!c0020v.f356d ? !this.f2005u : this.f2005u) {
            i9 = 1;
        }
        P0(v2, a0Var, c0020v, i9);
        p(v2);
        this.f2001q.f370l = this.f2002r.i() == 0 && this.f2002r.f() == 0;
        this.f2001q.getClass();
        this.f2001q.f367i = 0;
        if (c0020v.f356d) {
            Y0(c0020v.b, c0020v.f355c);
            C0022x c0022x2 = this.f2001q;
            c0022x2.f366h = iK2;
            C0(v2, c0022x2, a0Var, false);
            C0022x c0022x3 = this.f2001q;
            i4 = c0022x3.b;
            int i12 = c0022x3.f363d;
            int i13 = c0022x3.f362c;
            if (i13 > 0) {
                iH += i13;
            }
            X0(c0020v.b, c0020v.f355c);
            C0022x c0022x4 = this.f2001q;
            c0022x4.f366h = iH;
            c0022x4.f363d += c0022x4.f364e;
            C0(v2, c0022x4, a0Var, false);
            C0022x c0022x5 = this.f2001q;
            i3 = c0022x5.b;
            int i14 = c0022x5.f362c;
            if (i14 > 0) {
                Y0(i12, i4);
                C0022x c0022x6 = this.f2001q;
                c0022x6.f366h = i14;
                C0(v2, c0022x6, a0Var, false);
                i4 = this.f2001q.b;
            }
        } else {
            X0(c0020v.b, c0020v.f355c);
            C0022x c0022x7 = this.f2001q;
            c0022x7.f366h = iH;
            C0(v2, c0022x7, a0Var, false);
            C0022x c0022x8 = this.f2001q;
            i3 = c0022x8.b;
            int i15 = c0022x8.f363d;
            int i16 = c0022x8.f362c;
            if (i16 > 0) {
                iK2 += i16;
            }
            Y0(c0020v.b, c0020v.f355c);
            C0022x c0022x9 = this.f2001q;
            c0022x9.f366h = iK2;
            c0022x9.f363d += c0022x9.f364e;
            C0(v2, c0022x9, a0Var, false);
            C0022x c0022x10 = this.f2001q;
            i4 = c0022x10.b;
            int i17 = c0022x10.f362c;
            if (i17 > 0) {
                X0(i15, i3);
                C0022x c0022x11 = this.f2001q;
                c0022x11.f366h = i17;
                C0(v2, c0022x11, a0Var, false);
                i3 = this.f2001q.b;
            }
        }
        if (v() > 0) {
            if (this.f2005u ^ this.f2006v) {
                int iJ1 = J0(i3, v2, a0Var, true);
                i5 = i4 + iJ1;
                i6 = i3 + iJ1;
                iJ0 = K0(i5, v2, a0Var, false);
            } else {
                int iK0 = K0(i4, v2, a0Var, true);
                i5 = i4 + iK0;
                i6 = i3 + iK0;
                iJ0 = J0(i6, v2, a0Var, false);
            }
            i4 = i5 + iJ0;
            i3 = i6 + iJ0;
        }
        if (a0Var.f199k && v() != 0 && !a0Var.f195g && u0()) {
            List list2 = v2.f179d;
            int size = list2.size();
            int iD = O.D(u(0));
            int iC = 0;
            int iC2 = 0;
            for (int i18 = 0; i18 < size; i18++) {
                e0 e0Var = (e0) list2.get(i18);
                if (!e0Var.i()) {
                    boolean z4 = e0Var.b() < iD;
                    boolean z5 = this.f2005u;
                    View view = e0Var.f220a;
                    if (z4 != z5) {
                        iC += this.f2002r.c(view);
                    } else {
                        iC2 += this.f2002r.c(view);
                    }
                }
            }
            this.f2001q.f369k = list2;
            if (iC > 0) {
                Y0(O.D(M0()), i4);
                C0022x c0022x12 = this.f2001q;
                c0022x12.f366h = iC;
                c0022x12.f362c = 0;
                c0022x12.a(null);
                C0(v2, this.f2001q, a0Var, false);
            }
            if (iC2 > 0) {
                X0(O.D(L0()), i3);
                C0022x c0022x13 = this.f2001q;
                c0022x13.f366h = iC2;
                c0022x13.f362c = 0;
                list = null;
                c0022x13.a(null);
                C0(v2, this.f2001q, a0Var, false);
            } else {
                list = null;
            }
            this.f2001q.f369k = list;
        }
        if (a0Var.f195g) {
            c0020v.d();
        } else {
            C c2 = this.f2002r;
            c2.f144a = c2.l();
        }
        this.f2003s = this.f2006v;
    }

    public final void W0(int i2, int i3, boolean z2, a0 a0Var) {
        int iK;
        this.f2001q.f370l = this.f2002r.i() == 0 && this.f2002r.f() == 0;
        this.f2001q.f = i2;
        int[] iArr = this.f1999D;
        iArr[0] = 0;
        iArr[1] = 0;
        v0(a0Var, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z3 = i2 == 1;
        C0022x c0022x = this.f2001q;
        int i4 = z3 ? iMax2 : iMax;
        c0022x.f366h = i4;
        if (!z3) {
            iMax = iMax2;
        }
        c0022x.f367i = iMax;
        if (z3) {
            c0022x.f366h = this.f2002r.h() + i4;
            View viewL0 = L0();
            C0022x c0022x2 = this.f2001q;
            c0022x2.f364e = this.f2005u ? -1 : 1;
            int iD = O.D(viewL0);
            C0022x c0022x3 = this.f2001q;
            c0022x2.f363d = iD + c0022x3.f364e;
            c0022x3.b = this.f2002r.b(viewL0);
            iK = this.f2002r.b(viewL0) - this.f2002r.g();
        } else {
            View viewM0 = M0();
            C0022x c0022x4 = this.f2001q;
            c0022x4.f366h = this.f2002r.k() + c0022x4.f366h;
            C0022x c0022x5 = this.f2001q;
            c0022x5.f364e = this.f2005u ? 1 : -1;
            int iD2 = O.D(viewM0);
            C0022x c0022x6 = this.f2001q;
            c0022x5.f363d = iD2 + c0022x6.f364e;
            c0022x6.b = this.f2002r.e(viewM0);
            iK = (-this.f2002r.e(viewM0)) + this.f2002r.k();
        }
        C0022x c0022x7 = this.f2001q;
        c0022x7.f362c = i3;
        if (z2) {
            c0022x7.f362c = i3 - iK;
        }
        c0022x7.f365g = iK;
    }

    @Override // M.O
    public void X(a0 a0Var) {
        this.f2010z = null;
        this.f2008x = -1;
        this.f2009y = Integer.MIN_VALUE;
        this.f1996A.d();
    }

    public final void X0(int i2, int i3) {
        this.f2001q.f362c = this.f2002r.g() - i3;
        C0022x c0022x = this.f2001q;
        c0022x.f364e = this.f2005u ? -1 : 1;
        c0022x.f363d = i2;
        c0022x.f = 1;
        c0022x.b = i3;
        c0022x.f365g = Integer.MIN_VALUE;
    }

    @Override // M.O
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof C0023y) {
            this.f2010z = (C0023y) parcelable;
            g0();
        }
    }

    public final void Y0(int i2, int i3) {
        this.f2001q.f362c = i3 - this.f2002r.k();
        C0022x c0022x = this.f2001q;
        c0022x.f363d = i2;
        c0022x.f364e = this.f2005u ? 1 : -1;
        c0022x.f = -1;
        c0022x.b = i3;
        c0022x.f365g = Integer.MIN_VALUE;
    }

    @Override // M.O
    public final Parcelable Z() {
        C0023y c0023y = this.f2010z;
        if (c0023y != null) {
            C0023y c0023y2 = new C0023y();
            c0023y2.f371a = c0023y.f371a;
            c0023y2.b = c0023y.b;
            c0023y2.f372c = c0023y.f372c;
            return c0023y2;
        }
        C0023y c0023y3 = new C0023y();
        if (v() > 0) {
            B0();
            boolean z2 = this.f2003s ^ this.f2005u;
            c0023y3.f372c = z2;
            if (z2) {
                View viewL0 = L0();
                c0023y3.b = this.f2002r.g() - this.f2002r.b(viewL0);
                c0023y3.f371a = O.D(viewL0);
            } else {
                View viewM0 = M0();
                c0023y3.f371a = O.D(viewM0);
                c0023y3.b = this.f2002r.e(viewM0) - this.f2002r.k();
            }
        } else {
            c0023y3.f371a = -1;
        }
        return c0023y3;
    }

    @Override // M.Z
    public final PointF a(int i2) {
        if (v() == 0) {
            return null;
        }
        int i3 = (i2 < O.D(u(0))) != this.f2005u ? -1 : 1;
        return this.f2000p == 0 ? new PointF(i3, 0.0f) : new PointF(0.0f, i3);
    }

    @Override // M.O
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.f2010z != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    @Override // M.O
    public final boolean d() {
        return this.f2000p == 0;
    }

    @Override // M.O
    public final boolean e() {
        return this.f2000p == 1;
    }

    @Override // M.O
    public final void h(int i2, int i3, a0 a0Var, C0016q c0016q) {
        if (this.f2000p != 0) {
            i2 = i3;
        }
        if (v() == 0 || i2 == 0) {
            return;
        }
        B0();
        W0(i2 > 0 ? 1 : -1, Math.abs(i2), true, a0Var);
        w0(a0Var, this.f2001q, c0016q);
    }

    @Override // M.O
    public int h0(int i2, V v2, a0 a0Var) {
        if (this.f2000p == 1) {
            return 0;
        }
        return T0(i2, v2, a0Var);
    }

    @Override // M.O
    public final void i(int i2, C0016q c0016q) {
        boolean z2;
        int i3;
        C0023y c0023y = this.f2010z;
        if (c0023y == null || (i3 = c0023y.f371a) < 0) {
            S0();
            z2 = this.f2005u;
            i3 = this.f2008x;
            if (i3 == -1) {
                i3 = z2 ? i2 - 1 : 0;
            }
        } else {
            z2 = c0023y.f372c;
        }
        int i4 = z2 ? -1 : 1;
        for (int i5 = 0; i5 < this.f1998C && i3 >= 0 && i3 < i2; i5++) {
            c0016q.a(i3, 0);
            i3 += i4;
        }
    }

    @Override // M.O
    public final void i0(int i2) {
        this.f2008x = i2;
        this.f2009y = Integer.MIN_VALUE;
        C0023y c0023y = this.f2010z;
        if (c0023y != null) {
            c0023y.f371a = -1;
        }
        g0();
    }

    @Override // M.O
    public final int j(a0 a0Var) {
        return x0(a0Var);
    }

    @Override // M.O
    public int j0(int i2, V v2, a0 a0Var) {
        if (this.f2000p == 0) {
            return 0;
        }
        return T0(i2, v2, a0Var);
    }

    @Override // M.O
    public int k(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // M.O
    public int l(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // M.O
    public final int m(a0 a0Var) {
        return x0(a0Var);
    }

    @Override // M.O
    public int n(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // M.O
    public int o(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // M.O
    public final View q(int i2) {
        int iV = v();
        if (iV == 0) {
            return null;
        }
        int iD = i2 - O.D(u(0));
        if (iD >= 0 && iD < iV) {
            View viewU = u(iD);
            if (O.D(viewU) == i2) {
                return viewU;
            }
        }
        return super.q(i2);
    }

    @Override // M.O
    public final boolean q0() {
        if (this.f167m == 1073741824 || this.f166l == 1073741824) {
            return false;
        }
        int iV = v();
        for (int i2 = 0; i2 < iV; i2++) {
            ViewGroup.LayoutParams layoutParams = u(i2).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // M.O
    public P r() {
        return new P(-2, -2);
    }

    @Override // M.O
    public void s0(RecyclerView recyclerView, int i2) {
        C0024z c0024z = new C0024z(recyclerView.getContext());
        c0024z.f373a = i2;
        t0(c0024z);
    }

    @Override // M.O
    public boolean u0() {
        return this.f2010z == null && this.f2003s == this.f2006v;
    }

    public void v0(a0 a0Var, int[] iArr) {
        int i2;
        int iL = a0Var.f191a != -1 ? this.f2002r.l() : 0;
        if (this.f2001q.f == -1) {
            i2 = 0;
        } else {
            i2 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i2;
    }

    public void w0(a0 a0Var, C0022x c0022x, C0016q c0016q) {
        int i2 = c0022x.f363d;
        if (i2 < 0 || i2 >= a0Var.b()) {
            return;
        }
        c0016q.a(i2, Math.max(0, c0022x.f365g));
    }

    public final int x0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        C c2 = this.f2002r;
        boolean z2 = !this.f2007w;
        return b.q(a0Var, c2, E0(z2), D0(z2), this, this.f2007w);
    }

    public final int y0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        C c2 = this.f2002r;
        boolean z2 = !this.f2007w;
        return b.r(a0Var, c2, E0(z2), D0(z2), this, this.f2007w, this.f2005u);
    }

    public final int z0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        C c2 = this.f2002r;
        boolean z2 = !this.f2007w;
        return b.s(a0Var, c2, E0(z2), D0(z2), this, this.f2007w);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f2000p = 1;
        this.f2004t = false;
        this.f2005u = false;
        this.f2006v = false;
        this.f2007w = true;
        this.f2008x = -1;
        this.f2009y = Integer.MIN_VALUE;
        this.f2010z = null;
        this.f1996A = new C0020v();
        this.f1997B = new C0021w();
        this.f1998C = 2;
        this.f1999D = new int[2];
        M.N nE = O.E(context, attributeSet, i2, i3);
        U0(nE.f154a);
        boolean z2 = nE.f155c;
        c(null);
        if (z2 != this.f2004t) {
            this.f2004t = z2;
            g0();
        }
        V0(nE.f156d);
    }
}
