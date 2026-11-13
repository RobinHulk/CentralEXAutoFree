package androidx.coordinatorlayout.widget;

import M.C0015p;
import M.J;
import T.C0081j1;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.emoji2.text.q;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import p020m.k;
import p022n.a;
import p023o.b;
import p023o.d;
import p023o.e;
import p023o.f;
import p023o.g;
import p033x.c;
import p034y.A;
import p034y.AbstractC0276j;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.B;
import p034y.D;
import p034y.InterfaceC0281o;
import p034y.InterfaceC0282p;
import p034y.N;
import p034y.j0;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0281o, InterfaceC0282p {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f1624t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Class[] f1625u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final ThreadLocal f1626v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final C0015p f1627w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final c f1628x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1629a;
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f1631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f1632e;
    public final int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1633g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1634h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f1635i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1636j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f1637k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f1638l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1639m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public j0 f1640n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1641o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f1642p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f1643q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public A.e f1644r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final J f1645s;

    static {
        Package r1 = CoordinatorLayout.class.getPackage();
        f1624t = r1 != null ? r1.getName() : null;
        f1627w = new C0015p(1);
        f1625u = new Class[]{Context.class, AttributeSet.class};
        f1626v = new ThreadLocal();
        f1628x = new c();
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f1629a = new ArrayList();
        this.b = new q();
        this.f1630c = new ArrayList();
        this.f1631d = new ArrayList();
        this.f1632e = new int[2];
        this.f = new int[2];
        this.f1645s = new J();
        int[] iArr = a.f3891a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f1635i = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr2 = this.f1635i;
                iArr2[i2] = (int) (iArr2[i2] * f);
            }
        }
        this.f1642p = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        w();
        super.setOnHierarchyChangeListener(new p023o.c(this));
        WeakHashMap weakHashMap = N.f4222a;
        if (AbstractC0290y.c(this) == 0) {
            AbstractC0290y.s(this, 1);
        }
    }

    public static Rect g() {
        Rect rect = (Rect) f1628x.a();
        return rect == null ? new Rect() : rect;
    }

    public static void l(int i2, Rect rect, Rect rect2, d dVar, int i3, int i4) {
        int iWidth;
        int iHeight;
        int i5 = dVar.f3894c;
        if (i5 == 0) {
            i5 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, i2);
        int i6 = dVar.f3895d;
        if ((i6 & 7) == 0) {
            i6 |= 8388611;
        }
        if ((i6 & 112) == 0) {
            i6 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i6, i2);
        int i7 = absoluteGravity & 7;
        int i8 = absoluteGravity & 112;
        int i9 = absoluteGravity2 & 7;
        int i10 = absoluteGravity2 & 112;
        if (i9 != 1) {
            iWidth = i9 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i10 != 16) {
            iHeight = i10 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i7 == 1) {
            iWidth -= i3 / 2;
        } else if (i7 != 5) {
            iWidth -= i3;
        }
        if (i8 == 16) {
            iHeight -= i4 / 2;
        } else if (i8 != 80) {
            iHeight -= i4;
        }
        rect2.set(iWidth, iHeight, i3 + iWidth, i4 + iHeight);
    }

    public static d n(View view) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.b) {
            b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (b) superclass.getAnnotation(b.class);
                if (bVar != null) {
                    break;
                }
            }
            if (bVar != null) {
                try {
                    p023o.a aVar = (p023o.a) bVar.value().getDeclaredConstructor(null).newInstance(null);
                    p023o.a aVar2 = dVar.f3893a;
                    if (aVar2 != aVar) {
                        if (aVar2 != null) {
                            aVar2.e();
                        }
                        dVar.f3893a = aVar;
                        dVar.b = true;
                        if (aVar != null) {
                            aVar.c(dVar);
                        }
                    }
                } catch (Exception e2) {
                    Log.e("CoordinatorLayout", "Default behavior class " + bVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                }
            }
            dVar.b = true;
        }
        return dVar;
    }

    public static void u(View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        int i3 = dVar.f3899i;
        if (i3 != i2) {
            WeakHashMap weakHashMap = N.f4222a;
            view.offsetLeftAndRight(i2 - i3);
            dVar.f3899i = i2;
        }
    }

    public static void v(View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        int i3 = dVar.f3900j;
        if (i3 != i2) {
            WeakHashMap weakHashMap = N.f4222a;
            view.offsetTopAndBottom(i2 - i3);
            dVar.f3900j = i2;
        }
    }

    @Override // p034y.InterfaceC0281o
    public final void a(View view, View view2, int i2, int i3) {
        J j2 = this.f1645s;
        if (i3 == 1) {
            j2.b = i2;
        } else {
            j2.f148a = i2;
        }
        this.f1637k = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ((d) getChildAt(i4).getLayoutParams()).getClass();
        }
    }

    @Override // p034y.InterfaceC0281o
    public final void b(View view, int i2) {
        J j2 = this.f1645s;
        if (i2 == 1) {
            j2.b = 0;
        } else {
            j2.f148a = 0;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.a(i2)) {
                p023o.a aVar = dVar.f3893a;
                if (aVar != null) {
                    aVar.p(childAt, view, i2);
                }
                if (i2 == 0) {
                    dVar.f3903m = false;
                } else if (i2 == 1) {
                    dVar.f3904n = false;
                }
            }
        }
        this.f1637k = null;
    }

    @Override // p034y.InterfaceC0281o
    public final void c(View view, int i2, int i3, int[] iArr, int i4) {
        p023o.a aVar;
        int childCount = getChildCount();
        boolean z2 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i4) && (aVar = dVar.f3893a) != null) {
                    int[] iArr2 = this.f1632e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.j(this, childAt, view, i2, i3, iArr2, i4);
                    iMax = i2 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i3 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z2 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z2) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    @Override // p034y.InterfaceC0282p
    public final void d(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        p023o.a aVar;
        int childCount = getChildCount();
        boolean z2 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i6) && (aVar = dVar.f3893a) != null) {
                    int[] iArr2 = this.f1632e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.k(this, childAt, i3, i4, i5, iArr2);
                    iMax = i4 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i5 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z2 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z2) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        p023o.a aVar = ((d) view.getLayoutParams()).f3893a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1642p;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // p034y.InterfaceC0281o
    public final void e(View view, int i2, int i3, int i4, int i5, int i6) {
        d(view, i2, i3, i4, i5, 0, this.f);
    }

    @Override // p034y.InterfaceC0281o
    public final boolean f(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                p023o.a aVar = dVar.f3893a;
                if (aVar != null) {
                    boolean zO = aVar.o(childAt, i2, i3);
                    z2 |= zO;
                    if (i3 == 0) {
                        dVar.f3903m = zO;
                    } else if (i3 == 1) {
                        dVar.f3904n = zO;
                    }
                } else if (i3 == 0) {
                    dVar.f3903m = false;
                } else if (i3 == 1) {
                    dVar.f3904n = false;
                }
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        s();
        return Collections.unmodifiableList(this.f1629a);
    }

    public final j0 getLastWindowInsets() {
        return this.f1640n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        J j2 = this.f1645s;
        return j2.b | j2.f148a;
    }

    public Drawable getStatusBarBackground() {
        return this.f1642p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(d dVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i2 + iMax, i3 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z2) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z2) {
            k(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList j(View view) {
        k kVar = (k) this.b.b;
        int i2 = kVar.f3871c;
        ArrayList arrayList = null;
        for (int i3 = 0; i3 < i2; i3++) {
            ArrayList arrayList2 = (ArrayList) kVar.i(i3);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(kVar.g(i3));
            }
        }
        ArrayList arrayList3 = this.f1631d;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void k(View view, Rect rect) {
        ThreadLocal threadLocal = g.f3908a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f3908a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int m(int i2) {
        int[] iArr = this.f1635i;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        }
        if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
        return 0;
    }

    public final boolean o(View view, int i2, int i3) {
        c cVar = f1628x;
        Rect rectG = g();
        k(view, rectG);
        try {
            return rectG.contains(i2, i3);
        } finally {
            rectG.setEmpty();
            cVar.c(rectG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t(false);
        if (this.f1639m) {
            if (this.f1638l == null) {
                this.f1638l = new e(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1638l);
        }
        if (this.f1640n == null) {
            WeakHashMap weakHashMap = N.f4222a;
            if (AbstractC0290y.b(this)) {
                B.c(this);
            }
        }
        this.f1634h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t(false);
        if (this.f1639m && this.f1638l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1638l);
        }
        View view = this.f1637k;
        if (view != null) {
            b(view, 0);
        }
        this.f1634h = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1641o || this.f1642p == null) {
            return;
        }
        j0 j0Var = this.f1640n;
        int iD = j0Var != null ? j0Var.d() : 0;
        if (iD > 0) {
            this.f1642p.setBounds(0, 0, getWidth(), iD);
            this.f1642p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            t(true);
        }
        boolean zR = r(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            t(true);
        }
        return zR;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        p023o.a aVar;
        WeakHashMap weakHashMap = N.f4222a;
        int iD = AbstractC0291z.d(this);
        ArrayList arrayList = this.f1629a;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = (View) arrayList.get(i6);
            if (view.getVisibility() != 8 && ((aVar = ((d) view.getLayoutParams()).f3893a) == null || !aVar.g(this, view, iD))) {
                q(view, iD);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x015c  */
    /* JADX WARN: Code duplicated, block: B:78:0x017a  */
    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax;
        int i6;
        int i7;
        p023o.a aVar;
        int i8;
        boolean z3;
        boolean z4;
        s();
        int childCount = getChildCount();
        int i9 = 0;
        loop0: while (true) {
            if (i9 >= childCount) {
                z2 = false;
                break;
            }
            View childAt = getChildAt(i9);
            k kVar = (k) this.b.b;
            int i10 = kVar.f3871c;
            for (int i11 = 0; i11 < i10; i11++) {
                ArrayList arrayList = (ArrayList) kVar.i(i11);
                if (arrayList != null && arrayList.contains(childAt)) {
                    z2 = true;
                    break loop0;
                }
            }
            i9++;
        }
        if (z2 != this.f1639m) {
            if (z2) {
                if (this.f1634h) {
                    if (this.f1638l == null) {
                        this.f1638l = new e(this);
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f1638l);
                }
                this.f1639m = true;
            } else {
                if (this.f1634h && this.f1638l != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f1638l);
                }
                this.f1639m = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = N.f4222a;
        int iD = AbstractC0291z.d(this);
        boolean z5 = iD == 1;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int i12 = paddingLeft + paddingRight;
        int i13 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z6 = this.f1640n != null && AbstractC0290y.b(this);
        ArrayList arrayList2 = this.f1629a;
        int size3 = arrayList2.size();
        int i14 = suggestedMinimumWidth;
        int i15 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i16 = 0;
        while (i16 < size3) {
            View view = (View) arrayList2.get(i16);
            int i17 = iCombineMeasuredStates;
            if (view.getVisibility() == 8) {
                size3 = size3;
                arrayList2 = arrayList2;
                iCombineMeasuredStates = i17;
                z4 = true;
                z3 = false;
                i4 = i16;
            } else {
                d dVar = (d) view.getLayoutParams();
                int i18 = dVar.f3896e;
                if (i18 < 0 || mode == 0) {
                    i4 = i16;
                    i5 = i15;
                } else {
                    int iM = m(i18);
                    i4 = i16;
                    int i19 = dVar.f3894c;
                    if (i19 == 0) {
                        i19 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i19, iD) & 7;
                    i5 = i15;
                    if ((absoluteGravity == 3 && !z5) || (absoluteGravity == 5 && z5)) {
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    } else if ((absoluteGravity == 5 && !z5) || (absoluteGravity == 3 && z5)) {
                        iMax = Math.max(0, iM - paddingLeft);
                    }
                    if (z6 || AbstractC0290y.b(view)) {
                        i6 = i2;
                        i7 = i3;
                    } else {
                        int iC = this.f1640n.c() + this.f1640n.b();
                        int iA = this.f1640n.a() + this.f1640n.d();
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                        i6 = iMakeMeasureSpec;
                        i7 = iMakeMeasureSpec2;
                    }
                    aVar = dVar.f3893a;
                    if (aVar == null && aVar.h(this, view)) {
                        i8 = i17;
                        z3 = false;
                    } else {
                        i8 = i17;
                        z3 = false;
                        measureChildWithMargins(view, i6, iMax, i7, 0);
                    }
                    int iMax2 = Math.max(i14, view.getMeasuredWidth() + i12 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax3 = Math.max(i5, view.getMeasuredHeight() + i13 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    i14 = iMax2;
                    iCombineMeasuredStates = View.combineMeasuredStates(i8, view.getMeasuredState());
                    z4 = true;
                    i15 = iMax3;
                }
                iMax = 0;
                if (z6) {
                    i6 = i2;
                    i7 = i3;
                } else {
                    i6 = i2;
                    i7 = i3;
                }
                aVar = dVar.f3893a;
                if (aVar == null) {
                    i8 = i17;
                    z3 = false;
                    measureChildWithMargins(view, i6, iMax, i7, 0);
                } else {
                    i8 = i17;
                    z3 = false;
                    measureChildWithMargins(view, i6, iMax, i7, 0);
                }
                int iMax4 = Math.max(i14, view.getMeasuredWidth() + i12 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                int iMax5 = Math.max(i5, view.getMeasuredHeight() + i13 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                i14 = iMax4;
                iCombineMeasuredStates = View.combineMeasuredStates(i8, view.getMeasuredState());
                z4 = true;
                i15 = iMax5;
            }
            i16 = i4 + 1;
            size3 = size3;
            arrayList2 = arrayList2;
        }
        int i20 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i14, i2, (-16777216) & i20), View.resolveSizeAndState(i15, i3, i20 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    p023o.a aVar = dVar.f3893a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        p023o.a aVar;
        int childCount = getChildCount();
        boolean zI = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0) && (aVar = dVar.f3893a) != null) {
                    zI |= aVar.i(view);
                }
            }
        }
        return zI;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        c(view, i2, i3, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        e(view, i2, i3, i4, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        a(view, view2, i2, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.f46a);
        SparseArray sparseArray = fVar.f3907c;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            p023o.a aVar = n(childAt).f3893a;
            if (id != -1 && aVar != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                aVar.m(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableN;
        f fVar = new f(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            p023o.a aVar = ((d) childAt.getLayoutParams()).f3893a;
            if (id != -1 && aVar != null && (parcelableN = aVar.n(childAt)) != null) {
                sparseArray.append(id, parcelableN);
            }
        }
        fVar.f3907c = sparseArray;
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        return f(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
  0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zR;
        boolean zQ;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1636j == null) {
            zR = r(motionEvent, 1);
            if (!zR) {
                zQ = false;
            }
            motionEventObtain = null;
            if (this.f1636j == null) {
                zQ |= super.onTouchEvent(motionEvent);
            } else if (zR) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                t(false);
            }
            return zQ;
        }
        zR = false;
        p023o.a aVar = ((d) this.f1636j.getLayoutParams()).f3893a;
        if (aVar != null) {
            zQ = aVar.q(this.f1636j, motionEvent);
        } else {
            zQ = false;
        }
        motionEventObtain = null;
        if (this.f1636j == null) {
            zQ |= super.onTouchEvent(motionEvent);
        } else if (zR) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            t(false);
        } else {
            t(false);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ec  */
    public final void p(int i2) {
        int i3;
        Rect rect;
        int i4;
        Rect rect2;
        int i5;
        Rect rect3;
        int i6;
        ArrayList arrayList;
        boolean z2;
        int i7;
        int i8;
        int width;
        int i9;
        int i10;
        int i11;
        int height;
        int i12;
        int i13;
        int i14;
        c cVar;
        p023o.a aVar;
        int i15 = i2;
        WeakHashMap weakHashMap = N.f4222a;
        int iD = AbstractC0291z.d(this);
        ArrayList arrayList2 = this.f1629a;
        int size = arrayList2.size();
        Rect rectG = g();
        Rect rectG2 = g();
        Rect rectG3 = g();
        int i16 = 0;
        while (true) {
            c cVar2 = f1628x;
            if (i16 >= size) {
                Rect rect4 = rectG3;
                Rect rect5 = rectG2;
                Rect rect6 = rectG;
                rect6.setEmpty();
                cVar2.c(rect6);
                rect5.setEmpty();
                cVar2.c(rect5);
                rect4.setEmpty();
                cVar2.c(rect4);
                return;
            }
            View view = (View) arrayList2.get(i16);
            d dVar = (d) view.getLayoutParams();
            if (i15 != 0 || view.getVisibility() != 8) {
                int i17 = 0;
                while (i17 < i16) {
                    if (dVar.f3902l == ((View) arrayList2.get(i17))) {
                        d dVar2 = (d) view.getLayoutParams();
                        if (dVar2.f3901k != null) {
                            Rect rectG4 = g();
                            Rect rectG5 = g();
                            Rect rectG6 = g();
                            k(dVar2.f3901k, rectG4);
                            i(view, rectG5, false);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            cVar = cVar2;
                            l(iD, rectG4, rectG6, dVar2, measuredWidth, measuredHeight);
                            boolean z3 = (rectG6.left == rectG5.left && rectG6.top == rectG5.top) ? false : true;
                            h(dVar2, rectG6, measuredWidth, measuredHeight);
                            int i18 = rectG6.left - rectG5.left;
                            int i19 = rectG6.top - rectG5.top;
                            if (i18 != 0) {
                                WeakHashMap weakHashMap2 = N.f4222a;
                                view.offsetLeftAndRight(i18);
                            }
                            if (i19 != 0) {
                                WeakHashMap weakHashMap3 = N.f4222a;
                                view.offsetTopAndBottom(i19);
                            }
                            if (z3 && (aVar = dVar2.f3893a) != null) {
                                aVar.d(view, dVar2.f3901k);
                            }
                            rectG4.setEmpty();
                            cVar.c(rectG4);
                            rectG5.setEmpty();
                            cVar.c(rectG5);
                            rectG6.setEmpty();
                            cVar.c(rectG6);
                        } else {
                            cVar = cVar2;
                        }
                    } else {
                        cVar = cVar2;
                    }
                    i17++;
                    cVar2 = cVar;
                    size = size;
                    arrayList2 = arrayList2;
                    iD = iD;
                    dVar = dVar;
                    i16 = i16;
                    rectG3 = rectG3;
                    rectG2 = rectG2;
                    rectG = rectG;
                }
                d dVar3 = dVar;
                int i20 = iD;
                C0081j1 c0081j1 = cVar2;
                i3 = i16;
                Rect rect7 = rectG3;
                rect = rectG2;
                Rect rect8 = rectG;
                ArrayList arrayList3 = arrayList2;
                int i21 = size;
                i(view, rect, true);
                if (dVar3.f3897g == 0 || rect.isEmpty()) {
                    i4 = i20;
                    rect2 = rect8;
                } else {
                    i4 = i20;
                    int absoluteGravity = Gravity.getAbsoluteGravity(dVar3.f3897g, i4);
                    int i22 = absoluteGravity & 112;
                    if (i22 == 48) {
                        rect2 = rect8;
                        rect2.top = Math.max(rect2.top, rect.bottom);
                    } else if (i22 != 80) {
                        rect2 = rect8;
                    } else {
                        rect2 = rect8;
                        rect2.bottom = Math.max(rect2.bottom, getHeight() - rect.top);
                    }
                    int i23 = absoluteGravity & 7;
                    if (i23 == 3) {
                        rect2.left = Math.max(rect2.left, rect.right);
                    } else if (i23 == 5) {
                        rect2.right = Math.max(rect2.right, getWidth() - rect.left);
                    }
                }
                if (dVar3.f3898h != 0 && view.getVisibility() == 0) {
                    WeakHashMap weakHashMap4 = N.f4222a;
                    if (A.c(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                        d dVar4 = (d) view.getLayoutParams();
                        p023o.a aVar2 = dVar4.f3893a;
                        Rect rectG7 = g();
                        Rect rectG8 = g();
                        rectG8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (aVar2 == null || !aVar2.a(view)) {
                            rectG7.set(rectG8);
                        } else if (!rectG8.contains(rectG7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectG7.toShortString() + " | Bounds:" + rectG8.toShortString());
                        }
                        rectG8.setEmpty();
                        c0081j1.c(rectG8);
                        if (rectG7.isEmpty()) {
                            rectG7.setEmpty();
                            c0081j1.c(rectG7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(dVar4.f3898h, i4);
                            if ((absoluteGravity2 & 48) != 48 || (i13 = (rectG7.top - ((ViewGroup.MarginLayoutParams) dVar4).topMargin) - dVar4.f3900j) >= (i14 = rect2.top)) {
                                z2 = false;
                            } else {
                                v(view, i14 - i13);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectG7.bottom) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin) + dVar4.f3900j) < (i12 = rect2.bottom)) {
                                v(view, height - i12);
                                z2 = true;
                            }
                            if (z2) {
                                i7 = 0;
                            } else {
                                i7 = 0;
                                v(view, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i10 = (rectG7.left - ((ViewGroup.MarginLayoutParams) dVar4).leftMargin) - dVar4.f3899i) >= (i11 = rect2.left)) {
                                i8 = i7;
                            } else {
                                u(view, i11 - i10);
                                i8 = 1;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectG7.right) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin) + dVar4.f3899i) < (i9 = rect2.right)) {
                                u(view, width - i9);
                                i8 = 1;
                            }
                            if (i8 == 0) {
                                u(view, i7);
                            }
                            rectG7.setEmpty();
                            c0081j1.c(rectG7);
                        }
                    }
                }
                i5 = i2;
                if (i5 != 2) {
                    rect3 = rect7;
                    rect3.set(((d) view.getLayoutParams()).f3905o);
                    if (rect3.equals(rect)) {
                        i6 = i21;
                        arrayList = arrayList3;
                    } else {
                        ((d) view.getLayoutParams()).f3905o.set(rect);
                    }
                } else {
                    rect3 = rect7;
                }
                int i24 = i3 + 1;
                i6 = i21;
                while (true) {
                    arrayList = arrayList3;
                    if (i24 >= i6) {
                        break;
                    }
                    View view2 = (View) arrayList.get(i24);
                    p023o.a aVar3 = ((d) view2.getLayoutParams()).f3893a;
                    if (aVar3 != null) {
                        aVar3.b(view2);
                    }
                    i24++;
                    arrayList3 = arrayList;
                }
            } else {
                i5 = i15;
                i4 = iD;
                i3 = i16;
                rect3 = rectG3;
                rect = rectG2;
                rect2 = rectG;
                arrayList = arrayList2;
                i6 = size;
            }
            size = i6;
            i16 = i3 + 1;
            rectG2 = rect;
            i15 = i5;
            rectG3 = rect3;
            arrayList2 = arrayList;
            rectG = rect2;
            iD = i4;
        }
    }

    public final void q(View view, int i2) {
        int i3;
        d dVar = (d) view.getLayoutParams();
        View view2 = dVar.f3901k;
        if (view2 == null && dVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        c cVar = f1628x;
        if (view2 != null) {
            Rect rectG = g();
            Rect rectG2 = g();
            try {
                k(view2, rectG);
                d dVar2 = (d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                l(i2, rectG, rectG2, dVar2, measuredWidth, measuredHeight);
                h(dVar2, rectG2, measuredWidth, measuredHeight);
                view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                return;
            } finally {
                rectG.setEmpty();
                cVar.c(rectG);
                rectG2.setEmpty();
                cVar.c(rectG2);
            }
        }
        int i4 = dVar.f3896e;
        if (i4 < 0) {
            d dVar3 = (d) view.getLayoutParams();
            Rect rectG3 = g();
            rectG3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar3).bottomMargin);
            if (this.f1640n != null) {
                WeakHashMap weakHashMap = N.f4222a;
                if (AbstractC0290y.b(this) && !AbstractC0290y.b(view)) {
                    rectG3.left = this.f1640n.b() + rectG3.left;
                    rectG3.top = this.f1640n.d() + rectG3.top;
                    rectG3.right -= this.f1640n.c();
                    rectG3.bottom -= this.f1640n.a();
                }
            }
            Rect rectG4 = g();
            int i5 = dVar3.f3894c;
            if ((i5 & 7) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            AbstractC0276j.b(i5, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG3, rectG4, i2);
            view.layout(rectG4.left, rectG4.top, rectG4.right, rectG4.bottom);
            rectG3.setEmpty();
            cVar.c(rectG3);
            rectG4.setEmpty();
            cVar.c(rectG4);
            return;
        }
        d dVar4 = (d) view.getLayoutParams();
        int i6 = dVar4.f3894c;
        if (i6 == 0) {
            i6 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, i2);
        int i7 = absoluteGravity & 7;
        int i8 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i2 == 1) {
            i4 = width - i4;
        }
        int iM = m(i4) - measuredWidth2;
        if (i7 == 1) {
            iM += measuredWidth2 / 2;
        } else if (i7 == 5) {
            iM += measuredWidth2;
        }
        if (i8 != 16) {
            i3 = i8 != 80 ? 0 : measuredHeight2;
        } else {
            i3 = measuredHeight2 / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, Math.min(i3, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    public final boolean r(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f1630c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i3) : i3));
        }
        C0015p c0015p = f1627w;
        if (c0015p != null) {
            Collections.sort(arrayList, c0015p);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zF = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            p023o.a aVar = ((d) view.getLayoutParams()).f3893a;
            if (zF && actionMasked != 0) {
                if (aVar != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i2 == 0) {
                        aVar.f(this, view, motionEventObtain);
                    } else if (i2 == 1) {
                        aVar.q(view, motionEventObtain);
                    }
                }
            } else if (!zF && aVar != null) {
                if (i2 == 0) {
                    zF = aVar.f(this, view, motionEvent);
                } else if (i2 == 1) {
                    zF = aVar.q(view, motionEvent);
                }
                if (zF) {
                    this.f1636j = view;
                }
            }
        }
        arrayList.clear();
        return zF;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        p023o.a aVar = ((d) view.getLayoutParams()).f3893a;
        if (aVar != null) {
            aVar.l(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (!z2 || this.f1633g) {
            return;
        }
        t(false);
        this.f1633g = true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x007e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    /* JADX WARN: Code duplicated, block: B:39:0x0091  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:40:0x0095
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void s() {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.s():void");
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        w();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1643q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1642p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1642p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1642p.setState(getDrawableState());
                }
                Drawable drawable3 = this.f1642p;
                WeakHashMap weakHashMap = N.f4222a;
                s.c.b(drawable3, AbstractC0291z.d(this));
                this.f1642p.setVisible(getVisibility() == 0, false);
                this.f1642p.setCallback(this);
            }
            WeakHashMap weakHashMap2 = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? androidx.core.content.b.b(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.f1642p;
        if (drawable == null || drawable.isVisible() == z2) {
            return;
        }
        this.f1642p.setVisible(z2, false);
    }

    public final void t(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            p023o.a aVar = ((d) childAt.getLayoutParams()).f3893a;
            if (aVar != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    aVar.f(this, childAt, motionEventObtain);
                } else {
                    aVar.q(childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((d) getChildAt(i3).getLayoutParams()).getClass();
        }
        this.f1636j = null;
        this.f1633g = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1642p;
    }

    public final void w() {
        WeakHashMap weakHashMap = N.f4222a;
        if (!AbstractC0290y.b(this)) {
            D.u(this, null);
            return;
        }
        if (this.f1644r == null) {
            this.f1644r = new A.e(this, 22);
        }
        D.u(this, this.f1644r);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof d) {
            return new d((d) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }
}
