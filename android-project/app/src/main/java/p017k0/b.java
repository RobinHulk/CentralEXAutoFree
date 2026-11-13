package p017k0;

import M.d0;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.animation.LinearInterpolator;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import p021m0.a;
import p032w.h;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public float f3742A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public float f3743B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int[] f3744C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3745D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final TextPaint f3746E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final TextPaint f3747F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public LinearInterpolator f3748G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public LinearInterpolator f3749H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public float f3750I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f3751J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f3752K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ColorStateList f3753L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public StaticLayout f3754M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public CharSequence f3755N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f3756a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f3758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f3759e;
    public final RectF f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3760g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3761h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f3762i = 15.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3763j = 15.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f3764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3765l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f3766m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f3767n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f3768o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f3769p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f3770q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f3771r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Typeface f3772s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Typeface f3773t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f3774u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public a f3775v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f3776w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f3777x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3778y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Bitmap f3779z;

    public b(TextInputLayout textInputLayout) {
        this.f3756a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.f3746E = textPaint;
        this.f3747F = new TextPaint(textPaint);
        this.f3759e = new Rect();
        this.f3758d = new Rect();
        this.f = new RectF();
    }

    public static int a(int i2, int i3, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i3) * f) + (Color.alpha(i2) * f2)), (int) ((Color.red(i3) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i3) * f) + (Color.green(i2) * f2)), (int) ((Color.blue(i3) * f) + (Color.blue(i2) * f2)));
    }

    public static float e(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        LinearInterpolator linearInterpolator = Z.a.f1389a;
        return d0.a(f2, f, f3, f);
    }

    public final float b() {
        if (this.f3776w == null) {
            return 0.0f;
        }
        TextPaint textPaint = this.f3747F;
        textPaint.setTextSize(this.f3763j);
        textPaint.setTypeface(this.f3772s);
        CharSequence charSequence = this.f3776w;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public final void c(float f) {
        boolean z2;
        float f2;
        boolean z3;
        if (this.f3776w == null) {
            return;
        }
        float fWidth = this.f3759e.width();
        float fWidth2 = this.f3758d.width();
        if (Math.abs(f - this.f3763j) < 0.001f) {
            f2 = this.f3763j;
            this.f3742A = 1.0f;
            Typeface typeface = this.f3774u;
            Typeface typeface2 = this.f3772s;
            if (typeface != typeface2) {
                this.f3774u = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f3 = this.f3762i;
            Typeface typeface3 = this.f3774u;
            Typeface typeface4 = this.f3773t;
            if (typeface3 != typeface4) {
                this.f3774u = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (Math.abs(f - f3) < 0.001f) {
                this.f3742A = 1.0f;
            } else {
                this.f3742A = f / this.f3762i;
            }
            float f4 = this.f3763j / this.f3762i;
            fWidth = fWidth2 * f4 > fWidth ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
            z3 = z2;
        }
        if (fWidth > 0.0f) {
            z3 = this.f3743B != f2 || this.f3745D || z3;
            this.f3743B = f2;
            this.f3745D = false;
        }
        if (this.f3777x == null || z3) {
            TextPaint textPaint = this.f3746E;
            textPaint.setTextSize(this.f3743B);
            textPaint.setTypeface(this.f3774u);
            textPaint.setLinearText(this.f3742A != 1.0f);
            CharSequence charSequence = this.f3776w;
            WeakHashMap weakHashMap = N.f4222a;
            boolean zB = (AbstractC0291z.d(this.f3756a) == 1 ? h.f4178d : h.f4177c).b(charSequence, charSequence.length());
            this.f3778y = zB;
            CharSequence charSequence2 = this.f3776w;
            int length = charSequence2.length();
            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            int iMax = Math.max(0, (int) fWidth);
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequence2, textPaint, iMax, truncateAt);
            int iMin = Math.min(charSequenceEllipsize.length(), length);
            if (zB) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
            builderObtain.setAlignment(alignment);
            builderObtain.setIncludePad(false);
            builderObtain.setTextDirection(zB ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(1);
            StaticLayout staticLayoutBuild = builderObtain.build();
            staticLayoutBuild.getClass();
            this.f3754M = staticLayoutBuild;
            this.f3777x = staticLayoutBuild.getText();
        }
    }

    public final int d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f3744C;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    public final void f() {
        boolean z2;
        Rect rect = this.f3759e;
        if (rect.width() <= 0 || rect.height() <= 0) {
            z2 = false;
        } else {
            Rect rect2 = this.f3758d;
            if (rect2.width() <= 0 || rect2.height() <= 0) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        this.b = z2;
    }

    public final void g() {
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.f3756a;
        if (textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) {
            return;
        }
        float f = this.f3743B;
        c(this.f3763j);
        CharSequence charSequence = this.f3777x;
        TextPaint textPaint = this.f3746E;
        if (charSequence != null && (staticLayout = this.f3754M) != null) {
            this.f3755N = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f3755N;
        float fMeasureText = charSequence2 != null ? textPaint.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f3761h, this.f3778y ? 1 : 0);
        int i2 = absoluteGravity & 112;
        Rect rect = this.f3759e;
        if (i2 == 48) {
            this.f3767n = rect.top;
        } else if (i2 != 80) {
            this.f3767n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f3767n = textPaint.ascent() + rect.bottom;
        }
        int i3 = absoluteGravity & 8388615;
        if (i3 == 1) {
            this.f3769p = rect.centerX() - (fMeasureText / 2.0f);
        } else if (i3 != 5) {
            this.f3769p = rect.left;
        } else {
            this.f3769p = rect.right - fMeasureText;
        }
        c(this.f3762i);
        StaticLayout staticLayout2 = this.f3754M;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f3777x;
        float fMeasureText2 = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout3 = this.f3754M;
        if (staticLayout3 != null) {
            staticLayout3.getLineLeft(0);
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f3760g, this.f3778y ? 1 : 0);
        int i4 = absoluteGravity2 & 112;
        Rect rect2 = this.f3758d;
        if (i4 == 48) {
            this.f3766m = rect2.top;
        } else if (i4 != 80) {
            this.f3766m = rect2.centerY() - (height / 2.0f);
        } else {
            this.f3766m = textPaint.descent() + (rect2.bottom - height);
        }
        int i5 = absoluteGravity2 & 8388615;
        if (i5 == 1) {
            this.f3768o = rect2.centerX() - (fMeasureText2 / 2.0f);
        } else if (i5 != 5) {
            this.f3768o = rect2.left;
        } else {
            this.f3768o = rect2.right - fMeasureText2;
        }
        Bitmap bitmap = this.f3779z;
        if (bitmap != null) {
            bitmap.recycle();
            this.f3779z = null;
        }
        j(f);
        float f2 = this.f3757c;
        RectF rectF = this.f;
        rectF.left = e(rect2.left, rect.left, f2, this.f3748G);
        rectF.top = e(this.f3766m, this.f3767n, f2, this.f3748G);
        rectF.right = e(rect2.right, rect.right, f2, this.f3748G);
        rectF.bottom = e(rect2.bottom, rect.bottom, f2, this.f3748G);
        this.f3770q = e(this.f3768o, this.f3769p, f2, this.f3748G);
        this.f3771r = e(this.f3766m, this.f3767n, f2, this.f3748G);
        j(e(this.f3762i, this.f3763j, f2, this.f3749H));
        I.a aVar = Z.a.b;
        e(0.0f, 1.0f, 1.0f - f2, aVar);
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.k(textInputLayout);
        e(1.0f, 0.0f, f2, aVar);
        AbstractC0290y.k(textInputLayout);
        ColorStateList colorStateList = this.f3765l;
        ColorStateList colorStateList2 = this.f3764k;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(d(colorStateList2), d(this.f3765l), f2));
        } else {
            textPaint.setColor(d(colorStateList));
        }
        textPaint.setShadowLayer(d0.a(this.f3750I, 0.0f, f2, 0.0f), d0.a(this.f3751J, 0.0f, f2, 0.0f), d0.a(this.f3752K, 0.0f, f2, 0.0f), a(0, d(this.f3753L), f2));
        AbstractC0290y.k(textInputLayout);
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f3765l != colorStateList) {
            this.f3765l = colorStateList;
            g();
        }
    }

    public final void i(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.f3757c) {
            this.f3757c = f;
            RectF rectF = this.f;
            Rect rect = this.f3758d;
            float f2 = rect.left;
            Rect rect2 = this.f3759e;
            rectF.left = e(f2, rect2.left, f, this.f3748G);
            rectF.top = e(this.f3766m, this.f3767n, f, this.f3748G);
            rectF.right = e(rect.right, rect2.right, f, this.f3748G);
            rectF.bottom = e(rect.bottom, rect2.bottom, f, this.f3748G);
            this.f3770q = e(this.f3768o, this.f3769p, f, this.f3748G);
            this.f3771r = e(this.f3766m, this.f3767n, f, this.f3748G);
            j(e(this.f3762i, this.f3763j, f, this.f3749H));
            I.a aVar = Z.a.b;
            e(0.0f, 1.0f, 1.0f - f, aVar);
            WeakHashMap weakHashMap = N.f4222a;
            TextInputLayout textInputLayout = this.f3756a;
            AbstractC0290y.k(textInputLayout);
            e(1.0f, 0.0f, f, aVar);
            AbstractC0290y.k(textInputLayout);
            ColorStateList colorStateList = this.f3765l;
            ColorStateList colorStateList2 = this.f3764k;
            TextPaint textPaint = this.f3746E;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(d(colorStateList2), d(this.f3765l), f));
            } else {
                textPaint.setColor(d(colorStateList));
            }
            textPaint.setShadowLayer(d0.a(this.f3750I, 0.0f, f, 0.0f), d0.a(this.f3751J, 0.0f, f, 0.0f), d0.a(this.f3752K, 0.0f, f, 0.0f), a(0, d(this.f3753L), f));
            AbstractC0290y.k(textInputLayout);
        }
    }

    public final void j(float f) {
        c(f);
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.k(this.f3756a);
    }
}
