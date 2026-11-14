package p017k0;

import Y.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import p014j.AbstractC0262x0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends AbstractC0262x0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f3784p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f3785q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f3786r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3787s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f3788t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3789u;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3785q = new Rect();
        this.f3786r = new Rect();
        this.f3787s = 119;
        this.f3788t = true;
        this.f3789u = false;
        int[] iArr = a.f1371g;
        i.a(context, attributeSet, 0, 0);
        i.b(context, attributeSet, iArr, 0, 0, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f3787s = typedArrayObtainStyledAttributes.getInt(1, this.f3787s);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f3788t = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f3784p;
        if (drawable != null) {
            if (this.f3789u) {
                this.f3789u = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z2 = this.f3788t;
                Rect rect = this.f3785q;
                if (z2) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i2 = this.f3787s;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f3786r;
                Gravity.apply(i2, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f3784p;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3784p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f3784p.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f3784p;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f3787s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3784p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f3789u = z2 | this.f3789u;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f3789u = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f3784p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f3784p);
            }
            this.f3784p = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f3787s == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i2) {
        if (this.f3787s != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f3787s = i2;
            if (i2 == 119 && this.f3784p != null) {
                this.f3784p.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3784p;
    }
}
