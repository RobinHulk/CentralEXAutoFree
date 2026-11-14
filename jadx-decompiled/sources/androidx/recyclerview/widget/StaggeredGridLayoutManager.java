package androidx.recyclerview.widget;

import B.b;
import G.a;
import M.C;
import M.C0016q;
import M.C0019u;
import M.C0024z;
import M.N;
import M.O;
import M.P;
import M.V;
import M.Z;
import M.a0;
import M.j0;
import M.k0;
import M.l0;
import M.m0;
import M.n0;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p035z.e;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends O implements Z {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final a f2074B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f2075C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f2076D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f2077E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public m0 f2078F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Rect f2079G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j0 f2080H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f2081I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int[] f2082J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final b f2083K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f2084p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final n0[] f2085q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C f2086r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final C f2087s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f2088t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2089u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final C0019u f2090v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2091w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final BitSet f2093y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2092x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2094z = -1;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2073A = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f2084p = -1;
        this.f2091w = false;
        a aVar = new a(3);
        this.f2074B = aVar;
        this.f2075C = 2;
        this.f2079G = new Rect();
        this.f2080H = new j0(this);
        this.f2081I = true;
        this.f2083K = new b(this, 4);
        N nE = O.E(context, attributeSet, i2, i3);
        int i4 = nE.f154a;
        if (i4 != 0 && i4 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i4 != this.f2088t) {
            this.f2088t = i4;
            C c2 = this.f2086r;
            this.f2086r = this.f2087s;
            this.f2087s = c2;
            g0();
        }
        int i5 = nE.b;
        c(null);
        if (i5 != this.f2084p) {
            int[] iArr = (int[]) aVar.b;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            aVar.f93c = null;
            g0();
            this.f2084p = i5;
            this.f2093y = new BitSet(this.f2084p);
            this.f2085q = new n0[this.f2084p];
            for (int i6 = 0; i6 < this.f2084p; i6++) {
                this.f2085q[i6] = new n0(this, i6);
            }
            g0();
        }
        boolean z2 = nE.f155c;
        c(null);
        m0 m0Var = this.f2078F;
        if (m0Var != null && m0Var.f291h != z2) {
            m0Var.f291h = z2;
        }
        this.f2091w = z2;
        g0();
        C0019u c0019u = new C0019u();
        c0019u.f347a = true;
        c0019u.f = 0;
        c0019u.f351g = 0;
        this.f2090v = c0019u;
        this.f2086r = C.a(this, this.f2088t);
        this.f2087s = C.a(this, 1 - this.f2088t);
    }

    public static int Y0(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean, int] */
    public final int A0(V v2, C0019u c0019u, a0 a0Var) {
        n0 n0Var;
        ?? r6;
        int i2;
        int iH;
        int iC;
        int iK;
        int iC2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        int i8 = 1;
        this.f2093y.set(0, this.f2084p, true);
        C0019u c0019u2 = this.f2090v;
        int i9 = c0019u2.f353i ? c0019u.f350e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c0019u.f350e == 1 ? c0019u.f351g + c0019u.b : c0019u.f - c0019u.b;
        int i10 = c0019u.f350e;
        for (int i11 = 0; i11 < this.f2084p; i11++) {
            if (!this.f2085q[i11].f295a.isEmpty()) {
                X0(this.f2085q[i11], i10, i9);
            }
        }
        int iG = this.f2092x ? this.f2086r.g() : this.f2086r.k();
        boolean z2 = false;
        while (true) {
            int i12 = c0019u.f348c;
            if (((i12 < 0 || i12 >= a0Var.b()) ? i7 : i8) == 0 || (!c0019u2.f353i && this.f2093y.isEmpty())) {
                break;
            }
            View view = v2.i(c0019u.f348c, Long.MAX_VALUE).f220a;
            c0019u.f348c += c0019u.f349d;
            k0 k0Var = (k0) view.getLayoutParams();
            int iB = k0Var.f170a.b();
            a aVar = this.f2074B;
            int[] iArr = (int[]) aVar.b;
            int i13 = (iArr == null || iB >= iArr.length) ? -1 : iArr[iB];
            if (i13 == -1) {
                if (O0(c0019u.f350e)) {
                    i6 = this.f2084p - i8;
                    i5 = -1;
                    i4 = -1;
                } else {
                    i4 = i8;
                    i5 = this.f2084p;
                    i6 = i7;
                }
                n0 n0Var2 = null;
                if (c0019u.f350e == i8) {
                    int iK2 = this.f2086r.k();
                    int i14 = Integer.MAX_VALUE;
                    while (i6 != i5) {
                        n0 n0Var3 = this.f2085q[i6];
                        int iF = n0Var3.f(iK2);
                        if (iF < i14) {
                            i14 = iF;
                            n0Var2 = n0Var3;
                        }
                        i6 += i4;
                    }
                } else {
                    int iG2 = this.f2086r.g();
                    int i15 = Integer.MIN_VALUE;
                    while (i6 != i5) {
                        n0 n0Var4 = this.f2085q[i6];
                        int iH2 = n0Var4.h(iG2);
                        if (iH2 > i15) {
                            n0Var2 = n0Var4;
                            i15 = iH2;
                        }
                        i6 += i4;
                    }
                }
                n0Var = n0Var2;
                aVar.r(iB);
                ((int[]) aVar.b)[iB] = n0Var.f298e;
            } else {
                n0Var = this.f2085q[i13];
            }
            k0Var.f280e = n0Var;
            if (c0019u.f350e == 1) {
                r6 = 0;
                b(view, -1, false);
            } else {
                r6 = 0;
                b(view, 0, false);
            }
            if (this.f2088t == 1) {
                i2 = 1;
                M0(view, O.w(r6, this.f2089u, this.f166l, r6, ((ViewGroup.MarginLayoutParams) k0Var).width), O.w(true, this.f169o, this.f167m, z() + C(), ((ViewGroup.MarginLayoutParams) k0Var).height));
            } else {
                i2 = 1;
                M0(view, O.w(true, this.f168n, this.f166l, B() + A(), ((ViewGroup.MarginLayoutParams) k0Var).width), O.w(false, this.f2089u, this.f167m, 0, ((ViewGroup.MarginLayoutParams) k0Var).height));
            }
            if (c0019u.f350e == i2) {
                iC = n0Var.f(iG);
                iH = this.f2086r.c(view) + iC;
            } else {
                iH = n0Var.h(iG);
                iC = iH - this.f2086r.c(view);
            }
            if (c0019u.f350e == 1) {
                n0 n0Var5 = k0Var.f280e;
                n0Var5.getClass();
                k0 k0Var2 = (k0) view.getLayoutParams();
                k0Var2.f280e = n0Var5;
                ArrayList arrayList = n0Var5.f295a;
                arrayList.add(view);
                n0Var5.f296c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    n0Var5.b = Integer.MIN_VALUE;
                }
                if (k0Var2.f170a.i() || k0Var2.f170a.l()) {
                    n0Var5.f297d = n0Var5.f.f2086r.c(view) + n0Var5.f297d;
                }
            } else {
                n0 n0Var6 = k0Var.f280e;
                n0Var6.getClass();
                k0 k0Var3 = (k0) view.getLayoutParams();
                k0Var3.f280e = n0Var6;
                ArrayList arrayList2 = n0Var6.f295a;
                arrayList2.add(0, view);
                n0Var6.b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    n0Var6.f296c = Integer.MIN_VALUE;
                }
                if (k0Var3.f170a.i() || k0Var3.f170a.l()) {
                    n0Var6.f297d = n0Var6.f.f2086r.c(view) + n0Var6.f297d;
                }
            }
            if (L0() && this.f2088t == 1) {
                iC2 = this.f2087s.g() - (((this.f2084p - 1) - n0Var.f298e) * this.f2089u);
                iK = iC2 - this.f2087s.c(view);
            } else {
                iK = this.f2087s.k() + (n0Var.f298e * this.f2089u);
                iC2 = this.f2087s.c(view) + iK;
            }
            if (this.f2088t == 1) {
                O.J(view, iK, iC, iC2, iH);
            } else {
                O.J(view, iC, iK, iH, iC2);
            }
            X0(n0Var, c0019u2.f350e, i9);
            Q0(v2, c0019u2);
            if (c0019u2.f352h && view.hasFocusable()) {
                i3 = 0;
                this.f2093y.set(n0Var.f298e, false);
            } else {
                i3 = 0;
            }
            i7 = i3;
            i8 = 1;
            z2 = true;
        }
        int i16 = i7;
        if (!z2) {
            Q0(v2, c0019u2);
        }
        int iK3 = c0019u2.f350e == -1 ? this.f2086r.k() - I0(this.f2086r.k()) : H0(this.f2086r.g()) - this.f2086r.g();
        return iK3 > 0 ? Math.min(c0019u.b, iK3) : i16;
    }

    public final View B0(boolean z2) {
        int iK = this.f2086r.k();
        int iG = this.f2086r.g();
        View view = null;
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            int iE = this.f2086r.e(viewU);
            int iB = this.f2086r.b(viewU);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final View C0(boolean z2) {
        int iK = this.f2086r.k();
        int iG = this.f2086r.g();
        int iV = v();
        View view = null;
        for (int i2 = 0; i2 < iV; i2++) {
            View viewU = u(i2);
            int iE = this.f2086r.e(viewU);
            if (this.f2086r.b(viewU) > iK && iE < iG) {
                if (iE >= iK || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final void D0(V v2, a0 a0Var, boolean z2) {
        int iG;
        int iH0 = H0(Integer.MIN_VALUE);
        if (iH0 != Integer.MIN_VALUE && (iG = this.f2086r.g() - iH0) > 0) {
            int i2 = iG - (-U0(-iG, v2, a0Var));
            if (!z2 || i2 <= 0) {
                return;
            }
            this.f2086r.p(i2);
        }
    }

    public final void E0(V v2, a0 a0Var, boolean z2) {
        int iK;
        int iI0 = I0(Integer.MAX_VALUE);
        if (iI0 != Integer.MAX_VALUE && (iK = iI0 - this.f2086r.k()) > 0) {
            int iU0 = iK - U0(iK, v2, a0Var);
            if (!z2 || iU0 <= 0) {
                return;
            }
            this.f2086r.p(-iU0);
        }
    }

    @Override // M.O
    public final int F(V v2, a0 a0Var) {
        return this.f2088t == 0 ? this.f2084p : super.F(v2, a0Var);
    }

    public final int F0() {
        if (v() == 0) {
            return 0;
        }
        return O.D(u(0));
    }

    public final int G0() {
        int iV = v();
        if (iV == 0) {
            return 0;
        }
        return O.D(u(iV - 1));
    }

    @Override // M.O
    public final boolean H() {
        return this.f2075C != 0;
    }

    public final int H0(int i2) {
        int iF = this.f2085q[0].f(i2);
        for (int i3 = 1; i3 < this.f2084p; i3++) {
            int iF2 = this.f2085q[i3].f(i2);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    public final int I0(int i2) {
        int iH = this.f2085q[0].h(i2);
        for (int i3 = 1; i3 < this.f2084p; i3++) {
            int iH2 = this.f2085q[i3].h(i2);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036  */
    /* JADX WARN: Code duplicated, block: B:25:0x003a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0042  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052 A[LOOP:0: B:26:0x0040->B:30:0x0052, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    /* JADX WARN: Code duplicated, block: B:38:0x0078 A[LOOP:1: B:34:0x0067->B:38:0x0078, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x007e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0093  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:53:0x00be  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:64:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x007b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x007c A[EDGE_INSN: B:66:0x007c->B:40:0x007c BREAK  A[LOOP:1: B:34:0x0067->B:38:0x0078], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    public final void J0(int i2, int i3, int i4) {
        int i5;
        int i6;
        a aVar;
        int[] iArr;
        int iG0;
        ArrayList arrayList;
        l0 l0Var;
        int size;
        int i7;
        int i8;
        int size2;
        l0 l0Var2;
        int iG1 = this.f2092x ? G0() : F0();
        if (i4 == 8) {
            if (i2 < i3) {
                i5 = i3 + 1;
            } else {
                i5 = i2 + 1;
                i6 = i3;
            }
            aVar = this.f2074B;
            iArr = (int[]) aVar.b;
            if (iArr != null && i6 < iArr.length) {
                arrayList = (ArrayList) aVar.f93c;
                if (arrayList == null) {
                    i8 = -1;
                } else {
                    l0Var = null;
                    if (arrayList != null) {
                        for (size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            l0Var2 = (l0) ((ArrayList) aVar.f93c).get(size2);
                            if (l0Var2.f282a == i6) {
                                l0Var = l0Var2;
                                break;
                            }
                        }
                    }
                    if (l0Var != null) {
                        ((ArrayList) aVar.f93c).remove(l0Var);
                    }
                    size = ((ArrayList) aVar.f93c).size();
                    i7 = 0;
                    while (true) {
                        if (i7 < size) {
                            i7 = -1;
                            break;
                        } else if (((l0) ((ArrayList) aVar.f93c).get(i7)).f282a >= i6) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    if (i7 != -1) {
                        l0 l0Var3 = (l0) ((ArrayList) aVar.f93c).get(i7);
                        ((ArrayList) aVar.f93c).remove(i7);
                        i8 = l0Var3.f282a;
                    } else {
                        i8 = -1;
                    }
                }
                if (i8 == -1) {
                    int[] iArr2 = (int[]) aVar.b;
                    Arrays.fill(iArr2, i6, iArr2.length, -1);
                    int length = ((int[]) aVar.b).length;
                } else {
                    Arrays.fill((int[]) aVar.b, i6, i8 + 1, -1);
                }
            }
            if (i4 != 1) {
                aVar.x(i2, i3);
            } else if (i4 != 2) {
                aVar.y(i2, i3);
            } else if (i4 == 8) {
                aVar.y(i2, 1);
                aVar.x(i3, 1);
            }
            if (i5 <= iG1) {
                return;
            }
            if (this.f2092x) {
                iG0 = F0();
            } else {
                iG0 = G0();
            }
            if (i6 <= iG0) {
                g0();
            }
        }
        i5 = i2 + i3;
        i6 = i2;
        aVar = this.f2074B;
        iArr = (int[]) aVar.b;
        if (iArr != null) {
            arrayList = (ArrayList) aVar.f93c;
            if (arrayList == null) {
                i8 = -1;
            } else {
                l0Var = null;
                if (arrayList != null) {
                    while (size2 >= 0) {
                        l0Var2 = (l0) ((ArrayList) aVar.f93c).get(size2);
                        if (l0Var2.f282a == i6) {
                            l0Var = l0Var2;
                            break;
                        }
                    }
                }
                if (l0Var != null) {
                    ((ArrayList) aVar.f93c).remove(l0Var);
                }
                size = ((ArrayList) aVar.f93c).size();
                i7 = 0;
                while (true) {
                    if (i7 < size) {
                        i7 = -1;
                        break;
                    } else {
                        if (((l0) ((ArrayList) aVar.f93c).get(i7)).f282a >= i6) {
                            break;
                            break;
                        }
                        i7++;
                    }
                }
                if (i7 != -1) {
                    l0 l0Var4 = (l0) ((ArrayList) aVar.f93c).get(i7);
                    ((ArrayList) aVar.f93c).remove(i7);
                    i8 = l0Var4.f282a;
                } else {
                    i8 = -1;
                }
            }
            if (i8 == -1) {
                int[] iArr3 = (int[]) aVar.b;
                Arrays.fill(iArr3, i6, iArr3.length, -1);
                int length2 = ((int[]) aVar.b).length;
            } else {
                Arrays.fill((int[]) aVar.b, i6, i8 + 1, -1);
            }
        }
        if (i4 != 1) {
            aVar.x(i2, i3);
        } else if (i4 != 2) {
            aVar.y(i2, i3);
        } else if (i4 == 8) {
            aVar.y(i2, 1);
            aVar.x(i3, 1);
        }
        if (i5 <= iG1) {
            return;
        }
        if (this.f2092x) {
            iG0 = F0();
        } else {
            iG0 = G0();
        }
        if (i6 <= iG0) {
            g0();
        }
    }

    @Override // M.O
    public final void K(int i2) {
        super.K(i2);
        for (int i3 = 0; i3 < this.f2084p; i3++) {
            n0 n0Var = this.f2085q[i3];
            int i4 = n0Var.b;
            if (i4 != Integer.MIN_VALUE) {
                n0Var.b = i4 + i2;
            }
            int i5 = n0Var.f296c;
            if (i5 != Integer.MIN_VALUE) {
                n0Var.f296c = i5 + i2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x002c A[SYNTHETIC] */
    public final View K0() {
        boolean z2;
        boolean z3;
        int iV = v();
        int i2 = iV - 1;
        BitSet bitSet = new BitSet(this.f2084p);
        bitSet.set(0, this.f2084p, true);
        byte b = (this.f2088t == 1 && L0()) ? (byte) 1 : (byte) -1;
        if (this.f2092x) {
            iV = -1;
        } else {
            i2 = 0;
        }
        int i3 = i2 < iV ? 1 : -1;
        while (i2 != iV) {
            View viewU = u(i2);
            k0 k0Var = (k0) viewU.getLayoutParams();
            if (bitSet.get(k0Var.f280e.f298e)) {
                n0 n0Var = k0Var.f280e;
                if (this.f2092x) {
                    int i4 = n0Var.f296c;
                    if (i4 == Integer.MIN_VALUE) {
                        n0Var.a();
                        i4 = n0Var.f296c;
                    }
                    if (i4 < this.f2086r.g()) {
                        ArrayList arrayList = n0Var.f295a;
                        ((k0) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return viewU;
                    }
                    bitSet.clear(k0Var.f280e.f298e);
                } else {
                    int i5 = n0Var.b;
                    if (i5 == Integer.MIN_VALUE) {
                        View view = (View) n0Var.f295a.get(0);
                        k0 k0Var2 = (k0) view.getLayoutParams();
                        n0Var.b = n0Var.f.f2086r.e(view);
                        k0Var2.getClass();
                        i5 = n0Var.b;
                    }
                    if (i5 > this.f2086r.k()) {
                        ((k0) ((View) n0Var.f295a.get(0)).getLayoutParams()).getClass();
                        return viewU;
                    }
                    bitSet.clear(k0Var.f280e.f298e);
                }
            }
            i2 += i3;
            if (i2 != iV) {
                View viewU2 = u(i2);
                if (this.f2092x) {
                    int iB = this.f2086r.b(viewU);
                    int iB2 = this.f2086r.b(viewU2);
                    if (iB < iB2) {
                        return viewU;
                    }
                    if (iB == iB2) {
                        if (k0Var.f280e.f298e - ((k0) viewU2.getLayoutParams()).f280e.f298e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                            return viewU;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iE = this.f2086r.e(viewU);
                    int iE2 = this.f2086r.e(viewU2);
                    if (iE > iE2) {
                        return viewU;
                    }
                    if (iE == iE2) {
                        if (k0Var.f280e.f298e - ((k0) viewU2.getLayoutParams()).f280e.f298e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                            return viewU;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    @Override // M.O
    public final void L(int i2) {
        super.L(i2);
        for (int i3 = 0; i3 < this.f2084p; i3++) {
            n0 n0Var = this.f2085q[i3];
            int i4 = n0Var.b;
            if (i4 != Integer.MIN_VALUE) {
                n0Var.b = i4 + i2;
            }
            int i5 = n0Var.f296c;
            if (i5 != Integer.MIN_VALUE) {
                n0Var.f296c = i5 + i2;
            }
        }
    }

    public final boolean L0() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        return AbstractC0291z.d(recyclerView) == 1;
    }

    @Override // M.O
    public final void M(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f2083K);
        }
        for (int i2 = 0; i2 < this.f2084p; i2++) {
            this.f2085q[i2].b();
        }
        recyclerView.requestLayout();
    }

    public final void M0(View view, int i2, int i3) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.f2079G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.J(view));
        }
        k0 k0Var = (k0) view.getLayoutParams();
        int iY0 = Y0(i2, ((ViewGroup.MarginLayoutParams) k0Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) k0Var).rightMargin + rect.right);
        int iY1 = Y0(i3, ((ViewGroup.MarginLayoutParams) k0Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) k0Var).bottomMargin + rect.bottom);
        if (p0(view, iY0, iY1, k0Var)) {
            view.measure(iY0, iY1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x005b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0063  */
    @Override // M.O
    public final View N(View view, int i2, V v2, a0 a0Var) {
        View viewA;
        int i3;
        if (v() == 0) {
            return null;
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (viewA = recyclerView.A(view)) == null || ((ArrayList) this.f157a.f216d).contains(viewA)) {
            viewA = null;
        }
        if (viewA == null) {
            return null;
        }
        T0();
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 17) {
                    if (i2 != 33) {
                        if (i2 == 66 ? this.f2088t == 0 : !(i2 != 130 || this.f2088t != 1)) {
                            i3 = 1;
                        }
                    } else if (this.f2088t == 1) {
                        i3 = -1;
                    }
                    i3 = Integer.MIN_VALUE;
                } else if (this.f2088t == 0) {
                    i3 = -1;
                } else {
                    i3 = Integer.MIN_VALUE;
                }
            } else if (this.f2088t != 1 && L0()) {
                i3 = -1;
            } else {
                i3 = 1;
            }
        } else if (this.f2088t != 1 && L0()) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        if (i3 == Integer.MIN_VALUE) {
            return null;
        }
        k0 k0Var = (k0) viewA.getLayoutParams();
        k0Var.getClass();
        n0 n0Var = k0Var.f280e;
        int iG0 = i3 == 1 ? G0() : F0();
        W0(iG0, a0Var);
        V0(i3);
        C0019u c0019u = this.f2090v;
        c0019u.f348c = c0019u.f349d + iG0;
        c0019u.b = (int) (this.f2086r.l() * 0.33333334f);
        c0019u.f352h = true;
        c0019u.f347a = false;
        A0(v2, c0019u, a0Var);
        this.f2076D = this.f2092x;
        View viewG = n0Var.g(iG0, i3);
        if (viewG != null && viewG != viewA) {
            return viewG;
        }
        if (O0(i3)) {
            for (int i4 = this.f2084p - 1; i4 >= 0; i4--) {
                View viewG2 = this.f2085q[i4].g(iG0, i3);
                if (viewG2 != null && viewG2 != viewA) {
                    return viewG2;
                }
            }
        } else {
            for (int i5 = 0; i5 < this.f2084p; i5++) {
                View viewG3 = this.f2085q[i5].g(iG0, i3);
                if (viewG3 != null && viewG3 != viewA) {
                    return viewG3;
                }
            }
        }
        boolean z2 = (this.f2091w ^ true) == (i3 == -1);
        View viewQ = q(z2 ? n0Var.c() : n0Var.d());
        if (viewQ != null && viewQ != viewA) {
            return viewQ;
        }
        if (O0(i3)) {
            for (int i6 = this.f2084p - 1; i6 >= 0; i6--) {
                if (i6 != n0Var.f298e) {
                    View viewQ2 = q(z2 ? this.f2085q[i6].c() : this.f2085q[i6].d());
                    if (viewQ2 != null && viewQ2 != viewA) {
                        return viewQ2;
                    }
                }
            }
        } else {
            for (int i7 = 0; i7 < this.f2084p; i7++) {
                View viewQ3 = q(z2 ? this.f2085q[i7].c() : this.f2085q[i7].d());
                if (viewQ3 != null && viewQ3 != viewA) {
                    return viewQ3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:116:0x01da  */
    /* JADX WARN: Code duplicated, block: B:122:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:124:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:249:0x040d  */
    /* JADX WARN: Code duplicated, block: B:260:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x01ea A[SYNTHETIC] */
    public final void N0(V v2, a0 a0Var, boolean z2) {
        boolean z3;
        m0 m0Var;
        int iV;
        int i2;
        int iD;
        int iD2;
        int iV2;
        int i3;
        m0 m0Var2 = this.f2078F;
        j0 j0Var = this.f2080H;
        if (!(m0Var2 == null && this.f2094z == -1) && a0Var.b() == 0) {
            b0(v2);
            j0Var.a();
            return;
        }
        boolean z4 = (j0Var.f265e && this.f2094z == -1 && this.f2078F == null) ? false : true;
        a aVar = this.f2074B;
        StaggeredGridLayoutManager staggeredGridLayoutManager = j0Var.f266g;
        if (z4) {
            j0Var.a();
            m0 m0Var3 = this.f2078F;
            if (m0Var3 != null) {
                int i4 = m0Var3.f287c;
                if (i4 > 0) {
                    if (i4 == this.f2084p) {
                        for (int i5 = 0; i5 < this.f2084p; i5++) {
                            this.f2085q[i5].b();
                            m0 m0Var4 = this.f2078F;
                            int iG = m0Var4.f288d[i5];
                            if (iG != Integer.MIN_VALUE) {
                                iG += m0Var4.f292i ? this.f2086r.g() : this.f2086r.k();
                            }
                            n0 n0Var = this.f2085q[i5];
                            n0Var.b = iG;
                            n0Var.f296c = iG;
                        }
                    } else {
                        m0Var3.f288d = null;
                        m0Var3.f287c = 0;
                        m0Var3.f289e = 0;
                        m0Var3.f = null;
                        m0Var3.f290g = null;
                        m0Var3.f286a = m0Var3.b;
                    }
                }
                m0 m0Var5 = this.f2078F;
                this.f2077E = m0Var5.f293j;
                boolean z5 = m0Var5.f291h;
                c(null);
                m0 m0Var6 = this.f2078F;
                if (m0Var6 != null && m0Var6.f291h != z5) {
                    m0Var6.f291h = z5;
                }
                this.f2091w = z5;
                g0();
                T0();
                m0 m0Var7 = this.f2078F;
                int i6 = m0Var7.f286a;
                if (i6 != -1) {
                    this.f2094z = i6;
                    j0Var.f263c = m0Var7.f292i;
                } else {
                    j0Var.f263c = this.f2092x;
                }
                if (m0Var7.f289e > 1) {
                    aVar.b = m0Var7.f;
                    aVar.f93c = m0Var7.f290g;
                }
            } else {
                T0();
                j0Var.f263c = this.f2092x;
            }
            if (a0Var.f195g || (i3 = this.f2094z) == -1) {
                if (this.f2076D) {
                    int iB = a0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iD2 = 0;
                            break;
                        }
                        iD2 = O.D(u(iV2));
                        if (iD2 < 0 && iD2 < iB) {
                            break;
                        } else {
                            iV2--;
                        }
                    }
                } else {
                    int iB2 = a0Var.b();
                    iV = v();
                    i2 = 0;
                    while (true) {
                        if (i2 >= iV) {
                            iD2 = 0;
                            break;
                        }
                        iD = O.D(u(i2));
                        if (iD < 0 && iD < iB2) {
                            iD2 = iD;
                            break;
                        }
                        i2++;
                    }
                }
                j0Var.f262a = iD2;
                j0Var.b = Integer.MIN_VALUE;
            } else if (i3 < 0 || i3 >= a0Var.b()) {
                this.f2094z = -1;
                this.f2073A = Integer.MIN_VALUE;
                if (this.f2076D) {
                    int iB3 = a0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iD2 = 0;
                            break;
                        } else {
                            iD2 = O.D(u(iV2));
                            if (iD2 < 0) {
                            }
                            iV2--;
                        }
                    }
                } else {
                    int iB4 = a0Var.b();
                    iV = v();
                    i2 = 0;
                    while (true) {
                        if (i2 >= iV) {
                            iD2 = 0;
                            break;
                        } else {
                            iD = O.D(u(i2));
                            if (iD < 0) {
                            }
                            i2++;
                        }
                    }
                }
                j0Var.f262a = iD2;
                j0Var.b = Integer.MIN_VALUE;
            } else {
                m0 m0Var8 = this.f2078F;
                if (m0Var8 == null || m0Var8.f286a == -1 || m0Var8.f287c < 1) {
                    View viewQ = q(this.f2094z);
                    if (viewQ != null) {
                        j0Var.f262a = this.f2092x ? G0() : F0();
                        if (this.f2073A != Integer.MIN_VALUE) {
                            if (j0Var.f263c) {
                                j0Var.b = (this.f2086r.g() - this.f2073A) - this.f2086r.b(viewQ);
                            } else {
                                j0Var.b = (this.f2086r.k() + this.f2073A) - this.f2086r.e(viewQ);
                            }
                        } else if (this.f2086r.c(viewQ) > this.f2086r.l()) {
                            j0Var.b = j0Var.f263c ? this.f2086r.g() : this.f2086r.k();
                        } else {
                            int iE = this.f2086r.e(viewQ) - this.f2086r.k();
                            if (iE < 0) {
                                j0Var.b = -iE;
                            } else {
                                int iG2 = this.f2086r.g() - this.f2086r.b(viewQ);
                                if (iG2 < 0) {
                                    j0Var.b = iG2;
                                } else {
                                    j0Var.b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i7 = this.f2094z;
                        j0Var.f262a = i7;
                        int i8 = this.f2073A;
                        if (i8 == Integer.MIN_VALUE) {
                            boolean z6 = v0(i7) == 1;
                            j0Var.f263c = z6;
                            j0Var.b = z6 ? staggeredGridLayoutManager.f2086r.g() : staggeredGridLayoutManager.f2086r.k();
                        } else if (j0Var.f263c) {
                            j0Var.b = staggeredGridLayoutManager.f2086r.g() - i8;
                        } else {
                            j0Var.b = staggeredGridLayoutManager.f2086r.k() + i8;
                        }
                        j0Var.f264d = true;
                    }
                } else {
                    j0Var.b = Integer.MIN_VALUE;
                    j0Var.f262a = this.f2094z;
                }
            }
            j0Var.f265e = true;
        }
        if (this.f2078F == null && this.f2094z == -1 && (j0Var.f263c != this.f2076D || L0() != this.f2077E)) {
            int[] iArr = (int[]) aVar.b;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            aVar.f93c = null;
            j0Var.f264d = true;
        }
        if (v() > 0 && ((m0Var = this.f2078F) == null || m0Var.f287c < 1)) {
            if (j0Var.f264d) {
                for (int i9 = 0; i9 < this.f2084p; i9++) {
                    this.f2085q[i9].b();
                    int i10 = j0Var.b;
                    if (i10 != Integer.MIN_VALUE) {
                        n0 n0Var2 = this.f2085q[i9];
                        n0Var2.b = i10;
                        n0Var2.f296c = i10;
                    }
                }
            } else if (z4 || j0Var.f == null) {
                for (int i11 = 0; i11 < this.f2084p; i11++) {
                    n0 n0Var3 = this.f2085q[i11];
                    boolean z7 = this.f2092x;
                    int i12 = j0Var.b;
                    int iF = z7 ? n0Var3.f(Integer.MIN_VALUE) : n0Var3.h(Integer.MIN_VALUE);
                    n0Var3.b();
                    if (iF != Integer.MIN_VALUE) {
                        StaggeredGridLayoutManager staggeredGridLayoutManager2 = n0Var3.f;
                        if ((!z7 || iF >= staggeredGridLayoutManager2.f2086r.g()) && (z7 || iF <= staggeredGridLayoutManager2.f2086r.k())) {
                            if (i12 != Integer.MIN_VALUE) {
                                iF += i12;
                            }
                            n0Var3.f296c = iF;
                            n0Var3.b = iF;
                        }
                    }
                }
                n0[] n0VarArr = this.f2085q;
                int length = n0VarArr.length;
                int[] iArr2 = j0Var.f;
                if (iArr2 == null || iArr2.length < length) {
                    j0Var.f = new int[staggeredGridLayoutManager.f2085q.length];
                }
                for (int i13 = 0; i13 < length; i13++) {
                    j0Var.f[i13] = n0VarArr[i13].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i14 = 0; i14 < this.f2084p; i14++) {
                    n0 n0Var4 = this.f2085q[i14];
                    n0Var4.b();
                    int i15 = j0Var.f[i14];
                    n0Var4.b = i15;
                    n0Var4.f296c = i15;
                }
            }
        }
        p(v2);
        C0019u c0019u = this.f2090v;
        c0019u.f347a = false;
        int iL = this.f2087s.l();
        this.f2089u = iL / this.f2084p;
        View.MeasureSpec.makeMeasureSpec(iL, this.f2087s.i());
        W0(j0Var.f262a, a0Var);
        if (j0Var.f263c) {
            V0(-1);
            A0(v2, c0019u, a0Var);
            V0(1);
            c0019u.f348c = j0Var.f262a + c0019u.f349d;
            A0(v2, c0019u, a0Var);
        } else {
            V0(1);
            A0(v2, c0019u, a0Var);
            V0(-1);
            c0019u.f348c = j0Var.f262a + c0019u.f349d;
            A0(v2, c0019u, a0Var);
        }
        if (this.f2087s.i() != 1073741824) {
            int iV3 = v();
            float fMax = 0.0f;
            for (int i16 = 0; i16 < iV3; i16++) {
                View viewU = u(i16);
                float fC = this.f2087s.c(viewU);
                if (fC >= fMax) {
                    ((k0) viewU.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i17 = this.f2089u;
            int iRound = Math.round(fMax * this.f2084p);
            if (this.f2087s.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f2087s.l());
            }
            this.f2089u = iRound / this.f2084p;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f2087s.i());
            if (this.f2089u != i17) {
                for (int i18 = 0; i18 < iV3; i18++) {
                    View viewU2 = u(i18);
                    k0 k0Var = (k0) viewU2.getLayoutParams();
                    k0Var.getClass();
                    if (L0() && this.f2088t == 1) {
                        int i19 = -((this.f2084p - 1) - k0Var.f280e.f298e);
                        viewU2.offsetLeftAndRight((this.f2089u * i19) - (i19 * i17));
                    } else {
                        int i20 = k0Var.f280e.f298e;
                        int i21 = this.f2089u * i20;
                        int i22 = i20 * i17;
                        if (this.f2088t == 1) {
                            viewU2.offsetLeftAndRight(i21 - i22);
                        } else {
                            viewU2.offsetTopAndBottom(i21 - i22);
                        }
                    }
                }
            }
        }
        if (v() > 0) {
            if (this.f2092x) {
                D0(v2, a0Var, true);
                E0(v2, a0Var, false);
            } else {
                E0(v2, a0Var, true);
                D0(v2, a0Var, false);
            }
        }
        if (z2 && !a0Var.f195g && this.f2075C != 0 && v() > 0 && K0() != null) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.f2083K);
            }
            z3 = w0();
        }
        if (a0Var.f195g) {
            j0Var.a();
        }
        this.f2076D = j0Var.f263c;
        this.f2077E = L0();
        if (z3) {
            j0Var.a();
            N0(v2, a0Var, false);
        }
    }

    @Override // M.O
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (v() > 0) {
            View viewC0 = C0(false);
            View viewB0 = B0(false);
            if (viewC0 == null || viewB0 == null) {
                return;
            }
            int iD = O.D(viewC0);
            int iD2 = O.D(viewB0);
            if (iD < iD2) {
                accessibilityEvent.setFromIndex(iD);
                accessibilityEvent.setToIndex(iD2);
            } else {
                accessibilityEvent.setFromIndex(iD2);
                accessibilityEvent.setToIndex(iD);
            }
        }
    }

    public final boolean O0(int i2) {
        if (this.f2088t == 0) {
            return (i2 == -1) != this.f2092x;
        }
        return ((i2 == -1) == this.f2092x) == L0();
    }

    @Override // M.O
    public final void P(V v2, a0 a0Var, View view, e eVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof k0)) {
            Q(view, eVar);
            return;
        }
        k0 k0Var = (k0) layoutParams;
        if (this.f2088t == 0) {
            n0 n0Var = k0Var.f280e;
            eVar.f(A.e.v(false, n0Var == null ? -1 : n0Var.f298e, 1, -1, -1));
        } else {
            n0 n0Var2 = k0Var.f280e;
            eVar.f(A.e.v(false, -1, -1, n0Var2 == null ? -1 : n0Var2.f298e, 1));
        }
    }

    public final void P0(int i2, a0 a0Var) {
        int iF0;
        int i3;
        if (i2 > 0) {
            iF0 = G0();
            i3 = 1;
        } else {
            iF0 = F0();
            i3 = -1;
        }
        C0019u c0019u = this.f2090v;
        c0019u.f347a = true;
        W0(iF0, a0Var);
        V0(i3);
        c0019u.f348c = iF0 + c0019u.f349d;
        c0019u.b = Math.abs(i2);
    }

    public final void Q0(V v2, C0019u c0019u) {
        int iMin;
        if (!c0019u.f347a || c0019u.f353i) {
            return;
        }
        if (c0019u.b == 0) {
            if (c0019u.f350e == -1) {
                R0(v2, c0019u.f351g);
                return;
            } else {
                S0(v2, c0019u.f);
                return;
            }
        }
        int i2 = 1;
        if (c0019u.f350e == -1) {
            int i3 = c0019u.f;
            int iH = this.f2085q[0].h(i3);
            while (i2 < this.f2084p) {
                int iH2 = this.f2085q[i2].h(i3);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i2++;
            }
            int i4 = i3 - iH;
            R0(v2, i4 < 0 ? c0019u.f351g : c0019u.f351g - Math.min(i4, c0019u.b));
            return;
        }
        int i5 = c0019u.f351g;
        int iF = this.f2085q[0].f(i5);
        while (i2 < this.f2084p) {
            int iF2 = this.f2085q[i2].f(i5);
            if (iF2 < iF) {
                iF = iF2;
            }
            i2++;
        }
        int i6 = iF - c0019u.f351g;
        if (i6 < 0) {
            iMin = c0019u.f;
        } else {
            iMin = Math.min(i6, c0019u.b) + c0019u.f;
        }
        S0(v2, iMin);
    }

    @Override // M.O
    public final void R(int i2, int i3) {
        J0(i2, i3, 1);
    }

    public final void R0(V v2, int i2) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            if (this.f2086r.e(viewU) < i2 || this.f2086r.o(viewU) < i2) {
                return;
            }
            k0 k0Var = (k0) viewU.getLayoutParams();
            k0Var.getClass();
            if (k0Var.f280e.f295a.size() == 1) {
                return;
            }
            n0 n0Var = k0Var.f280e;
            ArrayList arrayList = n0Var.f295a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            k0 k0Var2 = (k0) view.getLayoutParams();
            k0Var2.f280e = null;
            if (k0Var2.f170a.i() || k0Var2.f170a.l()) {
                n0Var.f297d -= n0Var.f.f2086r.c(view);
            }
            if (size == 1) {
                n0Var.b = Integer.MIN_VALUE;
            }
            n0Var.f296c = Integer.MIN_VALUE;
            d0(viewU, v2);
        }
    }

    @Override // M.O
    public final void S() {
        a aVar = this.f2074B;
        int[] iArr = (int[]) aVar.b;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        aVar.f93c = null;
        g0();
    }

    public final void S0(V v2, int i2) {
        while (v() > 0) {
            View viewU = u(0);
            if (this.f2086r.b(viewU) > i2 || this.f2086r.n(viewU) > i2) {
                return;
            }
            k0 k0Var = (k0) viewU.getLayoutParams();
            k0Var.getClass();
            if (k0Var.f280e.f295a.size() == 1) {
                return;
            }
            n0 n0Var = k0Var.f280e;
            ArrayList arrayList = n0Var.f295a;
            View view = (View) arrayList.remove(0);
            k0 k0Var2 = (k0) view.getLayoutParams();
            k0Var2.f280e = null;
            if (arrayList.size() == 0) {
                n0Var.f296c = Integer.MIN_VALUE;
            }
            if (k0Var2.f170a.i() || k0Var2.f170a.l()) {
                n0Var.f297d -= n0Var.f.f2086r.c(view);
            }
            n0Var.b = Integer.MIN_VALUE;
            d0(viewU, v2);
        }
    }

    @Override // M.O
    public final void T(int i2, int i3) {
        J0(i2, i3, 8);
    }

    public final void T0() {
        if (this.f2088t == 1 || !L0()) {
            this.f2092x = this.f2091w;
        } else {
            this.f2092x = !this.f2091w;
        }
    }

    @Override // M.O
    public final void U(int i2, int i3) {
        J0(i2, i3, 2);
    }

    public final int U0(int i2, V v2, a0 a0Var) {
        if (v() == 0 || i2 == 0) {
            return 0;
        }
        P0(i2, a0Var);
        C0019u c0019u = this.f2090v;
        int iA0 = A0(v2, c0019u, a0Var);
        if (c0019u.b >= iA0) {
            i2 = i2 < 0 ? -iA0 : iA0;
        }
        this.f2086r.p(-i2);
        this.f2076D = this.f2092x;
        c0019u.b = 0;
        Q0(v2, c0019u);
        return i2;
    }

    @Override // M.O
    public final void V(int i2, int i3) {
        J0(i2, i3, 4);
    }

    public final void V0(int i2) {
        C0019u c0019u = this.f2090v;
        c0019u.f350e = i2;
        c0019u.f349d = this.f2092x != (i2 == -1) ? -1 : 1;
    }

    @Override // M.O
    public final void W(V v2, a0 a0Var) {
        N0(v2, a0Var, true);
    }

    public final void W0(int i2, a0 a0Var) {
        int iL;
        int iL2;
        int i3;
        C0019u c0019u = this.f2090v;
        boolean z2 = false;
        c0019u.b = 0;
        c0019u.f348c = i2;
        C0024z c0024z = this.f160e;
        if (!(c0024z != null && c0024z.f376e) || (i3 = a0Var.f191a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.f2092x == (i3 < i2)) {
                iL = this.f2086r.l();
                iL2 = 0;
            } else {
                iL2 = this.f2086r.l();
                iL = 0;
            }
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || !recyclerView.f2043g) {
            c0019u.f351g = this.f2086r.f() + iL;
            c0019u.f = -iL2;
        } else {
            c0019u.f = this.f2086r.k() - iL2;
            c0019u.f351g = this.f2086r.g() + iL;
        }
        c0019u.f352h = false;
        c0019u.f347a = true;
        if (this.f2086r.i() == 0 && this.f2086r.f() == 0) {
            z2 = true;
        }
        c0019u.f353i = z2;
    }

    @Override // M.O
    public final void X(a0 a0Var) {
        this.f2094z = -1;
        this.f2073A = Integer.MIN_VALUE;
        this.f2078F = null;
        this.f2080H.a();
    }

    public final void X0(n0 n0Var, int i2, int i3) {
        int i4 = n0Var.f297d;
        int i5 = n0Var.f298e;
        if (i2 != -1) {
            int i6 = n0Var.f296c;
            if (i6 == Integer.MIN_VALUE) {
                n0Var.a();
                i6 = n0Var.f296c;
            }
            if (i6 - i4 >= i3) {
                this.f2093y.set(i5, false);
                return;
            }
            return;
        }
        int i7 = n0Var.b;
        if (i7 == Integer.MIN_VALUE) {
            View view = (View) n0Var.f295a.get(0);
            k0 k0Var = (k0) view.getLayoutParams();
            n0Var.b = n0Var.f.f2086r.e(view);
            k0Var.getClass();
            i7 = n0Var.b;
        }
        if (i7 + i4 <= i3) {
            this.f2093y.set(i5, false);
        }
    }

    @Override // M.O
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof m0) {
            this.f2078F = (m0) parcelable;
            g0();
        }
    }

    @Override // M.O
    public final Parcelable Z() {
        int iH;
        int iK;
        int[] iArr;
        m0 m0Var = this.f2078F;
        if (m0Var != null) {
            m0 m0Var2 = new m0();
            m0Var2.f287c = m0Var.f287c;
            m0Var2.f286a = m0Var.f286a;
            m0Var2.b = m0Var.b;
            m0Var2.f288d = m0Var.f288d;
            m0Var2.f289e = m0Var.f289e;
            m0Var2.f = m0Var.f;
            m0Var2.f291h = m0Var.f291h;
            m0Var2.f292i = m0Var.f292i;
            m0Var2.f293j = m0Var.f293j;
            m0Var2.f290g = m0Var.f290g;
            return m0Var2;
        }
        m0 m0Var3 = new m0();
        m0Var3.f291h = this.f2091w;
        m0Var3.f292i = this.f2076D;
        m0Var3.f293j = this.f2077E;
        a aVar = this.f2074B;
        if (aVar == null || (iArr = (int[]) aVar.b) == null) {
            m0Var3.f289e = 0;
        } else {
            m0Var3.f = iArr;
            m0Var3.f289e = iArr.length;
            m0Var3.f290g = (ArrayList) aVar.f93c;
        }
        if (v() > 0) {
            m0Var3.f286a = this.f2076D ? G0() : F0();
            View viewB0 = this.f2092x ? B0(true) : C0(true);
            m0Var3.b = viewB0 != null ? O.D(viewB0) : -1;
            int i2 = this.f2084p;
            m0Var3.f287c = i2;
            m0Var3.f288d = new int[i2];
            for (int i3 = 0; i3 < this.f2084p; i3++) {
                if (this.f2076D) {
                    iH = this.f2085q[i3].f(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f2086r.g();
                        iH -= iK;
                    }
                } else {
                    iH = this.f2085q[i3].h(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f2086r.k();
                        iH -= iK;
                    }
                }
                m0Var3.f288d[i3] = iH;
            }
        } else {
            m0Var3.f286a = -1;
            m0Var3.b = -1;
            m0Var3.f287c = 0;
        }
        return m0Var3;
    }

    @Override // M.Z
    public final PointF a(int i2) {
        int iV0 = v0(i2);
        PointF pointF = new PointF();
        if (iV0 == 0) {
            return null;
        }
        if (this.f2088t == 0) {
            pointF.x = iV0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iV0;
        }
        return pointF;
    }

    @Override // M.O
    public final void a0(int i2) {
        if (i2 == 0) {
            w0();
        }
    }

    @Override // M.O
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.f2078F != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    @Override // M.O
    public final boolean d() {
        return this.f2088t == 0;
    }

    @Override // M.O
    public final boolean e() {
        return this.f2088t == 1;
    }

    @Override // M.O
    public final boolean f(P p2) {
        return p2 instanceof k0;
    }

    @Override // M.O
    public final void h(int i2, int i3, a0 a0Var, C0016q c0016q) {
        C0019u c0019u;
        int iF;
        int iH;
        if (this.f2088t != 0) {
            i2 = i3;
        }
        if (v() == 0 || i2 == 0) {
            return;
        }
        P0(i2, a0Var);
        int[] iArr = this.f2082J;
        if (iArr == null || iArr.length < this.f2084p) {
            this.f2082J = new int[this.f2084p];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.f2084p;
            c0019u = this.f2090v;
            if (i4 >= i6) {
                break;
            }
            if (c0019u.f349d == -1) {
                iF = c0019u.f;
                iH = this.f2085q[i4].h(iF);
            } else {
                iF = this.f2085q[i4].f(c0019u.f351g);
                iH = c0019u.f351g;
            }
            int i7 = iF - iH;
            if (i7 >= 0) {
                this.f2082J[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.f2082J, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = c0019u.f348c;
            if (i9 < 0 || i9 >= a0Var.b()) {
                return;
            }
            c0016q.a(c0019u.f348c, this.f2082J[i8]);
            c0019u.f348c += c0019u.f349d;
        }
    }

    @Override // M.O
    public final int h0(int i2, V v2, a0 a0Var) {
        return U0(i2, v2, a0Var);
    }

    @Override // M.O
    public final void i0(int i2) {
        m0 m0Var = this.f2078F;
        if (m0Var != null && m0Var.f286a != i2) {
            m0Var.f288d = null;
            m0Var.f287c = 0;
            m0Var.f286a = -1;
            m0Var.b = -1;
        }
        this.f2094z = i2;
        this.f2073A = Integer.MIN_VALUE;
        g0();
    }

    @Override // M.O
    public final int j(a0 a0Var) {
        return x0(a0Var);
    }

    @Override // M.O
    public final int j0(int i2, V v2, a0 a0Var) {
        return U0(i2, v2, a0Var);
    }

    @Override // M.O
    public final int k(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // M.O
    public final int l(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // M.O
    public final int m(a0 a0Var) {
        return x0(a0Var);
    }

    @Override // M.O
    public final void m0(Rect rect, int i2, int i3) {
        int iG;
        int iG2;
        int i4 = this.f2084p;
        int iB = B() + A();
        int iZ = z() + C();
        if (this.f2088t == 1) {
            int iHeight = rect.height() + iZ;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = p034y.N.f4222a;
            iG2 = O.g(i3, iHeight, AbstractC0290y.d(recyclerView));
            iG = O.g(i2, (this.f2089u * i4) + iB, AbstractC0290y.e(this.b));
        } else {
            int iWidth = rect.width() + iB;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = p034y.N.f4222a;
            iG = O.g(i2, iWidth, AbstractC0290y.e(recyclerView2));
            iG2 = O.g(i3, (this.f2089u * i4) + iZ, AbstractC0290y.d(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }

    @Override // M.O
    public final int n(a0 a0Var) {
        return y0(a0Var);
    }

    @Override // M.O
    public final int o(a0 a0Var) {
        return z0(a0Var);
    }

    @Override // M.O
    public final P r() {
        return this.f2088t == 0 ? new k0(-2, -1) : new k0(-1, -2);
    }

    @Override // M.O
    public final P s(Context context, AttributeSet attributeSet) {
        return new k0(context, attributeSet);
    }

    @Override // M.O
    public final void s0(RecyclerView recyclerView, int i2) {
        C0024z c0024z = new C0024z(recyclerView.getContext());
        c0024z.f373a = i2;
        t0(c0024z);
    }

    @Override // M.O
    public final P t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new k0((ViewGroup.MarginLayoutParams) layoutParams) : new k0(layoutParams);
    }

    @Override // M.O
    public final boolean u0() {
        return this.f2078F == null;
    }

    public final int v0(int i2) {
        if (v() == 0) {
            return this.f2092x ? 1 : -1;
        }
        return (i2 < F0()) != this.f2092x ? -1 : 1;
    }

    public final boolean w0() {
        int iF0;
        if (v() != 0 && this.f2075C != 0 && this.f161g) {
            if (this.f2092x) {
                iF0 = G0();
                F0();
            } else {
                iF0 = F0();
                G0();
            }
            a aVar = this.f2074B;
            if (iF0 == 0 && K0() != null) {
                int[] iArr = (int[]) aVar.b;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                aVar.f93c = null;
                this.f = true;
                g0();
                return true;
            }
        }
        return false;
    }

    @Override // M.O
    public final int x(V v2, a0 a0Var) {
        return this.f2088t == 1 ? this.f2084p : super.x(v2, a0Var);
    }

    public final int x0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        C c2 = this.f2086r;
        boolean z2 = !this.f2081I;
        return A.b.q(a0Var, c2, C0(z2), B0(z2), this, this.f2081I);
    }

    public final int y0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        C c2 = this.f2086r;
        boolean z2 = !this.f2081I;
        return A.b.r(a0Var, c2, C0(z2), B0(z2), this, this.f2081I, this.f2092x);
    }

    public final int z0(a0 a0Var) {
        if (v() == 0) {
            return 0;
        }
        C c2 = this.f2086r;
        boolean z2 = !this.f2081I;
        return A.b.s(a0Var, c2, C0(z2), B0(z2), this, this.f2081I);
    }
}
