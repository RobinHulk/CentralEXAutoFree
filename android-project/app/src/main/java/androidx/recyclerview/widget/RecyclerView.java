package androidx.recyclerview.widget;

import B.b;
import E.d;
import G.a;
import M.A;
import M.C0000a;
import M.C0001b;
import M.C0002c;
import M.C0003d;
import M.C0010k;
import M.C0014o;
import M.C0016q;
import M.C0024z;
import M.E;
import M.F;
import M.H;
import M.I;
import M.J;
import M.K;
import M.L;
import M.O;
import M.P;
import M.Q;
import M.RunnableC0017s;
import M.S;
import M.T;
import M.U;
import M.V;
import M.W;
import M.X;
import M.Z;
import M.a0;
import M.b0;
import M.c0;
import M.e0;
import M.g0;
import M.i0;
import M.p0;
import T.C0081j1;
import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.sun.mail.imap.IMAPStore;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p020m.k;
import p025p0.e;
import p031u.g;
import p031u.h;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.C0280n;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final int[] f2011s0 = {R.attr.nestedScrollingEnabled};

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final Class[] f2012t0;
    public static final d u0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2013A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f2014B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public I f2015C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public EdgeEffect f2016D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public EdgeEffect f2017E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public EdgeEffect f2018F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public EdgeEffect f2019G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public K f2020H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2021I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f2022J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public VelocityTracker f2023K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f2024L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f2025M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f2026N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f2027O;
    public int P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Q f2028Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f2029R;
    public final int S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final float f2030T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final float f2031U;
    public boolean V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final c0 f2032W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f2033a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public RunnableC0017s f2034a0;
    public final V b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final C0016q f2035b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public X f2036c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final a0 f2037c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0001b f2038d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public S f2039d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0003d f2040e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ArrayList f2041e0;
    public final a f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f2042f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2043g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f2044g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f2045h;
    public final E h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f2046i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f2047i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f2048j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public g0 f2049j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public F f2050k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final int[] f2051k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public O f2052l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public C0280n f2053l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f2054m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int[] f2055m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f2056n;
    public final int[] n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0014o f2057o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int[] f2058o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2059p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final ArrayList f2060p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2061q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final b f2062q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2063r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final E f2064r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2065s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2066t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2067u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2068v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2069w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AccessibilityManager f2070x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2071y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2072z;

    static {
        Class cls = Integer.TYPE;
        f2012t0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        u0 = new d(1);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.ex.auto.R.attr.recyclerViewStyle);
    }

    public static RecyclerView D(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewD = D(viewGroup.getChildAt(i2));
            if (recyclerViewD != null) {
                return recyclerViewD;
            }
        }
        return null;
    }

    public static e0 I(View view) {
        if (view == null) {
            return null;
        }
        return ((P) view.getLayoutParams()).f170a;
    }

    private C0280n getScrollingChildHelper() {
        if (this.f2053l0 == null) {
            this.f2053l0 = new C0280n(this);
        }
        return this.f2053l0;
    }

    public static void j(e0 e0Var) {
        WeakReference weakReference = e0Var.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == e0Var.f220a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            e0Var.b = null;
        }
    }

    public final View A(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0061 A[SYNTHETIC] */
    public final boolean B(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f2056n;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0014o c0014o = (C0014o) arrayList.get(i2);
            int i3 = c0014o.f322v;
            if (i3 == 1) {
                boolean zD = c0014o.d(motionEvent.getX(), motionEvent.getY());
                boolean zC = c0014o.c(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zD || zC)) {
                    if (zC) {
                        c0014o.f323w = 1;
                        c0014o.f316p = (int) motionEvent.getX();
                    } else if (zD) {
                        c0014o.f323w = 2;
                        c0014o.f313m = (int) motionEvent.getY();
                    }
                    c0014o.f(2);
                    if (action != 3) {
                        this.f2057o = c0014o;
                        return true;
                    }
                }
            } else if (i3 != 2) {
                continue;
            } else if (action != 3) {
                this.f2057o = c0014o;
                return true;
            }
        }
        return false;
    }

    public final void C(int[] iArr) {
        int i2 = this.f2040e.i();
        if (i2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < i2; i5++) {
            e0 e0VarI = I(this.f2040e.h(i5));
            if (!e0VarI.p()) {
                int iB = e0VarI.b();
                if (iB < i3) {
                    i3 = iB;
                }
                if (iB > i4) {
                    i4 = iB;
                }
            }
        }
        iArr[0] = i3;
        iArr[1] = i4;
    }

    public final e0 E(int i2) {
        e0 e0Var = null;
        if (this.f2071y) {
            return null;
        }
        int iR = this.f2040e.r();
        for (int i3 = 0; i3 < iR; i3++) {
            e0 e0VarI = I(this.f2040e.q(i3));
            if (e0VarI != null && !e0VarI.i() && F(e0VarI) == i2) {
                if (!((ArrayList) this.f2040e.f216d).contains(e0VarI.f220a)) {
                    return e0VarI;
                }
                e0Var = e0VarI;
            }
        }
        return e0Var;
    }

    public final int F(e0 e0Var) {
        if (e0Var.d(524) || !e0Var.f()) {
            return -1;
        }
        C0001b c0001b = this.f2038d;
        int i2 = e0Var.f221c;
        ArrayList arrayList = (ArrayList) c0001b.f204c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0000a c0000a = (C0000a) arrayList.get(i3);
            int i4 = c0000a.f189a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = c0000a.b;
                    if (i5 <= i2) {
                        int i6 = c0000a.f190c;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = c0000a.b;
                    if (i7 == i2) {
                        i2 = c0000a.f190c;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (c0000a.f190c <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (c0000a.b <= i2) {
                i2 += c0000a.f190c;
            }
        }
        return i2;
    }

    public final long G(e0 e0Var) {
        return this.f2050k.b ? e0Var.f223e : e0Var.f221c;
    }

    public final e0 H(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return I(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect J(View view) {
        P p2 = (P) view.getLayoutParams();
        boolean z2 = p2.f171c;
        Rect rect = p2.b;
        if (!z2) {
            return rect;
        }
        if (this.f2037c0.f195g && (p2.f170a.l() || p2.f170a.g())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f2054m;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Rect rect2 = this.f2045h;
            rect2.set(0, 0, 0, 0);
            ((L) arrayList.get(i2)).getClass();
            ((P) view.getLayoutParams()).f170a.getClass();
            rect2.set(0, 0, 0, 0);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        p2.f171c = false;
        return rect;
    }

    public final boolean K() {
        return !this.f2063r || this.f2071y || this.f2038d.f();
    }

    public final boolean L() {
        return this.f2013A > 0;
    }

    public final void M(int i2) {
        if (this.f2052l == null) {
            return;
        }
        setScrollState(2);
        this.f2052l.i0(i2);
        awakenScrollBars();
    }

    public final void N() {
        int iR = this.f2040e.r();
        for (int i2 = 0; i2 < iR; i2++) {
            ((P) this.f2040e.q(i2).getLayoutParams()).f171c = true;
        }
        ArrayList arrayList = this.b.f178c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            P p2 = (P) ((e0) arrayList.get(i3)).f220a.getLayoutParams();
            if (p2 != null) {
                p2.f171c = true;
            }
        }
    }

    public final void O(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iR = this.f2040e.r();
        for (int i5 = 0; i5 < iR; i5++) {
            e0 e0VarI = I(this.f2040e.q(i5));
            if (e0VarI != null && !e0VarI.p()) {
                int i6 = e0VarI.f221c;
                a0 a0Var = this.f2037c0;
                if (i6 >= i4) {
                    e0VarI.m(-i3, z2);
                    a0Var.f = true;
                } else if (i6 >= i2) {
                    e0VarI.a(8);
                    e0VarI.m(-i3, z2);
                    e0VarI.f221c = i2 - 1;
                    a0Var.f = true;
                }
            }
        }
        V v2 = this.b;
        ArrayList arrayList = v2.f178c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e0 e0Var = (e0) arrayList.get(size);
            if (e0Var != null) {
                int i7 = e0Var.f221c;
                if (i7 >= i4) {
                    e0Var.m(-i3, z2);
                } else if (i7 >= i2) {
                    e0Var.a(8);
                    v2.e(size);
                }
            }
        }
        requestLayout();
    }

    public final void P() {
        this.f2013A++;
    }

    public final void Q(boolean z2) {
        int i2;
        AccessibilityManager accessibilityManager;
        int i3 = this.f2013A - 1;
        this.f2013A = i3;
        if (i3 < 1) {
            this.f2013A = 0;
            if (z2) {
                int i4 = this.f2069w;
                this.f2069w = 0;
                if (i4 != 0 && (accessibilityManager = this.f2070x) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    p035z.b.b(accessibilityEventObtain, i4);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.f2060p0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    e0 e0Var = (e0) arrayList.get(size);
                    if (e0Var.f220a.getParent() == this && !e0Var.p() && (i2 = e0Var.f234q) != -1) {
                        WeakHashMap weakHashMap = N.f4222a;
                        AbstractC0290y.s(e0Var.f220a, i2);
                        e0Var.f234q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void R(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2022J) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f2022J = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.f2026N = x2;
            this.f2024L = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.f2027O = y2;
            this.f2025M = y2;
        }
    }

    public final void S() {
        if (this.f2047i0 || !this.f2059p) {
            return;
        }
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.m(this, this.f2062q0);
        this.f2047i0 = true;
    }

    public final void T(e0 e0Var, J j2) {
        e0Var.f227j &= -8193;
        boolean z2 = this.f2037c0.f196h;
        a aVar = this.f;
        if (z2 && e0Var.l() && !e0Var.i() && !e0Var.p()) {
            ((p020m.e) aVar.f93c).d(e0Var, G(e0Var));
        }
        k kVar = (k) aVar.b;
        p0 p0VarA = (p0) kVar.getOrDefault(e0Var, null);
        if (p0VarA == null) {
            p0VarA = p0.a();
            kVar.put(e0Var, p0VarA);
        }
        p0VarA.b = j2;
        p0VarA.f333a |= 4;
    }

    public final void U(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f2045h;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof P) {
            P p2 = (P) layoutParams;
            if (!p2.f171c) {
                int i2 = rect.left;
                Rect rect2 = p2.b;
                rect.left = i2 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f2052l.f0(this, view, this.f2045h, !this.f2063r, view2 == null);
    }

    public final void V() {
        VelocityTracker velocityTracker = this.f2023K;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        c0(0);
        EdgeEffect edgeEffect = this.f2016D;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f2016D.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2017E;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.f2017E.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2018F;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f2018F.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2019G;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f2019G.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:35:0x010f A[DONT_INVERT, PHI: r4
  0x010f: PHI (r4v9 boolean) = (r4v7 boolean), (r4v10 boolean) binds: [B:33:0x00f6, B:31:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0111  */
    /* JADX WARN: Code duplicated, block: B:40:0x0119  */
    public final boolean W(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        m();
        F f = this.f2050k;
        int[] iArr = this.f2058o0;
        if (f != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            X(i2, i3, iArr);
            int i8 = iArr[0];
            int i9 = iArr[1];
            i5 = i8;
            i4 = i9;
            i6 = i2 - i8;
            i7 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.f2054m.isEmpty()) {
            invalidate();
        }
        int[] iArr2 = this.f2058o0;
        iArr2[0] = 0;
        iArr2[1] = 0;
        int i10 = i4;
        s(i5, i4, i6, i7, this.f2055m0, 0, iArr2);
        int i11 = iArr[0];
        int i12 = i6 - i11;
        int i13 = iArr[1];
        int i14 = i7 - i13;
        boolean z3 = (i11 == 0 && i13 == 0) ? false : true;
        int i15 = this.f2026N;
        int[] iArr3 = this.f2055m0;
        int i16 = iArr3[0];
        this.f2026N = i15 - i16;
        int i17 = this.f2027O;
        int i18 = iArr3[1];
        this.f2027O = i17 - i18;
        int[] iArr4 = this.n0;
        iArr4[0] = iArr4[0] + i16;
        iArr4[1] = iArr4[1] + i18;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !AbstractC0201a.E(motionEvent, 8194)) {
                float x2 = motionEvent.getX();
                float f2 = i12;
                float y2 = motionEvent.getY();
                float f3 = i14;
                if (f2 < 0.0f) {
                    v();
                    B.e.a(this.f2016D, (-f2) / getWidth(), 1.0f - (y2 / getHeight()));
                } else {
                    if (f2 > 0.0f) {
                        w();
                        B.e.a(this.f2018F, f2 / getWidth(), y2 / getHeight());
                    } else {
                        z2 = false;
                    }
                    if (f3 < 0.0f) {
                        x();
                        B.e.a(this.f2017E, (-f3) / getHeight(), x2 / getWidth());
                    } else if (f3 > 0.0f) {
                        u();
                        B.e.a(this.f2019G, f3 / getHeight(), 1.0f - (x2 / getWidth()));
                    } else if (z2 || f2 != 0.0f || f3 != 0.0f) {
                        WeakHashMap weakHashMap = N.f4222a;
                        AbstractC0290y.k(this);
                    }
                    z2 = true;
                    if (z2) {
                        WeakHashMap weakHashMap2 = N.f4222a;
                        AbstractC0290y.k(this);
                    } else {
                        WeakHashMap weakHashMap3 = N.f4222a;
                        AbstractC0290y.k(this);
                    }
                }
                z2 = true;
                if (f3 < 0.0f) {
                    x();
                    B.e.a(this.f2017E, (-f3) / getHeight(), x2 / getWidth());
                } else if (f3 > 0.0f) {
                    u();
                    B.e.a(this.f2019G, f3 / getHeight(), 1.0f - (x2 / getWidth()));
                } else if (z2) {
                    WeakHashMap weakHashMap4 = N.f4222a;
                    AbstractC0290y.k(this);
                } else {
                    WeakHashMap weakHashMap5 = N.f4222a;
                    AbstractC0290y.k(this);
                }
                z2 = true;
                if (z2) {
                    WeakHashMap weakHashMap6 = N.f4222a;
                    AbstractC0290y.k(this);
                } else {
                    WeakHashMap weakHashMap7 = N.f4222a;
                    AbstractC0290y.k(this);
                }
            }
            l(i2, i3);
        }
        if (i5 != 0 || i10 != 0) {
            t(i5, i10);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z3 && i5 == 0 && i10 == 0) ? false : true;
    }

    public final void X(int i2, int i3, int[] iArr) {
        e0 e0Var;
        C0003d c0003d = this.f2040e;
        a0();
        P();
        int i4 = h.f4139a;
        g.a("RV Scroll");
        a0 a0Var = this.f2037c0;
        z(a0Var);
        V v2 = this.b;
        int iH0 = i2 != 0 ? this.f2052l.h0(i2, v2, a0Var) : 0;
        int iJ0 = i3 != 0 ? this.f2052l.j0(i3, v2, a0Var) : 0;
        g.b();
        int i5 = c0003d.i();
        for (int i6 = 0; i6 < i5; i6++) {
            View viewH = c0003d.h(i6);
            e0 e0VarH = H(viewH);
            if (e0VarH != null && (e0Var = e0VarH.f226i) != null) {
                int left = viewH.getLeft();
                int top = viewH.getTop();
                View view = e0Var.f220a;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        Q(true);
        b0(false);
        if (iArr != null) {
            iArr[0] = iH0;
            iArr[1] = iJ0;
        }
    }

    public final void Y(int i2) {
        C0024z c0024z;
        if (this.f2067u) {
            return;
        }
        setScrollState(0);
        c0 c0Var = this.f2032W;
        c0Var.f212g.removeCallbacks(c0Var);
        c0Var.f209c.abortAnimation();
        O o2 = this.f2052l;
        if (o2 != null && (c0024z = o2.f160e) != null) {
            c0024z.g();
        }
        O o3 = this.f2052l;
        if (o3 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            o3.i0(i2);
            awakenScrollBars();
        }
    }

    public final void Z(int i2, int i3, boolean z2) {
        O o2 = this.f2052l;
        if (o2 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f2067u) {
            return;
        }
        if (!o2.d()) {
            i2 = 0;
        }
        if (!this.f2052l.e()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (z2) {
            int i4 = i2 != 0 ? 1 : 0;
            if (i3 != 0) {
                i4 |= 2;
            }
            getScrollingChildHelper().g(i4, 1);
        }
        this.f2032W.b(i2, i3, Integer.MIN_VALUE, null);
    }

    public final void a0() {
        int i2 = this.f2065s + 1;
        this.f2065s = i2;
        if (i2 != 1 || this.f2067u) {
            return;
        }
        this.f2066t = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i2, int i3) {
        O o2 = this.f2052l;
        if (o2 != null) {
            o2.getClass();
        }
        super.addFocusables(arrayList, i2, i3);
    }

    public final void b0(boolean z2) {
        if (this.f2065s < 1) {
            this.f2065s = 1;
        }
        if (!z2 && !this.f2067u) {
            this.f2066t = false;
        }
        if (this.f2065s == 1) {
            if (z2 && this.f2066t && !this.f2067u && this.f2052l != null && this.f2050k != null) {
                o();
            }
            if (!this.f2067u) {
                this.f2066t = false;
            }
        }
        this.f2065s--;
    }

    public final void c0(int i2) {
        getScrollingChildHelper().h(i2);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof P) && this.f2052l.f((P) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        O o2 = this.f2052l;
        if (o2 != null && o2.d()) {
            return this.f2052l.j(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        O o2 = this.f2052l;
        if (o2 != null && o2.d()) {
            return this.f2052l.k(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        O o2 = this.f2052l;
        if (o2 != null && o2.d()) {
            return this.f2052l.l(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        O o2 = this.f2052l;
        if (o2 != null && o2.e()) {
            return this.f2052l.m(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        O o2 = this.f2052l;
        if (o2 != null && o2.e()) {
            return this.f2052l.n(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        O o2 = this.f2052l;
        if (o2 != null && o2.e()) {
            return this.f2052l.o(this.f2037c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z2) {
        return getScrollingChildHelper().a(f, f2, z2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().d(i2, i3, i4, i5, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        ArrayList arrayList = this.f2054m;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ((L) arrayList.get(i2)).b(canvas);
        }
        EdgeEffect edgeEffect = this.f2016D;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f2043g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f2016D;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.f2017E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f2043g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f2017E;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f2018F;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f2043g ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f2018F;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f2019G;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f2043g) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f2019G;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.f2020H == null || arrayList.size() <= 0 || !this.f2020H.f()) ? z2 : true) {
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final void f(e0 e0Var) {
        View view = e0Var.f220a;
        boolean z2 = view.getParent() == this;
        this.b.j(H(view));
        if (e0Var.k()) {
            this.f2040e.c(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z2) {
            this.f2040e.b(view, -1, true);
            return;
        }
        C0003d c0003d = this.f2040e;
        int iIndexOfChild = ((E) c0003d.b).f146a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            ((C0002c) c0003d.f215c).h(iIndexOfChild);
            c0003d.s(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:135:0x019d  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i2) {
        View viewN;
        int i3;
        byte b;
        boolean z2;
        this.f2052l.getClass();
        boolean z3 = true;
        boolean z4 = (this.f2050k == null || this.f2052l == null || L() || this.f2067u) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        a0 a0Var = this.f2037c0;
        V v2 = this.b;
        if (z4 && (i2 == 2 || i2 == 1)) {
            if (this.f2052l.e()) {
                if (focusFinder.findNextFocus(this, view, i2 == 2 ? 130 : 33) == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.f2052l.d()) {
                RecyclerView recyclerView = this.f2052l.b;
                WeakHashMap weakHashMap = N.f4222a;
                z2 = focusFinder.findNextFocus(this, view, (AbstractC0291z.d(recyclerView) == 1) ^ (i2 == 2) ? 66 : 17) == null;
            }
            if (z2) {
                m();
                if (A(view) == null) {
                    return null;
                }
                a0();
                this.f2052l.N(view, i2, v2, a0Var);
                b0(false);
            }
            viewN = focusFinder.findNextFocus(this, view, i2);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (viewFindNextFocus == null && z4) {
                m();
                if (A(view) == null) {
                    return null;
                }
                a0();
                viewN = this.f2052l.N(view, i2, v2, a0Var);
                b0(false);
            } else {
                viewN = viewFindNextFocus;
            }
        }
        if (viewN != null && !viewN.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i2);
            }
            U(viewN, null);
            return view;
        }
        if (viewN == null || viewN == this) {
            z3 = false;
        } else if (A(viewN) == null) {
            z3 = false;
        } else if (view != null && A(view) != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            Rect rect = this.f2045h;
            rect.set(0, 0, width, height);
            int width2 = viewN.getWidth();
            int height2 = viewN.getHeight();
            Rect rect2 = this.f2046i;
            rect2.set(0, 0, width2, height2);
            offsetDescendantRectToMyCoords(view, rect);
            offsetDescendantRectToMyCoords(viewN, rect2);
            RecyclerView recyclerView2 = this.f2052l.b;
            WeakHashMap weakHashMap2 = N.f4222a;
            int i4 = AbstractC0291z.d(recyclerView2) == 1 ? -1 : 1;
            int i5 = rect.left;
            int i6 = rect2.left;
            if ((i5 < i6 || rect.right <= i6) && rect.right < rect2.right) {
                i3 = 1;
            } else {
                int i7 = rect.right;
                int i8 = rect2.right;
                i3 = ((i7 > i8 || i5 >= i8) && i5 > i6) ? -1 : 0;
            }
            int i9 = rect.top;
            int i10 = rect2.top;
            if ((i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom) {
                b = 1;
            } else {
                int i11 = rect.bottom;
                int i12 = rect2.bottom;
                b = ((i11 > i12 || i9 >= i12) && i9 > i10) ? (byte) -1 : (byte) 0;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 17) {
                        if (i2 != 33) {
                            if (i2 != 66) {
                                if (i2 != 130) {
                                    throw new IllegalArgumentException("Invalid direction: " + i2 + y());
                                }
                                if (b <= 0) {
                                    z3 = false;
                                }
                            } else if (i3 <= 0) {
                                z3 = false;
                            }
                        } else if (b >= 0) {
                            z3 = false;
                        }
                    } else if (i3 >= 0) {
                        z3 = false;
                    }
                } else if (b <= 0 && (b != 0 || i3 * i4 < 0)) {
                    z3 = false;
                }
            } else if (b >= 0 && (b != 0 || i3 * i4 > 0)) {
                z3 = false;
            }
        }
        return z3 ? viewN : super.focusSearch(view, i2);
    }

    public final void g(L l2) {
        O o2 = this.f2052l;
        if (o2 != null) {
            o2.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f2054m;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(l2);
        N();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        O o2 = this.f2052l;
        if (o2 != null) {
            return o2.r();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        O o2 = this.f2052l;
        if (o2 != null) {
            return o2.s(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public F getAdapter() {
        return this.f2050k;
    }

    @Override // android.view.View
    public int getBaseline() {
        O o2 = this.f2052l;
        if (o2 == null) {
            return super.getBaseline();
        }
        o2.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i2, int i3) {
        return super.getChildDrawingOrder(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2043g;
    }

    public g0 getCompatAccessibilityDelegate() {
        return this.f2049j0;
    }

    public I getEdgeEffectFactory() {
        return this.f2015C;
    }

    public K getItemAnimator() {
        return this.f2020H;
    }

    public int getItemDecorationCount() {
        return this.f2054m.size();
    }

    public O getLayoutManager() {
        return this.f2052l;
    }

    public int getMaxFlingVelocity() {
        return this.S;
    }

    public int getMinFlingVelocity() {
        return this.f2029R;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public Q getOnFlingListener() {
        return this.f2028Q;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.V;
    }

    public U getRecycledViewPool() {
        return this.b.c();
    }

    public int getScrollState() {
        return this.f2021I;
    }

    public final void h(S s2) {
        if (this.f2041e0 == null) {
            this.f2041e0 = new ArrayList();
        }
        this.f2041e0.add(s2);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(String str) {
        if (L()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + y());
        }
        if (this.f2014B > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + y()));
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f2059p;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f2067u;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f4260d;
    }

    public final void k() {
        int iR = this.f2040e.r();
        for (int i2 = 0; i2 < iR; i2++) {
            e0 e0VarI = I(this.f2040e.q(i2));
            if (!e0VarI.p()) {
                e0VarI.f222d = -1;
                e0VarI.f224g = -1;
            }
        }
        V v2 = this.b;
        ArrayList arrayList = v2.f178c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            e0 e0Var = (e0) arrayList.get(i3);
            e0Var.f222d = -1;
            e0Var.f224g = -1;
        }
        ArrayList arrayList2 = v2.f177a;
        int size2 = arrayList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            e0 e0Var2 = (e0) arrayList2.get(i4);
            e0Var2.f222d = -1;
            e0Var2.f224g = -1;
        }
        ArrayList arrayList3 = v2.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i5 = 0; i5 < size3; i5++) {
                e0 e0Var3 = (e0) v2.b.get(i5);
                e0Var3.f222d = -1;
                e0Var3.f224g = -1;
            }
        }
    }

    public final void l(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f2016D;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.f2016D.onRelease();
            zIsFinished = this.f2016D.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2018F;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.f2018F.onRelease();
            zIsFinished |= this.f2018F.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2017E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.f2017E.onRelease();
            zIsFinished |= this.f2017E.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2019G;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.f2019G.onRelease();
            zIsFinished |= this.f2019G.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    public final void m() {
        C0001b c0001b = this.f2038d;
        if (!this.f2063r || this.f2071y) {
            int i2 = h.f4139a;
            g.a("RV FullInvalidate");
            o();
            g.b();
            return;
        }
        if (c0001b.f()) {
            c0001b.getClass();
            if (c0001b.f()) {
                int i3 = h.f4139a;
                g.a("RV FullInvalidate");
                o();
                g.b();
            }
        }
    }

    public final void n(int i2, int i3) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = N.f4222a;
        setMeasuredDimension(O.g(i2, paddingRight, AbstractC0290y.e(this)), O.g(i3, getPaddingBottom() + getPaddingTop(), AbstractC0290y.d(this)));
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0327  */
    /* JADX WARN: Code duplicated, block: B:174:0x036d  */
    /* JADX WARN: Code duplicated, block: B:176:0x0370  */
    /* JADX WARN: Code duplicated, block: B:182:0x0387  */
    /* JADX WARN: Code duplicated, block: B:184:0x038f  */
    /* JADX WARN: Code duplicated, block: B:187:0x0394  */
    /* JADX WARN: Code duplicated, block: B:190:0x039c  */
    /* JADX WARN: Code duplicated, block: B:193:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:196:0x03ad A[LOOP:4: B:189:0x039a->B:196:0x03ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:199:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:202:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:205:0x03c8 A[LOOP:5: B:198:0x03b6->B:205:0x03c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:207:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:237:0x03ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:0x03b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x03b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x03cb A[EDGE_INSN: B:241:0x03cb->B:206:0x03cb BREAK  A[LOOP:5: B:198:0x03b6->B:205:0x03c8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x0385 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [M.e0] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    public final void o() {
        long j2;
        ?? r10;
        int i2;
        int iB;
        int i3;
        int iMin;
        e0 e0VarE;
        View view;
        e0 e0VarE2;
        View view2;
        int i4;
        View viewFindViewById;
        ArrayList arrayList;
        boolean z2;
        J j3;
        int i5;
        boolean zG;
        if (this.f2050k == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f2052l == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        a0 a0Var = this.f2037c0;
        a0Var.f197i = false;
        if (a0Var.f193d == 1) {
            p();
            this.f2052l.k0(this);
            q();
        } else {
            C0001b c0001b = this.f2038d;
            if ((((ArrayList) c0001b.f205d).isEmpty() || ((ArrayList) c0001b.f204c).isEmpty()) && this.f2052l.f168n == getWidth() && this.f2052l.f169o == getHeight()) {
                this.f2052l.k0(this);
            } else {
                this.f2052l.k0(this);
                q();
            }
        }
        a0Var.a(4);
        a0();
        P();
        a0Var.f193d = 1;
        boolean z3 = a0Var.f198j;
        View view3 = null;
        Long l2 = null;
        V v2 = this.b;
        a aVar = this.f;
        if (z3) {
            int i6 = this.f2040e.i() - 1;
            while (i6 >= 0) {
                e0 e0VarI = I(this.f2040e.h(i6));
                if (!e0VarI.p()) {
                    long jG = G(e0VarI);
                    this.f2020H.getClass();
                    J j4 = new J();
                    j4.a(e0VarI);
                    e0 e0Var = (e0) ((p020m.e) aVar.f93c).c(jG, l2);
                    if (e0Var == null || e0Var.p()) {
                        aVar.a(e0VarI, j4);
                    } else {
                        k kVar = (k) aVar.b;
                        p0 p0Var = (p0) kVar.getOrDefault(e0Var, l2);
                        boolean z4 = (p0Var == null || (p0Var.f333a & 1) == 0) ? false : true;
                        p0 p0Var2 = (p0) kVar.getOrDefault(e0VarI, l2);
                        boolean z5 = (p0Var2 == null || (p0Var2.f333a & 1) == 0) ? false : true;
                        if (z4 && e0Var == e0VarI) {
                            aVar.a(e0VarI, j4);
                        } else {
                            J jC = aVar.C(e0Var, 4);
                            aVar.a(e0VarI, j4);
                            J jC2 = aVar.C(e0VarI, 8);
                            if (jC == null) {
                                int i7 = this.f2040e.i();
                                for (int i8 = 0; i8 < i7; i8++) {
                                    e0 e0VarI2 = I(this.f2040e.h(i8));
                                    if (e0VarI2 != e0VarI && G(e0VarI2) == jG) {
                                        F f = this.f2050k;
                                        if (f == null || !f.b) {
                                            throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + e0VarI2 + " \n View Holder 2:" + e0VarI + y());
                                        }
                                        throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + e0VarI2 + " \n View Holder 2:" + e0VarI + y());
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + e0Var + " cannot be found but it is necessary for " + e0VarI + y());
                            } else {
                                e0Var.o(false);
                                if (z4) {
                                    f(e0Var);
                                }
                                if (e0Var != e0VarI) {
                                    if (z5) {
                                        f(e0VarI);
                                    }
                                    e0Var.f225h = e0VarI;
                                    f(e0Var);
                                    v2.j(e0Var);
                                    e0VarI.o(false);
                                    e0VarI.f226i = e0Var;
                                }
                                if (this.f2020H.a(e0Var, e0VarI, jC, jC2)) {
                                    S();
                                }
                            }
                        }
                    }
                }
                i6--;
                l2 = null;
            }
            k kVar2 = (k) aVar.b;
            for (int i9 = kVar2.f3871c - 1; i9 >= 0; i9--) {
                e0 e0Var2 = (e0) kVar2.g(i9);
                p0 p0Var3 = (p0) kVar2.h(i9);
                int i10 = p0Var3.f333a;
                int i11 = i10 & 3;
                E e2 = this.f2064r0;
                if (i11 == 3) {
                    RecyclerView recyclerView = e2.f146a;
                    recyclerView.f2052l.d0(e0Var2.f220a, recyclerView.b);
                } else if ((i10 & 1) != 0) {
                    J j5 = p0Var3.b;
                    if (j5 == null) {
                        RecyclerView recyclerView2 = e2.f146a;
                        recyclerView2.f2052l.d0(e0Var2.f220a, recyclerView2.b);
                    } else {
                        e2.g(e0Var2, j5, p0Var3.f334c);
                    }
                } else if ((i10 & 14) == 14) {
                    e2.f(e0Var2, p0Var3.b, p0Var3.f334c);
                } else {
                    if ((i10 & 12) == 12) {
                        J j6 = p0Var3.b;
                        J j7 = p0Var3.f334c;
                        e2.getClass();
                        e0Var2.o(false);
                        RecyclerView recyclerView3 = e2.f146a;
                        if (!recyclerView3.f2071y) {
                            C0010k c0010k = (C0010k) recyclerView3.f2020H;
                            c0010k.getClass();
                            int i12 = j6.f148a;
                            int i13 = j7.f148a;
                            if (i12 == i13 && j6.b == j7.b) {
                                c0010k.c(e0Var2);
                                zG = false;
                            } else {
                                zG = c0010k.g(e0Var2, i12, j6.b, i13, j7.b);
                            }
                            if (zG) {
                                recyclerView3.S();
                            }
                        } else if (recyclerView3.f2020H.a(e0Var2, e0Var2, j6, j7)) {
                            recyclerView3.S();
                        }
                    } else {
                        if ((i10 & 4) != 0) {
                            j3 = null;
                            e2.g(e0Var2, p0Var3.b, null);
                        } else {
                            j3 = null;
                            if ((i10 & 8) != 0) {
                                e2.f(e0Var2, p0Var3.b, p0Var3.f334c);
                            }
                        }
                        i5 = 0;
                    }
                    p0Var3.f333a = i5;
                    p0Var3.b = j3;
                    p0Var3.f334c = j3;
                    p0.f332d.c(p0Var3);
                }
                i5 = 0;
                j3 = null;
                p0Var3.f333a = i5;
                p0Var3.b = j3;
                p0Var3.f334c = j3;
                p0.f332d.c(p0Var3);
            }
            view3 = null;
        }
        this.f2052l.c0(v2);
        a0Var.b = a0Var.f194e;
        this.f2071y = false;
        this.f2072z = false;
        a0Var.f198j = false;
        a0Var.f199k = false;
        this.f2052l.f = false;
        ArrayList arrayList2 = v2.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        O o2 = this.f2052l;
        if (o2.f165k) {
            o2.f164j = 0;
            o2.f165k = false;
            v2.k();
        }
        this.f2052l.X(a0Var);
        Q(true);
        b0(false);
        ((k) aVar.b).clear();
        ((p020m.e) aVar.f93c).a();
        int[] iArr = this.f2051k0;
        int i14 = iArr[0];
        int i15 = iArr[1];
        C(iArr);
        if ((iArr[0] == i14 && iArr[1] == i15) ? false : true) {
            t(0, 0);
        }
        if (this.V && this.f2050k != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                j2 = a0Var.f201m;
                if (j2 == -1) {
                    r10 = view3;
                } else {
                    r10 = view3;
                }
                if (r10 != 0) {
                    arrayList = (ArrayList) this.f2040e.f216d;
                    view = r10.f220a;
                    if (!arrayList.contains(view)) {
                        if (this.f2040e.i() > 0) {
                            i2 = a0Var.f200l;
                            if (i2 == -1) {
                                i2 = 0;
                            }
                            iB = a0Var.b();
                            i3 = i2;
                            while (true) {
                                if (i3 < iB) {
                                    e0VarE2 = E(i3);
                                    if (e0VarE2 != null) {
                                        view2 = e0VarE2.f220a;
                                        if (view2.hasFocusable()) {
                                            view3 = view2;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                                for (iMin = Math.min(iB, i2) - 1; iMin >= 0; iMin--) {
                                    e0VarE = E(iMin);
                                    if (e0VarE == null) {
                                        break;
                                        break;
                                    }
                                    view = e0VarE.f220a;
                                    if (view.hasFocusable()) {
                                        view3 = view;
                                        break;
                                    }
                                }
                            }
                        }
                    } else if (this.f2040e.i() > 0) {
                        i2 = a0Var.f200l;
                        if (i2 == -1) {
                            i2 = 0;
                        }
                        iB = a0Var.b();
                        i3 = i2;
                        while (true) {
                            if (i3 < iB) {
                                e0VarE2 = E(i3);
                                if (e0VarE2 != null) {
                                    view2 = e0VarE2.f220a;
                                    if (view2.hasFocusable()) {
                                        view3 = view2;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                e0VarE = E(iMin);
                                if (e0VarE == null) {
                                    break;
                                    break;
                                }
                                view = e0VarE.f220a;
                                if (view.hasFocusable()) {
                                    view3 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.f2040e.i() > 0) {
                    i2 = a0Var.f200l;
                    if (i2 == -1) {
                        i2 = 0;
                    }
                    iB = a0Var.b();
                    i3 = i2;
                    while (true) {
                        if (i3 < iB) {
                            e0VarE2 = E(i3);
                            if (e0VarE2 != null) {
                                view2 = e0VarE2.f220a;
                                if (view2.hasFocusable()) {
                                    view3 = view2;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            e0VarE = E(iMin);
                            if (e0VarE == null) {
                                break;
                                break;
                            }
                            view = e0VarE.f220a;
                            if (view.hasFocusable()) {
                                view3 = view;
                                break;
                            }
                        }
                    }
                }
                if (view3 != null) {
                    i4 = a0Var.f202n;
                    if (i4 != -1) {
                        view3 = viewFindViewById;
                    }
                    view3.requestFocus();
                }
            } else if (((ArrayList) this.f2040e.f216d).contains(getFocusedChild())) {
                j2 = a0Var.f201m;
                if (j2 == -1 && (z2 = this.f2050k.b) && z2) {
                    int iR = this.f2040e.r();
                    r10 = view3;
                    int i16 = 0;
                    while (i16 < iR) {
                        e0 e0VarI3 = I(this.f2040e.q(i16));
                        if (e0VarI3 != null && !e0VarI3.i() && e0VarI3.f223e == j2) {
                            if (!((ArrayList) this.f2040e.f216d).contains(e0VarI3.f220a)) {
                                r10 = e0VarI3;
                                break;
                            }
                            r10 = e0VarI3;
                        }
                        i16++;
                        r10 = r10;
                    }
                } else {
                    r10 = view3;
                }
                if (r10 != 0) {
                    arrayList = (ArrayList) this.f2040e.f216d;
                    view = r10.f220a;
                    if (!arrayList.contains(view) && view.hasFocusable()) {
                        view3 = view;
                        break;
                    }
                    if (this.f2040e.i() > 0) {
                        i2 = a0Var.f200l;
                        if (i2 == -1) {
                            i2 = 0;
                        }
                        iB = a0Var.b();
                        i3 = i2;
                        while (true) {
                            if (i3 < iB) {
                                e0VarE2 = E(i3);
                                if (e0VarE2 != null) {
                                    view2 = e0VarE2.f220a;
                                    if (view2.hasFocusable()) {
                                        view3 = view2;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                e0VarE = E(iMin);
                                if (e0VarE == null) {
                                    break;
                                }
                                view = e0VarE.f220a;
                                if (view.hasFocusable()) {
                                    view3 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.f2040e.i() > 0) {
                    i2 = a0Var.f200l;
                    if (i2 == -1) {
                        i2 = 0;
                    }
                    iB = a0Var.b();
                    i3 = i2;
                    while (true) {
                        if (i3 < iB) {
                            e0VarE2 = E(i3);
                            if (e0VarE2 != null) {
                                view2 = e0VarE2.f220a;
                                if (view2.hasFocusable()) {
                                    view3 = view2;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            e0VarE = E(iMin);
                            if (e0VarE == null) {
                                break;
                                break;
                            }
                            view = e0VarE.f220a;
                            if (view.hasFocusable()) {
                                view3 = view;
                                break;
                            }
                        }
                    }
                }
                if (view3 != null) {
                    i4 = a0Var.f202n;
                    if (i4 != -1 && (viewFindViewById = view3.findViewById(i4)) != null && viewFindViewById.isFocusable()) {
                        view3 = viewFindViewById;
                    }
                    view3.requestFocus();
                }
            }
        }
        a0Var.f201m = -1L;
        a0Var.f200l = -1;
        a0Var.f202n = -1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.f2013A = 0;
        this.f2059p = true;
        this.f2063r = this.f2063r && !isLayoutRequested();
        O o2 = this.f2052l;
        if (o2 != null) {
            o2.f161g = true;
        }
        this.f2047i0 = false;
        ThreadLocal threadLocal = RunnableC0017s.f342e;
        RunnableC0017s runnableC0017s = (RunnableC0017s) threadLocal.get();
        this.f2034a0 = runnableC0017s;
        if (runnableC0017s == null) {
            RunnableC0017s runnableC0017s2 = new RunnableC0017s();
            runnableC0017s2.f343a = new ArrayList();
            runnableC0017s2.f345d = new ArrayList();
            this.f2034a0 = runnableC0017s2;
            WeakHashMap weakHashMap = N.f4222a;
            Display displayB = AbstractC0291z.b(this);
            if (isInEditMode() || displayB == null) {
                refreshRate = 60.0f;
            } else {
                refreshRate = displayB.getRefreshRate();
                if (refreshRate < 30.0f) {
                    refreshRate = 60.0f;
                }
            }
            RunnableC0017s runnableC0017s3 = this.f2034a0;
            runnableC0017s3.f344c = (long) (1.0E9f / refreshRate);
            threadLocal.set(runnableC0017s3);
        }
        this.f2034a0.f343a.add(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0024z c0024z;
        super.onDetachedFromWindow();
        K k2 = this.f2020H;
        if (k2 != null) {
            k2.e();
        }
        setScrollState(0);
        c0 c0Var = this.f2032W;
        c0Var.f212g.removeCallbacks(c0Var);
        c0Var.f209c.abortAnimation();
        O o2 = this.f2052l;
        if (o2 != null && (c0024z = o2.f160e) != null) {
            c0024z.g();
        }
        this.f2059p = false;
        O o3 = this.f2052l;
        if (o3 != null) {
            o3.f161g = false;
            o3.M(this);
        }
        this.f2060p0.clear();
        removeCallbacks(this.f2062q0);
        this.f.getClass();
        while (p0.f332d.a() != null) {
        }
        RunnableC0017s runnableC0017s = this.f2034a0;
        if (runnableC0017s != null) {
            runnableC0017s.f343a.remove(this);
            this.f2034a0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f2054m;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((L) arrayList.get(i2)).a(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.f2052l != null && !this.f2067u && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.f2052l.e() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.f2052l.d() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f2052l.e()) {
                    f = -axisValue2;
                } else if (this.f2052l.d()) {
                    axisValue = axisValue2;
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f = 0.0f;
                axisValue = 0.0f;
            }
            if (f != 0.0f || axisValue != 0.0f) {
                W((int) (axisValue * this.f2030T), (int) (f * this.f2031U), motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.f2067u) {
            return false;
        }
        this.f2057o = null;
        if (B(motionEvent)) {
            V();
            setScrollState(0);
            return true;
        }
        O o2 = this.f2052l;
        if (o2 == null) {
            return false;
        }
        boolean zD = o2.d();
        boolean zE = this.f2052l.e();
        if (this.f2023K == null) {
            this.f2023K = VelocityTracker.obtain();
        }
        this.f2023K.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f2068v) {
                this.f2068v = false;
            }
            this.f2022J = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.f2026N = x2;
            this.f2024L = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.f2027O = y2;
            this.f2025M = y2;
            if (this.f2021I == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                c0(1);
            }
            int[] iArr = this.n0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zD;
            if (zE) {
                i2 = (zD ? 1 : 0) | 2;
            }
            getScrollingChildHelper().g(i2, 0);
        } else if (actionMasked == 1) {
            this.f2023K.clear();
            c0(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f2022J);
            if (iFindPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f2022J + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.f2021I != 1) {
                int i3 = x3 - this.f2024L;
                int i4 = y3 - this.f2025M;
                if (!zD || Math.abs(i3) <= this.P) {
                    z2 = false;
                } else {
                    this.f2026N = x3;
                    z2 = true;
                }
                if (zE && Math.abs(i4) > this.P) {
                    this.f2027O = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            V();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.f2022J = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2026N = x4;
            this.f2024L = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f2027O = y4;
            this.f2025M = y4;
        } else if (actionMasked == 6) {
            R(motionEvent);
        }
        return this.f2021I == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = h.f4139a;
        g.a("RV OnLayout");
        o();
        g.b();
        this.f2063r = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        O o2 = this.f2052l;
        if (o2 == null) {
            n(i2, i3);
            return;
        }
        boolean zH = o2.H();
        a0 a0Var = this.f2037c0;
        if (!zH) {
            if (this.f2061q) {
                this.f2052l.b.n(i2, i3);
                return;
            }
            if (a0Var.f199k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            F f = this.f2050k;
            if (f != null) {
                a0Var.f194e = f.a();
            } else {
                a0Var.f194e = 0;
            }
            a0();
            this.f2052l.b.n(i2, i3);
            b0(false);
            a0Var.f195g = false;
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        this.f2052l.b.n(i2, i3);
        if ((mode == 1073741824 && mode2 == 1073741824) || this.f2050k == null) {
            return;
        }
        if (a0Var.f193d == 1) {
            p();
        }
        this.f2052l.l0(i2, i3);
        a0Var.f197i = true;
        q();
        this.f2052l.n0(i2, i3);
        if (this.f2052l.q0()) {
            this.f2052l.l0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            a0Var.f197i = true;
            q();
            this.f2052l.n0(i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (L()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof X)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        X x2 = (X) parcelable;
        this.f2036c = x2;
        super.onRestoreInstanceState(x2.f46a);
        O o2 = this.f2052l;
        if (o2 == null || (parcelable2 = this.f2036c.f183c) == null) {
            return;
        }
        o2.Y(parcelable2);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        X x2 = new X(super.onSaveInstanceState());
        X x3 = this.f2036c;
        if (x3 != null) {
            x2.f183c = x3.f183c;
        } else {
            O o2 = this.f2052l;
            if (o2 != null) {
                x2.f183c = o2.Z();
            } else {
                x2.f183c = null;
            }
        }
        return x2;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        this.f2019G = null;
        this.f2017E = null;
        this.f2018F = null;
        this.f2016D = null;
    }

    /* JADX WARN: Code duplicated, block: B:191:0x0356  */
    /* JADX WARN: Code duplicated, block: B:215:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:245:0x0405 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:246:0x0407 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:247:0x0409  */
    /* JADX WARN: Code duplicated, block: B:250:0x0437  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f9 A[PHI: r0
  0x01f9: PHI (r0v55 int) = (r0v42 int), (r0v59 int) binds: [B:90:0x01e2, B:94:0x01f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zB;
        int i2;
        c0 c0Var;
        RecyclerView recyclerView;
        Interpolator interpolator;
        d dVar;
        int minFlingVelocity;
        boolean z2;
        View viewC;
        int iD;
        int i3;
        float f;
        int iB;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z3;
        if (this.f2067u || this.f2068v) {
            return false;
        }
        C0014o c0014o = this.f2057o;
        if (c0014o == null) {
            zB = motionEvent.getAction() == 0 ? false : B(motionEvent);
        } else {
            if (c0014o.f322v != 0) {
                if (motionEvent.getAction() == 0) {
                    boolean zD = c0014o.d(motionEvent.getX(), motionEvent.getY());
                    boolean zC = c0014o.c(motionEvent.getX(), motionEvent.getY());
                    if (zD || zC) {
                        if (zC) {
                            c0014o.f323w = 1;
                            c0014o.f316p = (int) motionEvent.getX();
                        } else if (zD) {
                            c0014o.f323w = 2;
                            c0014o.f313m = (int) motionEvent.getY();
                        }
                        c0014o.f(2);
                    }
                } else if (motionEvent.getAction() == 1 && c0014o.f322v == 2) {
                    c0014o.f313m = 0.0f;
                    c0014o.f316p = 0.0f;
                    c0014o.f(1);
                    c0014o.f323w = 0;
                } else if (motionEvent.getAction() == 2 && c0014o.f322v == 2) {
                    c0014o.g();
                    int i9 = c0014o.f323w;
                    int i10 = c0014o.b;
                    if (i9 == 1) {
                        float x2 = motionEvent.getX();
                        int[] iArr = c0014o.f325y;
                        iArr[0] = i10;
                        int i11 = c0014o.f317q - i10;
                        iArr[1] = i11;
                        float fMax = Math.max(i10, Math.min(i11, x2));
                        if (Math.abs(c0014o.f315o - fMax) >= 2.0f) {
                            int iE = C0014o.e(c0014o.f316p, fMax, iArr, c0014o.f319s.computeHorizontalScrollRange(), c0014o.f319s.computeHorizontalScrollOffset(), c0014o.f317q);
                            if (iE != 0) {
                                c0014o.f319s.scrollBy(iE, 0);
                            }
                            c0014o.f316p = fMax;
                        }
                    }
                    if (c0014o.f323w == 2) {
                        float y2 = motionEvent.getY();
                        int[] iArr2 = c0014o.f324x;
                        iArr2[0] = i10;
                        int i12 = c0014o.f318r - i10;
                        iArr2[1] = i12;
                        float fMax2 = Math.max(i10, Math.min(i12, y2));
                        if (Math.abs(c0014o.f312l - fMax2) >= 2.0f) {
                            int iE2 = C0014o.e(c0014o.f313m, fMax2, iArr2, c0014o.f319s.computeVerticalScrollRange(), c0014o.f319s.computeVerticalScrollOffset(), c0014o.f318r);
                            if (iE2 != 0) {
                                c0014o.f319s.scrollBy(0, iE2);
                            }
                            c0014o.f313m = fMax2;
                        }
                    }
                }
            }
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.f2057o = null;
            }
            zB = true;
        }
        if (zB) {
            V();
            setScrollState(0);
            return true;
        }
        O o2 = this.f2052l;
        if (o2 == null) {
            return false;
        }
        boolean zD2 = o2.d();
        boolean zE = this.f2052l.e();
        if (this.f2023K == null) {
            this.f2023K = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int[] iArr3 = this.n0;
        if (actionMasked == 0) {
            iArr3[1] = 0;
            iArr3[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.f2023K.addMovement(motionEventObtain);
                VelocityTracker velocityTracker = this.f2023K;
                int i13 = this.S;
                velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE, i13);
                float f2 = zD2 ? -this.f2023K.getXVelocity(this.f2022J) : 0.0f;
                float f3 = zE ? -this.f2023K.getYVelocity(this.f2022J) : 0.0f;
                if (f2 == 0.0f && f3 == 0.0f) {
                    i8 = 0;
                } else {
                    int i14 = (int) f2;
                    int i15 = (int) f3;
                    O o3 = this.f2052l;
                    if (o3 == null) {
                        Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    } else if (!this.f2067u) {
                        int iD2 = o3.d();
                        boolean zE2 = this.f2052l.e();
                        int i16 = this.f2029R;
                        if (iD2 == 0 || Math.abs(i14) < i16) {
                            i14 = 0;
                        }
                        if (!zE2 || Math.abs(i15) < i16) {
                            i15 = 0;
                        }
                        if (i14 != 0 || i15 != 0) {
                            float f4 = i14;
                            float f5 = i15;
                            if (!dispatchNestedPreFling(f4, f5)) {
                                boolean z4 = iD2 != 0 || zE2;
                                dispatchNestedFling(f4, f5, z4);
                                Q q2 = this.f2028Q;
                                if (q2 != null) {
                                    A a2 = (A) q2;
                                    O layoutManager = a2.f139a.getLayoutManager();
                                    if (layoutManager != 0 && a2.f139a.getAdapter() != null && ((Math.abs(i15) > (minFlingVelocity = a2.f139a.getMinFlingVelocity()) || Math.abs(i14) > minFlingVelocity) && ((z2 = layoutManager instanceof Z)))) {
                                        i0 i0Var = !z2 ? null : new i0(a2, a2.f139a.getContext());
                                        if (i0Var != null) {
                                            if (z2) {
                                                RecyclerView recyclerView2 = layoutManager.b;
                                                F adapter = recyclerView2 != null ? recyclerView2.getAdapter() : null;
                                                int iA = adapter != null ? adapter.a() : 0;
                                                if (iA != 0) {
                                                    if (layoutManager.e()) {
                                                        viewC = A.c(layoutManager, a2.e(layoutManager));
                                                    } else {
                                                        viewC = layoutManager.d() ? A.c(layoutManager, a2.d(layoutManager)) : null;
                                                    }
                                                    if (viewC == null || (iD = O.D(viewC)) == -1) {
                                                        i7 = -1;
                                                        i6 = -1;
                                                    } else {
                                                        int i17 = iA - 1;
                                                        PointF pointFA = ((Z) layoutManager).a(i17);
                                                        if (pointFA != null) {
                                                            if (layoutManager.d()) {
                                                                i3 = i17;
                                                                iB = a2.b(layoutManager, a2.d(layoutManager), i14, 0);
                                                                f = 0.0f;
                                                                if (pointFA.x < 0.0f) {
                                                                    iB = -iB;
                                                                }
                                                            } else {
                                                                i3 = i17;
                                                                f = 0.0f;
                                                                iB = 0;
                                                            }
                                                            if (layoutManager.e()) {
                                                                i4 = iB;
                                                                int iB2 = a2.b(layoutManager, a2.e(layoutManager), 0, i15);
                                                                i5 = pointFA.y < f ? -iB2 : iB2;
                                                            } else {
                                                                i4 = iB;
                                                                i5 = 0;
                                                            }
                                                            int i18 = layoutManager.e() ? i5 : i4;
                                                            if (i18 == 0) {
                                                                i7 = -1;
                                                                i6 = -1;
                                                            } else {
                                                                int i19 = iD + i18;
                                                                if (i19 < 0) {
                                                                    i19 = 0;
                                                                }
                                                                i6 = i19 >= iA ? i3 : i19;
                                                                i7 = -1;
                                                            }
                                                        } else {
                                                            i7 = -1;
                                                            i6 = -1;
                                                        }
                                                    }
                                                } else {
                                                    i7 = -1;
                                                    i6 = -1;
                                                }
                                            } else {
                                                i7 = -1;
                                                i6 = -1;
                                            }
                                            if (i6 != i7) {
                                                i0Var.f373a = i6;
                                                layoutManager.t0(i0Var);
                                            } else if (z4) {
                                                if (zE2) {
                                                    iD2 = (iD2 == true ? 1 : 0) | 2;
                                                }
                                                getScrollingChildHelper().g(iD2, 1);
                                                int i20 = -i13;
                                                int iMax = Math.max(i20, Math.min(i14, i13));
                                                int iMax2 = Math.max(i20, Math.min(i15, i13));
                                                c0Var = this.f2032W;
                                                recyclerView = c0Var.f212g;
                                                recyclerView.setScrollState(2);
                                                c0Var.b = 0;
                                                c0Var.f208a = 0;
                                                interpolator = c0Var.f210d;
                                                dVar = u0;
                                                if (interpolator != dVar) {
                                                    c0Var.f210d = dVar;
                                                    c0Var.f209c = new OverScroller(recyclerView.getContext(), dVar);
                                                }
                                                c0Var.f209c.fling(0, 0, iMax, iMax2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                                c0Var.a();
                                            }
                                        } else if (z4) {
                                            if (zE2) {
                                                iD2 = (iD2 == true ? 1 : 0) | 2;
                                            }
                                            getScrollingChildHelper().g(iD2, 1);
                                            int i21 = -i13;
                                            int iMax3 = Math.max(i21, Math.min(i14, i13));
                                            int iMax4 = Math.max(i21, Math.min(i15, i13));
                                            c0Var = this.f2032W;
                                            recyclerView = c0Var.f212g;
                                            recyclerView.setScrollState(2);
                                            c0Var.b = 0;
                                            c0Var.f208a = 0;
                                            interpolator = c0Var.f210d;
                                            dVar = u0;
                                            if (interpolator != dVar) {
                                                c0Var.f210d = dVar;
                                                c0Var.f209c = new OverScroller(recyclerView.getContext(), dVar);
                                            }
                                            c0Var.f209c.fling(0, 0, iMax3, iMax4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                            c0Var.a();
                                        }
                                    } else if (z4) {
                                        if (zE2) {
                                            iD2 = (iD2 == true ? 1 : 0) | 2;
                                        }
                                        getScrollingChildHelper().g(iD2, 1);
                                        int i22 = -i13;
                                        int iMax5 = Math.max(i22, Math.min(i14, i13));
                                        int iMax6 = Math.max(i22, Math.min(i15, i13));
                                        c0Var = this.f2032W;
                                        recyclerView = c0Var.f212g;
                                        recyclerView.setScrollState(2);
                                        c0Var.b = 0;
                                        c0Var.f208a = 0;
                                        interpolator = c0Var.f210d;
                                        dVar = u0;
                                        if (interpolator != dVar) {
                                            c0Var.f210d = dVar;
                                            c0Var.f209c = new OverScroller(recyclerView.getContext(), dVar);
                                        }
                                        c0Var.f209c.fling(0, 0, iMax5, iMax6, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                        c0Var.a();
                                    }
                                } else if (z4) {
                                    if (zE2) {
                                        iD2 = (iD2 == true ? 1 : 0) | 2;
                                    }
                                    getScrollingChildHelper().g(iD2, 1);
                                    int i23 = -i13;
                                    int iMax7 = Math.max(i23, Math.min(i14, i13));
                                    int iMax8 = Math.max(i23, Math.min(i15, i13));
                                    c0Var = this.f2032W;
                                    recyclerView = c0Var.f212g;
                                    recyclerView.setScrollState(2);
                                    c0Var.b = 0;
                                    c0Var.f208a = 0;
                                    interpolator = c0Var.f210d;
                                    dVar = u0;
                                    if (interpolator != dVar) {
                                        c0Var.f210d = dVar;
                                        c0Var.f209c = new OverScroller(recyclerView.getContext(), dVar);
                                    }
                                    c0Var.f209c.fling(0, 0, iMax7, iMax8, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                    c0Var.a();
                                }
                                V();
                            }
                        }
                    }
                    i8 = 0;
                }
                setScrollState(i8);
                V();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2022J);
                if (iFindPointerIndex < 0) {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f2022J + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax9 = this.f2026N - x3;
                int iMax10 = this.f2027O - y3;
                if (this.f2021I != 1) {
                    if (zD2) {
                        iMax9 = iMax9 > 0 ? Math.max(0, iMax9 - this.P) : Math.min(0, iMax9 + this.P);
                        if (iMax9 != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                    } else {
                        z3 = false;
                    }
                    if (zE) {
                        iMax10 = iMax10 > 0 ? Math.max(0, iMax10 - this.P) : Math.min(0, iMax10 + this.P);
                        if (iMax10 != 0) {
                            z3 = true;
                        }
                    }
                    if (z3) {
                        setScrollState(1);
                    }
                }
                int i24 = iMax9;
                int i25 = iMax10;
                if (this.f2021I == 1) {
                    int[] iArr4 = this.f2058o0;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    boolean zR = r(zD2 ? i24 : 0, zE ? i25 : 0, iArr4, this.f2055m0, 0);
                    int[] iArr5 = this.f2055m0;
                    if (zR) {
                        i24 -= iArr4[0];
                        i25 -= iArr4[1];
                        iArr3[0] = iArr3[0] + iArr5[0];
                        iArr3[1] = iArr3[1] + iArr5[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i26 = i24;
                    int i27 = i25;
                    this.f2026N = x3 - iArr5[0];
                    this.f2027O = y3 - iArr5[1];
                    if (W(zD2 ? i26 : 0, zE ? i27 : 0, motionEvent)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    RunnableC0017s runnableC0017s = this.f2034a0;
                    if (runnableC0017s != null && (i26 != 0 || i27 != 0)) {
                        runnableC0017s.a(this, i26, i27);
                    }
                }
            } else if (actionMasked == 3) {
                V();
                setScrollState(0);
            } else if (actionMasked == 5) {
                this.f2022J = motionEvent.getPointerId(actionIndex);
                int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.f2026N = x4;
                this.f2024L = x4;
                int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.f2027O = y4;
                this.f2025M = y4;
            } else if (actionMasked == 6) {
                R(motionEvent);
            }
            motionEventObtain.recycle();
            return true;
        }
        this.f2022J = motionEvent.getPointerId(0);
        int x5 = (int) (motionEvent.getX() + 0.5f);
        this.f2026N = x5;
        this.f2024L = x5;
        int y5 = (int) (motionEvent.getY() + 0.5f);
        this.f2027O = y5;
        this.f2025M = y5;
        if (zE) {
            i2 = zD2;
            i2 = (zD2 ? 1 : 0) | 2;
        }
        i2 = zD2;
        getScrollingChildHelper().g(i2, 0);
        this.f2023K.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:252:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:339:0x0226 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    public final void p() {
        View viewA;
        int iF;
        p0 p0Var;
        boolean z2;
        int i2;
        int i3;
        boolean z3;
        boolean z4;
        byte b;
        int i4;
        boolean z5;
        boolean z6;
        C0000a c0000aG;
        int i5;
        int i6;
        int i7;
        C0000a c0000a;
        a0 a0Var = this.f2037c0;
        a0Var.a(1);
        z(a0Var);
        a0Var.f197i = false;
        a0();
        a aVar = this.f;
        ((k) aVar.b).clear();
        p020m.e eVar = (p020m.e) aVar.f93c;
        eVar.a();
        P();
        if (this.f2071y) {
            C0001b c0001b = this.f2038d;
            c0001b.i((ArrayList) c0001b.f204c);
            c0001b.i((ArrayList) c0001b.f205d);
            if (this.f2072z) {
                this.f2052l.S();
            }
        }
        if (this.f2020H == null || !this.f2052l.u0()) {
            this.f2038d.b();
        } else {
            C0001b c0001b2 = this.f2038d;
            ArrayList arrayList = (ArrayList) c0001b2.f204c;
            A.e eVar2 = (A.e) c0001b2.f;
            eVar2.getClass();
            while (true) {
                int size = arrayList.size() - 1;
                boolean z7 = false;
                while (true) {
                    i2 = 8;
                    if (size < 0) {
                        size = -1;
                        break;
                    }
                    if (((C0000a) arrayList.get(size)).f189a == 8) {
                        if (z7) {
                            break;
                        }
                    } else {
                        z7 = true;
                    }
                    size--;
                }
                if (size == -1) {
                    break;
                }
                int i8 = size + 1;
                C0000a c0000a2 = (C0000a) arrayList.get(size);
                C0000a c0000a3 = (C0000a) arrayList.get(i8);
                int i9 = c0000a3.f189a;
                if (i9 != 1) {
                    C0000a c0000aG2 = null;
                    C0001b c0001b3 = (C0001b) eVar2.b;
                    if (i9 == 2) {
                        int i10 = c0000a2.b;
                        int i11 = c0000a2.f190c;
                        if (i10 < i11) {
                            if (c0000a3.b == i10 && c0000a3.f190c == i11 - i10) {
                                z5 = false;
                                z6 = true;
                            } else {
                                z5 = false;
                                z6 = false;
                            }
                        } else if (c0000a3.b == i11 + 1 && c0000a3.f190c == i10 - i11) {
                            z5 = true;
                            z6 = true;
                        } else {
                            z5 = true;
                            z6 = false;
                        }
                        int i12 = c0000a3.b;
                        if (i11 < i12) {
                            c0000a3.b = i12 - 1;
                        } else {
                            int i13 = c0000a3.f190c;
                            if (i11 < i12 + i13) {
                                c0000a3.f190c = i13 - 1;
                                c0000a2.f189a = 2;
                                c0000a2.f190c = 1;
                                if (c0000a3.f190c == 0) {
                                    arrayList.remove(i8);
                                    c0001b3.getClass();
                                    ((C0081j1) c0001b3.b).c(c0000a3);
                                }
                            }
                        }
                        int i14 = c0000a2.b;
                        int i15 = c0000a3.b;
                        if (i14 <= i15) {
                            c0000a3.b = i15 + 1;
                        } else {
                            int i16 = i15 + c0000a3.f190c;
                            if (i14 < i16) {
                                c0000aG2 = c0001b3.g(2, i14 + 1, i16 - i14);
                                c0000a3.f190c = c0000a2.b - c0000a3.b;
                            }
                        }
                        C0000a c0000a4 = c0000aG2;
                        if (z6) {
                            arrayList.set(size, c0000a3);
                            arrayList.remove(i8);
                            c0001b3.getClass();
                            ((C0081j1) c0001b3.b).c(c0000a2);
                        } else {
                            if (z5) {
                                if (c0000a4 != null) {
                                    int i17 = c0000a2.b;
                                    if (i17 > c0000a4.b) {
                                        c0000a2.b = i17 - c0000a4.f190c;
                                    }
                                    int i18 = c0000a2.f190c;
                                    if (i18 > c0000a4.b) {
                                        c0000a2.f190c = i18 - c0000a4.f190c;
                                    }
                                }
                                int i19 = c0000a2.b;
                                if (i19 > c0000a3.b) {
                                    c0000a2.b = i19 - c0000a3.f190c;
                                }
                                int i20 = c0000a2.f190c;
                                if (i20 > c0000a3.b) {
                                    c0000a2.f190c = i20 - c0000a3.f190c;
                                }
                            } else {
                                if (c0000a4 != null) {
                                    int i21 = c0000a2.b;
                                    if (i21 >= c0000a4.b) {
                                        c0000a2.b = i21 - c0000a4.f190c;
                                    }
                                    int i22 = c0000a2.f190c;
                                    if (i22 >= c0000a4.b) {
                                        c0000a2.f190c = i22 - c0000a4.f190c;
                                    }
                                }
                                int i23 = c0000a2.b;
                                if (i23 >= c0000a3.b) {
                                    c0000a2.b = i23 - c0000a3.f190c;
                                }
                                int i24 = c0000a2.f190c;
                                if (i24 >= c0000a3.b) {
                                    c0000a2.f190c = i24 - c0000a3.f190c;
                                }
                            }
                            arrayList.set(size, c0000a3);
                            if (c0000a2.b != c0000a2.f190c) {
                                arrayList.set(i8, c0000a2);
                            } else {
                                arrayList.remove(i8);
                            }
                            if (c0000a4 != null) {
                                arrayList.add(size, c0000a4);
                            }
                        }
                    } else if (i9 == 4) {
                        int i25 = c0000a2.f190c;
                        int i26 = c0000a3.b;
                        if (i25 < i26) {
                            c0000a3.b = i26 - 1;
                        } else {
                            int i27 = c0000a3.f190c;
                            if (i25 < i26 + i27) {
                                c0000a3.f190c = i27 - 1;
                                c0000aG = c0001b3.g(4, c0000a2.b, 1);
                            }
                            i5 = c0000a2.b;
                            i6 = c0000a3.b;
                            if (i5 <= i6) {
                                c0000a3.b = i6 + 1;
                            } else {
                                i7 = i6 + c0000a3.f190c;
                                if (i5 < i7) {
                                    int i28 = i7 - i5;
                                    c0000aG2 = c0001b3.g(4, i5 + 1, i28);
                                    c0000a3.f190c -= i28;
                                }
                            }
                            c0000a = c0000aG2;
                            arrayList.set(i8, c0000a2);
                            if (c0000a3.f190c > 0) {
                                arrayList.set(size, c0000a3);
                            } else {
                                arrayList.remove(size);
                                c0001b3.getClass();
                                ((C0081j1) c0001b3.b).c(c0000a3);
                            }
                            if (c0000aG != null) {
                                arrayList.add(size, c0000aG);
                            }
                            if (c0000a != null) {
                                arrayList.add(size, c0000a);
                            }
                        }
                        c0000aG = null;
                        i5 = c0000a2.b;
                        i6 = c0000a3.b;
                        if (i5 <= i6) {
                            c0000a3.b = i6 + 1;
                        } else {
                            i7 = i6 + c0000a3.f190c;
                            if (i5 < i7) {
                                int i29 = i7 - i5;
                                c0000aG2 = c0001b3.g(4, i5 + 1, i29);
                                c0000a3.f190c -= i29;
                            }
                        }
                        c0000a = c0000aG2;
                        arrayList.set(i8, c0000a2);
                        if (c0000a3.f190c > 0) {
                            arrayList.set(size, c0000a3);
                        } else {
                            arrayList.remove(size);
                            c0001b3.getClass();
                            ((C0081j1) c0001b3.b).c(c0000a3);
                        }
                        if (c0000aG != null) {
                            arrayList.add(size, c0000aG);
                        }
                        if (c0000a != null) {
                            arrayList.add(size, c0000a);
                        }
                    }
                } else {
                    int i30 = c0000a2.f190c;
                    int i31 = c0000a3.b;
                    int i32 = i30 < i31 ? -1 : 0;
                    int i33 = c0000a2.b;
                    if (i33 < i31) {
                        i32++;
                    }
                    if (i31 <= i33) {
                        c0000a2.b = i33 + c0000a3.f190c;
                    }
                    int i34 = c0000a3.b;
                    if (i34 <= i30) {
                        c0000a2.f190c = i30 + c0000a3.f190c;
                    }
                    c0000a3.b = i34 + i32;
                    arrayList.set(size, c0000a3);
                    arrayList.set(i8, c0000a2);
                }
            }
            int size2 = arrayList.size();
            int i35 = 0;
            while (i35 < size2) {
                C0000a c0000aG3 = (C0000a) arrayList.get(i35);
                int i36 = c0000aG3.f189a;
                if (i36 != 1) {
                    C0081j1 c0081j1 = (C0081j1) c0001b2.b;
                    E e2 = (E) c0001b2.f206e;
                    if (i36 == 2) {
                        i3 = size2;
                        int i37 = c0000aG3.b;
                        int i38 = c0000aG3.f190c + i37;
                        int i39 = i37;
                        int i40 = 0;
                        byte b2 = -1;
                        while (i39 < i38) {
                            if (e2.b(i39) != null || c0001b2.a(i39)) {
                                if (b2 == 0) {
                                    c0001b2.c(c0001b2.g(2, i37, i40));
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                z4 = z3;
                                b = 1;
                            } else {
                                if (b2 == 1) {
                                    c0001b2.h(c0001b2.g(2, i37, i40));
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                b = 0;
                            }
                            if (z4) {
                                i39 -= i40;
                                i38 -= i40;
                                i40 = 1;
                            } else {
                                i40++;
                            }
                            i39++;
                            b2 = b;
                        }
                        if (i40 != c0000aG3.f190c) {
                            c0081j1.c(c0000aG3);
                            c0000aG3 = c0001b2.g(2, i37, i40);
                        }
                        if (b2 == 0) {
                            c0001b2.c(c0000aG3);
                        } else {
                            c0001b2.h(c0000aG3);
                        }
                    } else if (i36 != 4) {
                        if (i36 == i2) {
                            c0001b2.h(c0000aG3);
                        }
                        i3 = size2;
                    } else {
                        int i41 = c0000aG3.b;
                        int i42 = c0000aG3.f190c + i41;
                        int i43 = i41;
                        byte b3 = -1;
                        int i44 = 0;
                        while (i41 < i42) {
                            if (e2.b(i41) != null || c0001b2.a(i41)) {
                                if (b3 == 0) {
                                    c0001b2.c(c0001b2.g(4, i43, i44));
                                    i43 = i41;
                                    i44 = 0;
                                }
                                i4 = 1;
                                b3 = 1;
                            } else {
                                if (b3 == 1) {
                                    c0001b2.h(c0001b2.g(4, i43, i44));
                                    i43 = i41;
                                    i44 = 0;
                                }
                                i4 = 1;
                                b3 = 0;
                            }
                            i44 += i4;
                            i41++;
                            size2 = size2;
                        }
                        i3 = size2;
                        if (i44 != c0000aG3.f190c) {
                            c0081j1.c(c0000aG3);
                            c0000aG3 = c0001b2.g(4, i43, i44);
                        }
                        if (b3 == 0) {
                            c0001b2.c(c0000aG3);
                        } else {
                            c0001b2.h(c0000aG3);
                        }
                    }
                } else {
                    i3 = size2;
                    c0001b2.h(c0000aG3);
                }
                i35++;
                size2 = i3;
                i2 = 8;
            }
            arrayList.clear();
        }
        boolean z8 = this.f2042f0 || this.f2044g0;
        boolean z9 = this.f2063r && this.f2020H != null && ((z2 = this.f2071y) || z8 || this.f2052l.f) && (!z2 || this.f2050k.b);
        a0 a0Var2 = this.f2037c0;
        a0Var2.f198j = z9;
        a0Var2.f199k = z9 && z8 && !this.f2071y && this.f2020H != null && this.f2052l.u0();
        View focusedChild = (this.V && hasFocus() && this.f2050k != null) ? getFocusedChild() : null;
        e0 e0VarH = (focusedChild == null || (viewA = A(focusedChild)) == null) ? null : H(viewA);
        if (e0VarH == null) {
            a0Var.f201m = -1L;
            a0Var.f200l = -1;
            a0Var.f202n = -1;
        } else {
            a0Var.f201m = this.f2050k.b ? e0VarH.f223e : -1L;
            if (this.f2071y) {
                iF = -1;
            } else if (e0VarH.i()) {
                iF = e0VarH.f222d;
            } else {
                RecyclerView recyclerView = e0VarH.f235r;
                if (recyclerView == null) {
                    iF = -1;
                } else {
                    iF = recyclerView.F(e0VarH);
                }
            }
            a0Var.f200l = iF;
            View focusedChild2 = e0VarH.f220a;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            a0Var.f202n = id;
        }
        a0Var.f196h = a0Var.f198j && this.f2044g0;
        this.f2044g0 = false;
        this.f2042f0 = false;
        a0Var.f195g = a0Var.f199k;
        a0Var.f194e = this.f2050k.a();
        C(this.f2051k0);
        boolean z10 = a0Var.f198j;
        k kVar = (k) aVar.b;
        if (z10) {
            int i45 = this.f2040e.i();
            for (int i46 = 0; i46 < i45; i46++) {
                e0 e0VarI = I(this.f2040e.h(i46));
                if (!e0VarI.p() && (!e0VarI.g() || this.f2050k.b)) {
                    K k2 = this.f2020H;
                    K.b(e0VarI);
                    e0VarI.c();
                    k2.getClass();
                    J j2 = new J();
                    j2.a(e0VarI);
                    p0 p0VarA = (p0) kVar.getOrDefault(e0VarI, null);
                    if (p0VarA == null) {
                        p0VarA = p0.a();
                        kVar.put(e0VarI, p0VarA);
                    }
                    p0VarA.b = j2;
                    p0VarA.f333a |= 4;
                    if (a0Var.f196h && e0VarI.l() && !e0VarI.i() && !e0VarI.p() && !e0VarI.g()) {
                        eVar.d(e0VarI, G(e0VarI));
                    }
                }
            }
        }
        if (a0Var.f199k) {
            int iR = this.f2040e.r();
            for (int i47 = 0; i47 < iR; i47++) {
                e0 e0VarI2 = I(this.f2040e.q(i47));
                if (!e0VarI2.p() && e0VarI2.f222d == -1) {
                    e0VarI2.f222d = e0VarI2.f221c;
                }
            }
            boolean z11 = a0Var.f;
            a0Var.f = false;
            this.f2052l.W(this.b, a0Var);
            a0Var.f = z11;
            for (int i48 = 0; i48 < this.f2040e.i(); i48++) {
                e0 e0VarI3 = I(this.f2040e.h(i48));
                if (!e0VarI3.p() && ((p0Var = (p0) kVar.getOrDefault(e0VarI3, null)) == null || (p0Var.f333a & 4) == 0)) {
                    K.b(e0VarI3);
                    boolean zD = e0VarI3.d(8192);
                    K k3 = this.f2020H;
                    e0VarI3.c();
                    k3.getClass();
                    J j3 = new J();
                    j3.a(e0VarI3);
                    if (zD) {
                        T(e0VarI3, j3);
                    } else {
                        p0 p0VarA2 = (p0) kVar.getOrDefault(e0VarI3, null);
                        if (p0VarA2 == null) {
                            p0VarA2 = p0.a();
                            kVar.put(e0VarI3, p0VarA2);
                        }
                        p0VarA2.f333a |= 2;
                        p0VarA2.b = j3;
                    }
                }
            }
            k();
        } else {
            k();
        }
        Q(true);
        b0(false);
        a0Var.f193d = 2;
    }

    public final void q() {
        a0();
        P();
        a0 a0Var = this.f2037c0;
        a0Var.a(6);
        this.f2038d.b();
        a0Var.f194e = this.f2050k.a();
        a0Var.f192c = 0;
        a0Var.f195g = false;
        this.f2052l.W(this.b, a0Var);
        a0Var.f = false;
        this.f2036c = null;
        a0Var.f198j = a0Var.f198j && this.f2020H != null;
        a0Var.f193d = 4;
        Q(true);
        b0(false);
    }

    public final boolean r(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, i4);
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z2) {
        e0 e0VarI = I(view);
        if (e0VarI != null) {
            if (e0VarI.k()) {
                e0VarI.f227j &= -257;
            } else if (!e0VarI.p()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + e0VarI + y());
            }
        }
        view.clearAnimation();
        I(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        C0024z c0024z = this.f2052l.f160e;
        if ((c0024z == null || !c0024z.f376e) && !L() && view2 != null) {
            U(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.f2052l.f0(this, view, rect, z2, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        ArrayList arrayList = this.f2056n;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((C0014o) arrayList.get(i2)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f2065s != 0 || this.f2067u) {
            this.f2066t = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().d(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    @Override // android.view.View
    public final void scrollBy(int i2, int i3) {
        O o2 = this.f2052l;
        if (o2 == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f2067u) {
            return;
        }
        boolean zD = o2.d();
        boolean zE = this.f2052l.e();
        if (zD || zE) {
            if (!zD) {
                i2 = 0;
            }
            if (!zE) {
                i3 = 0;
            }
            W(i2, i3, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!L()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int iA = accessibilityEvent != null ? p035z.b.a(accessibilityEvent) : 0;
            this.f2069w |= iA != 0 ? iA : 0;
        }
    }

    public void setAccessibilityDelegateCompat(g0 g0Var) {
        this.f2049j0 = g0Var;
        N.i(this, g0Var);
    }

    public void setAdapter(F f) {
        setLayoutFrozen(false);
        F f2 = this.f2050k;
        e eVar = this.f2033a;
        if (f2 != null) {
            f2.f147a.unregisterObserver(eVar);
            this.f2050k.getClass();
        }
        K k2 = this.f2020H;
        if (k2 != null) {
            k2.e();
        }
        O o2 = this.f2052l;
        V v2 = this.b;
        if (o2 != null) {
            o2.b0(v2);
            this.f2052l.c0(v2);
        }
        v2.f177a.clear();
        v2.d();
        C0001b c0001b = this.f2038d;
        c0001b.i((ArrayList) c0001b.f204c);
        c0001b.i((ArrayList) c0001b.f205d);
        F f3 = this.f2050k;
        this.f2050k = f;
        if (f != null) {
            f.f147a.registerObserver(eVar);
        }
        F f4 = this.f2050k;
        v2.f177a.clear();
        v2.d();
        U uC = v2.c();
        if (f3 != null) {
            uC.b--;
        }
        if (uC.b == 0) {
            int i2 = 0;
            while (true) {
                SparseArray sparseArray = uC.f176a;
                if (i2 >= sparseArray.size()) {
                    break;
                }
                ((T) sparseArray.valueAt(i2)).f173a.clear();
                i2++;
            }
        }
        if (f4 != null) {
            uC.b++;
        }
        this.f2037c0.f = true;
        this.f2072z |= false;
        this.f2071y = true;
        int iR = this.f2040e.r();
        for (int i3 = 0; i3 < iR; i3++) {
            e0 e0VarI = I(this.f2040e.q(i3));
            if (e0VarI != null && !e0VarI.p()) {
                e0VarI.a(6);
            }
        }
        N();
        V v3 = this.b;
        ArrayList arrayList = v3.f178c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            e0 e0Var = (e0) arrayList.get(i4);
            if (e0Var != null) {
                e0Var.a(6);
                e0Var.a(1024);
            }
        }
        F f5 = v3.f182h.f2050k;
        if (f5 == null || !f5.b) {
            v3.d();
        }
        requestLayout();
    }

    public void setChildDrawingOrderCallback(H h2) {
        if (h2 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.f2043g) {
            this.f2019G = null;
            this.f2017E = null;
            this.f2018F = null;
            this.f2016D = null;
        }
        this.f2043g = z2;
        super.setClipToPadding(z2);
        if (this.f2063r) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(I i2) {
        i2.getClass();
        this.f2015C = i2;
        this.f2019G = null;
        this.f2017E = null;
        this.f2018F = null;
        this.f2016D = null;
    }

    public void setHasFixedSize(boolean z2) {
        this.f2061q = z2;
    }

    public void setItemAnimator(K k2) {
        K k3 = this.f2020H;
        if (k3 != null) {
            k3.e();
            this.f2020H.f149a = null;
        }
        this.f2020H = k2;
        if (k2 != null) {
            k2.f149a = this.h0;
        }
    }

    public void setItemViewCacheSize(int i2) {
        V v2 = this.b;
        v2.f180e = i2;
        v2.k();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(O o2) {
        RecyclerView recyclerView;
        C0024z c0024z;
        if (o2 == this.f2052l) {
            return;
        }
        setScrollState(0);
        c0 c0Var = this.f2032W;
        c0Var.f212g.removeCallbacks(c0Var);
        c0Var.f209c.abortAnimation();
        O o3 = this.f2052l;
        if (o3 != null && (c0024z = o3.f160e) != null) {
            c0024z.g();
        }
        O o4 = this.f2052l;
        V v2 = this.b;
        if (o4 != null) {
            K k2 = this.f2020H;
            if (k2 != null) {
                k2.e();
            }
            this.f2052l.b0(v2);
            this.f2052l.c0(v2);
            v2.f177a.clear();
            v2.d();
            if (this.f2059p) {
                O o5 = this.f2052l;
                o5.f161g = false;
                o5.M(this);
            }
            this.f2052l.o0(null);
            this.f2052l = null;
        } else {
            v2.f177a.clear();
            v2.d();
        }
        C0003d c0003d = this.f2040e;
        ((C0002c) c0003d.f215c).g();
        ArrayList arrayList = (ArrayList) c0003d.f216d;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = ((E) c0003d.b).f146a;
            if (size < 0) {
                break;
            }
            e0 e0VarI = I((View) arrayList.get(size));
            if (e0VarI != null) {
                int i2 = e0VarI.f233p;
                if (recyclerView.L()) {
                    e0VarI.f234q = i2;
                    recyclerView.f2060p0.add(e0VarI);
                } else {
                    WeakHashMap weakHashMap = N.f4222a;
                    AbstractC0290y.s(e0VarI.f220a, i2);
                }
                e0VarI.f233p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.f2052l = o2;
        if (o2 != null) {
            if (o2.b != null) {
                throw new IllegalArgumentException("LayoutManager " + o2 + " is already attached to a RecyclerView:" + o2.b.y());
            }
            o2.o0(this);
            if (this.f2059p) {
                this.f2052l.f161g = true;
            }
        }
        v2.k();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        C0280n scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f4260d) {
            WeakHashMap weakHashMap = N.f4222a;
            D.z(scrollingChildHelper.f4259c);
        }
        scrollingChildHelper.f4260d = z2;
    }

    public void setOnFlingListener(Q q2) {
        this.f2028Q = q2;
    }

    @Deprecated
    public void setOnScrollListener(S s2) {
        this.f2039d0 = s2;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.V = z2;
    }

    public void setRecycledViewPool(U u2) {
        V v2 = this.b;
        U u3 = v2.f181g;
        if (u3 != null) {
            u3.b--;
        }
        v2.f181g = u2;
        if (u2 == null || v2.f182h.getAdapter() == null) {
            return;
        }
        v2.f181g.b++;
    }

    public void setRecyclerListener(W w2) {
    }

    public void setScrollState(int i2) {
        C0024z c0024z;
        if (i2 == this.f2021I) {
            return;
        }
        this.f2021I = i2;
        if (i2 != 2) {
            c0 c0Var = this.f2032W;
            c0Var.f212g.removeCallbacks(c0Var);
            c0Var.f209c.abortAnimation();
            O o2 = this.f2052l;
            if (o2 != null && (c0024z = o2.f160e) != null) {
                c0024z.g();
            }
        }
        O o3 = this.f2052l;
        if (o3 != null) {
            o3.a0(i2);
        }
        S s2 = this.f2039d0;
        if (s2 != null) {
            s2.a(this, i2);
        }
        ArrayList arrayList = this.f2041e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((S) this.f2041e0.get(size)).a(this, i2);
            }
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 == 1) {
                this.P = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
        }
        this.P = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(b0 b0Var) {
        this.b.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().g(i2, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        C0024z c0024z;
        if (z2 != this.f2067u) {
            i("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.f2067u = false;
                if (this.f2066t && this.f2052l != null && this.f2050k != null) {
                    requestLayout();
                }
                this.f2066t = false;
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f2067u = true;
            this.f2068v = true;
            setScrollState(0);
            c0 c0Var = this.f2032W;
            c0Var.f212g.removeCallbacks(c0Var);
            c0Var.f209c.abortAnimation();
            O o2 = this.f2052l;
            if (o2 == null || (c0024z = o2.f160e) == null) {
                return;
            }
            c0024z.g();
        }
    }

    public final void t(int i2, int i3) {
        this.f2014B++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        S s2 = this.f2039d0;
        if (s2 != null) {
            s2.b(this, i2, i3);
        }
        ArrayList arrayList = this.f2041e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((S) this.f2041e0.get(size)).b(this, i2, i3);
            }
        }
        this.f2014B--;
    }

    public final void u() {
        if (this.f2019G != null) {
            return;
        }
        this.f2015C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2019G = edgeEffect;
        if (this.f2043g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void v() {
        if (this.f2016D != null) {
            return;
        }
        this.f2015C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2016D = edgeEffect;
        if (this.f2043g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void w() {
        if (this.f2018F != null) {
            return;
        }
        this.f2015C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2018F = edgeEffect;
        if (this.f2043g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void x() {
        if (this.f2017E != null) {
            return;
        }
        this.f2015C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2017E = edgeEffect;
        if (this.f2043g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String y() {
        return " " + super.toString() + ", adapter:" + this.f2050k + ", layout:" + this.f2052l + ", context:" + getContext();
    }

    public final void z(a0 a0Var) {
        if (getScrollState() != 2) {
            a0Var.getClass();
            return;
        }
        OverScroller overScroller = this.f2032W.f209c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        a0Var.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    /* JADX WARN: Code duplicated, block: B:80:0x03be  */
    /* JADX WARN: Failed to calculate best type for var: r19v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v0 ??, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v0 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v0 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToForceImmutableTypes(FixTypesVisitor.java:946)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v0 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToForceImmutableTypes(FixTypesVisitor.java:946)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v2 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v2 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToForceImmutableTypes(FixTypesVisitor.java:946)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v2 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v7 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v7 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToForceImmutableTypes(FixTypesVisitor.java:946)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v7 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r19v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v0 ??, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to set immutable type for var: r19v0 android.content.Context
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v0 android.content.Context, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToForceImmutableTypes(FixTypesVisitor.java:946)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v0 android.content.res.TypedArray, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 5 more
     */
    public RecyclerView(Context context, AttributeSet attributeSet, int i2) throws NoSuchMethodException {
        TypedArray typedArray;
        char c2;
        int i3;
        boolean z2;
        Object[] objArr;
        Constructor constructor;
        super(context, attributeSet, i2);
        this.f2033a = new e(this);
        this.b = new V(this);
        this.f = new a(5);
        this.f2045h = new Rect();
        this.f2046i = new Rect();
        this.f2048j = new RectF();
        this.f2054m = new ArrayList();
        this.f2056n = new ArrayList();
        this.f2065s = 0;
        this.f2071y = false;
        this.f2072z = false;
        this.f2013A = 0;
        this.f2014B = 0;
        this.f2015C = new I();
        C0010k c0010k = new C0010k();
        c0010k.f149a = null;
        c0010k.b = new ArrayList();
        c0010k.f150c = 120L;
        c0010k.f151d = 120L;
        c0010k.f152e = 250L;
        c0010k.f = 250L;
        c0010k.f268g = true;
        c0010k.f269h = new ArrayList();
        c0010k.f270i = new ArrayList();
        c0010k.f271j = new ArrayList();
        c0010k.f272k = new ArrayList();
        c0010k.f273l = new ArrayList();
        c0010k.f274m = new ArrayList();
        c0010k.f275n = new ArrayList();
        c0010k.f276o = new ArrayList();
        c0010k.f277p = new ArrayList();
        c0010k.f278q = new ArrayList();
        c0010k.f279r = new ArrayList();
        this.f2020H = c0010k;
        this.f2021I = 0;
        this.f2022J = -1;
        this.f2030T = Float.MIN_VALUE;
        this.f2031U = Float.MIN_VALUE;
        this.V = true;
        this.f2032W = new c0(this);
        this.f2035b0 = new C0016q();
        a0 a0Var = new a0();
        a0Var.f191a = -1;
        a0Var.b = 0;
        a0Var.f192c = 0;
        a0Var.f193d = 1;
        a0Var.f194e = 0;
        a0Var.f = false;
        a0Var.f195g = false;
        a0Var.f196h = false;
        a0Var.f197i = false;
        a0Var.f198j = false;
        a0Var.f199k = false;
        this.f2037c0 = a0Var;
        this.f2042f0 = false;
        this.f2044g0 = false;
        E e2 = new E(this);
        this.h0 = e2;
        this.f2047i0 = false;
        this.f2051k0 = new int[2];
        this.f2055m0 = new int[2];
        this.n0 = new int[2];
        this.f2058o0 = new int[2];
        this.f2060p0 = new ArrayList();
        this.f2062q0 = new b(this, 3);
        this.f2064r0 = new E(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.P = viewConfiguration.getScaledTouchSlop();
        this.f2030T = p034y.O.a(viewConfiguration);
        this.f2031U = p034y.O.b(viewConfiguration);
        this.f2029R = viewConfiguration.getScaledMinimumFlingVelocity();
        this.S = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2020H.f149a = e2;
        this.f2038d = new C0001b(new E(this));
        this.f2040e = new C0003d(new E(this));
        WeakHashMap weakHashMap = N.f4222a;
        if (p034y.F.b(this) == 0) {
            p034y.F.l(this, 8);
        }
        if (AbstractC0290y.c(this) == 0) {
            AbstractC0290y.s(this, 1);
        }
        this.f2070x = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new g0(this));
        int[] iArr = L.a.f132a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, i2, 0);
            typedArray = typedArrayObtainStyledAttributes;
        } else {
            typedArray = typedArrayObtainStyledAttributes;
        }
        String string = typedArray.getString(8);
        if (typedArray.getInt(r6, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2043g = typedArray.getBoolean(1, true);
        if (typedArray.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArray.getDrawable(6);
            Drawable drawable = typedArray.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArray.getDrawable(4);
            Drawable drawable2 = typedArray.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + y());
            }
            Resources resources = getContext().getResources();
            c2 = 2;
            i3 = 4;
            new C0014o(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.ex.auto.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.ex.auto.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.ex.auto.R.dimen.fastscroll_margin));
        } else {
            c2 = 2;
            i3 = 4;
        }
        typedArray.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (strTrim.isEmpty()) {
                z2 = true;
            } else {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(strTrim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(O.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(f2012t0);
                        Object[] objArr2 = new Object[i3];
                        objArr2[0] = context;
                        z2 = true;
                        try {
                            objArr2[1] = attributeSet;
                            objArr2[c2] = Integer.valueOf(i2);
                            objArr2[3] = 0;
                            objArr = objArr2;
                        } catch (NoSuchMethodException e3) {
                            e = e3;
                            NoSuchMethodException noSuchMethodException = e;
                            try {
                                objArr = null;
                                constructor = clsAsSubclass.getConstructor(null);
                            } catch (NoSuchMethodException e4) {
                                e4.initCause(noSuchMethodException);
                                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strTrim, e4);
                            }
                        }
                    } catch (NoSuchMethodException e5) {
                        e = e5;
                        z2 = true;
                    }
                    constructor.setAccessible(z2);
                    setLayoutManager((O) constructor.newInstance(objArr));
                } catch (ClassCastException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strTrim, e6);
                } catch (ClassNotFoundException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strTrim, e7);
                } catch (IllegalAccessException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strTrim, e8);
                } catch (InstantiationException e9) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e9);
                } catch (InvocationTargetException e10) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e10);
                }
            }
        } else {
            z2 = true;
        }
        int i4 = Build.VERSION.SDK_INT;
        int[] iArr2 = f2011s0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        if (i4 >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i2, 0);
        }
        boolean z3 = typedArrayObtainStyledAttributes2.getBoolean(0, z2);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z3);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        O o2 = this.f2052l;
        if (o2 != null) {
            return o2.t(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }
}
