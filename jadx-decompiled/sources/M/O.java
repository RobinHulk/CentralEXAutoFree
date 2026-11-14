package M;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;

/* JADX INFO: loaded from: classes.dex */
public abstract class O {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0003d f157a;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G.a f158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final G.a f159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0024z f160e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f161g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f162h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f163i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f164j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f165k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f166l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f167m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f168n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f169o;

    public O() {
        M m2 = new M(this, 0);
        M m3 = new M(this, 1);
        this.f158c = new G.a(m2);
        this.f159d = new G.a(m3);
        this.f = false;
        this.f161g = false;
        this.f162h = true;
        this.f163i = true;
    }

    public static int D(View view) {
        return ((P) view.getLayoutParams()).f170a.b();
    }

    public static N E(Context context, AttributeSet attributeSet, int i2, int i3) {
        N n2 = new N();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, L.a.f132a, i2, i3);
        n2.f154a = typedArrayObtainStyledAttributes.getInt(0, 1);
        n2.b = typedArrayObtainStyledAttributes.getInt(10, 1);
        n2.f155c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        n2.f156d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return n2;
    }

    public static boolean I(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (i4 > 0 && i2 != i4) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i2;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i2;
        }
        return true;
    }

    public static void J(View view, int i2, int i3, int i4, int i5) {
        P p2 = (P) view.getLayoutParams();
        Rect rect = p2.b;
        view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) p2).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) p2).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) p2).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) p2).bottomMargin);
    }

    public static int g(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i3, i4) : size;
        }
        return Math.min(size, Math.max(i3, i4));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int w(boolean z2, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, i2 - i4);
        if (z2) {
            if (i5 >= 0) {
                i3 = 1073741824;
            } else if (i5 != -1 || (i3 != Integer.MIN_VALUE && (i3 == 0 || i3 != 1073741824))) {
                i3 = 0;
                i5 = 0;
            } else {
                i5 = iMax;
            }
        } else if (i5 >= 0) {
            i3 = 1073741824;
        } else if (i5 == -1) {
            i5 = iMax;
        } else if (i5 != -2) {
            i3 = 0;
            i5 = 0;
        } else if (i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            i5 = iMax;
            i3 = Integer.MIN_VALUE;
        } else {
            i5 = iMax;
            i3 = 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i5, i3);
    }

    public static void y(View view, Rect rect) {
        int[] iArr = RecyclerView.f2011s0;
        P p2 = (P) view.getLayoutParams();
        Rect rect2 = p2.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) p2).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) p2).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) p2).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) p2).bottomMargin);
    }

    public final int A() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int B() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int C() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int F(V v2, a0 a0Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.f2050k == null || !e()) {
            return 1;
        }
        return this.b.f2050k.a();
    }

    public final void G(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((P) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.f2048j;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public abstract boolean H();

    public void K(int i2) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int i3 = recyclerView.f2040e.i();
            for (int i4 = 0; i4 < i3; i4++) {
                recyclerView.f2040e.h(i4).offsetLeftAndRight(i2);
            }
        }
    }

    public void L(int i2) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int i3 = recyclerView.f2040e.i();
            for (int i4 = 0; i4 < i3; i4++) {
                recyclerView.f2040e.h(i4).offsetTopAndBottom(i2);
            }
        }
    }

    public abstract void M(RecyclerView recyclerView);

    public abstract View N(View view, int i2, V v2, a0 a0Var);

    public void O(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        V v2 = recyclerView.b;
        a0 a0Var = recyclerView.f2037c0;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z2 = true;
        if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
            z2 = false;
        }
        accessibilityEvent.setScrollable(z2);
        F f = this.b.f2050k;
        if (f != null) {
            accessibilityEvent.setItemCount(f.a());
        }
    }

    public void P(V v2, a0 a0Var, View view, p035z.e eVar) {
        eVar.f(A.e.v(false, e() ? D(view) : 0, 1, d() ? D(view) : 0, 1));
    }

    public final void Q(View view, p035z.e eVar) {
        e0 e0VarI = RecyclerView.I(view);
        if (e0VarI == null || e0VarI.i() || ((ArrayList) this.f157a.f216d).contains(e0VarI.f220a)) {
            return;
        }
        RecyclerView recyclerView = this.b;
        P(recyclerView.b, recyclerView.f2037c0, view, eVar);
    }

    public void R(int i2, int i3) {
    }

    public void S() {
    }

    public void T(int i2, int i3) {
    }

    public void U(int i2, int i3) {
    }

    public void V(int i2, int i3) {
    }

    public abstract void W(V v2, a0 a0Var);

    public abstract void X(a0 a0Var);

    public abstract void Y(Parcelable parcelable);

    public abstract Parcelable Z();

    public void a0(int i2) {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    public final void b(View view, int i2, boolean z2) {
        int iB;
        e0 e0VarI = RecyclerView.I(view);
        if (z2 || e0VarI.i()) {
            p020m.k kVar = (p020m.k) this.b.f.b;
            p0 p0VarA = (p0) kVar.getOrDefault(e0VarI, null);
            if (p0VarA == null) {
                p0VarA = p0.a();
                kVar.put(e0VarI, p0VarA);
            }
            p0VarA.f333a |= 1;
        } else {
            this.b.f.D(e0VarI);
        }
        P p2 = (P) view.getLayoutParams();
        if (e0VarI.q() || e0VarI.j()) {
            if (e0VarI.j()) {
                e0VarI.f231n.j(e0VarI);
            } else {
                e0VarI.f227j &= -33;
            }
            this.f157a.c(view, i2, view.getLayoutParams(), false);
        } else {
            if (view.getParent() == this.b) {
                C0003d c0003d = this.f157a;
                int iIndexOfChild = ((E) c0003d.b).f146a.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    iB = -1;
                } else {
                    C0002c c0002c = (C0002c) c0003d.f215c;
                    if (c0002c.d(iIndexOfChild)) {
                        iB = -1;
                    } else {
                        iB = iIndexOfChild - c0002c.b(iIndexOfChild);
                    }
                }
                if (i2 == -1) {
                    i2 = this.f157a.i();
                }
                if (iB == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.b.indexOfChild(view) + this.b.y());
                }
                if (iB != i2) {
                    O o2 = this.b.f2052l;
                    View viewU = o2.u(iB);
                    if (viewU == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + o2.b.toString());
                    }
                    o2.u(iB);
                    o2.f157a.d(iB);
                    P p3 = (P) viewU.getLayoutParams();
                    e0 e0VarI2 = RecyclerView.I(viewU);
                    if (e0VarI2.i()) {
                        p020m.k kVar2 = (p020m.k) o2.b.f.b;
                        p0 p0VarA2 = (p0) kVar2.getOrDefault(e0VarI2, null);
                        if (p0VarA2 == null) {
                            p0VarA2 = p0.a();
                            kVar2.put(e0VarI2, p0VarA2);
                        }
                        p0VarA2.f333a = 1 | p0VarA2.f333a;
                    } else {
                        o2.b.f.D(e0VarI2);
                    }
                    o2.f157a.c(viewU, i2, p3, e0VarI2.i());
                }
            } else {
                this.f157a.b(view, i2, false);
                p2.f171c = true;
                C0024z c0024z = this.f160e;
                if (c0024z != null && c0024z.f376e) {
                    c0024z.b.getClass();
                    e0 e0VarI3 = RecyclerView.I(view);
                    if ((e0VarI3 != null ? e0VarI3.b() : -1) == c0024z.f373a) {
                        c0024z.f = view;
                    }
                }
            }
        }
        if (p2.f172d) {
            e0VarI.f220a.invalidate();
            p2.f172d = false;
        }
    }

    public final void b0(V v2) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            if (!RecyclerView.I(u(iV)).p()) {
                View viewU = u(iV);
                e0(iV);
                v2.f(viewU);
            }
        }
    }

    public abstract void c(String str);

    public final void c0(V v2) {
        ArrayList arrayList;
        int size = v2.f177a.size();
        int i2 = size - 1;
        while (true) {
            arrayList = v2.f177a;
            if (i2 < 0) {
                break;
            }
            View view = ((e0) arrayList.get(i2)).f220a;
            e0 e0VarI = RecyclerView.I(view);
            if (!e0VarI.p()) {
                e0VarI.o(false);
                if (e0VarI.k()) {
                    this.b.removeDetachedView(view, false);
                }
                K k2 = this.b.f2020H;
                if (k2 != null) {
                    k2.d(e0VarI);
                }
                e0VarI.o(true);
                e0 e0VarI2 = RecyclerView.I(view);
                e0VarI2.f231n = null;
                e0VarI2.f232o = false;
                e0VarI2.f227j &= -33;
                v2.g(e0VarI2);
            }
            i2--;
        }
        arrayList.clear();
        ArrayList arrayList2 = v2.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public abstract boolean d();

    public final void d0(View view, V v2) {
        C0003d c0003d = this.f157a;
        E e2 = (E) c0003d.b;
        int iIndexOfChild = e2.f146a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            if (((C0002c) c0003d.f215c).f(iIndexOfChild)) {
                c0003d.x(view);
            }
            e2.h(iIndexOfChild);
        }
        v2.f(view);
    }

    public abstract boolean e();

    public final void e0(int i2) {
        if (u(i2) != null) {
            C0003d c0003d = this.f157a;
            int iO = c0003d.o(i2);
            E e2 = (E) c0003d.b;
            View childAt = e2.f146a.getChildAt(iO);
            if (childAt == null) {
                return;
            }
            if (((C0002c) c0003d.f215c).f(iO)) {
                c0003d.x(childAt);
            }
            e2.h(iO);
        }
    }

    public boolean f(P p2) {
        return p2 != null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be  */
    public final boolean f0(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        int iA = A();
        int iC = C();
        int iB = this.f168n - B();
        int iZ = this.f169o - z();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i2 = left - iA;
        int iMin = Math.min(0, i2);
        int i3 = top - iC;
        int iMin2 = Math.min(0, i3);
        int i4 = iWidth - iB;
        int iMax = Math.max(0, i4);
        int iMax2 = Math.max(0, iHeight - iZ);
        RecyclerView recyclerView2 = this.b;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        if (AbstractC0291z.d(recyclerView2) != 1) {
            if (iMin == 0) {
                iMin = Math.min(i2, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i4);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i3, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i5 = iArr[0];
        int i6 = iArr[1];
        if (z3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int iA2 = A();
                int iC2 = C();
                int iB2 = this.f168n - B();
                int iZ2 = this.f169o - z();
                Rect rect2 = this.b.f2045h;
                y(focusedChild, rect2);
                if (rect2.left - i5 < iB2 && rect2.right - i5 > iA2 && rect2.top - i6 < iZ2 && rect2.bottom - i6 > iC2) {
                    if (i5 == 0) {
                    }
                    if (z2) {
                        recyclerView.scrollBy(i5, i6);
                    } else {
                        recyclerView.Z(i5, i6, false);
                    }
                    return true;
                }
            }
        } else if (i5 == 0 || i6 != 0) {
            if (z2) {
                recyclerView.scrollBy(i5, i6);
            } else {
                recyclerView.Z(i5, i6, false);
            }
            return true;
        }
        return false;
    }

    public final void g0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract void h(int i2, int i3, a0 a0Var, C0016q c0016q);

    public abstract int h0(int i2, V v2, a0 a0Var);

    public void i(int i2, C0016q c0016q) {
    }

    public abstract void i0(int i2);

    public abstract int j(a0 a0Var);

    public abstract int j0(int i2, V v2, a0 a0Var);

    public abstract int k(a0 a0Var);

    public final void k0(RecyclerView recyclerView) {
        l0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public abstract int l(a0 a0Var);

    public final void l0(int i2, int i3) {
        this.f168n = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        this.f166l = mode;
        if (mode == 0) {
            int[] iArr = RecyclerView.f2011s0;
        }
        this.f169o = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        this.f167m = mode2;
        if (mode2 == 0) {
            int[] iArr2 = RecyclerView.f2011s0;
        }
    }

    public abstract int m(a0 a0Var);

    public void m0(Rect rect, int i2, int i3) {
        int iB = B() + A() + rect.width();
        int iZ = z() + C() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        this.b.setMeasuredDimension(g(i2, iB, AbstractC0290y.e(recyclerView)), g(i3, iZ, AbstractC0290y.d(this.b)));
    }

    public abstract int n(a0 a0Var);

    public final void n0(int i2, int i3) {
        int iV = v();
        if (iV == 0) {
            this.b.n(i2, i3);
            return;
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MAX_VALUE;
        int i6 = Integer.MIN_VALUE;
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < iV; i8++) {
            View viewU = u(i8);
            Rect rect = this.b.f2045h;
            y(viewU, rect);
            int i9 = rect.left;
            if (i9 < i7) {
                i7 = i9;
            }
            int i10 = rect.right;
            if (i10 > i4) {
                i4 = i10;
            }
            int i11 = rect.top;
            if (i11 < i5) {
                i5 = i11;
            }
            int i12 = rect.bottom;
            if (i12 > i6) {
                i6 = i12;
            }
        }
        this.b.f2045h.set(i7, i5, i4, i6);
        m0(this.b.f2045h, i2, i3);
    }

    public abstract int o(a0 a0Var);

    public final void o0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.f157a = null;
            this.f168n = 0;
            this.f169o = 0;
        } else {
            this.b = recyclerView;
            this.f157a = recyclerView.f2040e;
            this.f168n = recyclerView.getWidth();
            this.f169o = recyclerView.getHeight();
        }
        this.f166l = 1073741824;
        this.f167m = 1073741824;
    }

    public final void p(V v2) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            e0 e0VarI = RecyclerView.I(viewU);
            if (!e0VarI.p()) {
                if (!e0VarI.g() || e0VarI.i() || this.b.f2050k.b) {
                    u(iV);
                    this.f157a.d(iV);
                    v2.h(viewU);
                    this.b.f.D(e0VarI);
                } else {
                    e0(iV);
                    v2.g(e0VarI);
                }
            }
        }
    }

    public final boolean p0(View view, int i2, int i3, P p2) {
        return (!view.isLayoutRequested() && this.f162h && I(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) p2).width) && I(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) p2).height)) ? false : true;
    }

    public View q(int i2) {
        int iV = v();
        for (int i3 = 0; i3 < iV; i3++) {
            View viewU = u(i3);
            e0 e0VarI = RecyclerView.I(viewU);
            if (e0VarI != null && e0VarI.b() == i2 && !e0VarI.p() && (this.b.f2037c0.f195g || !e0VarI.i())) {
                return viewU;
            }
        }
        return null;
    }

    public boolean q0() {
        return false;
    }

    public abstract P r();

    public final boolean r0(View view, int i2, int i3, P p2) {
        return (this.f162h && I(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) p2).width) && I(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) p2).height)) ? false : true;
    }

    public P s(Context context, AttributeSet attributeSet) {
        return new P(context, attributeSet);
    }

    public abstract void s0(RecyclerView recyclerView, int i2);

    public P t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof P) {
            return new P((P) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new P((ViewGroup.MarginLayoutParams) layoutParams) : new P(layoutParams);
    }

    public final void t0(C0024z c0024z) {
        C0024z c0024z2 = this.f160e;
        if (c0024z2 != null && c0024z != c0024z2 && c0024z2.f376e) {
            c0024z2.g();
        }
        this.f160e = c0024z;
        RecyclerView recyclerView = this.b;
        c0 c0Var = recyclerView.f2032W;
        c0Var.f212g.removeCallbacks(c0Var);
        c0Var.f209c.abortAnimation();
        if (c0024z.f378h) {
            Log.w("RecyclerView", "An instance of " + c0024z.getClass().getSimpleName() + " was started more than once. Each instance of" + c0024z.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        c0024z.b = recyclerView;
        c0024z.f374c = this;
        int i2 = c0024z.f373a;
        if (i2 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f2037c0.f191a = i2;
        c0024z.f376e = true;
        c0024z.f375d = true;
        c0024z.f = recyclerView.f2052l.q(i2);
        c0024z.b.f2032W.a();
        c0024z.f378h = true;
    }

    public final View u(int i2) {
        C0003d c0003d = this.f157a;
        if (c0003d != null) {
            return c0003d.h(i2);
        }
        return null;
    }

    public abstract boolean u0();

    public final int v() {
        C0003d c0003d = this.f157a;
        if (c0003d != null) {
            return c0003d.i();
        }
        return 0;
    }

    public int x(V v2, a0 a0Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.f2050k == null || !d()) {
            return 1;
        }
        return this.b.f2050k.a();
    }

    public final int z() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }
}
