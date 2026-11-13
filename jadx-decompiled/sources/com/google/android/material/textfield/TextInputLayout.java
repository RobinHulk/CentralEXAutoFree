package com.google.android.material.textfield;

import M.C0003d;
import M.C0013n;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.c;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.AbstractC0241m0;
import p014j.C0219b0;
import p014j.C0251s;
import p014j.Q0;
import p017k0.b;
import p017k0.i;
import p021m0.d;
import p025p0.g;
import p025p0.j;
import p025p0.k;
import p029r0.e;
import p029r0.f;
import p029r0.l;
import p029r0.n;
import p029r0.p;
import p029r0.q;
import p029r0.r;
import p029r0.s;
import p032w.h;
import p034y.A;
import p034y.AbstractC0278l;
import p034y.AbstractC0289x;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.N;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f2829A;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public int f2830A0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public g f2831B;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f2832B0;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public g f2833C;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f2834C0;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final k f2835D;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public final b f2836D0;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final int f2837E;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f2838E0;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2839F;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public ValueAnimator f2840F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f2841G;
    public boolean G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2842H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public boolean f2843H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2844I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f2845J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f2846K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f2847L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Rect f2848M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Rect f2849N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final RectF f2850O;
    public Typeface P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final CheckableImageButton f2851Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ColorStateList f2852R;
    public boolean S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public PorterDuff.Mode f2853T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f2854U;
    public ColorDrawable V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f2855W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameLayout f2856a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public View.OnLongClickListener f2857a0;
    public final LinearLayout b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final LinkedHashSet f2858b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f2859c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2860c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f2861d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseArray f2862d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EditText f2863e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final CheckableImageButton f2864e0;
    public CharSequence f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final LinkedHashSet f2865f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n f2866g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public ColorStateList f2867g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2868h;
    public boolean h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2869i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public PorterDuff.Mode f2870i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2871j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f2872j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C0219b0 f2873k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorDrawable f2874k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2875l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2876l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2877m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Drawable f2878m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f2879n;
    public View.OnLongClickListener n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2880o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public View.OnLongClickListener f2881o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C0219b0 f2882p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final CheckableImageButton f2883p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ColorStateList f2884q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ColorStateList f2885q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2886r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ColorStateList f2887r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f2888s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public ColorStateList f2889s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ColorStateList f2890t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f2891t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CharSequence f2892u;
    public int u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final C0219b0 f2893v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f2894v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f2895w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ColorStateList f2896w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final C0219b0 f2897x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f2898x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2899y;
    public int y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public CharSequence f2900z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f2901z0;

    /* JADX WARN: Code duplicated, block: B:84:0x04be  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v68 */
    public TextInputLayout(Context context, AttributeSet attributeSet) {
        ?? r4;
        AttributeSet attributeSet2;
        super(a.a(context, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout), attributeSet, R.attr.textInputStyle);
        this.f2866g = new n(this);
        this.f2848M = new Rect();
        this.f2849N = new Rect();
        this.f2850O = new RectF();
        this.f2858b0 = new LinkedHashSet();
        this.f2860c0 = 0;
        SparseArray sparseArray = new SparseArray();
        this.f2862d0 = sparseArray;
        this.f2865f0 = new LinkedHashSet();
        b bVar = new b(this);
        this.f2836D0 = bVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f2856a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.b = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f2859c = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f2861d = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearInterpolator linearInterpolator = Z.a.f1389a;
        bVar.f3749H = linearInterpolator;
        bVar.g();
        bVar.f3748G = linearInterpolator;
        bVar.g();
        if (bVar.f3761h != 8388659) {
            bVar.f3761h = 8388659;
            bVar.g();
        }
        int[] iArr = Y.a.f1387w;
        i.a(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        i.b(context2, attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout, 18, 16, 31, 35, 39);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        C0003d c0003d = new C0003d(context2, typedArrayObtainStyledAttributes);
        this.f2899y = typedArrayObtainStyledAttributes.getBoolean(38, true);
        setHint(typedArrayObtainStyledAttributes.getText(2));
        this.f2838E0 = typedArrayObtainStyledAttributes.getBoolean(37, true);
        k kVarA = k.b(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout).a();
        this.f2835D = kVarA;
        this.f2837E = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f2841G = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
        this.f2844I = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f2845J = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f2842H = this.f2844I;
        float dimension = typedArrayObtainStyledAttributes.getDimension(9, -1.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(8, -1.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(6, -1.0f);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(7, -1.0f);
        j jVarE = kVarA.e();
        if (dimension >= 0.0f) {
            jVarE.f3963e = new p025p0.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            jVarE.f = new p025p0.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            jVarE.f3964g = new p025p0.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            jVarE.f3965h = new p025p0.a(dimension4);
        }
        this.f2835D = jVarE.a();
        ColorStateList colorStateListX = AbstractC0201a.x(context2, c0003d, 3);
        if (colorStateListX != null) {
            int defaultColor = colorStateListX.getDefaultColor();
            this.f2898x0 = defaultColor;
            this.f2847L = defaultColor;
            if (colorStateListX.isStateful()) {
                this.y0 = colorStateListX.getColorForState(new int[]{-16842910}, -1);
                this.f2901z0 = colorStateListX.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.f2830A0 = colorStateListX.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.f2901z0 = this.f2898x0;
                ColorStateList colorStateListW = AbstractC0201a.w(context2, R.color.mtrl_filled_background_color);
                this.y0 = colorStateListW.getColorForState(new int[]{-16842910}, -1);
                this.f2830A0 = colorStateListW.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.f2847L = 0;
            this.f2898x0 = 0;
            this.y0 = 0;
            this.f2901z0 = 0;
            this.f2830A0 = 0;
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateListJ = c0003d.j(1);
            this.f2889s0 = colorStateListJ;
            this.f2887r0 = colorStateListJ;
        }
        ColorStateList colorStateListX2 = AbstractC0201a.x(context2, c0003d, 10);
        this.f2894v0 = typedArrayObtainStyledAttributes.getColor(10, 0);
        this.f2891t0 = c.a(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.f2832B0 = c.a(context2, R.color.mtrl_textinput_disabled_color);
        this.u0 = c.a(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListX2 != null) {
            setBoxStrokeColorStateList(colorStateListX2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(11)) {
            setBoxStrokeErrorColor(AbstractC0201a.x(context2, c0003d, 11));
        }
        if (typedArrayObtainStyledAttributes.getResourceId(39, -1) != -1) {
            r4 = 0;
            setHintTextAppearance(typedArrayObtainStyledAttributes.getResourceId(39, 0));
        } else {
            r4 = 0;
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(31, r4);
        CharSequence text = typedArrayObtainStyledAttributes.getText(26);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(27, r4);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, linearLayout2, (boolean) r4);
        this.f2883p0 = checkableImageButton;
        checkableImageButton.setVisibility(8);
        if (typedArrayObtainStyledAttributes.hasValue(28)) {
            setErrorIconDrawable(c0003d.k(28));
        }
        if (typedArrayObtainStyledAttributes.hasValue(29)) {
            setErrorIconTintList(AbstractC0201a.x(context2, c0003d, 29));
        }
        if (typedArrayObtainStyledAttributes.hasValue(30)) {
            setErrorIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(30, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.s(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(35, 0);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(34, false);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(33);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(47, 0);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(46);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(50, 0);
        CharSequence text4 = typedArrayObtainStyledAttributes.getText(49);
        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(60, 0);
        CharSequence text5 = typedArrayObtainStyledAttributes.getText(59);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(14, false);
        setCounterMaxLength(typedArrayObtainStyledAttributes.getInt(15, -1));
        this.f2877m = typedArrayObtainStyledAttributes.getResourceId(18, 0);
        this.f2875l = typedArrayObtainStyledAttributes.getResourceId(16, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) linearLayout, false);
        this.f2851Q = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (typedArrayObtainStyledAttributes.hasValue(56)) {
            setStartIconDrawable(c0003d.k(56));
            if (typedArrayObtainStyledAttributes.hasValue(55)) {
                setStartIconContentDescription(typedArrayObtainStyledAttributes.getText(55));
            }
            setStartIconCheckable(typedArrayObtainStyledAttributes.getBoolean(54, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(57)) {
            setStartIconTintList(AbstractC0201a.x(context2, c0003d, 57));
        }
        if (typedArrayObtainStyledAttributes.hasValue(58)) {
            setStartIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(58, -1), null));
        }
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(4, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout2, false);
        this.f2864e0 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        sparseArray.append(-1, new f(this, 0));
        sparseArray.append(0, new f(this, 1));
        sparseArray.append(1, new p(this));
        sparseArray.append(2, new e(this));
        sparseArray.append(3, new p029r0.k(this));
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            setEndIconMode(typedArrayObtainStyledAttributes.getInt(23, 0));
            if (typedArrayObtainStyledAttributes.hasValue(22)) {
                setEndIconDrawable(c0003d.k(22));
            }
            if (typedArrayObtainStyledAttributes.hasValue(21)) {
                setEndIconContentDescription(typedArrayObtainStyledAttributes.getText(21));
            }
            setEndIconCheckable(typedArrayObtainStyledAttributes.getBoolean(20, true));
        } else if (typedArrayObtainStyledAttributes.hasValue(43)) {
            setEndIconMode(typedArrayObtainStyledAttributes.getBoolean(43, false) ? 1 : 0);
            setEndIconDrawable(c0003d.k(42));
            setEndIconContentDescription(typedArrayObtainStyledAttributes.getText(41));
            if (typedArrayObtainStyledAttributes.hasValue(44)) {
                setEndIconTintList(AbstractC0201a.x(context2, c0003d, 44));
            }
            if (typedArrayObtainStyledAttributes.hasValue(45)) {
                setEndIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(45, -1), null));
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(43)) {
            attributeSet2 = null;
        } else {
            if (typedArrayObtainStyledAttributes.hasValue(24)) {
                setEndIconTintList(AbstractC0201a.x(context2, c0003d, 24));
            }
            if (typedArrayObtainStyledAttributes.hasValue(25)) {
                attributeSet2 = null;
                setEndIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(25, -1), null));
            } else {
                attributeSet2 = null;
            }
        }
        C0219b0 c0219b0 = new C0219b0(context2, attributeSet2);
        this.f2893v = c0219b0;
        c0219b0.setId(R.id.textinput_prefix_text);
        c0219b0.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        A.f(c0219b0, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(c0219b0);
        C0219b0 c0219b1 = new C0219b0(context2, null);
        this.f2897x = c0219b1;
        c0219b1.setId(R.id.textinput_suffix_text);
        c0219b1.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        A.f(c0219b1, 1);
        linearLayout2.addView(c0219b1);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(z3);
        setHelperText(text2);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z2);
        setErrorTextAppearance(resourceId);
        setErrorContentDescription(text);
        setCounterTextAppearance(this.f2877m);
        setCounterOverflowTextAppearance(this.f2875l);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setPrefixText(text4);
        setPrefixTextAppearance(resourceId4);
        setSuffixText(text5);
        setSuffixTextAppearance(resourceId5);
        if (typedArrayObtainStyledAttributes.hasValue(32)) {
            setErrorTextColor(c0003d.j(32));
        }
        if (typedArrayObtainStyledAttributes.hasValue(36)) {
            setHelperTextColor(c0003d.j(36));
        }
        if (typedArrayObtainStyledAttributes.hasValue(40)) {
            setHintTextColor(c0003d.j(40));
        }
        if (typedArrayObtainStyledAttributes.hasValue(19)) {
            setCounterTextColor(c0003d.j(19));
        }
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            setCounterOverflowTextColor(c0003d.j(17));
        }
        if (typedArrayObtainStyledAttributes.hasValue(48)) {
            setPlaceholderTextColor(c0003d.j(48));
        }
        if (typedArrayObtainStyledAttributes.hasValue(51)) {
            setPrefixTextColor(c0003d.j(51));
        }
        if (typedArrayObtainStyledAttributes.hasValue(61)) {
            setSuffixTextColor(c0003d.j(61));
        }
        setCounterEnabled(z4);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        c0003d.w();
        AbstractC0290y.s(this, 2);
    }

    public static void d(CheckableImageButton checkableImageButton, boolean z2, ColorStateList colorStateList, boolean z3, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z2 || z3)) {
            drawable = drawable.mutate();
            if (z2) {
                s.b.h(drawable, colorStateList);
            }
            if (z3) {
                s.b.i(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private l getEndIconDelegate() {
        SparseArray sparseArray = this.f2862d0;
        l lVar = (l) sparseArray.get(this.f2860c0);
        return lVar != null ? lVar : (l) sparseArray.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        CheckableImageButton checkableImageButton = this.f2883p0;
        if (checkableImageButton.getVisibility() == 0) {
            return checkableImageButton;
        }
        if (this.f2860c0 == 0 || !g()) {
            return null;
        }
        return this.f2864e0;
    }

    public static void j(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                j((ViewGroup) childAt, z2);
            }
        }
    }

    public static void k(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = N.f4222a;
        boolean zA = AbstractC0289x.a(checkableImageButton);
        boolean z2 = onLongClickListener != null;
        boolean z3 = zA || z2;
        checkableImageButton.setFocusable(z3);
        checkableImageButton.setClickable(zA);
        checkableImageButton.setPressable(zA);
        checkableImageButton.setLongClickable(z2);
        AbstractC0290y.s(checkableImageButton, z3 ? 1 : 2);
    }

    private void setEditText(EditText editText) {
        boolean z2;
        boolean z3;
        if (this.f2863e != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f2860c0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f2863e = editText;
        h();
        setTextInputAccessibilityDelegate(new r(this));
        Typeface typeface = this.f2863e.getTypeface();
        b bVar = this.f2836D0;
        p021m0.a aVar = bVar.f3775v;
        if (aVar != null) {
            aVar.f3876c = true;
        }
        if (bVar.f3772s != typeface) {
            bVar.f3772s = typeface;
            z2 = true;
        } else {
            z2 = false;
        }
        if (bVar.f3773t != typeface) {
            bVar.f3773t = typeface;
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 || z3) {
            bVar.g();
        }
        float textSize = this.f2863e.getTextSize();
        if (bVar.f3762i != textSize) {
            bVar.f3762i = textSize;
            bVar.g();
        }
        int gravity = this.f2863e.getGravity();
        int i2 = (gravity & (-113)) | 48;
        if (bVar.f3761h != i2) {
            bVar.f3761h = i2;
            bVar.g();
        }
        if (bVar.f3760g != gravity) {
            bVar.f3760g = gravity;
            bVar.g();
        }
        this.f2863e.addTextChangedListener(new Q0(this, 4));
        if (this.f2887r0 == null) {
            this.f2887r0 = this.f2863e.getHintTextColors();
        }
        if (this.f2899y) {
            if (TextUtils.isEmpty(this.f2900z)) {
                CharSequence hint = this.f2863e.getHint();
                this.f = hint;
                setHint(hint);
                this.f2863e.setHint((CharSequence) null);
            }
            this.f2829A = true;
        }
        if (this.f2873k != null) {
            m(this.f2863e.getText().length());
        }
        p();
        this.f2866g.b();
        this.b.bringToFront();
        this.f2859c.bringToFront();
        this.f2861d.bringToFront();
        this.f2883p0.bringToFront();
        Iterator it = this.f2858b0.iterator();
        while (it.hasNext()) {
            ((p029r0.a) it.next()).a(this);
        }
        u();
        x();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        s(false, true);
    }

    private void setErrorIconVisible(boolean z2) {
        this.f2883p0.setVisibility(z2 ? 0 : 8);
        this.f2861d.setVisibility(z2 ? 8 : 0);
        x();
        if (this.f2860c0 != 0) {
            return;
        }
        o();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f2900z)) {
            return;
        }
        this.f2900z = charSequence;
        b bVar = this.f2836D0;
        if (charSequence == null || !TextUtils.equals(bVar.f3776w, charSequence)) {
            bVar.f3776w = charSequence;
            bVar.f3777x = null;
            Bitmap bitmap = bVar.f3779z;
            if (bitmap != null) {
                bitmap.recycle();
                bVar.f3779z = null;
            }
            bVar.g();
        }
        if (this.f2834C0) {
            return;
        }
        i();
    }

    private void setPlaceholderTextEnabled(boolean z2) {
        if (this.f2880o == z2) {
            return;
        }
        if (z2) {
            C0219b0 c0219b0 = new C0219b0(getContext(), null);
            this.f2882p = c0219b0;
            c0219b0.setId(R.id.textinput_placeholder);
            A.f(this.f2882p, 1);
            setPlaceholderTextAppearance(this.f2886r);
            setPlaceholderTextColor(this.f2884q);
            C0219b0 c0219b1 = this.f2882p;
            if (c0219b1 != null) {
                this.f2856a.addView(c0219b1);
                this.f2882p.setVisibility(0);
            }
        } else {
            C0219b0 c0219b2 = this.f2882p;
            if (c0219b2 != null) {
                c0219b2.setVisibility(8);
            }
            this.f2882p = null;
        }
        this.f2880o = z2;
    }

    public final void a(float f) {
        b bVar = this.f2836D0;
        if (bVar.f3757c == f) {
            return;
        }
        if (this.f2840F0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f2840F0 = valueAnimator;
            valueAnimator.setInterpolator(Z.a.b);
            this.f2840F0.setDuration(167L);
            this.f2840F0.addUpdateListener(new C0013n(this, 3));
        }
        this.f2840F0.setFloatValues(bVar.f3757c, f);
        this.f2840F0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i2, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f2856a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        r();
        setEditText((EditText) view);
    }

    public final void b() {
        int i2;
        int i3;
        int i4;
        g gVar = this.f2831B;
        if (gVar == null) {
            return;
        }
        gVar.setShapeAppearanceModel(this.f2835D);
        if (this.f2839F == 2 && (i3 = this.f2842H) > -1 && (i4 = this.f2846K) != 0) {
            g gVar2 = this.f2831B;
            gVar2.f3939a.f3931j = i3;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i4);
            p025p0.f fVar = gVar2.f3939a;
            if (fVar.f3926d != colorStateListValueOf) {
                fVar.f3926d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
        }
        int iB = this.f2847L;
        if (this.f2839F == 1) {
            TypedValue typedValueN = AbstractC0201a.N(getContext(), R.attr.colorSurface);
            iB = p028r.a.b(this.f2847L, typedValueN != null ? typedValueN.data : 0);
        }
        this.f2847L = iB;
        this.f2831B.h(ColorStateList.valueOf(iB));
        if (this.f2860c0 == 3) {
            this.f2863e.getBackground().invalidateSelf();
        }
        g gVar3 = this.f2833C;
        if (gVar3 != null) {
            if (this.f2842H > -1 && (i2 = this.f2846K) != 0) {
                gVar3.h(ColorStateList.valueOf(i2));
            }
            invalidate();
        }
        invalidate();
    }

    public final void c() {
        d(this.f2864e0, this.h0, this.f2867g0, this.f2872j0, this.f2870i0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        EditText editText;
        if (this.f == null || (editText = this.f2863e) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        boolean z2 = this.f2829A;
        this.f2829A = false;
        CharSequence hint = editText.getHint();
        this.f2863e.setHint(this.f);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
        } finally {
            this.f2863e.setHint(hint);
            this.f2829A = z2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f2843H0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f2843H0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f2899y) {
            b bVar = this.f2836D0;
            bVar.getClass();
            int iSave = canvas.save();
            if (bVar.f3777x != null && bVar.b) {
                bVar.f3754M.getLineLeft(0);
                bVar.f3746E.setTextSize(bVar.f3743B);
                float f = bVar.f3770q;
                float f2 = bVar.f3771r;
                float f3 = bVar.f3742A;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                canvas.translate(f, f2);
                bVar.f3754M.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        g gVar = this.f2833C;
        if (gVar != null) {
            Rect bounds = gVar.getBounds();
            bounds.top = bounds.bottom - this.f2842H;
            this.f2833C.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z2;
        ColorStateList colorStateList;
        if (this.G0) {
            return;
        }
        this.G0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        b bVar = this.f2836D0;
        if (bVar != null) {
            bVar.f3744C = drawableState;
            ColorStateList colorStateList2 = bVar.f3765l;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = bVar.f3764k) == null || !colorStateList.isStateful())) {
                z2 = false;
            } else {
                bVar.g();
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (this.f2863e != null) {
            WeakHashMap weakHashMap = N.f4222a;
            s(A.c(this) && isEnabled(), false);
        }
        p();
        z();
        if (z2) {
            invalidate();
        }
        this.G0 = false;
    }

    public final int e() {
        if (!this.f2899y) {
            return 0;
        }
        int i2 = this.f2839F;
        b bVar = this.f2836D0;
        if (i2 == 0 || i2 == 1) {
            TextPaint textPaint = bVar.f3747F;
            textPaint.setTextSize(bVar.f3763j);
            textPaint.setTypeface(bVar.f3772s);
            return (int) (-textPaint.ascent());
        }
        if (i2 != 2) {
            return 0;
        }
        TextPaint textPaint2 = bVar.f3747F;
        textPaint2.setTextSize(bVar.f3763j);
        textPaint2.setTypeface(bVar.f3772s);
        return (int) ((-textPaint2.ascent()) / 2.0f);
    }

    public final boolean f() {
        return this.f2899y && !TextUtils.isEmpty(this.f2900z) && (this.f2831B instanceof p029r0.g);
    }

    public final boolean g() {
        return this.f2861d.getVisibility() == 0 && this.f2864e0.getVisibility() == 0;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f2863e;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    public g getBoxBackground() {
        int i2 = this.f2839F;
        if (i2 == 1 || i2 == 2) {
            return this.f2831B;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f2847L;
    }

    public int getBoxBackgroundMode() {
        return this.f2839F;
    }

    public float getBoxCornerRadiusBottomEnd() {
        g gVar = this.f2831B;
        return gVar.f3939a.f3924a.f3975h.a(gVar.d());
    }

    public float getBoxCornerRadiusBottomStart() {
        g gVar = this.f2831B;
        return gVar.f3939a.f3924a.f3974g.a(gVar.d());
    }

    public float getBoxCornerRadiusTopEnd() {
        g gVar = this.f2831B;
        return gVar.f3939a.f3924a.f.a(gVar.d());
    }

    public float getBoxCornerRadiusTopStart() {
        g gVar = this.f2831B;
        return gVar.f3939a.f3924a.f3973e.a(gVar.d());
    }

    public int getBoxStrokeColor() {
        return this.f2894v0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f2896w0;
    }

    public int getBoxStrokeWidth() {
        return this.f2844I;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f2845J;
    }

    public int getCounterMaxLength() {
        return this.f2869i;
    }

    public CharSequence getCounterOverflowDescription() {
        C0219b0 c0219b0;
        if (this.f2868h && this.f2871j && (c0219b0 = this.f2873k) != null) {
            return c0219b0.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f2888s;
    }

    public ColorStateList getCounterTextColor() {
        return this.f2888s;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f2887r0;
    }

    public EditText getEditText() {
        return this.f2863e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f2864e0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f2864e0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f2860c0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f2864e0;
    }

    public CharSequence getError() {
        n nVar = this.f2866g;
        if (nVar.f4100l) {
            return nVar.f4099k;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f2866g.f4102n;
    }

    public int getErrorCurrentTextColors() {
        C0219b0 c0219b0 = this.f2866g.f4101m;
        if (c0219b0 != null) {
            return c0219b0.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f2883p0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        C0219b0 c0219b0 = this.f2866g.f4101m;
        if (c0219b0 != null) {
            return c0219b0.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHelperText() {
        n nVar = this.f2866g;
        if (nVar.f4106r) {
            return nVar.f4105q;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C0219b0 c0219b0 = this.f2866g.f4107s;
        if (c0219b0 != null) {
            return c0219b0.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f2899y) {
            return this.f2900z;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        b bVar = this.f2836D0;
        TextPaint textPaint = bVar.f3747F;
        textPaint.setTextSize(bVar.f3763j);
        textPaint.setTypeface(bVar.f3772s);
        return -textPaint.ascent();
    }

    public final int getHintCurrentCollapsedTextColor() {
        b bVar = this.f2836D0;
        return bVar.d(bVar.f3765l);
    }

    public ColorStateList getHintTextColor() {
        return this.f2889s0;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f2864e0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f2864e0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f2880o) {
            return this.f2879n;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f2886r;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f2884q;
    }

    public CharSequence getPrefixText() {
        return this.f2892u;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f2893v.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f2893v;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f2851Q.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f2851Q.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f2895w;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f2897x.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f2897x;
    }

    public Typeface getTypeface() {
        return this.P;
    }

    public final void h() {
        int i2 = this.f2839F;
        if (i2 != 0) {
            k kVar = this.f2835D;
            if (i2 == 1) {
                this.f2831B = new g(kVar);
                this.f2833C = new g();
            } else {
                if (i2 != 2) {
                    throw new IllegalArgumentException(this.f2839F + " is illegal; only @BoxBackgroundMode constants are supported.");
                }
                if (!this.f2899y || (this.f2831B instanceof p029r0.g)) {
                    this.f2831B = new g(kVar);
                } else {
                    this.f2831B = new p029r0.g(kVar);
                }
                this.f2833C = null;
            }
        } else {
            this.f2831B = null;
            this.f2833C = null;
        }
        EditText editText = this.f2863e;
        if (editText != null && this.f2831B != null && editText.getBackground() == null && this.f2839F != 0) {
            EditText editText2 = this.f2863e;
            g gVar = this.f2831B;
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.q(editText2, gVar);
        }
        z();
        if (this.f2839F != 0) {
            r();
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a1  */
    public final void i() {
        float f;
        float fB;
        float f2;
        float fB2;
        int i2;
        float fB3;
        int i3;
        if (f()) {
            RectF rectF = this.f2850O;
            int width = this.f2863e.getWidth();
            int gravity = this.f2863e.getGravity();
            b bVar = this.f2836D0;
            CharSequence charSequence = bVar.f3776w;
            WeakHashMap weakHashMap = N.f4222a;
            boolean zB = (AbstractC0291z.d(bVar.f3756a) == 1 ? h.f4178d : h.f4177c).b(charSequence, charSequence.length());
            bVar.f3778y = zB;
            Rect rect = bVar.f3759e;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        i3 = rect.left;
                        f2 = i3;
                    } else {
                        f = rect.right;
                        fB = bVar.b();
                    }
                } else if (zB) {
                    f = rect.right;
                    fB = bVar.b();
                } else {
                    i3 = rect.left;
                    f2 = i3;
                }
                rectF.left = f2;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (bVar.f3778y) {
                        fB3 = bVar.b();
                        fB2 = fB3 + f2;
                    } else {
                        i2 = rect.right;
                        fB2 = i2;
                    }
                } else if (bVar.f3778y) {
                    i2 = rect.right;
                    fB2 = i2;
                } else {
                    fB3 = bVar.b();
                    fB2 = fB3 + f2;
                }
                rectF.right = fB2;
                float f3 = rect.top;
                TextPaint textPaint = bVar.f3747F;
                textPaint.setTextSize(bVar.f3763j);
                textPaint.setTypeface(bVar.f3772s);
                float f4 = (-textPaint.ascent()) + f3;
                float f5 = rectF.left;
                float f6 = this.f2837E;
                rectF.left = f5 - f6;
                rectF.top -= f6;
                rectF.right += f6;
                rectF.bottom = f4 + f6;
                rectF.offset(-getPaddingLeft(), -getPaddingTop());
                p029r0.g gVar = (p029r0.g) this.f2831B;
                gVar.getClass();
                gVar.l(rectF.left, rectF.top, rectF.right, rectF.bottom);
            }
            f = width / 2.0f;
            fB = bVar.b() / 2.0f;
            f2 = f - fB;
            rectF.left = f2;
            rectF.top = rect.top;
            if (gravity != 17) {
                fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
            } else {
                fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
            }
            rectF.right = fB2;
            float f7 = rect.top;
            TextPaint textPaint2 = bVar.f3747F;
            textPaint2.setTextSize(bVar.f3763j);
            textPaint2.setTypeface(bVar.f3772s);
            float f8 = (-textPaint2.ascent()) + f7;
            float f9 = rectF.left;
            float f10 = this.f2837E;
            rectF.left = f9 - f10;
            rectF.top -= f10;
            rectF.right += f10;
            rectF.bottom = f8 + f10;
            rectF.offset(-getPaddingLeft(), -getPaddingTop());
            p029r0.g gVar2 = (p029r0.g) this.f2831B;
            gVar2.getClass();
            gVar2.l(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    public final void l(C0219b0 c0219b0, int i2) {
        try {
            c0219b0.setTextAppearance(i2);
            if (c0219b0.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        c0219b0.setTextAppearance(R.style.TextAppearance_AppCompat_Caption);
        c0219b0.setTextColor(c.a(getContext(), R.color.design_error));
    }

    public final void m(int i2) {
        boolean z2 = this.f2871j;
        int i3 = this.f2869i;
        String string = null;
        if (i3 == -1) {
            this.f2873k.setText(String.valueOf(i2));
            this.f2873k.setContentDescription(null);
            this.f2871j = false;
        } else {
            this.f2871j = i2 > i3;
            Context context = getContext();
            this.f2873k.setContentDescription(context.getString(this.f2871j ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i2), Integer.valueOf(this.f2869i)));
            if (z2 != this.f2871j) {
                n();
            }
            String str = p032w.b.b;
            Locale locale = Locale.getDefault();
            int i4 = p032w.j.f4179a;
            p032w.b bVar = p032w.i.a(locale) == 1 ? p032w.b.f4169e : p032w.b.f4168d;
            C0219b0 c0219b0 = this.f2873k;
            String string2 = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i2), Integer.valueOf(this.f2869i));
            if (string2 == null) {
                bVar.getClass();
            } else {
                bVar.getClass();
                p032w.g gVar = h.f4176a;
                string = bVar.c(string2).toString();
            }
            c0219b0.setText(string);
        }
        if (this.f2863e == null || z2 == this.f2871j) {
            return;
        }
        s(false, false);
        z();
        p();
    }

    public final void n() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C0219b0 c0219b0 = this.f2873k;
        if (c0219b0 != null) {
            l(c0219b0, this.f2871j ? this.f2875l : this.f2877m);
            if (!this.f2871j && (colorStateList2 = this.f2888s) != null) {
                this.f2873k.setTextColor(colorStateList2);
            }
            if (!this.f2871j || (colorStateList = this.f2890t) == null) {
                return;
            }
            this.f2873k.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    /* JADX WARN: Code duplicated, block: B:21:0x0057  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    public final boolean o() {
        boolean z2;
        if (this.f2863e == null) {
            return false;
        }
        boolean z3 = true;
        if (getStartIconDrawable() != null || this.f2892u != null) {
            LinearLayout linearLayout = this.b;
            if (linearLayout.getMeasuredWidth() > 0) {
                int measuredWidth = linearLayout.getMeasuredWidth() - this.f2863e.getPaddingLeft();
                if (this.V == null || this.f2855W != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.V = colorDrawable;
                    this.f2855W = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] drawableArrA = B.r.a(this.f2863e);
                Drawable drawable = drawableArrA[0];
                ColorDrawable colorDrawable2 = this.V;
                if (drawable != colorDrawable2) {
                    B.r.e(this.f2863e, colorDrawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (this.V != null) {
                Drawable[] drawableArrA2 = B.r.a(this.f2863e);
                B.r.e(this.f2863e, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
                this.V = null;
                z2 = true;
            } else {
                z2 = false;
            }
        } else if (this.V != null) {
            Drawable[] drawableArrA3 = B.r.a(this.f2863e);
            B.r.e(this.f2863e, null, drawableArrA3[1], drawableArrA3[2], drawableArrA3[3]);
            this.V = null;
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.f2883p0.getVisibility() == 0 || ((this.f2860c0 != 0 && g()) || this.f2895w != null)) && this.f2859c.getMeasuredWidth() > 0) {
            int measuredWidth2 = this.f2897x.getMeasuredWidth() - this.f2863e.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = AbstractC0278l.c((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()) + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] drawableArrA4 = B.r.a(this.f2863e);
            ColorDrawable colorDrawable3 = this.f2874k0;
            if (colorDrawable3 == null || this.f2876l0 == measuredWidth2) {
                if (colorDrawable3 == null) {
                    ColorDrawable colorDrawable4 = new ColorDrawable();
                    this.f2874k0 = colorDrawable4;
                    this.f2876l0 = measuredWidth2;
                    colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable2 = drawableArrA4[2];
                ColorDrawable colorDrawable5 = this.f2874k0;
                if (drawable2 != colorDrawable5) {
                    this.f2878m0 = drawable2;
                    B.r.e(this.f2863e, drawableArrA4[0], drawableArrA4[1], colorDrawable5, drawableArrA4[3]);
                } else {
                    z3 = z2;
                }
            } else {
                this.f2876l0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                B.r.e(this.f2863e, drawableArrA4[0], drawableArrA4[1], this.f2874k0, drawableArrA4[3]);
            }
        } else {
            if (this.f2874k0 == null) {
                return z2;
            }
            Drawable[] drawableArrA5 = B.r.a(this.f2863e);
            if (drawableArrA5[2] == this.f2874k0) {
                B.r.e(this.f2863e, drawableArrA5[0], drawableArrA5[1], this.f2878m0, drawableArrA5[3]);
            } else {
                z3 = z2;
            }
            this.f2874k0 = null;
        }
        return z3;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        EditText editText = this.f2863e;
        if (editText != null) {
            ThreadLocal threadLocal = p017k0.c.f3780a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.f2848M;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = p017k0.c.f3780a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            p017k0.c.a(this, editText, matrix);
            ThreadLocal threadLocal3 = p017k0.c.b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            g gVar = this.f2833C;
            if (gVar != null) {
                int i6 = rect.bottom;
                gVar.setBounds(rect.left, i6 - this.f2845J, rect.right, i6);
            }
            if (this.f2899y) {
                float textSize = this.f2863e.getTextSize();
                b bVar = this.f2836D0;
                if (bVar.f3762i != textSize) {
                    bVar.f3762i = textSize;
                    bVar.g();
                }
                int gravity = this.f2863e.getGravity();
                int i7 = (gravity & (-113)) | 48;
                if (bVar.f3761h != i7) {
                    bVar.f3761h = i7;
                    bVar.g();
                }
                if (bVar.f3760g != gravity) {
                    bVar.f3760g = gravity;
                    bVar.g();
                }
                if (this.f2863e == null) {
                    throw new IllegalStateException();
                }
                WeakHashMap weakHashMap = N.f4222a;
                boolean z3 = AbstractC0291z.d(this) == 1;
                int i8 = rect.bottom;
                Rect rect2 = this.f2849N;
                rect2.bottom = i8;
                int i9 = this.f2839F;
                C0219b0 c0219b0 = this.f2893v;
                if (i9 == 1) {
                    int compoundPaddingLeft = this.f2863e.getCompoundPaddingLeft() + rect.left;
                    if (this.f2892u != null && !z3) {
                        compoundPaddingLeft = (compoundPaddingLeft - c0219b0.getMeasuredWidth()) + c0219b0.getPaddingLeft();
                    }
                    rect2.left = compoundPaddingLeft;
                    rect2.top = rect.top + this.f2841G;
                    int compoundPaddingRight = rect.right - this.f2863e.getCompoundPaddingRight();
                    if (this.f2892u != null && z3) {
                        compoundPaddingRight += c0219b0.getMeasuredWidth() - c0219b0.getPaddingRight();
                    }
                    rect2.right = compoundPaddingRight;
                } else if (i9 != 2) {
                    int compoundPaddingLeft2 = this.f2863e.getCompoundPaddingLeft() + rect.left;
                    if (this.f2892u != null && !z3) {
                        compoundPaddingLeft2 = (compoundPaddingLeft2 - c0219b0.getMeasuredWidth()) + c0219b0.getPaddingLeft();
                    }
                    rect2.left = compoundPaddingLeft2;
                    rect2.top = getPaddingTop();
                    int compoundPaddingRight2 = rect.right - this.f2863e.getCompoundPaddingRight();
                    if (this.f2892u != null && z3) {
                        compoundPaddingRight2 += c0219b0.getMeasuredWidth() - c0219b0.getPaddingRight();
                    }
                    rect2.right = compoundPaddingRight2;
                } else {
                    rect2.left = this.f2863e.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - e();
                    rect2.right = rect.right - this.f2863e.getPaddingRight();
                }
                int i10 = rect2.left;
                int i11 = rect2.top;
                int i12 = rect2.right;
                int i13 = rect2.bottom;
                Rect rect3 = bVar.f3759e;
                if (rect3.left != i10 || rect3.top != i11 || rect3.right != i12 || rect3.bottom != i13) {
                    rect3.set(i10, i11, i12, i13);
                    bVar.f3745D = true;
                    bVar.f();
                }
                if (this.f2863e == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = bVar.f3747F;
                textPaint.setTextSize(bVar.f3762i);
                textPaint.setTypeface(bVar.f3773t);
                float f = -textPaint.ascent();
                rect2.left = this.f2863e.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.f2839F != 1 || this.f2863e.getMinLines() > 1) ? rect.top + this.f2863e.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.f2863e.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f2839F != 1 || this.f2863e.getMinLines() > 1) ? rect.bottom - this.f2863e.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i14 = rect2.left;
                int i15 = rect2.top;
                int i16 = rect2.right;
                Rect rect4 = bVar.f3758d;
                if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i14, i15, i16, compoundPaddingBottom);
                    bVar.f3745D = true;
                    bVar.f();
                }
                bVar.g();
                if (!f() || this.f2834C0) {
                    return;
                }
                i();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        EditText editText;
        int iMax;
        super.onMeasure(i2, i3);
        boolean z2 = false;
        if (this.f2863e != null && this.f2863e.getMeasuredHeight() < (iMax = Math.max(this.f2859c.getMeasuredHeight(), this.b.getMeasuredHeight()))) {
            this.f2863e.setMinimumHeight(iMax);
            z2 = true;
        }
        boolean zO = o();
        if (z2 || zO) {
            this.f2863e.post(new q(this, 1));
        }
        if (this.f2882p != null && (editText = this.f2863e) != null) {
            this.f2882p.setGravity(editText.getGravity());
            this.f2882p.setPadding(this.f2863e.getCompoundPaddingLeft(), this.f2863e.getCompoundPaddingTop(), this.f2863e.getCompoundPaddingRight(), this.f2863e.getCompoundPaddingBottom());
        }
        u();
        x();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof s)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        s sVar = (s) parcelable;
        super.onRestoreInstanceState(sVar.f46a);
        setError(sVar.f4117c);
        if (sVar.f4118d) {
            this.f2864e0.post(new q(this, 0));
        }
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        s sVar = new s(super.onSaveInstanceState());
        if (this.f2866g.e()) {
            sVar.f4117c = getError();
        }
        sVar.f4118d = this.f2860c0 != 0 && this.f2864e0.f2807d;
        return sVar;
    }

    public final void p() {
        Drawable background;
        C0219b0 c0219b0;
        EditText editText = this.f2863e;
        if (editText == null || this.f2839F != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = AbstractC0241m0.f3641a;
        Drawable drawableMutate = background.mutate();
        n nVar = this.f2866g;
        if (nVar.e()) {
            C0219b0 c0219b1 = nVar.f4101m;
            drawableMutate.setColorFilter(C0251s.c(c0219b1 != null ? c0219b1.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.f2871j && (c0219b0 = this.f2873k) != null) {
            drawableMutate.setColorFilter(C0251s.c(c0219b0.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawableMutate.clearColorFilter();
            this.f2863e.refreshDrawableState();
        }
    }

    public final void q(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
        Drawable drawableMutate = drawable.mutate();
        s.b.h(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public final void r() {
        if (this.f2839F != 1) {
            FrameLayout frameLayout = this.f2856a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iE = e();
            if (iE != layoutParams.topMargin) {
                layoutParams.topMargin = iE;
                frameLayout.requestLayout();
            }
        }
    }

    public final void s(boolean z2, boolean z3) {
        ColorStateList colorStateList;
        C0219b0 c0219b0;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f2863e;
        boolean z4 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f2863e;
        boolean z5 = editText2 != null && editText2.hasFocus();
        n nVar = this.f2866g;
        boolean zE = nVar.e();
        ColorStateList colorStateList2 = this.f2887r0;
        b bVar = this.f2836D0;
        if (colorStateList2 != null) {
            bVar.h(colorStateList2);
            ColorStateList colorStateList3 = this.f2887r0;
            if (bVar.f3764k != colorStateList3) {
                bVar.f3764k = colorStateList3;
                bVar.g();
            }
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList4 = this.f2887r0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.f2832B0) : this.f2832B0;
            bVar.h(ColorStateList.valueOf(colorForState));
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(colorForState);
            if (bVar.f3764k != colorStateListValueOf) {
                bVar.f3764k = colorStateListValueOf;
                bVar.g();
            }
        } else if (zE) {
            C0219b0 c0219b1 = nVar.f4101m;
            bVar.h(c0219b1 != null ? c0219b1.getTextColors() : null);
        } else if (this.f2871j && (c0219b0 = this.f2873k) != null) {
            bVar.h(c0219b0.getTextColors());
        } else if (z5 && (colorStateList = this.f2889s0) != null) {
            bVar.h(colorStateList);
        }
        if (z4 || (isEnabled() && (z5 || zE))) {
            if (z3 || this.f2834C0) {
                ValueAnimator valueAnimator = this.f2840F0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f2840F0.cancel();
                }
                if (z2 && this.f2838E0) {
                    a(1.0f);
                } else {
                    bVar.i(1.0f);
                }
                this.f2834C0 = false;
                if (f()) {
                    i();
                }
                EditText editText3 = this.f2863e;
                t(editText3 != null ? editText3.getText().length() : 0);
                v();
                y();
                return;
            }
            return;
        }
        if (z3 || !this.f2834C0) {
            ValueAnimator valueAnimator2 = this.f2840F0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f2840F0.cancel();
            }
            if (z2 && this.f2838E0) {
                a(0.0f);
            } else {
                bVar.i(0.0f);
            }
            if (f() && !((p029r0.g) this.f2831B).f4068y.isEmpty() && f()) {
                ((p029r0.g) this.f2831B).l(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f2834C0 = true;
            C0219b0 c0219b2 = this.f2882p;
            if (c0219b2 != null && this.f2880o) {
                c0219b2.setText((CharSequence) null);
                this.f2882p.setVisibility(4);
            }
            v();
            y();
        }
    }

    public void setBoxBackgroundColor(int i2) {
        if (this.f2847L != i2) {
            this.f2847L = i2;
            this.f2898x0 = i2;
            this.f2901z0 = i2;
            this.f2830A0 = i2;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i2) {
        setBoxBackgroundColor(c.a(getContext(), i2));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f2898x0 = defaultColor;
        this.f2847L = defaultColor;
        this.y0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f2901z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.f2830A0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.f2839F) {
            return;
        }
        this.f2839F = i2;
        if (this.f2863e != null) {
            h();
        }
    }

    public void setBoxStrokeColor(int i2) {
        if (this.f2894v0 != i2) {
            this.f2894v0 = i2;
            z();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f2891t0 = colorStateList.getDefaultColor();
            this.f2832B0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.u0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.f2894v0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.f2894v0 != colorStateList.getDefaultColor()) {
            this.f2894v0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f2896w0 != colorStateList) {
            this.f2896w0 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i2) {
        this.f2844I = i2;
        z();
    }

    public void setBoxStrokeWidthFocused(int i2) {
        this.f2845J = i2;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(int i2) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidthResource(int i2) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public void setCounterEnabled(boolean z2) {
        if (this.f2868h != z2) {
            n nVar = this.f2866g;
            if (z2) {
                C0219b0 c0219b0 = new C0219b0(getContext(), null);
                this.f2873k = c0219b0;
                c0219b0.setId(R.id.textinput_counter);
                Typeface typeface = this.P;
                if (typeface != null) {
                    this.f2873k.setTypeface(typeface);
                }
                this.f2873k.setMaxLines(1);
                nVar.a(this.f2873k, 2);
                AbstractC0278l.h((ViewGroup.MarginLayoutParams) this.f2873k.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                n();
                if (this.f2873k != null) {
                    EditText editText = this.f2863e;
                    m(editText == null ? 0 : editText.getText().length());
                }
            } else {
                nVar.h(this.f2873k, 2);
                this.f2873k = null;
            }
            this.f2868h = z2;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.f2869i != i2) {
            if (i2 > 0) {
                this.f2869i = i2;
            } else {
                this.f2869i = -1;
            }
            if (!this.f2868h || this.f2873k == null) {
                return;
            }
            EditText editText = this.f2863e;
            m(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setCounterOverflowTextAppearance(int i2) {
        if (this.f2875l != i2) {
            this.f2875l = i2;
            n();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f2890t != colorStateList) {
            this.f2890t = colorStateList;
            n();
        }
    }

    public void setCounterTextAppearance(int i2) {
        if (this.f2877m != i2) {
            this.f2877m = i2;
            n();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f2888s != colorStateList) {
            this.f2888s = colorStateList;
            n();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f2887r0 = colorStateList;
        this.f2889s0 = colorStateList;
        if (this.f2863e != null) {
            s(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        j(this, z2);
        super.setEnabled(z2);
    }

    public void setEndIconActivated(boolean z2) {
        this.f2864e0.setActivated(z2);
    }

    public void setEndIconCheckable(boolean z2) {
        this.f2864e0.setCheckable(z2);
    }

    public void setEndIconContentDescription(int i2) {
        setEndIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setEndIconDrawable(int i2) {
        setEndIconDrawable(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    public void setEndIconMode(int i2) {
        int i3 = this.f2860c0;
        this.f2860c0 = i2;
        for (p029r0.b bVar : this.f2865f0) {
            switch (bVar.f4058a) {
                case 0:
                    EditText editText = getEditText();
                    if (editText != null && i3 == 2) {
                        e eVar = (e) bVar.b;
                        editText.removeTextChangedListener(eVar.f4061d);
                        if (editText.getOnFocusChangeListener() == eVar.f4062e) {
                            editText.setOnFocusChangeListener(null);
                        }
                    }
                    break;
                case 1:
                    AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) getEditText();
                    if (autoCompleteTextView != null && i3 == 3) {
                        p029r0.k kVar = (p029r0.k) bVar.b;
                        autoCompleteTextView.removeTextChangedListener(kVar.f4073d);
                        if (autoCompleteTextView.getOnFocusChangeListener() == kVar.f4074e) {
                            autoCompleteTextView.setOnFocusChangeListener(null);
                        }
                        autoCompleteTextView.setOnTouchListener(null);
                        autoCompleteTextView.setOnDismissListener(null);
                    }
                    break;
                default:
                    EditText editText2 = getEditText();
                    if (editText2 != null && i3 == 1) {
                        editText2.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        editText2.removeTextChangedListener(((p) bVar.b).f4113d);
                    }
                    break;
            }
        }
        setEndIconVisible(i2 != 0);
        if (!getEndIconDelegate().b(this.f2839F)) {
            throw new IllegalStateException("The current box background mode " + this.f2839F + " is not supported by the end icon mode " + i2);
        }
        getEndIconDelegate().a();
        c();
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.n0;
        CheckableImageButton checkableImageButton = this.f2864e0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.n0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f2864e0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f2867g0 != colorStateList) {
            this.f2867g0 = colorStateList;
            this.h0 = true;
            c();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f2870i0 != mode) {
            this.f2870i0 = mode;
            this.f2872j0 = true;
            c();
        }
    }

    public void setEndIconVisible(boolean z2) {
        if (g() != z2) {
            this.f2864e0.setVisibility(z2 ? 0 : 8);
            x();
            o();
        }
    }

    public void setError(CharSequence charSequence) {
        n nVar = this.f2866g;
        if (!nVar.f4100l) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            nVar.g();
            return;
        }
        nVar.c();
        nVar.f4099k = charSequence;
        nVar.f4101m.setText(charSequence);
        int i2 = nVar.f4097i;
        if (i2 != 1) {
            nVar.f4098j = 1;
        }
        nVar.j(i2, nVar.f4098j, nVar.i(nVar.f4101m, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        n nVar = this.f2866g;
        nVar.f4102n = charSequence;
        C0219b0 c0219b0 = nVar.f4101m;
        if (c0219b0 != null) {
            c0219b0.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z2) {
        n nVar = this.f2866g;
        if (nVar.f4100l == z2) {
            return;
        }
        nVar.c();
        TextInputLayout textInputLayout = nVar.b;
        if (z2) {
            C0219b0 c0219b0 = new C0219b0(nVar.f4091a, null);
            nVar.f4101m = c0219b0;
            c0219b0.setId(R.id.textinput_error);
            nVar.f4101m.setTextAlignment(5);
            Typeface typeface = nVar.f4110v;
            if (typeface != null) {
                nVar.f4101m.setTypeface(typeface);
            }
            int i2 = nVar.f4103o;
            nVar.f4103o = i2;
            C0219b0 c0219b1 = nVar.f4101m;
            if (c0219b1 != null) {
                textInputLayout.l(c0219b1, i2);
            }
            ColorStateList colorStateList = nVar.f4104p;
            nVar.f4104p = colorStateList;
            C0219b0 c0219b2 = nVar.f4101m;
            if (c0219b2 != null && colorStateList != null) {
                c0219b2.setTextColor(colorStateList);
            }
            CharSequence charSequence = nVar.f4102n;
            nVar.f4102n = charSequence;
            C0219b0 c0219b3 = nVar.f4101m;
            if (c0219b3 != null) {
                c0219b3.setContentDescription(charSequence);
            }
            nVar.f4101m.setVisibility(4);
            A.f(nVar.f4101m, 1);
            nVar.a(nVar.f4101m, 0);
        } else {
            nVar.g();
            nVar.h(nVar.f4101m, 0);
            nVar.f4101m = null;
            textInputLayout.p();
            textInputLayout.z();
        }
        nVar.f4100l = z2;
    }

    public void setErrorIconDrawable(int i2) {
        setErrorIconDrawable(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f2881o0;
        CheckableImageButton checkableImageButton = this.f2883p0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f2881o0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f2883p0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f2885q0 = colorStateList;
        CheckableImageButton checkableImageButton = this.f2883p0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            s.b.h(drawable, colorStateList);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        CheckableImageButton checkableImageButton = this.f2883p0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            s.b.i(drawable, mode);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i2) {
        n nVar = this.f2866g;
        nVar.f4103o = i2;
        C0219b0 c0219b0 = nVar.f4101m;
        if (c0219b0 != null) {
            nVar.b.l(c0219b0, i2);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        n nVar = this.f2866g;
        nVar.f4104p = colorStateList;
        C0219b0 c0219b0 = nVar.f4101m;
        if (c0219b0 == null || colorStateList == null) {
            return;
        }
        c0219b0.setTextColor(colorStateList);
    }

    public void setHelperText(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        n nVar = this.f2866g;
        if (zIsEmpty) {
            if (nVar.f4106r) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!nVar.f4106r) {
            setHelperTextEnabled(true);
        }
        nVar.c();
        nVar.f4105q = charSequence;
        nVar.f4107s.setText(charSequence);
        int i2 = nVar.f4097i;
        if (i2 != 2) {
            nVar.f4098j = 2;
        }
        nVar.j(i2, nVar.f4098j, nVar.i(nVar.f4107s, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        n nVar = this.f2866g;
        nVar.f4109u = colorStateList;
        C0219b0 c0219b0 = nVar.f4107s;
        if (c0219b0 == null || colorStateList == null) {
            return;
        }
        c0219b0.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z2) {
        n nVar = this.f2866g;
        if (nVar.f4106r == z2) {
            return;
        }
        nVar.c();
        if (z2) {
            C0219b0 c0219b0 = new C0219b0(nVar.f4091a, null);
            nVar.f4107s = c0219b0;
            c0219b0.setId(R.id.textinput_helper_text);
            nVar.f4107s.setTextAlignment(5);
            Typeface typeface = nVar.f4110v;
            if (typeface != null) {
                nVar.f4107s.setTypeface(typeface);
            }
            nVar.f4107s.setVisibility(4);
            A.f(nVar.f4107s, 1);
            int i2 = nVar.f4108t;
            nVar.f4108t = i2;
            C0219b0 c0219b1 = nVar.f4107s;
            if (c0219b1 != null) {
                c0219b1.setTextAppearance(i2);
            }
            ColorStateList colorStateList = nVar.f4109u;
            nVar.f4109u = colorStateList;
            C0219b0 c0219b2 = nVar.f4107s;
            if (c0219b2 != null && colorStateList != null) {
                c0219b2.setTextColor(colorStateList);
            }
            nVar.a(nVar.f4107s, 1);
        } else {
            nVar.c();
            int i3 = nVar.f4097i;
            if (i3 == 2) {
                nVar.f4098j = 0;
            }
            nVar.j(i3, nVar.f4098j, nVar.i(nVar.f4107s, null));
            nVar.h(nVar.f4107s, 1);
            nVar.f4107s = null;
            TextInputLayout textInputLayout = nVar.b;
            textInputLayout.p();
            textInputLayout.z();
        }
        nVar.f4106r = z2;
    }

    public void setHelperTextTextAppearance(int i2) {
        n nVar = this.f2866g;
        nVar.f4108t = i2;
        C0219b0 c0219b0 = nVar.f4107s;
        if (c0219b0 != null) {
            c0219b0.setTextAppearance(i2);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.f2899y) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z2) {
        this.f2838E0 = z2;
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.f2899y) {
            this.f2899y = z2;
            if (z2) {
                CharSequence hint = this.f2863e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f2900z)) {
                        setHint(hint);
                    }
                    this.f2863e.setHint((CharSequence) null);
                }
                this.f2829A = true;
            } else {
                this.f2829A = false;
                if (!TextUtils.isEmpty(this.f2900z) && TextUtils.isEmpty(this.f2863e.getHint())) {
                    this.f2863e.setHint(this.f2900z);
                }
                setHintInternal(null);
            }
            if (this.f2863e != null) {
                r();
            }
        }
    }

    public void setHintTextAppearance(int i2) {
        b bVar = this.f2836D0;
        TextInputLayout textInputLayout = bVar.f3756a;
        d dVar = new d(textInputLayout.getContext(), i2);
        ColorStateList colorStateList = dVar.b;
        if (colorStateList != null) {
            bVar.f3765l = colorStateList;
        }
        float f = dVar.f3881a;
        if (f != 0.0f) {
            bVar.f3763j = f;
        }
        ColorStateList colorStateList2 = dVar.f;
        if (colorStateList2 != null) {
            bVar.f3753L = colorStateList2;
        }
        bVar.f3751J = dVar.f3885g;
        bVar.f3752K = dVar.f3886h;
        bVar.f3750I = dVar.f3887i;
        p021m0.a aVar = bVar.f3775v;
        if (aVar != null) {
            aVar.f3876c = true;
        }
        A.e eVar = new A.e(bVar, 20);
        dVar.a();
        bVar.f3775v = new p021m0.a(eVar, dVar.f3890l);
        dVar.b(textInputLayout.getContext(), bVar.f3775v);
        bVar.g();
        this.f2889s0 = bVar.f3765l;
        if (this.f2863e != null) {
            s(false, false);
            r();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f2889s0 != colorStateList) {
            if (this.f2887r0 == null) {
                this.f2836D0.h(colorStateList);
            }
            this.f2889s0 = colorStateList;
            if (this.f2863e != null) {
                s(false, false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z2) {
        if (z2 && this.f2860c0 != 1) {
            setEndIconMode(1);
        } else {
            if (z2) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f2867g0 = colorStateList;
        this.h0 = true;
        c();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f2870i0 = mode;
        this.f2872j0 = true;
        c();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f2880o && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f2880o) {
                setPlaceholderTextEnabled(true);
            }
            this.f2879n = charSequence;
        }
        EditText editText = this.f2863e;
        t(editText != null ? editText.getText().length() : 0);
    }

    public void setPlaceholderTextAppearance(int i2) {
        this.f2886r = i2;
        C0219b0 c0219b0 = this.f2882p;
        if (c0219b0 != null) {
            c0219b0.setTextAppearance(i2);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f2884q != colorStateList) {
            this.f2884q = colorStateList;
            C0219b0 c0219b0 = this.f2882p;
            if (c0219b0 == null || colorStateList == null) {
                return;
            }
            c0219b0.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f2892u = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f2893v.setText(charSequence);
        v();
    }

    public void setPrefixTextAppearance(int i2) {
        this.f2893v.setTextAppearance(i2);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f2893v.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z2) {
        this.f2851Q.setCheckable(z2);
    }

    public void setStartIconContentDescription(int i2) {
        setStartIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setStartIconDrawable(int i2) {
        setStartIconDrawable(i2 != 0 ? AbstractC0201a.A(getContext(), i2) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f2857a0;
        CheckableImageButton checkableImageButton = this.f2851Q;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f2857a0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f2851Q;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f2852R != colorStateList) {
            this.f2852R = colorStateList;
            this.S = true;
            d(this.f2851Q, true, colorStateList, this.f2854U, this.f2853T);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f2853T != mode) {
            this.f2853T = mode;
            this.f2854U = true;
            d(this.f2851Q, this.S, this.f2852R, true, mode);
        }
    }

    public void setStartIconVisible(boolean z2) {
        CheckableImageButton checkableImageButton = this.f2851Q;
        if ((checkableImageButton.getVisibility() == 0) != z2) {
            checkableImageButton.setVisibility(z2 ? 0 : 8);
            u();
            o();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f2895w = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f2897x.setText(charSequence);
        y();
    }

    public void setSuffixTextAppearance(int i2) {
        this.f2897x.setTextAppearance(i2);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f2897x.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(r rVar) {
        EditText editText = this.f2863e;
        if (editText != null) {
            N.i(editText, rVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        boolean z2;
        if (typeface != this.P) {
            this.P = typeface;
            b bVar = this.f2836D0;
            p021m0.a aVar = bVar.f3775v;
            boolean z3 = true;
            if (aVar != null) {
                aVar.f3876c = true;
            }
            if (bVar.f3772s != typeface) {
                bVar.f3772s = typeface;
                z2 = true;
            } else {
                z2 = false;
            }
            if (bVar.f3773t != typeface) {
                bVar.f3773t = typeface;
            } else {
                z3 = false;
            }
            if (z2 || z3) {
                bVar.g();
            }
            n nVar = this.f2866g;
            if (typeface != nVar.f4110v) {
                nVar.f4110v = typeface;
                C0219b0 c0219b0 = nVar.f4101m;
                if (c0219b0 != null) {
                    c0219b0.setTypeface(typeface);
                }
                C0219b0 c0219b1 = nVar.f4107s;
                if (c0219b1 != null) {
                    c0219b1.setTypeface(typeface);
                }
            }
            C0219b0 c0219b2 = this.f2873k;
            if (c0219b2 != null) {
                c0219b2.setTypeface(typeface);
            }
        }
    }

    public final void t(int i2) {
        if (i2 != 0 || this.f2834C0) {
            C0219b0 c0219b0 = this.f2882p;
            if (c0219b0 == null || !this.f2880o) {
                return;
            }
            c0219b0.setText((CharSequence) null);
            this.f2882p.setVisibility(4);
            return;
        }
        C0219b0 c0219b1 = this.f2882p;
        if (c0219b1 == null || !this.f2880o) {
            return;
        }
        c0219b1.setText(this.f2879n);
        this.f2882p.setVisibility(0);
        this.f2882p.bringToFront();
    }

    public final void u() {
        int iF;
        if (this.f2863e == null) {
            return;
        }
        if (this.f2851Q.getVisibility() == 0) {
            iF = 0;
        } else {
            EditText editText = this.f2863e;
            WeakHashMap weakHashMap = N.f4222a;
            iF = AbstractC0291z.f(editText);
        }
        C0219b0 c0219b0 = this.f2893v;
        int compoundPaddingTop = this.f2863e.getCompoundPaddingTop();
        int compoundPaddingBottom = this.f2863e.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = N.f4222a;
        AbstractC0291z.k(c0219b0, iF, compoundPaddingTop, 0, compoundPaddingBottom);
    }

    public final void v() {
        this.f2893v.setVisibility((this.f2892u == null || this.f2834C0) ? 8 : 0);
        o();
    }

    public final void w(boolean z2, boolean z3) {
        int defaultColor = this.f2896w0.getDefaultColor();
        int colorForState = this.f2896w0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f2896w0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z2) {
            this.f2846K = colorForState2;
        } else if (z3) {
            this.f2846K = colorForState;
        } else {
            this.f2846K = defaultColor;
        }
    }

    public final void x() {
        int iE;
        if (this.f2863e == null) {
            return;
        }
        if (g() || this.f2883p0.getVisibility() == 0) {
            iE = 0;
        } else {
            EditText editText = this.f2863e;
            WeakHashMap weakHashMap = N.f4222a;
            iE = AbstractC0291z.e(editText);
        }
        C0219b0 c0219b0 = this.f2897x;
        int paddingTop = this.f2863e.getPaddingTop();
        int paddingBottom = this.f2863e.getPaddingBottom();
        WeakHashMap weakHashMap2 = N.f4222a;
        AbstractC0291z.k(c0219b0, 0, paddingTop, iE, paddingBottom);
    }

    public final void y() {
        C0219b0 c0219b0 = this.f2897x;
        int visibility = c0219b0.getVisibility();
        boolean z2 = (this.f2895w == null || this.f2834C0) ? false : true;
        c0219b0.setVisibility(z2 ? 0 : 8);
        if (visibility != c0219b0.getVisibility()) {
            getEndIconDelegate().c(z2);
        }
        o();
    }

    public final void z() {
        C0219b0 c0219b0;
        EditText editText;
        EditText editText2;
        if (this.f2831B == null || this.f2839F == 0) {
            return;
        }
        boolean z2 = false;
        boolean z3 = isFocused() || ((editText2 = this.f2863e) != null && editText2.hasFocus());
        boolean z4 = isHovered() || ((editText = this.f2863e) != null && editText.isHovered());
        boolean zIsEnabled = isEnabled();
        n nVar = this.f2866g;
        if (!zIsEnabled) {
            this.f2846K = this.f2832B0;
        } else if (nVar.e()) {
            if (this.f2896w0 != null) {
                w(z3, z4);
            } else {
                C0219b0 c0219b1 = nVar.f4101m;
                this.f2846K = c0219b1 != null ? c0219b1.getCurrentTextColor() : -1;
            }
        } else if (!this.f2871j || (c0219b0 = this.f2873k) == null) {
            if (z3) {
                this.f2846K = this.f2894v0;
            } else if (z4) {
                this.f2846K = this.u0;
            } else {
                this.f2846K = this.f2891t0;
            }
        } else if (this.f2896w0 != null) {
            w(z3, z4);
        } else {
            this.f2846K = c0219b0.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && nVar.f4100l && nVar.e()) {
            z2 = true;
        }
        setErrorIconVisible(z2);
        q(this.f2883p0, this.f2885q0);
        q(this.f2851Q, this.f2852R);
        ColorStateList colorStateList = this.f2867g0;
        CheckableImageButton checkableImageButton = this.f2864e0;
        q(checkableImageButton, colorStateList);
        l endIconDelegate = getEndIconDelegate();
        endIconDelegate.getClass();
        if (endIconDelegate instanceof p029r0.k) {
            if (!nVar.e() || getEndIconDrawable() == null) {
                c();
            } else {
                Drawable drawableMutate = getEndIconDrawable().mutate();
                C0219b0 c0219b2 = nVar.f4101m;
                s.b.g(drawableMutate, c0219b2 != null ? c0219b2.getCurrentTextColor() : -1);
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        if (z3 && isEnabled()) {
            this.f2842H = this.f2845J;
        } else {
            this.f2842H = this.f2844I;
        }
        if (this.f2839F == 1) {
            if (!isEnabled()) {
                this.f2847L = this.y0;
            } else if (z4 && !z3) {
                this.f2847L = this.f2830A0;
            } else if (z3) {
                this.f2847L = this.f2901z0;
            } else {
                this.f2847L = this.f2898x0;
            }
        }
        b();
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f2864e0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f2864e0.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f2883p0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f2866g.f4100l);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f2851Q.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f2851Q;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            d(checkableImageButton, this.S, this.f2852R, this.f2854U, this.f2853T);
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f2864e0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f2864e0.setImageDrawable(drawable);
    }
}
