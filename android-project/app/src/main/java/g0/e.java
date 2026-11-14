package g0;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class e extends p025p0.g implements Drawable.Callback, p017k0.g {

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static final int[] f3160F0 = {R.attr.state_enabled};
    public static final ShapeDrawable G0 = new ShapeDrawable(new OvalShape());

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public float f3161A;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public WeakReference f3162A0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ColorStateList f3163B;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public TextUtils.TruncateAt f3164B0;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public float f3165C;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f3166C0;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ColorStateList f3167D;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f3168D0;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public CharSequence f3169E;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f3170E0;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f3171F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Drawable f3172G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ColorStateList f3173H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public float f3174I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f3175J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f3176K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Drawable f3177L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public RippleDrawable f3178M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ColorStateList f3179N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f3180O;
    public SpannableStringBuilder P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f3181Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f3182R;
    public Drawable S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ColorStateList f3183T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Z.b f3184U;
    public Z.b V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public float f3185W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public float f3186X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public float f3187Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public float f3188Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f3189a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f3190b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public float f3191c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f3192d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final Context f3193e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Paint f3194f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Paint.FontMetrics f3195g0;
    public final RectF h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final PointF f3196i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final Path f3197j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final p017k0.h f3198k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f3199l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f3200m0;
    public int n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f3201o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f3202p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f3203q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f3204r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f3205s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f3206t0;
    public ColorFilter u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public PorterDuffColorFilter f3207v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ColorStateList f3208w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ColorStateList f3209x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public PorterDuff.Mode f3210x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ColorStateList f3211y;
    public int[] y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f3212z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ColorStateList f3213z0;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        this.f3161A = -1.0f;
        this.f3194f0 = new Paint(1);
        this.f3195g0 = new Paint.FontMetrics();
        this.h0 = new RectF();
        this.f3196i0 = new PointF();
        this.f3197j0 = new Path();
        this.f3206t0 = 255;
        this.f3210x0 = PorterDuff.Mode.SRC_IN;
        this.f3162A0 = new WeakReference(null);
        f(context);
        this.f3193e0 = context;
        p017k0.h hVar = new p017k0.h(this);
        this.f3198k0 = hVar;
        this.f3169E = "";
        hVar.f3790a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f3160F0;
        setState(iArr);
        if (!Arrays.equals(this.y0, iArr)) {
            this.y0 = iArr;
            if (R()) {
                t(getState(), iArr);
            }
        }
        this.f3166C0 = true;
        G0.setTint(-1);
    }

    public static void S(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean q(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean r(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A(float f) {
        if (this.f3174I != f) {
            float fN = n();
            this.f3174I = f;
            float fN2 = n();
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }

    public final void B(ColorStateList colorStateList) {
        this.f3175J = true;
        if (this.f3173H != colorStateList) {
            this.f3173H = colorStateList;
            if (Q()) {
                s.b.h(this.f3172G, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void C(boolean z2) {
        if (this.f3171F != z2) {
            boolean zQ = Q();
            this.f3171F = z2;
            boolean zQ2 = Q();
            if (zQ != zQ2) {
                if (zQ2) {
                    l(this.f3172G);
                } else {
                    S(this.f3172G);
                }
                invalidateSelf();
                s();
            }
        }
    }

    public final void D(ColorStateList colorStateList) {
        if (this.f3163B != colorStateList) {
            this.f3163B = colorStateList;
            if (this.f3170E0) {
                p025p0.f fVar = this.f3939a;
                if (fVar.f3926d != colorStateList) {
                    fVar.f3926d = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void E(float f) {
        if (this.f3165C != f) {
            this.f3165C = f;
            this.f3194f0.setStrokeWidth(f);
            if (this.f3170E0) {
                this.f3939a.f3931j = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final void F(Drawable drawable) {
        ?? r1;
        Object obj = this.f3177L;
        if (obj == null) {
            r1 = 0;
        } else if (obj instanceof s.e) {
            r1 = obj;
            r1 = 0;
        }
        if (r1 != drawable) {
            float fO = o();
            this.f3177L = drawable != null ? drawable.mutate() : null;
            ColorStateList colorStateListValueOf = this.f3167D;
            if (colorStateListValueOf == null) {
                colorStateListValueOf = ColorStateList.valueOf(0);
            }
            this.f3178M = new RippleDrawable(colorStateListValueOf, this.f3177L, G0);
            float fO2 = o();
            S(r1);
            if (R()) {
                l(this.f3177L);
            }
            invalidateSelf();
            if (fO != fO2) {
                s();
            }
        }
    }

    public final void G(float f) {
        if (this.f3191c0 != f) {
            this.f3191c0 = f;
            invalidateSelf();
            if (R()) {
                s();
            }
        }
    }

    public final void H(float f) {
        if (this.f3180O != f) {
            this.f3180O = f;
            invalidateSelf();
            if (R()) {
                s();
            }
        }
    }

    public final void I(float f) {
        if (this.f3190b0 != f) {
            this.f3190b0 = f;
            invalidateSelf();
            if (R()) {
                s();
            }
        }
    }

    public final void J(ColorStateList colorStateList) {
        if (this.f3179N != colorStateList) {
            this.f3179N = colorStateList;
            if (R()) {
                s.b.h(this.f3177L, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void K(boolean z2) {
        if (this.f3176K != z2) {
            boolean zR = R();
            this.f3176K = z2;
            boolean zR2 = R();
            if (zR != zR2) {
                if (zR2) {
                    l(this.f3177L);
                } else {
                    S(this.f3177L);
                }
                invalidateSelf();
                s();
            }
        }
    }

    public final void L(float f) {
        if (this.f3187Y != f) {
            float fN = n();
            this.f3187Y = f;
            float fN2 = n();
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }

    public final void M(float f) {
        if (this.f3186X != f) {
            float fN = n();
            this.f3186X = f;
            float fN2 = n();
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }

    public final void N(ColorStateList colorStateList) {
        if (this.f3167D != colorStateList) {
            this.f3167D = colorStateList;
            this.f3213z0 = null;
            onStateChange(getState());
        }
    }

    public final void O(p021m0.d dVar) {
        p017k0.h hVar = this.f3198k0;
        if (hVar.f != dVar) {
            hVar.f = dVar;
            if (dVar != null) {
                TextPaint textPaint = hVar.f3790a;
                dVar.a();
                dVar.d(textPaint, dVar.f3890l);
                a aVar = hVar.b;
                p021m0.c cVar = new p021m0.c(dVar, textPaint, aVar);
                Context context = this.f3193e0;
                dVar.b(context, cVar);
                p017k0.g gVar = (p017k0.g) hVar.f3793e.get();
                if (gVar != null) {
                    textPaint.drawableState = gVar.getState();
                }
                dVar.c(context, textPaint, aVar);
                hVar.f3792d = true;
            }
            p017k0.g gVar2 = (p017k0.g) hVar.f3793e.get();
            if (gVar2 != null) {
                e eVar = (e) gVar2;
                eVar.s();
                eVar.invalidateSelf();
                eVar.onStateChange(gVar2.getState());
            }
        }
    }

    public final boolean P() {
        return this.f3182R && this.S != null && this.f3204r0;
    }

    public final boolean Q() {
        return this.f3171F && this.f3172G != null;
    }

    public final boolean R() {
        return this.f3176K && this.f3177L != null;
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i2;
        RectF rectF;
        int i3;
        int i4;
        int i5;
        RectF rectF2;
        float f;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i2 = this.f3206t0) == 0) {
            return;
        }
        int iSaveLayerAlpha = i2 < 255 ? canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i2) : 0;
        boolean z2 = this.f3170E0;
        Paint paint = this.f3194f0;
        RectF rectF3 = this.h0;
        if (!z2) {
            paint.setColor(this.f3199l0);
            paint.setStyle(Paint.Style.FILL);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, p(), p(), paint);
        }
        if (!this.f3170E0) {
            paint.setColor(this.f3200m0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.u0;
            if (colorFilter == null) {
                colorFilter = this.f3207v0;
            }
            paint.setColorFilter(colorFilter);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, p(), p(), paint);
        }
        if (this.f3170E0) {
            super.draw(canvas);
        }
        if (this.f3165C > 0.0f && !this.f3170E0) {
            paint.setColor(this.f3201o0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f3170E0) {
                ColorFilter colorFilter2 = this.u0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f3207v0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f2 = bounds.left;
            float f3 = this.f3165C / 2.0f;
            rectF3.set(f2 + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
            float f4 = this.f3161A - (this.f3165C / 2.0f);
            canvas.drawRoundRect(rectF3, f4, f4, paint);
        }
        paint.setColor(this.f3202p0);
        paint.setStyle(Paint.Style.FILL);
        rectF3.set(bounds);
        if (this.f3170E0) {
            RectF rectF4 = new RectF(bounds);
            Path path = this.f3197j0;
            p025p0.f fVar = this.f3939a;
            this.f3954r.a(fVar.f3924a, fVar.f3930i, rectF4, this.f3953q, path);
            c(canvas, paint, path, this.f3939a.f3924a, d());
        } else {
            canvas.drawRoundRect(rectF3, p(), p(), paint);
        }
        if (Q()) {
            m(bounds, rectF3);
            float f5 = rectF3.left;
            float f6 = rectF3.top;
            canvas.translate(f5, f6);
            this.f3172G.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.f3172G.draw(canvas);
            canvas.translate(-f5, -f6);
        }
        if (P()) {
            m(bounds, rectF3);
            float f7 = rectF3.left;
            float f8 = rectF3.top;
            canvas.translate(f7, f8);
            this.S.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.S.draw(canvas);
            canvas.translate(-f7, -f8);
        }
        if (!this.f3166C0 || this.f3169E == null) {
            rectF = rectF3;
            i3 = iSaveLayerAlpha;
            i4 = 255;
            i5 = 0;
        } else {
            PointF pointF = this.f3196i0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f3169E;
            p017k0.h hVar = this.f3198k0;
            if (charSequence != null) {
                float fN = n() + this.f3185W + this.f3188Z;
                if (s.c.a(this) == 0) {
                    pointF.x = bounds.left + fN;
                } else {
                    pointF.x = bounds.right - fN;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = hVar.f3790a;
                Paint.FontMetrics fontMetrics = this.f3195g0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF3.setEmpty();
            if (this.f3169E != null) {
                float fN2 = n() + this.f3185W + this.f3188Z;
                float fO = o() + this.f3192d0 + this.f3189a0;
                if (s.c.a(this) == 0) {
                    rectF3.left = bounds.left + fN2;
                    rectF3.right = bounds.right - fO;
                } else {
                    rectF3.left = bounds.left + fO;
                    rectF3.right = bounds.right - fN2;
                }
                rectF3.top = bounds.top;
                rectF3.bottom = bounds.bottom;
            }
            p021m0.d dVar = hVar.f;
            TextPaint textPaint2 = hVar.f3790a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                hVar.f.c(this.f3193e0, textPaint2, hVar.b);
            }
            textPaint2.setTextAlign(align);
            String string = this.f3169E.toString();
            if (hVar.f3792d) {
                float fMeasureText = string != null ? textPaint2.measureText((CharSequence) string, 0, string.length()) : 0.0f;
                hVar.f3791c = fMeasureText;
                hVar.f3792d = false;
                f = fMeasureText;
            } else {
                f = hVar.f3791c;
            }
            boolean z3 = Math.round(f) > Math.round(rectF3.width());
            if (z3) {
                iSave = canvas.save();
                canvas.clipRect(rectF3);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.f3169E;
            if (z3 && this.f3164B0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF3.width(), this.f3164B0);
            }
            CharSequence charSequence2 = charSequenceEllipsize;
            int length = charSequence2.length();
            float f9 = pointF.x;
            float f10 = pointF.y;
            rectF = rectF3;
            i3 = iSaveLayerAlpha;
            i4 = 255;
            i5 = 0;
            canvas.drawText(charSequence2, 0, length, f9, f10, textPaint2);
            if (z3) {
                canvas.restoreToCount(iSave);
            }
        }
        if (R()) {
            rectF.setEmpty();
            if (R()) {
                float f11 = this.f3192d0 + this.f3191c0;
                if (s.c.a(this) == 0) {
                    float f12 = bounds.right - f11;
                    rectF2 = rectF;
                    rectF2.right = f12;
                    rectF2.left = f12 - this.f3180O;
                } else {
                    rectF2 = rectF;
                    float f13 = bounds.left + f11;
                    rectF2.left = f13;
                    rectF2.right = f13 + this.f3180O;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f14 = this.f3180O;
                float f15 = fExactCenterY - (f14 / 2.0f);
                rectF2.top = f15;
                rectF2.bottom = f15 + f14;
            } else {
                rectF2 = rectF;
            }
            float f16 = rectF2.left;
            float f17 = rectF2.top;
            canvas.translate(f16, f17);
            this.f3177L.setBounds(i5, i5, (int) rectF2.width(), (int) rectF2.height());
            this.f3178M.setBounds(this.f3177L.getBounds());
            this.f3178M.jumpToCurrentState();
            this.f3178M.draw(canvas);
            canvas.translate(-f16, -f17);
        }
        if (this.f3206t0 < i4) {
            canvas.restoreToCount(i3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f3206t0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.u0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f3212z;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float fMeasureText;
        float fN = n() + this.f3185W + this.f3188Z;
        String string = this.f3169E.toString();
        p017k0.h hVar = this.f3198k0;
        if (hVar.f3792d) {
            fMeasureText = string == null ? 0.0f : hVar.f3790a.measureText((CharSequence) string, 0, string.length());
            hVar.f3791c = fMeasureText;
            hVar.f3792d = false;
        } else {
            fMeasureText = hVar.f3791c;
        }
        return Math.min(Math.round(o() + fMeasureText + fN + this.f3189a0 + this.f3192d0), this.f3168D0);
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f3170E0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f3212z, this.f3161A);
        } else {
            outline.setRoundRect(bounds, this.f3161A);
        }
        outline.setAlpha(this.f3206t0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        p021m0.d dVar;
        ColorStateList colorStateList;
        return q(this.f3209x) || q(this.f3211y) || q(this.f3163B) || !((dVar = this.f3198k0.f) == null || (colorStateList = dVar.b) == null || !colorStateList.isStateful()) || ((this.f3182R && this.S != null && this.f3181Q) || r(this.f3172G) || r(this.S) || q(this.f3208w0));
    }

    public final void l(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        s.c.b(drawable, s.c.a(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f3177L) {
            if (drawable.isStateful()) {
                drawable.setState(this.y0);
            }
            s.b.h(drawable, this.f3179N);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.f3172G;
        if (drawable == drawable2 && this.f3175J) {
            s.b.h(drawable2, this.f3173H);
        }
    }

    public final void m(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Q() || P()) {
            float f = this.f3185W + this.f3186X;
            if (s.c.a(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + this.f3174I;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - this.f3174I;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.f3174I;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    public final float n() {
        if (Q() || P()) {
            return this.f3186X + this.f3174I + this.f3187Y;
        }
        return 0.0f;
    }

    public final float o() {
        if (R()) {
            return this.f3190b0 + this.f3180O + this.f3191c0;
        }
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i2) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (Q()) {
            zOnLayoutDirectionChanged |= s.c.b(this.f3172G, i2);
        }
        if (P()) {
            zOnLayoutDirectionChanged |= s.c.b(this.S, i2);
        }
        if (R()) {
            zOnLayoutDirectionChanged |= s.c.b(this.f3177L, i2);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i2) {
        boolean zOnLevelChange = super.onLevelChange(i2);
        if (Q()) {
            zOnLevelChange |= this.f3172G.setLevel(i2);
        }
        if (P()) {
            zOnLevelChange |= this.S.setLevel(i2);
        }
        if (R()) {
            zOnLevelChange |= this.f3177L.setLevel(i2);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.f3170E0) {
            super.onStateChange(iArr);
        }
        return t(iArr, this.y0);
    }

    public final float p() {
        return this.f3170E0 ? this.f3939a.f3924a.f3973e.a(d()) : this.f3161A;
    }

    public final void s() {
        d dVar = (d) this.f3162A0.get();
        if (dVar != null) {
            Chip chip = (Chip) dVar;
            chip.b(chip.f2735p);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        if (this.f3206t0 != i2) {
            this.f3206t0 = i2;
            invalidateSelf();
        }
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.u0 != colorFilter) {
            this.u0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f3208w0 != colorStateList) {
            this.f3208w0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f3210x0 != mode) {
            this.f3210x0 = mode;
            ColorStateList colorStateList = this.f3208w0;
            this.f3207v0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (Q()) {
            visible |= this.f3172G.setVisible(z2, z3);
        }
        if (P()) {
            visible |= this.S.setVisible(z2, z3);
        }
        if (R()) {
            visible |= this.f3177L.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x009b  */
    public final boolean t(int[] iArr, int[] iArr2) {
        int colorForState;
        boolean z2;
        boolean z3;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f3209x;
        int colorForState2 = colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f3199l0) : 0;
        boolean state = true;
        if (this.f3199l0 != colorForState2) {
            this.f3199l0 = colorForState2;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f3211y;
        int colorForState3 = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f3200m0) : 0;
        if (this.f3200m0 != colorForState3) {
            this.f3200m0 = colorForState3;
            zOnStateChange = true;
        }
        int iB = p028r.a.b(colorForState3, colorForState2);
        if ((this.n0 != iB) | (this.f3939a.f3925c == null)) {
            this.n0 = iB;
            h(ColorStateList.valueOf(iB));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.f3163B;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f3201o0) : 0;
        if (this.f3201o0 != colorForState4) {
            this.f3201o0 = colorForState4;
            zOnStateChange = true;
        }
        if (this.f3213z0 != null) {
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            for (int i2 : iArr) {
                if (i2 == 16842910) {
                    z5 = true;
                } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                    z6 = true;
                }
            }
            if (z5 && z6) {
                z4 = true;
            }
            if (z4) {
                colorForState = this.f3213z0.getColorForState(iArr, this.f3202p0);
            } else {
                colorForState = 0;
            }
        } else {
            colorForState = 0;
        }
        if (this.f3202p0 != colorForState) {
            this.f3202p0 = colorForState;
        }
        p021m0.d dVar = this.f3198k0.f;
        int colorForState5 = (dVar == null || (colorStateList = dVar.b) == null) ? 0 : colorStateList.getColorForState(iArr, this.f3203q0);
        if (this.f3203q0 != colorForState5) {
            this.f3203q0 = colorForState5;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z2 = false;
            break;
        }
        int length = state2.length;
        int i3 = 0;
        while (true) {
            if (i3 < length) {
                if (state2[i3] == 16842912) {
                    if (this.f3181Q) {
                        z2 = true;
                        break;
                    }
                } else {
                    i3++;
                }
            }
            z2 = false;
            break;
        }
        if (this.f3204r0 == z2 || this.S == null) {
            z3 = false;
        } else {
            float fN = n();
            this.f3204r0 = z2;
            if (fN != n()) {
                zOnStateChange = true;
                z3 = true;
            } else {
                z3 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f3208w0;
        int colorForState6 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f3205s0) : 0;
        if (this.f3205s0 != colorForState6) {
            this.f3205s0 = colorForState6;
            ColorStateList colorStateList6 = this.f3208w0;
            PorterDuff.Mode mode = this.f3210x0;
            this.f3207v0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (r(this.f3172G)) {
            state |= this.f3172G.setState(iArr);
        }
        if (r(this.S)) {
            state |= this.S.setState(iArr);
        }
        if (r(this.f3177L)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f3177L.setState(iArr3);
        }
        if (r(this.f3178M)) {
            state |= this.f3178M.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z3) {
            s();
        }
        return state;
    }

    public final void u(boolean z2) {
        if (this.f3181Q != z2) {
            this.f3181Q = z2;
            float fN = n();
            if (!z2 && this.f3204r0) {
                this.f3204r0 = false;
            }
            float fN2 = n();
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void v(Drawable drawable) {
        if (this.S != drawable) {
            float fN = n();
            this.S = drawable;
            float fN2 = n();
            S(this.S);
            l(this.S);
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }

    public final void w(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f3183T != colorStateList) {
            this.f3183T = colorStateList;
            if (this.f3182R && (drawable = this.S) != null && this.f3181Q) {
                s.b.h(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void x(boolean z2) {
        if (this.f3182R != z2) {
            boolean zP = P();
            this.f3182R = z2;
            boolean zP2 = P();
            if (zP != zP2) {
                if (zP2) {
                    l(this.S);
                } else {
                    S(this.S);
                }
                invalidateSelf();
                s();
            }
        }
    }

    public final void y(float f) {
        if (this.f3161A != f) {
            this.f3161A = f;
            setShapeAppearanceModel(this.f3939a.f3924a.f(f));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final void z(Drawable drawable) {
        ?? r1;
        Object obj = this.f3172G;
        if (obj == null) {
            r1 = 0;
        } else if (obj instanceof s.e) {
            r1 = obj;
            r1 = 0;
        }
        if (r1 != drawable) {
            float fN = n();
            this.f3172G = drawable != null ? drawable.mutate() : null;
            float fN2 = n();
            S(r1);
            if (Q()) {
                l(this.f3172G);
            }
            invalidateSelf();
            if (fN != fN2) {
                s();
            }
        }
    }
}
