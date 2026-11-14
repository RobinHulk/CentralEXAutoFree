package androidx.appcompat.widget;

import A.e;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import p012i.A;
import p012i.k;
import p012i.l;
import p012i.n;
import p014j.AbstractC0262x0;
import p014j.C0226f;
import p014j.C0232i;
import p014j.C0234j;
import p014j.C0238l;
import p014j.C0260w0;
import p014j.InterfaceC0236k;
import p014j.InterfaceC0240m;
import p014j.j1;
import p014j.u1;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends AbstractC0262x0 implements k, A {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l f1517p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Context f1518q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1519r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1520s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C0234j f1521t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public j1 f1522u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1523v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1524w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f1525x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f1526y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public InterfaceC0240m f1527z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f1525x = (int) (56.0f * f);
        this.f1526y = (int) (f * 4.0f);
        this.f1518q = context;
        this.f1519r = 0;
    }

    public static C0238l l() {
        C0238l c0238l = new C0238l(-2, -2);
        c0238l.f3635a = false;
        ((LinearLayout.LayoutParams) c0238l).gravity = 16;
        return c0238l;
    }

    public static C0238l m(ViewGroup.LayoutParams layoutParams) {
        C0238l c0238l;
        if (layoutParams == null) {
            return l();
        }
        if (layoutParams instanceof C0238l) {
            C0238l c0238l2 = (C0238l) layoutParams;
            c0238l = new C0238l(c0238l2);
            c0238l.f3635a = c0238l2.f3635a;
        } else {
            c0238l = new C0238l(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c0238l).gravity <= 0) {
            ((LinearLayout.LayoutParams) c0238l).gravity = 16;
        }
        return c0238l;
    }

    @Override // p012i.k
    public final boolean a(n nVar) {
        return this.f1517p.q(nVar, null, 0);
    }

    @Override // p012i.A
    public final void c(l lVar) {
        this.f1517p = lVar;
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0238l;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public Menu getMenu() {
        if (this.f1517p == null) {
            Context context = getContext();
            l lVar = new l(context);
            this.f1517p = lVar;
            lVar.f3344e = new e(this, 19);
            C0234j c0234j = new C0234j(context);
            this.f1521t = c0234j;
            c0234j.f3618l = true;
            c0234j.f3619m = true;
            c0234j.f3612e = new p025p0.e();
            this.f1517p.b(c0234j, this.f1518q);
            C0234j c0234j2 = this.f1521t;
            c0234j2.f3614h = this;
            this.f1517p = c0234j2.f3610c;
        }
        return this.f1517p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0234j c0234j = this.f1521t;
        C0232i c0232i = c0234j.f3615i;
        if (c0232i != null) {
            return c0232i.getDrawable();
        }
        if (c0234j.f3617k) {
            return c0234j.f3616j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f1519r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // p014j.AbstractC0262x0
    /* JADX INFO: renamed from: h */
    public final /* bridge */ /* synthetic */ C0260w0 generateDefaultLayoutParams() {
        return l();
    }

    @Override // p014j.AbstractC0262x0
    /* JADX INFO: renamed from: i */
    public final C0260w0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0238l(getContext(), attributeSet);
    }

    @Override // p014j.AbstractC0262x0
    /* JADX INFO: renamed from: j */
    public final /* bridge */ /* synthetic */ C0260w0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public final boolean n(int i2) {
        boolean zA = false;
        if (i2 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i2 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof InterfaceC0236k)) {
            zA = ((InterfaceC0236k) childAt).a();
        }
        return (i2 <= 0 || !(childAt2 instanceof InterfaceC0236k)) ? zA : zA | ((InterfaceC0236k) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0234j c0234j = this.f1521t;
        if (c0234j != null) {
            c0234j.i();
            if (this.f1521t.k()) {
                this.f1521t.f();
                this.f1521t.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0234j c0234j = this.f1521t;
        if (c0234j != null) {
            c0234j.f();
            C0226f c0226f = c0234j.f3626t;
            if (c0226f == null || !c0226f.b()) {
                return;
            }
            c0226f.f3407i.dismiss();
        }
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int width;
        int paddingLeft;
        if (!this.f1523v) {
            super.onLayout(z2, i2, i3, i4, i5);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i5 - i3) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i4 - i2;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean zA = u1.a(this);
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                C0238l c0238l = (C0238l) childAt.getLayoutParams();
                if (c0238l.f3635a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (n(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) c0238l).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0238l).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0238l).leftMargin) + ((LinearLayout.LayoutParams) c0238l).rightMargin;
                    n(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int iMax = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                C0238l c0238l2 = (C0238l) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0238l2.f3635a) {
                    int i16 = width2 - ((LinearLayout.LayoutParams) c0238l2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0238l2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            C0238l c0238l3 = (C0238l) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0238l3.f3635a) {
                int i19 = paddingLeft2 + ((LinearLayout.LayoutParams) c0238l3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) c0238l3).rightMargin + iMax + i19;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v36 */
    @Override // p014j.AbstractC0262x0, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        ?? r4;
        int i7;
        l lVar;
        boolean z4 = this.f1523v;
        boolean z5 = View.MeasureSpec.getMode(i2) == 1073741824;
        this.f1523v = z5;
        if (z4 != z5) {
            this.f1524w = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.f1523v && (lVar = this.f1517p) != null && size != this.f1524w) {
            this.f1524w = size;
            lVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f1523v || childCount <= 0) {
            for (int i8 = 0; i8 < childCount; i8++) {
                C0238l c0238l = (C0238l) getChildAt(i8).getLayoutParams();
                ((LinearLayout.LayoutParams) c0238l).rightMargin = 0;
                ((LinearLayout.LayoutParams) c0238l).leftMargin = 0;
            }
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i2);
        int size3 = View.MeasureSpec.getSize(i3);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingBottom, -2);
        int i9 = size2 - paddingRight;
        int i10 = this.f1525x;
        int i11 = i9 / i10;
        int i12 = i9 % i10;
        if (i11 == 0) {
            setMeasuredDimension(i9, 0);
            return;
        }
        int i13 = (i12 / i11) + i10;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i14 = 0;
        int iMax2 = 0;
        int i15 = 0;
        boolean z6 = false;
        int i16 = 0;
        long j2 = 0;
        while (true) {
            i4 = this.f1526y;
            if (i15 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i15);
            int i17 = size3;
            int i18 = i9;
            if (childAt.getVisibility() != 8) {
                boolean z7 = childAt instanceof ActionMenuItemView;
                int i19 = i14 + 1;
                if (z7) {
                    childAt.setPadding(i4, 0, i4, 0);
                }
                C0238l c0238l2 = (C0238l) childAt.getLayoutParams();
                c0238l2.f = false;
                c0238l2.f3636c = 0;
                c0238l2.b = 0;
                c0238l2.f3637d = false;
                ((LinearLayout.LayoutParams) c0238l2).leftMargin = 0;
                ((LinearLayout.LayoutParams) c0238l2).rightMargin = 0;
                c0238l2.f3638e = z7 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i20 = c0238l2.f3635a ? 1 : i11;
                C0238l c0238l3 = (C0238l) childAt.getLayoutParams();
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z7 ? (ActionMenuItemView) childAt : null;
                boolean z8 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                if (i20 <= 0 || (z8 && i20 < 2)) {
                    i7 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i20 * i13, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i7 = measuredWidth / i13;
                    if (measuredWidth % i13 != 0) {
                        i7++;
                    }
                    if (z8 && i7 < 2) {
                        i7 = 2;
                    }
                }
                c0238l3.f3637d = !c0238l3.f3635a && z8;
                c0238l3.b = i7;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i7 * i13, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i7);
                if (c0238l2.f3637d) {
                    i16++;
                }
                if (c0238l2.f3635a) {
                    z6 = true;
                }
                i11 -= i7;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i7 == 1) {
                    j2 |= (long) (1 << i15);
                }
                i14 = i19;
            }
            i15++;
            size3 = i17;
            i9 = i18;
            paddingBottom = paddingBottom;
            mode = mode;
        }
        int i21 = mode;
        int i22 = i9;
        int i23 = size3;
        boolean z9 = z6 && i14 == 2;
        boolean z10 = false;
        while (true) {
            if (i16 <= 0 || i11 <= 0) {
                z2 = z10;
                break;
            }
            int i24 = Integer.MAX_VALUE;
            int i25 = 0;
            int i26 = 0;
            long j3 = 0;
            while (i26 < childCount2) {
                C0238l c0238l4 = (C0238l) getChildAt(i26).getLayoutParams();
                boolean z11 = z10;
                if (c0238l4.f3637d) {
                    int i27 = c0238l4.b;
                    if (i27 < i24) {
                        j3 = 1 << i26;
                        i24 = i27;
                        i25 = 1;
                    } else if (i27 == i24) {
                        j3 |= 1 << i26;
                        i25++;
                    }
                }
                i26++;
                z10 = z11;
            }
            z2 = z10;
            j2 |= j3;
            if (i25 > i11) {
                break;
            }
            int i28 = i24 + 1;
            int i29 = 0;
            while (i29 < childCount2) {
                View childAt2 = getChildAt(i29);
                C0238l c0238l5 = (C0238l) childAt2.getLayoutParams();
                int i30 = iMax;
                int i31 = childMeasureSpec;
                int i32 = childCount2;
                long j4 = 1 << i29;
                if ((j3 & j4) != 0) {
                    if (z9 && c0238l5.f3638e) {
                        r4 = 1;
                        r4 = 1;
                        if (i11 == 1) {
                            childAt2.setPadding(i4 + i13, 0, i4, 0);
                        }
                    } else {
                        r4 = 1;
                    }
                    c0238l5.b += r4;
                    c0238l5.f = r4;
                    i11--;
                } else if (c0238l5.b == i28) {
                    j2 |= j4;
                }
                i29++;
                childMeasureSpec = i31;
                iMax = i30;
                childCount2 = i32;
            }
            z10 = true;
        }
        int i33 = iMax;
        int i34 = childMeasureSpec;
        int i35 = childCount2;
        boolean z12 = !z6 && i14 == 1;
        if (i11 <= 0 || j2 == 0 || (i11 >= i14 - 1 && !z12 && iMax2 <= 1)) {
            i5 = i35;
            z3 = z2;
        } else {
            float fBitCount = Long.bitCount(j2);
            if (!z12) {
                if ((j2 & 1) != 0 && !((C0238l) getChildAt(0).getLayoutParams()).f3638e) {
                    fBitCount -= 0.5f;
                }
                int i36 = i35 - 1;
                if ((j2 & ((long) (1 << i36))) != 0 && !((C0238l) getChildAt(i36).getLayoutParams()).f3638e) {
                    fBitCount -= 0.5f;
                }
            }
            int i37 = fBitCount > 0.0f ? (int) ((i11 * i13) / fBitCount) : 0;
            boolean z13 = z2;
            i5 = i35;
            for (int i38 = 0; i38 < i5; i38++) {
                if ((j2 & ((long) (1 << i38))) != 0) {
                    View childAt3 = getChildAt(i38);
                    C0238l c0238l6 = (C0238l) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0238l6.f3636c = i37;
                        c0238l6.f = true;
                        if (i38 == 0 && !c0238l6.f3638e) {
                            ((LinearLayout.LayoutParams) c0238l6).leftMargin = (-i37) / 2;
                        }
                        z13 = true;
                    } else if (c0238l6.f3635a) {
                        c0238l6.f3636c = i37;
                        c0238l6.f = true;
                        ((LinearLayout.LayoutParams) c0238l6).rightMargin = (-i37) / 2;
                        z13 = true;
                    } else {
                        if (i38 != 0) {
                            ((LinearLayout.LayoutParams) c0238l6).leftMargin = i37 / 2;
                        }
                        if (i38 != i5 - 1) {
                            ((LinearLayout.LayoutParams) c0238l6).rightMargin = i37 / 2;
                        }
                    }
                }
            }
            z3 = z13;
        }
        if (z3) {
            int i39 = 0;
            while (i39 < i5) {
                View childAt4 = getChildAt(i39);
                C0238l c0238l7 = (C0238l) childAt4.getLayoutParams();
                if (c0238l7.f) {
                    i6 = i34;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0238l7.b * i13) + c0238l7.f3636c, 1073741824), i6);
                } else {
                    i6 = i34;
                }
                i39++;
                i34 = i6;
            }
        }
        setMeasuredDimension(i22, i21 != 1073741824 ? i33 : i23);
    }

    public void setExpandedActionViewsExclusive(boolean z2) {
        this.f1521t.f3623q = z2;
    }

    public void setOnMenuItemClickListener(InterfaceC0240m interfaceC0240m) {
        this.f1527z = interfaceC0240m;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0234j c0234j = this.f1521t;
        C0232i c0232i = c0234j.f3615i;
        if (c0232i != null) {
            c0232i.setImageDrawable(drawable);
        } else {
            c0234j.f3617k = true;
            c0234j.f3616j = drawable;
        }
    }

    public void setOverflowReserved(boolean z2) {
        this.f1520s = z2;
    }

    public void setPopupTheme(int i2) {
        if (this.f1519r != i2) {
            this.f1519r = i2;
            if (i2 == 0) {
                this.f1518q = getContext();
            } else {
                this.f1518q = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setPresenter(C0234j c0234j) {
        this.f1521t = c0234j;
        c0234j.f3614h = this;
        this.f1517p = c0234j.f3610c;
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0238l(getContext(), attributeSet);
    }
}
