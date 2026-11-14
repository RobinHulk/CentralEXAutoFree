package androidx.core.widget;

import A.b;
import B.f;
import B.j;
import B.k;
import B.l;
import B.n;
import M.J;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.sun.mail.imap.IMAPStore;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p034y.AbstractC0290y;
import p034y.C0280n;
import p034y.D;
import p034y.InterfaceC0282p;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0282p {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final float f1659A = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final j f1660B = new j(0);

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f1661C = {R.attr.fillViewport};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f1662a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f1663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OverScroller f1664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EdgeEffect f1665e;
    public final EdgeEffect f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1666g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1667h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1668i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1669j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1670k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f1671l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1672m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1673n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1674o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1675p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1676q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1677r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int[] f1678s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int[] f1679t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1680u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1681v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public n f1682w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final J f1683x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final C0280n f1684y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f1685z;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.nestedScrollViewStyle);
        this.f1663c = new Rect();
        this.f1667h = true;
        this.f1668i = false;
        this.f1669j = null;
        this.f1670k = false;
        this.f1673n = true;
        this.f1677r = -1;
        this.f1678s = new int[2];
        this.f1679t = new int[2];
        int i2 = Build.VERSION.SDK_INT;
        this.f1665e = i2 >= 31 ? f.a(context, attributeSet) : new EdgeEffect(context);
        this.f = i2 >= 31 ? f.a(context, attributeSet) : new EdgeEffect(context);
        this.f1662a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f1664d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1674o = viewConfiguration.getScaledTouchSlop();
        this.f1675p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1676q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1661C, com.ex.auto.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f1683x = new J();
        this.f1684y = new C0280n(this);
        setNestedScrollingEnabled(true);
        N.i(this, f1660B);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f1685z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f1685z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f1685z;
    }

    public static boolean m(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m((View) parent, nestedScrollView);
    }

    @Override // p034y.InterfaceC0281o
    public final void a(View view, View view2, int i2, int i3) {
        J j2 = this.f1683x;
        if (i3 == 1) {
            j2.b = i2;
        } else {
            j2.f148a = i2;
        }
        this.f1684y.g(2, i3);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // p034y.InterfaceC0281o
    public final void b(View view, int i2) {
        J j2 = this.f1683x;
        if (i2 == 1) {
            j2.b = 0;
        } else {
            j2.f148a = 0;
        }
        v(i2);
    }

    @Override // p034y.InterfaceC0281o
    public final void c(View view, int i2, int i3, int[] iArr, int i4) {
        this.f1684y.c(i2, i3, iArr, null, i4);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007c  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00dc  */
    @Override // android.view.View
    public final void computeScroll() {
        int iRound;
        int[] iArr;
        int i2;
        int scrollRange;
        int overScrollMode;
        OverScroller overScroller = this.f1664d;
        if (overScroller.isFinished()) {
            return;
        }
        overScroller.computeScrollOffset();
        int currY = overScroller.getCurrY();
        int i3 = currY - this.f1681v;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f;
        EdgeEffect edgeEffect2 = this.f1665e;
        if (i3 <= 0 || b.x(edgeEffect2) == 0.0f) {
            if (i3 < 0 && b.x(edgeEffect) != 0.0f) {
                float f = height;
                iRound = Math.round(b.Q(edgeEffect, (i3 * 4.0f) / f, 0.5f) * (f / 4.0f));
                if (iRound != i3) {
                    edgeEffect.finish();
                }
            }
            this.f1681v = currY;
            iArr = this.f1679t;
            iArr[1] = 0;
            this.f1684y.c(0, i3, iArr, null, 1);
            i2 = i3 - iArr[1];
            scrollRange = getScrollRange();
            if (i2 != 0) {
                int scrollY = getScrollY();
                q(i2, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i4 = i2 - scrollY2;
                iArr[1] = 0;
                this.f1684y.d(0, scrollY2, 0, i4, this.f1678s, 1, iArr);
                i2 = i4 - iArr[1];
            }
            if (i2 != 0) {
                overScrollMode = getOverScrollMode();
                if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i2 < 0) {
                        if (edgeEffect2.isFinished()) {
                            edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                        }
                    } else if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                }
                overScroller.abortAnimation();
                v(1);
            }
            if (!overScroller.isFinished()) {
                v(1);
            } else {
                WeakHashMap weakHashMap = N.f4222a;
                AbstractC0290y.k(this);
            }
        }
        iRound = Math.round(b.Q(edgeEffect2, ((-i3) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i3) {
            edgeEffect2.finish();
        }
        i3 -= iRound;
        this.f1681v = currY;
        iArr = this.f1679t;
        iArr[1] = 0;
        this.f1684y.c(0, i3, iArr, null, 1);
        i2 = i3 - iArr[1];
        scrollRange = getScrollRange();
        if (i2 != 0) {
            int scrollY3 = getScrollY();
            q(i2, getScrollX(), scrollY3, scrollRange);
            int scrollY4 = getScrollY() - scrollY3;
            int i5 = i2 - scrollY4;
            iArr[1] = 0;
            this.f1684y.d(0, scrollY4, 0, i5, this.f1678s, 1, iArr);
            i2 = i5 - iArr[1];
        }
        if (i2 != 0) {
            overScrollMode = getOverScrollMode();
            if (overScrollMode != 0) {
                if (i2 < 0) {
                    if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                } else if (edgeEffect.isFinished()) {
                    edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (i2 < 0) {
                if (edgeEffect2.isFinished()) {
                    edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (edgeEffect.isFinished()) {
                edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
            }
            overScroller.abortAnimation();
            v(1);
        }
        if (!overScroller.isFinished()) {
            v(1);
        } else {
            WeakHashMap weakHashMap2 = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // p034y.InterfaceC0282p
    public final void d(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        o(i5, i6, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || j(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z2) {
        return this.f1684y.a(f, f2, z2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.f1684y.b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.f1684y.c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.f1684y.d(i2, i3, i4, i5, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f1665e;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (k.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (k.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                WeakHashMap weakHashMap = N.f4222a;
                AbstractC0290y.k(this);
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (k.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (k.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            WeakHashMap weakHashMap2 = N.f4222a;
            AbstractC0290y.k(this);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // p034y.InterfaceC0281o
    public final void e(View view, int i2, int i3, int i4, int i5, int i6) {
        o(i5, i6, null);
    }

    @Override // p034y.InterfaceC0281o
    public final boolean f(View view, View view2, int i2, int i3) {
        return (i2 & 2) != 0;
    }

    public final boolean g(int i2) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !n(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            i(maxScrollAmount);
        } else {
            Rect rect = this.f1663c;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            i(h(rect));
            viewFindNextFocus.requestFocus(i2);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || n(viewFindFocus, 0, getHeight())) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        J j2 = this.f1683x;
        return j2.b | j2.f148a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public final int h(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i3 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
        int i4 = rect.bottom;
        if (i4 > i3 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i3, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        if (rect.top >= scrollY || i4 >= i3) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i3 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f1684y.f(0);
    }

    public final void i(int i2) {
        if (i2 != 0) {
            if (this.f1673n) {
                t(0, i2, false);
            } else {
                scrollBy(0, i2);
            }
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f1684y.f4260d;
    }

    public final boolean j(KeyEvent keyEvent) {
        Rect rect = this.f1663c;
        rect.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    return !keyEvent.isAltPressed() ? g(33) : l(33);
                }
                if (keyCode == 20) {
                    return !keyEvent.isAltPressed() ? g(130) : l(130);
                }
                if (keyCode != 62) {
                    return false;
                }
                int i2 = keyEvent.isShiftPressed() ? 33 : 130;
                boolean z2 = i2 == 130;
                int height = getHeight();
                if (z2) {
                    rect.top = getScrollY() + height;
                    int childCount = getChildCount();
                    if (childCount > 0) {
                        View childAt2 = getChildAt(childCount - 1);
                        int paddingBottom = getPaddingBottom() + childAt2.getBottom() + ((FrameLayout.LayoutParams) childAt2.getLayoutParams()).bottomMargin;
                        if (rect.top + height > paddingBottom) {
                            rect.top = paddingBottom - height;
                        }
                    }
                } else {
                    int scrollY = getScrollY() - height;
                    rect.top = scrollY;
                    if (scrollY < 0) {
                        rect.top = 0;
                    }
                }
                int i3 = rect.top;
                int i4 = height + i3;
                rect.bottom = i4;
                r(i2, i3, i4);
                return false;
            }
        }
        if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
        return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
    }

    public final void k(int i2) {
        if (getChildCount() > 0) {
            this.f1664d.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.f1684y.g(2, 1);
            this.f1681v = getScrollY();
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.k(this);
        }
    }

    public final boolean l(int i2) {
        int childCount;
        boolean z2 = i2 == 130;
        int height = getHeight();
        Rect rect = this.f1663c;
        rect.top = 0;
        rect.bottom = height;
        if (z2 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return r(i2, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(View view, int i2, int i3) {
        Rect rect = this.f1663c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i2 >= getScrollY() && rect.top - i2 <= getScrollY() + i3;
    }

    public final void o(int i2, int i3, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1684y.d(0, scrollY2, 0, i2 - scrollY2, null, i3, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1668i = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        boolean z2;
        int i2 = 0;
        if (motionEvent.getAction() == 8 && !this.f1670k) {
            if (AbstractC0201a.E(motionEvent, 2)) {
                axisValue = motionEvent.getAxisValue(9);
            } else {
                axisValue = AbstractC0201a.E(motionEvent, 4194304) ? motionEvent.getAxisValue(26) : 0.0f;
            }
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i3 = scrollY - verticalScrollFactorCompat;
                if (i3 < 0) {
                    int overScrollMode = getOverScrollMode();
                    if ((overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !AbstractC0201a.E(motionEvent, 8194)) {
                        float height = (-i3) / getHeight();
                        EdgeEffect edgeEffect = this.f1665e;
                        b.Q(edgeEffect, height, 0.5f);
                        edgeEffect.onRelease();
                        invalidate();
                        z2 = 1;
                    } else {
                        z2 = 0;
                    }
                } else if (i3 > scrollRange) {
                    int overScrollMode2 = getOverScrollMode();
                    if ((overScrollMode2 == 0 || (overScrollMode2 == 1 && getScrollRange() > 0)) && !AbstractC0201a.E(motionEvent, 8194)) {
                        float height2 = (i3 - scrollRange) / getHeight();
                        EdgeEffect edgeEffect2 = this.f;
                        b.Q(edgeEffect2, height2, 0.5f);
                        edgeEffect2.onRelease();
                        invalidate();
                        i2 = 1;
                    }
                    z2 = i2;
                    i2 = scrollRange;
                } else {
                    z2 = 0;
                    i2 = i3;
                }
                if (i2 == scrollY) {
                    return z2;
                }
                super.scrollTo(getScrollX(), i2);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x0119  */
    /* JADX WARN: Code duplicated, block: B:70:0x012d  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        OverScroller overScroller = this.f1664d;
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action == 2 && this.f1670k) {
            return true;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            int y2 = (int) motionEvent.getY();
            int x2 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 < childAt.getTop() - scrollY || y2 >= childAt.getBottom() - scrollY || x2 < childAt.getLeft() || x2 >= childAt.getRight()) {
                    if (!u(motionEvent) && overScroller.isFinished()) {
                        z2 = false;
                    }
                    this.f1670k = z2;
                    velocityTracker = this.f1671l;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.f1671l = null;
                    }
                } else {
                    this.f1666g = y2;
                    this.f1677r = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker3 = this.f1671l;
                    if (velocityTracker3 == null) {
                        this.f1671l = VelocityTracker.obtain();
                    } else {
                        velocityTracker3.clear();
                    }
                    this.f1671l.addMovement(motionEvent);
                    overScroller.computeScrollOffset();
                    if (!u(motionEvent) && overScroller.isFinished()) {
                        z2 = false;
                    }
                    this.f1670k = z2;
                    this.f1684y.g(2, 0);
                }
            } else {
                if (!u(motionEvent)) {
                    z2 = false;
                }
                this.f1670k = z2;
                velocityTracker = this.f1671l;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f1671l = null;
                }
            }
        } else if (i2 == 1) {
            this.f1670k = false;
            this.f1677r = -1;
            velocityTracker2 = this.f1671l;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f1671l = null;
            }
            if (this.f1664d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap weakHashMap = N.f4222a;
                AbstractC0290y.k(this);
            }
            v(0);
        } else if (i2 == 2) {
            int i3 = this.f1677r;
            if (i3 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i3);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i3 + " in onInterceptTouchEvent");
                } else {
                    int y3 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y3 - this.f1666g) > this.f1674o && (getNestedScrollAxes() & 2) == 0) {
                        this.f1670k = true;
                        this.f1666g = y3;
                        if (this.f1671l == null) {
                            this.f1671l = VelocityTracker.obtain();
                        }
                        this.f1671l.addMovement(motionEvent);
                        this.f1680u = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i2 == 3) {
            this.f1670k = false;
            this.f1677r = -1;
            velocityTracker2 = this.f1671l;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f1671l = null;
            }
            if (this.f1664d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap weakHashMap2 = N.f4222a;
                AbstractC0290y.k(this);
            }
            v(0);
        } else if (i2 == 6) {
            p(motionEvent);
        }
        return this.f1670k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredHeight;
        super.onLayout(z2, i2, i3, i4, i5);
        int i6 = 0;
        this.f1667h = false;
        View view = this.f1669j;
        if (view != null && m(view, this)) {
            View view2 = this.f1669j;
            Rect rect = this.f1663c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        this.f1669j = null;
        if (!this.f1668i) {
            if (this.f1682w != null) {
                scrollTo(getScrollX(), this.f1682w.f32a);
                this.f1682w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i6 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1668i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f1672m && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z2) {
        if (z2) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        k((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return this.f1684y.b(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        this.f1684y.c(i2, i3, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        o(i5, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        a(view, view2, i2, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        super.scrollTo(i2, i3);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (viewFindNextFocus != null && n(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof n)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        n nVar = (n) parcelable;
        super.onRestoreInstanceState(nVar.getSuperState());
        this.f1682w = nVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        n nVar = new n(super.onSaveInstanceState());
        nVar.f32a = getScrollY();
        return nVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !n(viewFindFocus, 0, i5)) {
            return;
        }
        Rect rect = this.f1663c;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        i(h(rect));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        return f(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0276  */
    /* JADX WARN: Code duplicated, block: B:117:0x027e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0127  */
    /* JADX WARN: Code duplicated, block: B:56:0x013b  */
    /* JADX WARN: Code duplicated, block: B:59:0x0142  */
    /* JADX WARN: Code duplicated, block: B:60:0x0144  */
    /* JADX WARN: Code duplicated, block: B:63:0x0149  */
    /* JADX WARN: Code duplicated, block: B:65:0x0165  */
    /* JADX WARN: Code duplicated, block: B:72:0x0189  */
    /* JADX WARN: Code duplicated, block: B:78:0x019c  */
    /* JADX WARN: Code duplicated, block: B:81:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x01ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:89:0x020b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0221  */
    /* JADX WARN: Code duplicated, block: B:97:0x0224  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z2;
        int i2;
        float f;
        float fQ;
        int iRound;
        int i3;
        boolean zC;
        int[] iArr;
        int[] iArr2;
        int scrollY;
        int scrollRange;
        int overScrollMode;
        boolean z3;
        boolean z4;
        boolean z5;
        int i4;
        int i5;
        ViewParent parent2;
        OverScroller overScroller = this.f1664d;
        int i6 = this.f1674o;
        EdgeEffect edgeEffect = this.f1665e;
        EdgeEffect edgeEffect2 = this.f;
        if (this.f1671l == null) {
            this.f1671l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1680u = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f2 = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f1680u);
        C0280n c0280n = this.f1684y;
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1671l;
                velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE, this.f1676q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1677r);
                if (Math.abs(yVelocity) >= this.f1675p) {
                    if (b.x(edgeEffect) == 0.0f) {
                        if (b.x(edgeEffect2) != 0.0f) {
                            int i7 = -yVelocity;
                            if (s(edgeEffect2, i7)) {
                                edgeEffect2.onAbsorb(i7);
                            } else {
                                k(i7);
                            }
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            i2 = -yVelocity;
                            f = i2;
                            if (!c0280n.b(0.0f, f)) {
                                dispatchNestedFling(0.0f, f, true);
                                k(i2);
                            }
                        }
                    } else if (s(edgeEffect, yVelocity)) {
                        edgeEffect.onAbsorb(yVelocity);
                    } else {
                        k(-yVelocity);
                    }
                    z2 = true;
                    if (!z2) {
                        i2 = -yVelocity;
                        f = i2;
                        if (!c0280n.b(0.0f, f)) {
                            dispatchNestedFling(0.0f, f, true);
                            k(i2);
                        }
                    }
                } else if (this.f1664d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap weakHashMap = N.f4222a;
                    AbstractC0290y.k(this);
                }
                this.f1677r = -1;
                this.f1670k = false;
                VelocityTracker velocityTracker2 = this.f1671l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f1671l = null;
                }
                v(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1677r);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f1677r + " in onTouchEvent");
                } else {
                    int y2 = (int) motionEvent.getY(iFindPointerIndex);
                    int i8 = this.f1666g - y2;
                    float x2 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i8 / getHeight();
                    if (b.x(edgeEffect) != 0.0f) {
                        fQ = -b.Q(edgeEffect, -height, x2);
                        if (b.x(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                    } else if (b.x(edgeEffect2) != 0.0f) {
                        fQ = b.Q(edgeEffect2, height, 1.0f - x2);
                        if (b.x(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                    } else {
                        iRound = Math.round(f2 * getHeight());
                        if (iRound != 0) {
                            invalidate();
                        }
                        i3 = i8 - iRound;
                        if (!this.f1670k && Math.abs(i3) > i6) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f1670k = true;
                            if (i3 > 0) {
                                i3 -= i6;
                            } else {
                                i3 += i6;
                            }
                        }
                        if (this.f1670k) {
                            zC = this.f1684y.c(0, i3, this.f1679t, this.f1678s, 0);
                            iArr = this.f1679t;
                            iArr2 = this.f1678s;
                            if (zC) {
                                i3 -= iArr[1];
                                this.f1680u += iArr2[1];
                            }
                            this.f1666g = y2 - iArr2[1];
                            scrollY = getScrollY();
                            scrollRange = getScrollRange();
                            overScrollMode = getOverScrollMode();
                            if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (q(i3, 0, getScrollY(), scrollRange) || c0280n.f(0)) {
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            int scrollY2 = getScrollY() - scrollY;
                            iArr[1] = 0;
                            this.f1684y.d(0, scrollY2, 0, i3 - scrollY2, this.f1678s, 0, iArr);
                            int i9 = this.f1666g;
                            int i10 = iArr2[1];
                            this.f1666g = i9 - i10;
                            this.f1680u += i10;
                            if (z3) {
                                i4 = i3 - iArr[1];
                                i5 = scrollY + i4;
                                if (i5 < 0) {
                                    b.Q(edgeEffect, (-i4) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                    if (!edgeEffect2.isFinished()) {
                                        edgeEffect2.onRelease();
                                    }
                                } else if (i5 > scrollRange) {
                                    b.Q(edgeEffect2, i4 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                    if (!edgeEffect.isFinished()) {
                                        edgeEffect.onRelease();
                                    }
                                }
                                if (edgeEffect.isFinished() || !edgeEffect2.isFinished()) {
                                    WeakHashMap weakHashMap2 = N.f4222a;
                                    AbstractC0290y.k(this);
                                    z5 = false;
                                } else {
                                    z5 = z4;
                                }
                            } else {
                                z5 = z4;
                            }
                            if (z5) {
                                this.f1671l.clear();
                            }
                        }
                    }
                    f2 = fQ;
                    iRound = Math.round(f2 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    i3 = i8 - iRound;
                    if (!this.f1670k) {
                        parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1670k = true;
                        if (i3 > 0) {
                            i3 -= i6;
                        } else {
                            i3 += i6;
                        }
                    }
                    if (this.f1670k) {
                        zC = this.f1684y.c(0, i3, this.f1679t, this.f1678s, 0);
                        iArr = this.f1679t;
                        iArr2 = this.f1678s;
                        if (zC) {
                            i3 -= iArr[1];
                            this.f1680u += iArr2[1];
                        }
                        this.f1666g = y2 - iArr2[1];
                        scrollY = getScrollY();
                        scrollRange = getScrollRange();
                        overScrollMode = getOverScrollMode();
                        if (overScrollMode != 0) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (q(i3, 0, getScrollY(), scrollRange)) {
                            z4 = false;
                        } else {
                            z4 = false;
                        }
                        int scrollY3 = getScrollY() - scrollY;
                        iArr[1] = 0;
                        this.f1684y.d(0, scrollY3, 0, i3 - scrollY3, this.f1678s, 0, iArr);
                        int i11 = this.f1666g;
                        int i12 = iArr2[1];
                        this.f1666g = i11 - i12;
                        this.f1680u += i12;
                        if (z3) {
                            z5 = z4;
                        } else {
                            i4 = i3 - iArr[1];
                            i5 = scrollY + i4;
                            if (i5 < 0) {
                                b.Q(edgeEffect, (-i4) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!edgeEffect2.isFinished()) {
                                    edgeEffect2.onRelease();
                                }
                            } else if (i5 > scrollRange) {
                                b.Q(edgeEffect2, i4 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!edgeEffect.isFinished()) {
                                    edgeEffect.onRelease();
                                }
                            }
                            if (edgeEffect.isFinished()) {
                            }
                            WeakHashMap weakHashMap3 = N.f4222a;
                            AbstractC0290y.k(this);
                            z5 = false;
                        }
                        if (z5) {
                            this.f1671l.clear();
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1670k && getChildCount() > 0 && this.f1664d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap weakHashMap4 = N.f4222a;
                    AbstractC0290y.k(this);
                }
                this.f1677r = -1;
                this.f1670k = false;
                VelocityTracker velocityTracker3 = this.f1671l;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f1671l = null;
                }
                v(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1666g = (int) motionEvent.getY(actionIndex);
                this.f1677r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                p(motionEvent);
                this.f1666g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1677r));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1670k && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            this.f1666g = (int) motionEvent.getY();
            this.f1677r = motionEvent.getPointerId(0);
            c0280n.g(2, 0);
        }
        VelocityTracker velocityTracker4 = this.f1671l;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1677r) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f1666g = (int) motionEvent.getY(i2);
            this.f1677r = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.f1671l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i2, int i3, int i4, int i5) {
        boolean z2;
        boolean z3;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i6 = i4 + i2;
        if (i3 <= 0 && i3 >= 0) {
            z2 = false;
        } else {
            i3 = 0;
            z2 = true;
        }
        if (i6 > i5) {
            z3 = true;
        } else if (i6 < 0) {
            i5 = 0;
            z3 = true;
        } else {
            i5 = i6;
            z3 = false;
        }
        if (z3 && !this.f1684y.f(1)) {
            this.f1664d.springBack(i3, i5, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i3, i5);
        return z2 || z3;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    public final boolean r(int i2, int i3, int i4) {
        boolean z2;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z3 = i2 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z4 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = focusables.get(i6);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i3 < bottom && top < i4) {
                boolean z5 = i3 < top && bottom < i4;
                if (view == null) {
                    view = view2;
                    z4 = z5;
                } else {
                    boolean z6 = (z3 && top < view.getTop()) || (!z3 && bottom > view.getBottom());
                    if (z4) {
                        if (z5 && z6) {
                            view = view2;
                        }
                    } else if (z5) {
                        view = view2;
                        z4 = true;
                    } else if (z6) {
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i3 < scrollY || i4 > i5) {
            i(z3 ? i3 - scrollY : i4 - i5);
            z2 = true;
        } else {
            z2 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i2);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f1667h) {
            this.f1669j = view2;
        } else {
            Rect rect = this.f1663c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iH = h(rect);
        boolean z3 = iH != 0;
        if (z3) {
            if (z2) {
                scrollBy(0, iH);
            } else {
                t(0, iH, false);
            }
        }
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        VelocityTracker velocityTracker;
        if (z2 && (velocityTracker = this.f1671l) != null) {
            velocityTracker.recycle();
            this.f1671l = null;
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f1667h = true;
        super.requestLayout();
    }

    public final boolean s(EdgeEffect edgeEffect, int i2) {
        if (i2 > 0) {
            return true;
        }
        float fX = b.x(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i2) * 0.35f;
        float f = this.f1662a * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d2 = f1659A;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * dLog) * ((double) f))) < fX;
    }

    @Override // android.view.View
    public final void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i2 < 0) {
                i2 = 0;
            } else if (width + i2 > width2) {
                i2 = width2 - width;
            }
            if (height >= height2 || i3 < 0) {
                i3 = 0;
            } else if (height + i3 > height2) {
                i3 = height2 - height;
            }
            if (i2 == getScrollX() && i3 == getScrollY()) {
                return;
            }
            super.scrollTo(i2, i3);
        }
    }

    public void setFillViewport(boolean z2) {
        if (z2 != this.f1672m) {
            this.f1672m = z2;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        C0280n c0280n = this.f1684y;
        if (c0280n.f4260d) {
            WeakHashMap weakHashMap = N.f4222a;
            D.z(c0280n.f4259c);
        }
        c0280n.f4260d = z2;
    }

    public void setOnScrollChangeListener(l lVar) {
    }

    public void setSmoothScrollingEnabled(boolean z2) {
        this.f1673n = z2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i2) {
        return this.f1684y.g(i2, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        v(0);
    }

    public final void t(int i2, int i3, boolean z2) {
        OverScroller overScroller = this.f1664d;
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1664d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i3 + scrollY, Math.max(0, height - height2))) - scrollY, 250);
            if (z2) {
                this.f1684y.g(2, 1);
            } else {
                v(1);
            }
            this.f1681v = getScrollY();
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.k(this);
        } else {
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            scrollBy(i2, i3);
        }
        this.b = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean u(MotionEvent motionEvent) {
        boolean z2;
        EdgeEffect edgeEffect = this.f1665e;
        if (b.x(edgeEffect) != 0.0f) {
            b.Q(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z2 = true;
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.f;
        if (b.x(edgeEffect2) == 0.0f) {
            return z2;
        }
        b.Q(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void v(int i2) {
        this.f1684y.h(i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
