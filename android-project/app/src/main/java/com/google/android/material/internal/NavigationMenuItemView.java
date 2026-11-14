package com.google.android.material.internal;

import B.r;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.material.datepicker.h;
import java.util.WeakHashMap;
import p012i.n;
import p012i.z;
import p014j.C0260w0;
import p014j.r1;
import p017k0.e;
import p026q.i;
import p034y.AbstractC0290y;
import p034y.N;
import s.b;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends e implements z {

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final int[] f2809F = {R.attr.state_checked};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public n f2810A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ColorStateList f2811B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f2812C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public Drawable f2813D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final h f2814E;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2815v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2816w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2817x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final CheckedTextView f2818y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public FrameLayout f2819z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h hVar = new h(this, 2);
        this.f2814E = hVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.ex.auto.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.ex.auto.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.ex.auto.R.id.design_menu_item_text);
        this.f2818y = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        N.i(checkedTextView, hVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f2819z == null) {
                this.f2819z = (FrameLayout) ((ViewStub) findViewById(com.ex.auto.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f2819z.removeAllViews();
            this.f2819z.addView(view);
        }
    }

    @Override // p012i.z
    public final void e(n nVar) {
        StateListDrawable stateListDrawable;
        this.f2810A = nVar;
        int i2 = nVar.f3368a;
        if (i2 > 0) {
            setId(i2);
        }
        setVisibility(nVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.ex.auto.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f2809F, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.q(this, stateListDrawable);
        }
        setCheckable(nVar.isCheckable());
        setChecked(nVar.isChecked());
        setEnabled(nVar.isEnabled());
        setTitle(nVar.f3371e);
        setIcon(nVar.getIcon());
        setActionView(nVar.getActionView());
        setContentDescription(nVar.f3382q);
        r1.a(this, nVar.f3383r);
        n nVar2 = this.f2810A;
        CharSequence charSequence = nVar2.f3371e;
        CheckedTextView checkedTextView = this.f2818y;
        if (charSequence == null && nVar2.getIcon() == null && this.f2810A.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f2819z;
            if (frameLayout != null) {
                C0260w0 c0260w0 = (C0260w0) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c0260w0).width = -1;
                this.f2819z.setLayoutParams(c0260w0);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f2819z;
        if (frameLayout2 != null) {
            C0260w0 c0260w1 = (C0260w0) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c0260w1).width = -2;
            this.f2819z.setLayoutParams(c0260w1);
        }
    }

    @Override // p012i.z
    public n getItemData() {
        return this.f2810A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        n nVar = this.f2810A;
        if (nVar != null && nVar.isCheckable() && this.f2810A.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2809F);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z2) {
        refreshDrawableState();
        if (this.f2817x != z2) {
            this.f2817x = z2;
            this.f2814E.h(this.f2818y, 2048);
        }
    }

    public void setChecked(boolean z2) {
        refreshDrawableState();
        this.f2818y.setChecked(z2);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, 0, i2, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f2812C) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                b.h(drawable, this.f2811B);
            }
            int i2 = this.f2815v;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.f2816w) {
            if (this.f2813D == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = p026q.n.f4025a;
                Drawable drawableA = i.a(resources, com.ex.auto.R.drawable.navigation_empty_icon, theme);
                this.f2813D = drawableA;
                if (drawableA != null) {
                    int i3 = this.f2815v;
                    drawableA.setBounds(0, 0, i3, i3);
                }
            }
            drawable = this.f2813D;
        }
        r.e(this.f2818y, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.f2818y.setCompoundDrawablePadding(i2);
    }

    public void setIconSize(int i2) {
        this.f2815v = i2;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f2811B = colorStateList;
        this.f2812C = colorStateList != null;
        n nVar = this.f2810A;
        if (nVar != null) {
            setIcon(nVar.getIcon());
        }
    }

    public void setMaxLines(int i2) {
        this.f2818y.setMaxLines(i2);
    }

    public void setNeedsEmptyIcon(boolean z2) {
        this.f2816w = z2;
    }

    public void setTextAppearance(int i2) {
        this.f2818y.setTextAppearance(i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f2818y.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f2818y.setText(charSequence);
    }
}
