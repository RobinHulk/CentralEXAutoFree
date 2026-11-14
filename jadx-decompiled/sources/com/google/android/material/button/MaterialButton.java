package com.google.android.material.button;

import B.r;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p008e0.c;
import p014j.C0244o;
import p017k0.i;
import p025p0.f;
import p025p0.g;
import p025p0.k;
import p025p0.u;
import p034y.AbstractC0291z;
import p034y.N;
import s.b;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends C0244o implements Checkable, u {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f2710o = {R.attr.state_checkable};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f2711p = {R.attr.state_checked};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f2712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f2713e;
    public PorterDuff.Mode f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f2714g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f2715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2718k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2719l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2720m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2721n;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        boolean z2;
        super(a.a(context, attributeSet, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button), attributeSet, com.ex.auto.R.attr.materialButtonStyle);
        this.f2713e = new LinkedHashSet();
        this.f2719l = false;
        this.f2720m = false;
        Context context2 = getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, Y.a.f1373i, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f2718k = typedArrayD.getDimensionPixelSize(12, 0);
        int i2 = typedArrayD.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f = i.e(i2, mode);
        this.f2714g = AbstractC0201a.y(getContext(), typedArrayD, 14);
        this.f2715h = AbstractC0201a.B(getContext(), typedArrayD, 10);
        this.f2721n = typedArrayD.getInteger(11, 1);
        this.f2716i = typedArrayD.getDimensionPixelSize(13, 0);
        c cVar = new c(this, k.b(context2, attributeSet, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button).a());
        this.f2712d = cVar;
        cVar.f3139c = typedArrayD.getDimensionPixelOffset(1, 0);
        cVar.f3140d = typedArrayD.getDimensionPixelOffset(2, 0);
        cVar.f3141e = typedArrayD.getDimensionPixelOffset(3, 0);
        cVar.f = typedArrayD.getDimensionPixelOffset(4, 0);
        if (typedArrayD.hasValue(8)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(8, -1);
            cVar.f3142g = dimensionPixelSize;
            cVar.c(cVar.b.f(dimensionPixelSize));
            cVar.f3151p = true;
        }
        cVar.f3143h = typedArrayD.getDimensionPixelSize(20, 0);
        cVar.f3144i = i.e(typedArrayD.getInt(7, -1), mode);
        cVar.f3145j = AbstractC0201a.y(getContext(), typedArrayD, 6);
        cVar.f3146k = AbstractC0201a.y(getContext(), typedArrayD, 19);
        cVar.f3147l = AbstractC0201a.y(getContext(), typedArrayD, 16);
        cVar.f3152q = typedArrayD.getBoolean(5, false);
        int dimensionPixelSize2 = typedArrayD.getDimensionPixelSize(9, 0);
        WeakHashMap weakHashMap = N.f4222a;
        int iF = AbstractC0291z.f(this);
        int paddingTop = getPaddingTop();
        int iE = AbstractC0291z.e(this);
        int paddingBottom = getPaddingBottom();
        if (typedArrayD.hasValue(0)) {
            cVar.f3150o = true;
            setSupportBackgroundTintList(cVar.f3145j);
            setSupportBackgroundTintMode(cVar.f3144i);
            z2 = false;
        } else {
            g gVar = new g(cVar.b);
            gVar.f(getContext());
            b.h(gVar, cVar.f3145j);
            PorterDuff.Mode mode2 = cVar.f3144i;
            if (mode2 != null) {
                b.i(gVar, mode2);
            }
            float f = cVar.f3143h;
            ColorStateList colorStateList = cVar.f3146k;
            gVar.f3939a.f3931j = f;
            gVar.invalidateSelf();
            f fVar = gVar.f3939a;
            if (fVar.f3926d != colorStateList) {
                fVar.f3926d = colorStateList;
                gVar.onStateChange(gVar.getState());
            }
            g gVar2 = new g(cVar.b);
            gVar2.setTint(0);
            float f2 = cVar.f3143h;
            int iV = cVar.f3149n ? AbstractC0201a.v(this, com.ex.auto.R.attr.colorSurface) : 0;
            gVar2.f3939a.f3931j = f2;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(iV);
            f fVar2 = gVar2.f3939a;
            if (fVar2.f3926d != colorStateListValueOf) {
                fVar2.f3926d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
            g gVar3 = new g(cVar.b);
            cVar.f3148m = gVar3;
            b.g(gVar3, -1);
            ColorStateList colorStateList2 = cVar.f3147l;
            RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2 == null ? ColorStateList.valueOf(0) : colorStateList2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{gVar2, gVar}), cVar.f3139c, cVar.f3141e, cVar.f3140d, cVar.f), cVar.f3148m);
            cVar.f3153r = rippleDrawable;
            setInternalBackground(rippleDrawable);
            z2 = false;
            g gVarB = cVar.b(false);
            if (gVarB != null) {
                gVarB.g(dimensionPixelSize2);
            }
        }
        AbstractC0291z.k(this, iF + cVar.f3139c, paddingTop + cVar.f3141e, iE + cVar.f3140d, paddingBottom + cVar.f);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.f2718k);
        c(this.f2715h != null ? true : z2);
    }

    private String getA11yClassName() {
        return (a() ? CompoundButton.class : Button.class).getName();
    }

    public final boolean a() {
        c cVar = this.f2712d;
        return cVar != null && cVar.f3152q;
    }

    public final boolean b() {
        c cVar = this.f2712d;
        return (cVar == null || cVar.f3150o) ? false : true;
    }

    public final void c(boolean z2) {
        Drawable drawable = this.f2715h;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f2715h = drawableMutate;
            b.h(drawableMutate, this.f2714g);
            PorterDuff.Mode mode = this.f;
            if (mode != null) {
                b.i(this.f2715h, mode);
            }
            int intrinsicWidth = this.f2716i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f2715h.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f2716i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f2715h.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f2715h;
            int i2 = this.f2717j;
            drawable2.setBounds(i2, 0, intrinsicWidth + i2, intrinsicHeight);
        }
        int i3 = this.f2721n;
        boolean z3 = true;
        if (i3 != 1 && i3 != 2) {
            z3 = false;
        }
        if (z2) {
            if (z3) {
                r.e(this, this.f2715h, null, null, null);
                return;
            } else {
                r.e(this, null, null, this.f2715h, null);
                return;
            }
        }
        Drawable[] drawableArrA = r.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[2];
        if ((!z3 || drawable3 == this.f2715h) && (z3 || drawable4 == this.f2715h)) {
            return;
        }
        if (z3) {
            r.e(this, this.f2715h, null, null, null);
        } else {
            r.e(this, null, null, this.f2715h, null);
        }
    }

    public final void d() {
        if (this.f2715h == null || getLayout() == null) {
            return;
        }
        int i2 = this.f2721n;
        if (i2 == 1 || i2 == 3) {
            this.f2717j = 0;
            c(false);
            return;
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        int iMin = Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
        int intrinsicWidth = this.f2716i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f2715h.getIntrinsicWidth();
        }
        int measuredWidth = getMeasuredWidth() - iMin;
        WeakHashMap weakHashMap = N.f4222a;
        int iE = ((((measuredWidth - AbstractC0291z.e(this)) - intrinsicWidth) - this.f2718k) - AbstractC0291z.f(this)) / 2;
        if ((AbstractC0291z.d(this) == 1) != (this.f2721n == 4)) {
            iE = -iE;
        }
        if (this.f2717j != iE) {
            this.f2717j = iE;
            c(false);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.f2712d.f3142g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f2715h;
    }

    public int getIconGravity() {
        return this.f2721n;
    }

    public int getIconPadding() {
        return this.f2718k;
    }

    public int getIconSize() {
        return this.f2716i;
    }

    public ColorStateList getIconTint() {
        return this.f2714g;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f2712d.f3147l;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        if (b()) {
            return this.f2712d.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f2712d.f3146k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.f2712d.f3143h;
        }
        return 0;
    }

    @Override // p014j.C0244o
    public ColorStateList getSupportBackgroundTintList() {
        return b() ? this.f2712d.f3145j : super.getSupportBackgroundTintList();
    }

    @Override // p014j.C0244o
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return b() ? this.f2712d.f3144i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2719l;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            AbstractC0201a.Q(this, this.f2712d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2710o);
        }
        if (this.f2719l) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2711p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // p014j.C0244o, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f2719l);
    }

    @Override // p014j.C0244o, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.f2719l);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        d();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof p008e0.b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        p008e0.b bVar = (p008e0.b) parcelable;
        super.onRestoreInstanceState(bVar.f46a);
        setChecked(bVar.f3137c);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        p008e0.b bVar = new p008e0.b(super.onSaveInstanceState());
        bVar.f3137c = this.f2719l;
        return bVar;
    }

    @Override // p014j.C0244o, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        d();
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (!b()) {
            super.setBackgroundColor(i2);
            return;
        }
        c cVar = this.f2712d;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i2);
        }
    }

    @Override // p014j.C0244o, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "Do not set the background; MaterialButton manages its own background drawable.");
        c cVar = this.f2712d;
        cVar.f3150o = true;
        ColorStateList colorStateList = cVar.f3145j;
        MaterialButton materialButton = cVar.f3138a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(cVar.f3144i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // p014j.C0244o, android.view.View
    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z2) {
        if (b()) {
            this.f2712d.f3152q = z2;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (a() && isEnabled() && this.f2719l != z2) {
            this.f2719l = z2;
            refreshDrawableState();
            if (this.f2720m) {
                return;
            }
            this.f2720m = true;
            Iterator it = this.f2713e.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                throw new ClassCastException();
            }
            this.f2720m = false;
        }
    }

    public void setCornerRadius(int i2) {
        if (b()) {
            c cVar = this.f2712d;
            if (cVar.f3151p && cVar.f3142g == i2) {
                return;
            }
            cVar.f3142g = i2;
            cVar.f3151p = true;
            cVar.c(cVar.b.f(i2));
        }
    }

    public void setCornerRadiusResource(int i2) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.f2712d.b(false).g(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f2715h != drawable) {
            this.f2715h = drawable;
            c(true);
        }
    }

    public void setIconGravity(int i2) {
        if (this.f2721n != i2) {
            this.f2721n = i2;
            d();
        }
    }

    public void setIconPadding(int i2) {
        if (this.f2718k != i2) {
            this.f2718k = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(int i2) {
        setIcon(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    public void setIconSize(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f2716i != i2) {
            this.f2716i = i2;
            c(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f2714g != colorStateList) {
            this.f2714g = colorStateList;
            c(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            c(false);
        }
    }

    public void setIconTintResource(int i2) {
        setIconTint(AbstractC0201a.w(getContext(), i2));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(p008e0.a aVar) {
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        super.setPressed(z2);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f2712d;
            if (cVar.f3147l != colorStateList) {
                cVar.f3147l = colorStateList;
                MaterialButton materialButton = cVar.f3138a;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    RippleDrawable rippleDrawable = (RippleDrawable) materialButton.getBackground();
                    if (colorStateList == null) {
                        colorStateList = ColorStateList.valueOf(0);
                    }
                    rippleDrawable.setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i2) {
        if (b()) {
            setRippleColor(AbstractC0201a.w(getContext(), i2));
        }
    }

    @Override // p025p0.u
    public void setShapeAppearanceModel(k kVar) {
        if (!b()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f2712d.c(kVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z2) {
        if (b()) {
            c cVar = this.f2712d;
            cVar.f3149n = z2;
            cVar.d();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f2712d;
            if (cVar.f3146k != colorStateList) {
                cVar.f3146k = colorStateList;
                cVar.d();
            }
        }
    }

    public void setStrokeColorResource(int i2) {
        if (b()) {
            setStrokeColor(AbstractC0201a.w(getContext(), i2));
        }
    }

    public void setStrokeWidth(int i2) {
        if (b()) {
            c cVar = this.f2712d;
            if (cVar.f3143h != i2) {
                cVar.f3143h = i2;
                cVar.d();
            }
        }
    }

    public void setStrokeWidthResource(int i2) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // p014j.C0244o
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!b()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.f2712d;
        if (cVar.f3145j != colorStateList) {
            cVar.f3145j = colorStateList;
            if (cVar.b(false) != null) {
                b.h(cVar.b(false), cVar.f3145j);
            }
        }
    }

    @Override // p014j.C0244o
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!b()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.f2712d;
        if (cVar.f3144i != mode) {
            cVar.f3144i = mode;
            if (cVar.b(false) == null || cVar.f3144i == null) {
                return;
            }
            b.i(cVar.b(false), cVar.f3144i);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2719l);
    }
}
