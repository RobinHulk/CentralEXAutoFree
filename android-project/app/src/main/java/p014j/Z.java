package p014j;

import A.a;
import A.b;
import B.q;
import B.s;
import B.t;
import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import p007e.AbstractC0201a;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f3505a;
    public g1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public g1 f3506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g1 f3507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g1 f3508e;
    public g1 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public g1 f3509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public g1 f3510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0227f0 f3511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3512j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3513k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f3514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3515m;

    public Z(TextView textView) {
        this.f3505a = textView;
        this.f3511i = new C0227f0(textView);
    }

    public static g1 c(Context context, C0251s c0251s, int i2) {
        ColorStateList colorStateListF;
        synchronized (c0251s) {
            colorStateListF = c0251s.f3681a.f(context, i2);
        }
        if (colorStateListF == null) {
            return null;
        }
        g1 g1Var = new g1();
        g1Var.f3605d = true;
        g1Var.f3603a = colorStateListF;
        return g1Var;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i2 >= 30) {
            a.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i2 >= 30) {
            a.a(editorInfo, text);
            return;
        }
        int i3 = editorInfo.initialSelStart;
        int i4 = editorInfo.initialSelEnd;
        int i5 = i3 > i4 ? i4 : i3;
        if (i3 <= i4) {
            i3 = i4;
        }
        int length = text.length();
        if (i5 < 0 || i3 > length) {
            b.e0(editorInfo, null, 0, 0);
            return;
        }
        int i6 = editorInfo.inputType & 4095;
        if (i6 == 129 || i6 == 225 || i6 == 18) {
            b.e0(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            b.e0(editorInfo, text, i5, i3);
            return;
        }
        int i7 = i3 - i5;
        int i8 = i7 > 1024 ? 0 : i7;
        int i9 = 2048 - i8;
        int iMin = Math.min(text.length() - i3, i9 - Math.min(i5, (int) (((double) i9) * 0.8d)));
        int iMin2 = Math.min(i5, i9 - iMin);
        int i10 = i5 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i10))) {
            i10++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i3 + iMin) - 1))) {
            iMin--;
        }
        int i11 = iMin2 + i8;
        b.e0(editorInfo, i8 != i7 ? TextUtils.concat(text.subSequence(i10, i10 + iMin2), text.subSequence(i3, iMin + i3)) : text.subSequence(i10, i11 + iMin + i10), iMin2, i11);
    }

    public final void a(Drawable drawable, g1 g1Var) {
        if (drawable == null || g1Var == null) {
            return;
        }
        C0251s.e(drawable, g1Var, this.f3505a.getDrawableState());
    }

    public final void b() {
        g1 g1Var = this.b;
        TextView textView = this.f3505a;
        if (g1Var != null || this.f3506c != null || this.f3507d != null || this.f3508e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f3506c);
            a(compoundDrawables[2], this.f3507d);
            a(compoundDrawables[3], this.f3508e);
        }
        if (this.f == null && this.f3509g == null) {
            return;
        }
        Drawable[] drawableArrA = V.a(textView);
        a(drawableArrA[0], this.f);
        a(drawableArrA[2], this.f3509g);
    }

    public final ColorStateList d() {
        g1 g1Var = this.f3510h;
        if (g1Var != null) {
            return g1Var.f3603a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        g1 g1Var = this.f3510h;
        if (g1Var != null) {
            return g1Var.b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i2) {
        boolean z2;
        boolean z3;
        String string;
        String string2;
        boolean z4;
        int i3;
        int i4;
        ColorStateList colorStateList;
        int resourceId;
        int i5;
        int resourceId2;
        int i6;
        TextView textView = this.f3505a;
        Context context = textView.getContext();
        C0251s c0251sA = C0251s.a();
        int[] iArr = p005d.a.f2911h;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, i2);
        N.h(textView, textView.getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, i2);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, c0251sA, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.f3506c = c(context, c0251sA, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.f3507d = c(context, c0251sA, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f3508e = c(context, c0251sA, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = c(context, c0251sA, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.f3509g = c(context, c0251sA, typedArray.getResourceId(6, 0));
        }
        c0003dV.w();
        boolean z5 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = p005d.a.f2927x;
        if (resourceId3 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            C0003d c0003d = new C0003d(context, typedArrayObtainStyledAttributes);
            if (z5 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z2 = false;
                z3 = false;
            } else {
                z3 = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z2 = true;
            }
            k(context, c0003d);
            if (typedArrayObtainStyledAttributes.hasValue(15)) {
                string2 = typedArrayObtainStyledAttributes.getString(15);
                i6 = 13;
            } else {
                i6 = 13;
                string2 = null;
            }
            string = typedArrayObtainStyledAttributes.hasValue(i6) ? typedArrayObtainStyledAttributes.getString(i6) : null;
            c0003d.w();
        } else {
            z2 = false;
            z3 = false;
            string = null;
            string2 = null;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        C0003d c0003d2 = new C0003d(context, typedArrayObtainStyledAttributes2);
        if (z5 || !typedArrayObtainStyledAttributes2.hasValue(14)) {
            z4 = z3;
        } else {
            z4 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z2 = true;
        }
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(0) && typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, c0003d2);
        c0003d2.w();
        if (!z5 && z2) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.f3514l;
        if (typeface != null) {
            if (this.f3513k == -1) {
                textView.setTypeface(typeface, this.f3512j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            X.d(textView, string);
        }
        if (string2 != null) {
            W.b(textView, W.a(string2));
        }
        int[] iArr3 = p005d.a.f2912i;
        C0227f0 c0227f0 = this.f3511i;
        Context context2 = c0227f0.f3598h;
        TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i2, 0);
        TextView textView2 = c0227f0.f3597g;
        N.h(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i2);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            c0227f0.f3593a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes3.hasValue(3) && (resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i7 = 0; i7 < length; i7++) {
                    iArr4[i7] = typedArrayObtainTypedArray.getDimensionPixelSize(i7, -1);
                }
                int[] iArrA = C0227f0.a(iArr4);
                c0227f0.f3596e = iArrA;
                int length2 = iArrA.length;
                boolean z6 = length2 > 0;
                c0227f0.f = z6;
                if (z6) {
                    c0227f0.f3593a = 1;
                    c0227f0.f3594c = iArrA[0];
                    c0227f0.f3595d = iArrA[length2 - 1];
                    c0227f0.b = -1.0f;
                }
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!c0227f0.b()) {
            c0227f0.f3593a = 0;
        } else if (c0227f0.f3593a == 1) {
            if (!c0227f0.f) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i5 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i5 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i5, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                if (dimension2 <= 0.0f) {
                    throw new IllegalArgumentException("Minimum auto-size text size (" + dimension2 + "px) is less or equal to (0px)");
                }
                if (dimension3 <= dimension2) {
                    throw new IllegalArgumentException("Maximum auto-size text size (" + dimension3 + "px) is less or equal to minimum auto-size text size (" + dimension2 + "px)");
                }
                if (dimension <= 0.0f) {
                    throw new IllegalArgumentException("The auto-size step granularity (" + dimension + "px) is less or equal to (0px)");
                }
                c0227f0.f3593a = 1;
                c0227f0.f3594c = dimension2;
                c0227f0.f3595d = dimension3;
                c0227f0.b = dimension;
                c0227f0.f = false;
            }
            if (c0227f0.b() && c0227f0.f3593a == 1 && (!c0227f0.f || c0227f0.f3596e.length == 0)) {
                int iFloor = ((int) Math.floor((c0227f0.f3595d - c0227f0.f3594c) / c0227f0.b)) + 1;
                int[] iArr5 = new int[iFloor];
                for (int i8 = 0; i8 < iFloor; i8++) {
                    iArr5[i8] = Math.round((i8 * c0227f0.b) + c0227f0.f3594c);
                }
                c0227f0.f3596e = C0227f0.a(iArr5);
            }
        }
        Method method = u1.f3699a;
        if (c0227f0.f3593a != 0) {
            int[] iArr6 = c0227f0.f3596e;
            if (iArr6.length > 0) {
                if (X.a(textView) != -1.0f) {
                    X.b(textView, Math.round(c0227f0.f3594c), Math.round(c0227f0.f3595d), Math.round(c0227f0.b), 0);
                } else {
                    X.c(textView, iArr6, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        Drawable drawableB = resourceId4 != -1 ? c0251sA.b(context, resourceId4) : null;
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(13, -1);
        Drawable drawableB2 = resourceId5 != -1 ? c0251sA.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId6 != -1 ? c0251sA.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId7 != -1 ? c0251sA.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId8 != -1 ? c0251sA.b(context, resourceId8) : null;
        int resourceId9 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId9 != -1 ? c0251sA.b(context, resourceId9) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] drawableArrA = V.a(textView);
            if (drawableB5 == null) {
                drawableB5 = drawableArrA[0];
            }
            if (drawableB2 == null) {
                drawableB2 = drawableArrA[1];
            }
            if (drawableB6 == null) {
                drawableB6 = drawableArrA[2];
            }
            if (drawableB4 == null) {
                drawableB4 = drawableArrA[3];
            }
            V.b(textView, drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] drawableArrA2 = V.a(textView);
            Drawable drawable = drawableArrA2[0];
            if (drawable == null && drawableArrA2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = drawableArrA2[1];
                }
                Drawable drawable2 = drawableArrA2[2];
                if (drawableB4 == null) {
                    drawableB4 = drawableArrA2[3];
                }
                V.b(textView, drawable, drawableB2, drawable2, drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            if (!typedArrayObtainStyledAttributes4.hasValue(11) || (resourceId = typedArrayObtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = AbstractC0201a.w(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes4.getColorStateList(11);
            }
            s.f(textView, colorStateList);
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            i3 = -1;
            s.g(textView, AbstractC0241m0.c(typedArrayObtainStyledAttributes4.getInt(12, -1), null));
        } else {
            i3 = -1;
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, i3);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, i3);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, i3);
        typedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i3) {
            AbstractC0201a.i(dimensionPixelSize);
            t.c(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i3) {
            AbstractC0201a.i(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i9 = q.a(textView) ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (dimensionPixelSize2 > Math.abs(i9)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i9);
            }
            i4 = -1;
        } else {
            i4 = i3;
        }
        if (dimensionPixelSize3 != i4) {
            AbstractC0201a.i(dimensionPixelSize3);
            int fontMetricsInt2 = textView.getPaint().getFontMetricsInt(null);
            if (dimensionPixelSize3 != fontMetricsInt2) {
                textView.setLineSpacing(dimensionPixelSize3 - fontMetricsInt2, 1.0f);
            }
        }
    }

    public final void g(Context context, int i2) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, p005d.a.f2927x);
        C0003d c0003d = new C0003d(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f3505a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, c0003d);
        if (typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            X.d(textView, string);
        }
        c0003d.w();
        Typeface typeface = this.f3514l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f3512j);
        }
    }

    public final void i(ColorStateList colorStateList) {
        if (this.f3510h == null) {
            this.f3510h = new g1();
        }
        g1 g1Var = this.f3510h;
        g1Var.f3603a = colorStateList;
        g1Var.f3605d = colorStateList != null;
        this.b = g1Var;
        this.f3506c = g1Var;
        this.f3507d = g1Var;
        this.f3508e = g1Var;
        this.f = g1Var;
        this.f3509g = g1Var;
    }

    public final void j(PorterDuff.Mode mode) {
        if (this.f3510h == null) {
            this.f3510h = new g1();
        }
        g1 g1Var = this.f3510h;
        g1Var.b = mode;
        g1Var.f3604c = mode != null;
        this.b = g1Var;
        this.f3506c = g1Var;
        this.f3507d = g1Var;
        this.f3508e = g1Var;
        this.f = g1Var;
        this.f3509g = g1Var;
    }

    public final void k(Context context, C0003d c0003d) {
        String string;
        int i2 = this.f3512j;
        TypedArray typedArray = (TypedArray) c0003d.f215c;
        this.f3512j = typedArray.getInt(2, i2);
        int i3 = typedArray.getInt(11, -1);
        this.f3513k = i3;
        if (i3 != -1) {
            this.f3512j &= 2;
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f3515m = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.f3514l = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.f3514l = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.f3514l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f3514l = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        int i6 = this.f3513k;
        int i7 = this.f3512j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceM = c0003d.m(i5, this.f3512j, new U(this, i6, i7, new WeakReference(this.f3505a)));
                if (typefaceM != null) {
                    if (this.f3513k != -1) {
                        this.f3514l = Y.a(Typeface.create(typefaceM, 0), this.f3513k, (this.f3512j & 2) != 0);
                    } else {
                        this.f3514l = typefaceM;
                    }
                }
                this.f3515m = this.f3514l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f3514l != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (this.f3513k != -1) {
            this.f3514l = Y.a(Typeface.create(string, 0), this.f3513k, (this.f3512j & 2) != 0);
        } else {
            this.f3514l = Typeface.create(string, this.f3512j);
        }
    }
}
