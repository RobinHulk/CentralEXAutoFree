package p027q0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p017k0.i;
import p034y.AbstractC0290y;
import p034y.B;
import p034y.D;
import p034y.N;
import s.b;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends FrameLayout {
    public static final c f = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4036a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f4037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorStateList f4038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f4039e;

    public d(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, Y.a.f1383s);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap weakHashMap = N.f4222a;
            D.s(this, dimensionPixelSize);
        }
        this.f4036a = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(AbstractC0201a.y(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(i.e(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f4037c = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f);
        setFocusable(true);
        if (getBackground() == null) {
            float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(AbstractC0201a.F(AbstractC0201a.v(this, R.attr.colorSurface), AbstractC0201a.v(this, R.attr.colorOnSurface), getBackgroundOverlayColorAlpha()));
            ColorStateList colorStateList = this.f4038d;
            if (colorStateList != null) {
                b.h(gradientDrawable, colorStateList);
            }
            WeakHashMap weakHashMap2 = N.f4222a;
            AbstractC0290y.q(this, gradientDrawable);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f4037c;
    }

    public int getAnimationMode() {
        return this.f4036a;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = N.f4222a;
        B.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    public void setAnimationMode(int i2) {
        this.f4036a = i2;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f4038d != null) {
            drawable = drawable.mutate();
            b.h(drawable, this.f4038d);
            b.i(drawable, this.f4039e);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f4038d = colorStateList;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            b.h(drawableMutate, colorStateList);
            b.i(drawableMutate, this.f4039e);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f4039e = mode;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            b.i(drawableMutate, mode);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    public void setOnAttachStateChangeListener(a aVar) {
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f);
        super.setOnClickListener(onClickListener);
    }

    public void setOnLayoutChangeListener(b bVar) {
    }
}
