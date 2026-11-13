package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p012i.A;
import p012i.l;
import p014j.C0216a;
import p014j.C0226f;
import p014j.C0234j;
import p014j.u1;
import p034y.AbstractC0290y;
import p034y.N;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0216a f1473a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionMenuView f1474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0234j f1475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1476e;
    public V f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f1479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f1481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f1482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f1483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f1484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1486p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1487q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f1488r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1489s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f1490t;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.f1473a = new C0216a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p005d.a.f2908d, R.attr.actionModeStyle, 0);
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : AbstractC0201a.A(context, resourceId);
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.q(this, drawable);
        this.f1487q = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f1488r = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f1476e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f1490t = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, i2 - view.getMeasuredWidth());
    }

    public static int g(View view, int i2, int i3, int i4, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = ((i4 - measuredHeight) / 2) + i3;
        if (z2) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }

    public final void c(p011h.a aVar) {
        View view = this.f1481k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f1490t, (ViewGroup) this, false);
            this.f1481k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f1481k);
        }
        View viewFindViewById = this.f1481k.findViewById(R.id.action_mode_close_button);
        this.f1482l = viewFindViewById;
        viewFindViewById.setOnClickListener(new j(aVar, 3));
        l lVarD = aVar.d();
        C0234j c0234j = this.f1475d;
        if (c0234j != null) {
            c0234j.f();
            C0226f c0226f = c0234j.f3626t;
            if (c0226f != null && c0226f.b()) {
                c0226f.f3407i.dismiss();
            }
        }
        C0234j c0234j2 = new C0234j(getContext());
        this.f1475d = c0234j2;
        c0234j2.f3618l = true;
        c0234j2.f3619m = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        lVarD.b(this.f1475d, this.b);
        C0234j c0234j3 = this.f1475d;
        A a2 = c0234j3.f3614h;
        if (a2 == null) {
            A a3 = (A) c0234j3.f3611d.inflate(c0234j3.f, (ViewGroup) this, false);
            c0234j3.f3614h = a3;
            a3.c(c0234j3.f3610c);
            c0234j3.i();
        }
        A a4 = c0234j3.f3614h;
        if (a2 != a4) {
            ((ActionMenuView) a4).setPresenter(c0234j3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) a4;
        this.f1474c = actionMenuView;
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.q(actionMenuView, null);
        addView(this.f1474c, layoutParams);
    }

    public final void d() {
        if (this.f1484n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1484n = linearLayout;
            this.f1485o = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f1486p = (TextView) this.f1484n.findViewById(R.id.action_bar_subtitle);
            int i2 = this.f1487q;
            if (i2 != 0) {
                this.f1485o.setTextAppearance(getContext(), i2);
            }
            int i3 = this.f1488r;
            if (i3 != 0) {
                this.f1486p.setTextAppearance(getContext(), i3);
            }
        }
        this.f1485o.setText(this.f1479i);
        this.f1486p.setText(this.f1480j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f1479i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f1480j);
        this.f1486p.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f1484n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f1484n.getParent() == null) {
            addView(this.f1484n);
        }
    }

    public final void e() {
        removeAllViews();
        this.f1483m = null;
        this.f1474c = null;
        this.f1475d = null;
        View view = this.f1482l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f != null ? this.f1473a.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1476e;
    }

    public CharSequence getSubtitle() {
        return this.f1480j;
    }

    public CharSequence getTitle() {
        return this.f1479i;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            V v2 = this.f;
            if (v2 != null) {
                v2.b();
            }
            super.setVisibility(i2);
        }
    }

    public final V i(int i2, long j2) {
        V v2 = this.f;
        if (v2 != null) {
            v2.b();
        }
        C0216a c0216a = this.f1473a;
        if (i2 != 0) {
            V vA = N.a(this);
            vA.a(0.0f);
            vA.c(j2);
            c0216a.f3521c.f = vA;
            c0216a.b = i2;
            vA.d(c0216a);
            return vA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        V vA2 = N.a(this);
        vA2.a(1.0f);
        vA2.c(j2);
        c0216a.f3521c.f = vA2;
        c0216a.b = i2;
        vA2.d(c0216a);
        return vA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i2;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, p005d.a.f2906a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        C0234j c0234j = this.f1475d;
        if (c0234j != null) {
            Configuration configuration2 = c0234j.b.getResources().getConfiguration();
            int i3 = configuration2.screenWidthDp;
            int i4 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i3 > 600 || ((i3 > 960 && i4 > 720) || (i3 > 720 && i4 > 960))) {
                i2 = 5;
            } else if (i3 >= 500 || ((i3 > 640 && i4 > 480) || (i3 > 480 && i4 > 640))) {
                i2 = 4;
            } else {
                i2 = i3 >= 360 ? 3 : 2;
            }
            c0234j.f3622p = i2;
            l lVar = c0234j.f3610c;
            if (lVar != null) {
                lVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0234j c0234j = this.f1475d;
        if (c0234j != null) {
            c0234j.f();
            C0226f c0226f = this.f1475d.f3626t;
            if (c0226f == null || !c0226f.b()) {
                return;
            }
            c0226f.f3407i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1478h = false;
        }
        if (!this.f1478h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1478h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1478h = false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean zA = u1.a(this);
        int paddingRight = zA ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1481k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1481k.getLayoutParams();
            int i6 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i8 = zA ? paddingRight - i6 : paddingRight + i6;
            int iG = g(this.f1481k, i8, paddingTop, paddingTop2, zA) + i8;
            paddingRight = zA ? iG - i7 : iG + i7;
        }
        LinearLayout linearLayout = this.f1484n;
        if (linearLayout != null && this.f1483m == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(this.f1484n, paddingRight, paddingTop, paddingTop2, zA);
        }
        View view2 = this.f1483m;
        if (view2 != null) {
            g(view2, paddingRight, paddingTop, paddingTop2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1474c;
        if (actionMenuView != null) {
            g(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zA);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i3) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.f1476e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f1481k;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1481k.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1474c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f1474c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f1484n;
        if (linearLayout != null && this.f1483m == null) {
            if (this.f1489s) {
                this.f1484n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f1484n.getMeasuredWidth();
                boolean z2 = measuredWidth <= paddingLeft;
                if (z2) {
                    paddingLeft -= measuredWidth;
                }
                this.f1484n.setVisibility(z2 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f1483m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i4 = layoutParams.width;
            int i5 = i4 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i4 >= 0) {
                paddingLeft = Math.min(i4, paddingLeft);
            }
            int i6 = layoutParams.height;
            int i7 = i6 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i6 >= 0) {
                iMin = Math.min(i6, iMin);
            }
            this.f1483m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i5), View.MeasureSpec.makeMeasureSpec(iMin, i7));
        }
        if (this.f1476e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            int measuredHeight = getChildAt(i9).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i8) {
                i8 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i8);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1477g = false;
        }
        if (!this.f1477g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1477g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1477g = false;
        }
        return true;
    }

    public void setContentHeight(int i2) {
        this.f1476e = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1483m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1483m = view;
        if (view != null && (linearLayout = this.f1484n) != null) {
            removeView(linearLayout);
            this.f1484n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1480j = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1479i = charSequence;
        d();
        N.j(this, charSequence);
    }

    public void setTitleOptional(boolean z2) {
        if (z2 != this.f1489s) {
            requestLayout();
        }
        this.f1489s = z2;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
