package p014j;

import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.ex.auto.R;
import p005d.a;
import p034y.AbstractC0291z;
import p034y.N;
import s.b;
import s.c;

/* JADX INFO: loaded from: classes.dex */
public final class G extends B {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final F f3448e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f3449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f3450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3452j;

    public G(F f) {
        super(f);
        this.f3449g = null;
        this.f3450h = null;
        this.f3451i = false;
        this.f3452j = false;
        this.f3448e = f;
    }

    @Override // p014j.B
    public final void d(AttributeSet attributeSet, int i2) {
        super.d(attributeSet, R.attr.seekBarStyle);
        F f = this.f3448e;
        Context context = f.getContext();
        int[] iArr = a.f2910g;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, R.attr.seekBarStyle);
        N.h(f, f.getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, R.attr.seekBarStyle);
        Drawable drawableL = c0003dV.l(0);
        if (drawableL != null) {
            f.setThumb(drawableL);
        }
        Drawable drawableK = c0003dV.k(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = drawableK;
        if (drawableK != null) {
            drawableK.setCallback(f);
            c.b(drawableK, AbstractC0291z.d(f));
            if (drawableK.isStateful()) {
                drawableK.setState(f.getDrawableState());
            }
            h();
        }
        f.invalidate();
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        if (typedArray.hasValue(3)) {
            this.f3450h = AbstractC0241m0.c(typedArray.getInt(3, -1), this.f3450h);
            this.f3452j = true;
        }
        if (typedArray.hasValue(2)) {
            this.f3449g = c0003dV.j(2);
            this.f3451i = true;
        }
        c0003dV.w();
        h();
    }

    public final void h() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f3451i || this.f3452j) {
                Drawable drawableMutate = drawable.mutate();
                this.f = drawableMutate;
                if (this.f3451i) {
                    b.h(drawableMutate, this.f3449g);
                }
                if (this.f3452j) {
                    b.i(this.f, this.f3450h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.f3448e.getDrawableState());
                }
            }
        }
    }

    public final void i(Canvas canvas) {
        if (this.f != null) {
            F f = this.f3448e;
            int max = f.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i3 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i2, -i3, i2, i3);
                float width = ((f.getWidth() - f.getPaddingLeft()) - f.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(f.getPaddingLeft(), f.getHeight() / 2);
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
