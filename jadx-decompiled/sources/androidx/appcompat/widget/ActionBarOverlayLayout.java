package androidx.appcompat.widget;

import M.J;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p011h.k;
import p012i.l;
import p012i.x;
import p014j.C0224e;
import p014j.C0234j;
import p014j.InterfaceC0222d;
import p014j.InterfaceC0233i0;
import p014j.InterfaceC0235j0;
import p014j.RunnableC0220c;
import p014j.l1;
import p014j.q1;
import p034y.AbstractC0290y;
import p034y.B;
import p034y.D;
import p034y.InterfaceC0281o;
import p034y.InterfaceC0282p;
import p034y.N;
import p034y.Y;
import p034y.Z;
import p034y.a0;
import p034y.b0;
import p034y.i0;
import p034y.j0;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0233i0, InterfaceC0281o, InterfaceC0282p {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final int[] f1491B = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final J f1492A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1493a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f1494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f1495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC0235j0 f1496e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1497g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1501k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1502l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1503m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f1504n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f1505o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f1506p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public j0 f1507q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public j0 f1508r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public j0 f1509s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public j0 f1510t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public InterfaceC0222d f1511u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public OverScroller f1512v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ViewPropertyAnimator f1513w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final p002b0.a f1514x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final RunnableC0220c f1515y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final RunnableC0220c f1516z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.f1504n = new Rect();
        this.f1505o = new Rect();
        this.f1506p = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        j0 j0Var = j0.b;
        this.f1507q = j0Var;
        this.f1508r = j0Var;
        this.f1509s = j0Var;
        this.f1510t = j0Var;
        this.f1514x = new p002b0.a(this, 1);
        this.f1515y = new RunnableC0220c(this, 0);
        this.f1516z = new RunnableC0220c(this, 1);
        i(context);
        this.f1492A = new J();
    }

    public static boolean g(View view, Rect rect, boolean z2) {
        boolean z3;
        C0224e c0224e = (C0224e) view.getLayoutParams();
        int i2 = ((ViewGroup.MarginLayoutParams) c0224e).leftMargin;
        int i3 = rect.left;
        if (i2 != i3) {
            ((ViewGroup.MarginLayoutParams) c0224e).leftMargin = i3;
            z3 = true;
        } else {
            z3 = false;
        }
        int i4 = ((ViewGroup.MarginLayoutParams) c0224e).topMargin;
        int i5 = rect.top;
        if (i4 != i5) {
            ((ViewGroup.MarginLayoutParams) c0224e).topMargin = i5;
            z3 = true;
        }
        int i6 = ((ViewGroup.MarginLayoutParams) c0224e).rightMargin;
        int i7 = rect.right;
        if (i6 != i7) {
            ((ViewGroup.MarginLayoutParams) c0224e).rightMargin = i7;
            z3 = true;
        }
        if (z2) {
            int i8 = ((ViewGroup.MarginLayoutParams) c0224e).bottomMargin;
            int i9 = rect.bottom;
            if (i8 != i9) {
                ((ViewGroup.MarginLayoutParams) c0224e).bottomMargin = i9;
                return true;
            }
        }
        return z3;
    }

    @Override // p034y.InterfaceC0281o
    public final void a(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // p034y.InterfaceC0281o
    public final void b(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p034y.InterfaceC0281o
    public final void c(View view, int i2, int i3, int[] iArr, int i4) {
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0224e;
    }

    @Override // p034y.InterfaceC0282p
    public final void d(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        e(view, i2, i3, i4, i5, i6);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f == null || this.f1497g) {
            return;
        }
        if (this.f1495d.getVisibility() == 0) {
            translationY = (int) (this.f1495d.getTranslationY() + this.f1495d.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f.setBounds(0, translationY, getWidth(), this.f.getIntrinsicHeight() + translationY);
        this.f.draw(canvas);
    }

    @Override // p034y.InterfaceC0281o
    public final void e(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    @Override // p034y.InterfaceC0281o
    public final boolean f(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0224e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0224e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1495d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        J j2 = this.f1492A;
        return j2.b | j2.f148a;
    }

    public CharSequence getTitle() {
        k();
        return ((q1) this.f1496e).f3662a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.f1515y);
        removeCallbacks(this.f1516z);
        ViewPropertyAnimator viewPropertyAnimator = this.f1513w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f1491B);
        this.f1493a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f1497g = context.getApplicationInfo().targetSdkVersion < 19;
        this.f1512v = new OverScroller(context);
    }

    public final void j(int i2) {
        k();
        if (i2 == 2) {
            ((q1) this.f1496e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i2 == 5) {
            ((q1) this.f1496e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i2 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        InterfaceC0235j0 wrapper;
        if (this.f1494c == null) {
            this.f1494c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f1495d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof InterfaceC0235j0) {
                wrapper = (InterfaceC0235j0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f1496e = wrapper;
        }
    }

    public final void l(l lVar, x xVar) {
        k();
        q1 q1Var = (q1) this.f1496e;
        C0234j c0234j = q1Var.f3672m;
        Toolbar toolbar = q1Var.f3662a;
        if (c0234j == null) {
            q1Var.f3672m = new C0234j(toolbar.getContext());
        }
        C0234j c0234j2 = q1Var.f3672m;
        c0234j2.f3612e = xVar;
        if (lVar == null && toolbar.f1594a == null) {
            return;
        }
        toolbar.f();
        l lVar2 = toolbar.f1594a.f1517p;
        if (lVar2 == lVar) {
            return;
        }
        if (lVar2 != null) {
            lVar2.r(toolbar.f1588K);
            lVar2.r(toolbar.f1589L);
        }
        if (toolbar.f1589L == null) {
            toolbar.f1589L = new l1(toolbar);
        }
        c0234j2.f3623q = true;
        if (lVar != null) {
            lVar.b(c0234j2, toolbar.f1601j);
            lVar.b(toolbar.f1589L, toolbar.f1601j);
        } else {
            c0234j2.e(toolbar.f1601j, null);
            toolbar.f1589L.e(toolbar.f1601j, null);
            c0234j2.i();
            toolbar.f1589L.i();
        }
        toolbar.f1594a.setPopupTheme(toolbar.f1602k);
        toolbar.f1594a.setPresenter(c0234j2);
        toolbar.f1588K = c0234j2;
        toolbar.u();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        j0 j0VarG = j0.g(windowInsets, this);
        boolean zG = g(this.f1495d, new Rect(j0VarG.b(), j0VarG.d(), j0VarG.c(), j0VarG.a()), false);
        WeakHashMap weakHashMap = N.f4222a;
        Rect rect = this.f1504n;
        D.b(this, j0VarG, rect);
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        i0 i0Var = j0VarG.f4257a;
        j0 j0VarI = i0Var.i(i2, i3, i4, i5);
        this.f1507q = j0VarI;
        boolean z2 = true;
        if (!this.f1508r.equals(j0VarI)) {
            this.f1508r = this.f1507q;
            zG = true;
        }
        Rect rect2 = this.f1505o;
        if (rect2.equals(rect)) {
            z2 = zG;
        } else {
            rect2.set(rect);
        }
        if (z2) {
            requestLayout();
        }
        return i0Var.a().f4257a.c().f4257a.b().f();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = N.f4222a;
        B.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0224e c0224e = (C0224e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) c0224e).leftMargin + paddingLeft;
                int i8 = ((ViewGroup.MarginLayoutParams) c0224e).topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int measuredHeight;
        b0 z2;
        k();
        measureChildWithMargins(this.f1495d, i2, 0, i3, 0);
        C0224e c0224e = (C0224e) this.f1495d.getLayoutParams();
        int iMax = Math.max(0, this.f1495d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0224e).leftMargin + ((ViewGroup.MarginLayoutParams) c0224e).rightMargin);
        int iMax2 = Math.max(0, this.f1495d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0224e).topMargin + ((ViewGroup.MarginLayoutParams) c0224e).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1495d.getMeasuredState());
        WeakHashMap weakHashMap = N.f4222a;
        boolean z3 = (AbstractC0290y.g(this) & 256) != 0;
        if (z3) {
            measuredHeight = this.f1493a;
            if (this.f1499i && this.f1495d.getTabContainer() != null) {
                measuredHeight += this.f1493a;
            }
        } else {
            measuredHeight = this.f1495d.getVisibility() != 8 ? this.f1495d.getMeasuredHeight() : 0;
        }
        Rect rect = this.f1504n;
        Rect rect2 = this.f1506p;
        rect2.set(rect);
        j0 j0Var = this.f1507q;
        this.f1509s = j0Var;
        if (this.f1498h || z3) {
            p028r.c cVarA = p028r.c.a(j0Var.b(), this.f1509s.d() + measuredHeight, this.f1509s.c(), this.f1509s.a());
            j0 j0Var2 = this.f1509s;
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30) {
                z2 = new a0(j0Var2);
            } else {
                z2 = i4 >= 29 ? new Z(j0Var2) : new Y(j0Var2);
            }
            z2.d(cVarA);
            this.f1509s = z2.b();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.f1509s = j0Var.f4257a.i(0, measuredHeight, 0, 0);
        }
        g(this.f1494c, rect2, true);
        if (!this.f1510t.equals(this.f1509s)) {
            j0 j0Var3 = this.f1509s;
            this.f1510t = j0Var3;
            ContentFrameLayout contentFrameLayout = this.f1494c;
            WindowInsets windowInsetsF = j0Var3.f();
            if (windowInsetsF != null) {
                WindowInsets windowInsetsA = B.a(contentFrameLayout, windowInsetsF);
                if (!windowInsetsA.equals(windowInsetsF)) {
                    j0.g(windowInsetsA, contentFrameLayout);
                }
            }
        }
        measureChildWithMargins(this.f1494c, i2, 0, i3, 0);
        C0224e c0224e2 = (C0224e) this.f1494c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f1494c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0224e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0224e2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f1494c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0224e2).topMargin + ((ViewGroup.MarginLayoutParams) c0224e2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1494c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z2) {
        if (!this.f1500j || !z2) {
            return false;
        }
        this.f1512v.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f1512v.getFinalY() > this.f1495d.getHeight()) {
            h();
            this.f1516z.run();
        } else {
            h();
            this.f1515y.run();
        }
        this.f1501k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        int i6 = this.f1502l + i3;
        this.f1502l = i6;
        setActionBarHideOffset(i6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        p007e.J j2;
        k kVar;
        this.f1492A.f148a = i2;
        this.f1502l = getActionBarHideOffset();
        h();
        InterfaceC0222d interfaceC0222d = this.f1511u;
        if (interfaceC0222d == null || (kVar = (j2 = (p007e.J) interfaceC0222d).f2979u) == null) {
            return;
        }
        kVar.a();
        j2.f2979u = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f1495d.getVisibility() != 0) {
            return false;
        }
        return this.f1500j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f1500j || this.f1501k) {
            return;
        }
        if (this.f1502l <= this.f1495d.getHeight()) {
            h();
            postDelayed(this.f1515y, 600L);
        } else {
            h();
            postDelayed(this.f1516z, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        k();
        int i3 = this.f1503m ^ i2;
        this.f1503m = i2;
        boolean z2 = (i2 & 4) == 0;
        boolean z3 = (i2 & 256) != 0;
        InterfaceC0222d interfaceC0222d = this.f1511u;
        if (interfaceC0222d != null) {
            p007e.J j2 = (p007e.J) interfaceC0222d;
            j2.f2975q = !z3;
            if (z2 || !z3) {
                if (j2.f2976r) {
                    j2.f2976r = false;
                    j2.r0(true);
                }
            } else if (!j2.f2976r) {
                j2.f2976r = true;
                j2.r0(true);
            }
        }
        if ((i3 & 256) == 0 || this.f1511u == null) {
            return;
        }
        WeakHashMap weakHashMap = N.f4222a;
        B.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.b = i2;
        InterfaceC0222d interfaceC0222d = this.f1511u;
        if (interfaceC0222d != null) {
            ((p007e.J) interfaceC0222d).f2974p = i2;
        }
    }

    public void setActionBarHideOffset(int i2) {
        h();
        this.f1495d.setTranslationY(-Math.max(0, Math.min(i2, this.f1495d.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0222d interfaceC0222d) {
        this.f1511u = interfaceC0222d;
        if (getWindowToken() != null) {
            ((p007e.J) this.f1511u).f2974p = this.b;
            int i2 = this.f1503m;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                WeakHashMap weakHashMap = N.f4222a;
                B.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.f1499i = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.f1500j) {
            this.f1500j = z2;
            if (z2) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i2) {
        k();
        q1 q1Var = (q1) this.f1496e;
        q1Var.f3664d = i2 != 0 ? AbstractC0201a.A(q1Var.f3662a.getContext(), i2) : null;
        q1Var.c();
    }

    public void setLogo(int i2) {
        k();
        q1 q1Var = (q1) this.f1496e;
        q1Var.f3665e = i2 != 0 ? AbstractC0201a.A(q1Var.f3662a.getContext(), i2) : null;
        q1Var.c();
    }

    public void setOverlayMode(boolean z2) {
        this.f1498h = z2;
        this.f1497g = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i2) {
    }

    @Override // p014j.InterfaceC0233i0
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((q1) this.f1496e).f3670k = callback;
    }

    @Override // p014j.InterfaceC0233i0
    public void setWindowTitle(CharSequence charSequence) {
        k();
        q1 q1Var = (q1) this.f1496e;
        if (q1Var.f3666g) {
            return;
        }
        q1Var.f3667h = charSequence;
        if ((q1Var.b & 8) != 0) {
            Toolbar toolbar = q1Var.f3662a;
            toolbar.setTitle(charSequence);
            if (q1Var.f3666g) {
                N.j(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0224e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        q1 q1Var = (q1) this.f1496e;
        q1Var.f3664d = drawable;
        q1Var.c();
    }
}
