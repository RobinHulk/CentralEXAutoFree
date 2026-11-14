package p014j;

import A.b;
import G.i;
import M.C0003d;
import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.sun.mail.imap.IMAPStore;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p010g.a;
import p034y.A;
import p034y.C0287v;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class d1 extends CompoundButton {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final b1 f3545R = new b1(Float.class, "thumbPos");
    public static final int[] S = {R.attr.state_checked};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f3546A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f3547B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f3548C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f3549D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f3550E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f3551F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3552G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3553H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final TextPaint f3554I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ColorStateList f3555J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public StaticLayout f3556K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public StaticLayout f3557L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final a f3558M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ObjectAnimator f3559N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C0257v f3560O;
    public i P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Rect f3561Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Drawable f3562a;
    public ColorStateList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f3563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3565e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f3566g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f3567h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3568i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3569j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3570k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3571l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3572m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3573n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f3574o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f3575p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3576q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f3577r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3578s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3579t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f3580u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float f3581v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f3582w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final VelocityTracker f3583x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f3584y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f3585z;

    public d1(Context context, AttributeSet attributeSet) {
        Typeface typeface;
        int resourceId;
        super(context, attributeSet, com.ex.auto.R.attr.switchStyle);
        this.b = null;
        this.f3563c = null;
        this.f3564d = false;
        this.f3565e = false;
        this.f3566g = null;
        this.f3567h = null;
        this.f3568i = false;
        this.f3569j = false;
        this.f3583x = VelocityTracker.obtain();
        this.f3553H = true;
        this.f3561Q = new Rect();
        e1.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f3554I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = p005d.a.f2926w;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.switchStyle, 0);
        C0003d c0003d = new C0003d(context, typedArrayObtainStyledAttributes);
        N.h(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, com.ex.auto.R.attr.switchStyle);
        Drawable drawableK = c0003d.k(2);
        this.f3562a = drawableK;
        if (drawableK != null) {
            drawableK.setCallback(this);
        }
        Drawable drawableK2 = c0003d.k(11);
        this.f = drawableK2;
        if (drawableK2 != null) {
            drawableK2.setCallback(this);
        }
        setTextOnInternal(typedArrayObtainStyledAttributes.getText(0));
        setTextOffInternal(typedArrayObtainStyledAttributes.getText(1));
        this.f3578s = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.f3570k = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.f3571l = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f3572m = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.f3573n = typedArrayObtainStyledAttributes.getBoolean(4, false);
        ColorStateList colorStateListJ = c0003d.j(9);
        if (colorStateListJ != null) {
            this.b = colorStateListJ;
            this.f3564d = true;
        }
        PorterDuff.Mode modeC = AbstractC0241m0.c(typedArrayObtainStyledAttributes.getInt(10, -1), null);
        if (this.f3563c != modeC) {
            this.f3563c = modeC;
            this.f3565e = true;
        }
        if (this.f3564d || this.f3565e) {
            a();
        }
        ColorStateList colorStateListJ2 = c0003d.j(12);
        if (colorStateListJ2 != null) {
            this.f3566g = colorStateListJ2;
            this.f3568i = true;
        }
        PorterDuff.Mode modeC2 = AbstractC0241m0.c(typedArrayObtainStyledAttributes.getInt(13, -1), null);
        if (this.f3567h != modeC2) {
            this.f3567h = modeC2;
            this.f3569j = true;
        }
        if (this.f3568i || this.f3569j) {
            b();
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId2, p005d.a.f2927x);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes2.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(3, 0)) == 0 || (colorStateList = AbstractC0201a.w(context, resourceId)) == null) ? typedArrayObtainStyledAttributes2.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.f3555J = colorStateList;
            } else {
                this.f3555J = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i2 = typedArrayObtainStyledAttributes2.getInt(1, -1);
            int i3 = typedArrayObtainStyledAttributes2.getInt(2, -1);
            if (i2 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i2 != 2) {
                typeface = i2 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i3 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i3) : Typeface.create(typeface, i3);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i4 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i3;
                textPaint.setFakeBoldText((i4 & 1) != 0);
                textPaint.setTextSkewX((2 & i4) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes2.getBoolean(14, false)) {
                Context context2 = getContext();
                a aVar = new a();
                aVar.f3156a = context2.getResources().getConfiguration().locale;
                this.f3558M = aVar;
            } else {
                this.f3558M = null;
            }
            setTextOnInternal(this.f3574o);
            setTextOffInternal(this.f3576q);
            typedArrayObtainStyledAttributes2.recycle();
        }
        new Z(this).f(attributeSet, com.ex.auto.R.attr.switchStyle);
        c0003d.w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f3580u = viewConfiguration.getScaledTouchSlop();
        this.f3584y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, com.ex.auto.R.attr.switchStyle);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private C0257v getEmojiTextViewHelper() {
        if (this.f3560O == null) {
            this.f3560O = new C0257v(this);
        }
        return this.f3560O;
    }

    private boolean getTargetCheckedState() {
        return this.f3585z > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((u1.a(this) ? 1.0f - this.f3585z : this.f3585z) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f3561Q;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f3562a;
        Rect rectB = drawable2 != null ? AbstractC0241m0.b(drawable2) : AbstractC0241m0.f3642c;
        return ((((this.f3546A - this.f3548C) - rect.left) - rect.right) - rectB.left) - rectB.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f3576q = charSequence;
        C0257v emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodJ0 = ((b) emojiTextViewHelper.b.b).j0(this.f3558M);
        if (transformationMethodJ0 != null) {
            charSequence = transformationMethodJ0.getTransformation(charSequence, this);
        }
        this.f3577r = charSequence;
        this.f3557L = null;
        if (this.f3578s) {
            d();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f3574o = charSequence;
        C0257v emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodJ0 = ((b) emojiTextViewHelper.b.b).j0(this.f3558M);
        if (transformationMethodJ0 != null) {
            charSequence = transformationMethodJ0.getTransformation(charSequence, this);
        }
        this.f3575p = charSequence;
        this.f3556K = null;
        if (this.f3578s) {
            d();
        }
    }

    public final void a() {
        Drawable drawable = this.f3562a;
        if (drawable != null) {
            if (this.f3564d || this.f3565e) {
                Drawable drawableMutate = drawable.mutate();
                this.f3562a = drawableMutate;
                if (this.f3564d) {
                    s.b.h(drawableMutate, this.b);
                }
                if (this.f3565e) {
                    s.b.i(this.f3562a, this.f3563c);
                }
                if (this.f3562a.isStateful()) {
                    this.f3562a.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f3568i || this.f3569j) {
                Drawable drawableMutate = drawable.mutate();
                this.f = drawableMutate;
                if (this.f3568i) {
                    s.b.h(drawableMutate, this.f3566g);
                }
                if (this.f3569j) {
                    s.b.i(this.f, this.f3567h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.f3574o);
        setTextOffInternal(this.f3576q);
        requestLayout();
    }

    public final void d() {
        if (this.P == null && ((b) this.f3560O.b.b).G() && androidx.emoji2.text.i.f1695j != null) {
            androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
            int iB = iVarA.b();
            if (iB == 3 || iB == 0) {
                i iVar = new i(this);
                this.P = iVar;
                iVarA.f(iVar);
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i2;
        int i3;
        int i4 = this.f3549D;
        int i5 = this.f3550E;
        int i6 = this.f3551F;
        int i7 = this.f3552G;
        int thumbOffset = getThumbOffset() + i4;
        Drawable drawable = this.f3562a;
        Rect rectB = drawable != null ? AbstractC0241m0.b(drawable) : AbstractC0241m0.f3642c;
        Drawable drawable2 = this.f;
        Rect rect = this.f3561Q;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i8 = rect.left;
            thumbOffset += i8;
            if (rectB != null) {
                int i9 = rectB.left;
                if (i9 > i8) {
                    i4 += i9 - i8;
                }
                int i10 = rectB.top;
                int i11 = rect.top;
                i2 = i10 > i11 ? (i10 - i11) + i5 : i5;
                int i12 = rectB.right;
                int i13 = rect.right;
                if (i12 > i13) {
                    i6 -= i12 - i13;
                }
                int i14 = rectB.bottom;
                int i15 = rect.bottom;
                if (i14 > i15) {
                    i3 = i7 - (i14 - i15);
                }
                this.f.setBounds(i4, i2, i6, i3);
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.f.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.f3562a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i16 = thumbOffset - rect.left;
            int i17 = thumbOffset + this.f3548C + rect.right;
            this.f3562a.setBounds(i16, i5, i17, i7);
            Drawable background = getBackground();
            if (background != null) {
                s.b.f(background, i16, i5, i17, i7);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f3562a;
        if (drawable != null) {
            s.b.e(drawable, f, f2);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            s.b.e(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3562a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!u1.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f3546A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f3572m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (u1.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f3546A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f3572m : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public boolean getShowText() {
        return this.f3578s;
    }

    public boolean getSplitTrack() {
        return this.f3573n;
    }

    public int getSwitchMinWidth() {
        return this.f3571l;
    }

    public int getSwitchPadding() {
        return this.f3572m;
    }

    public CharSequence getTextOff() {
        return this.f3576q;
    }

    public CharSequence getTextOn() {
        return this.f3574o;
    }

    public Drawable getThumbDrawable() {
        return this.f3562a;
    }

    public final float getThumbPosition() {
        return this.f3585z;
    }

    public int getThumbTextPadding() {
        return this.f3570k;
    }

    public ColorStateList getThumbTintList() {
        return this.b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f3563c;
    }

    public Drawable getTrackDrawable() {
        return this.f;
    }

    public ColorStateList getTrackTintList() {
        return this.f3566g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f3567h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3562a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f3559N;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f3559N.end();
        this.f3559N = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, S);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f;
        Rect rect = this.f3561Q;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f3550E;
        int i3 = this.f3552G;
        int i4 = i2 + rect.top;
        int i5 = i3 - rect.bottom;
        Drawable drawable2 = this.f3562a;
        if (drawable != null) {
            if (!this.f3573n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectB = AbstractC0241m0.b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectB.left;
                rect.right -= rectB.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f3556K : this.f3557L;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f3555J;
            TextPaint textPaint = this.f3554I;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i4 + i5) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f3574o : this.f3576q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z2, i2, i3, i4, i5);
        int iMax2 = 0;
        if (this.f3562a != null) {
            Drawable drawable = this.f;
            Rect rect = this.f3561Q;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectB = AbstractC0241m0.b(this.f3562a);
            iMax = Math.max(0, rectB.left - rect.left);
            iMax2 = Math.max(0, rectB.right - rect.right);
        } else {
            iMax = 0;
        }
        if (u1.a(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.f3546A + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.f3546A) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i6 = this.f3547B;
            int i7 = height2 - (i6 / 2);
            height = i6 + i7;
            paddingTop = i7;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.f3547B + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.f3547B;
        }
        this.f3549D = paddingLeft;
        this.f3550E = paddingTop;
        this.f3552G = height;
        this.f3551F = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i2, int i3) {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        int intrinsicHeight2 = 0;
        if (this.f3578s) {
            StaticLayout staticLayout = this.f3556K;
            TextPaint textPaint = this.f3554I;
            if (staticLayout == null) {
                CharSequence charSequence = this.f3575p;
                this.f3556K = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f3557L == null) {
                CharSequence charSequence2 = this.f3577r;
                this.f3557L = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f3562a;
        Rect rect = this.f3561Q;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f3562a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f3562a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.f3578s) {
            iMax = (this.f3570k * 2) + Math.max(this.f3556K.getWidth(), this.f3557L.getWidth());
        } else {
            iMax = 0;
        }
        this.f3548C = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.f3562a;
        if (drawable3 != null) {
            Rect rectB = AbstractC0241m0.b(drawable3);
            iMax2 = Math.max(iMax2, rectB.left);
            iMax3 = Math.max(iMax3, rectB.right);
        }
        int iMax4 = this.f3553H ? Math.max(this.f3571l, (this.f3548C * 2) + iMax2 + iMax3) : this.f3571l;
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.f3546A = iMax4;
        this.f3547B = iMax5;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f3574o : this.f3576q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0091  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ee  */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean zIsChecked;
        boolean targetCheckedState;
        float xVelocity;
        float f;
        VelocityTracker velocityTracker = this.f3583x;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i2 = this.f3580u;
        if (actionMasked != 0) {
            float f2 = 0.0f;
            if (actionMasked == 1) {
                if (this.f3579t == 2) {
                    this.f3579t = 0;
                    if (motionEvent.getAction() == 1 || !isEnabled()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    zIsChecked = isChecked();
                    if (z2) {
                        velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) <= this.f3584y) {
                            targetCheckedState = u1.a(this) ? xVelocity > 0.0f : xVelocity < 0.0f;
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f3579t = 0;
                velocityTracker.clear();
            } else if (actionMasked == 2) {
                int i3 = this.f3579t;
                if (i3 == 1) {
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    float f3 = i2;
                    if (Math.abs(x2 - this.f3581v) > f3 || Math.abs(y2 - this.f3582w) > f3) {
                        this.f3579t = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.f3581v = x2;
                        this.f3582w = y2;
                        return true;
                    }
                } else if (i3 == 2) {
                    float x3 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f4 = x3 - this.f3581v;
                    if (thumbScrollRange != 0) {
                        f = f4 / thumbScrollRange;
                    } else {
                        f = f4 > 0.0f ? 1.0f : -1.0f;
                    }
                    if (u1.a(this)) {
                        f = -f;
                    }
                    float f5 = this.f3585z;
                    float f6 = f + f5;
                    if (f6 >= 0.0f) {
                        f2 = f6 > 1.0f ? 1.0f : f6;
                    }
                    if (f2 != f5) {
                        this.f3581v = x3;
                        setThumbPosition(f2);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                if (this.f3579t == 2) {
                    this.f3579t = 0;
                    if (motionEvent.getAction() == 1) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    zIsChecked = isChecked();
                    if (z2) {
                        velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) <= this.f3584y) {
                            targetCheckedState = getTargetCheckedState();
                        } else if (u1.a(this)) {
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                    motionEventObtain2.setAction(3);
                    super.onTouchEvent(motionEventObtain2);
                    motionEventObtain2.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f3579t = 0;
                velocityTracker.clear();
            }
        } else {
            float x4 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (isEnabled() && this.f3562a != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.f3562a;
                Rect rect = this.f3561Q;
                drawable.getPadding(rect);
                int i4 = this.f3550E - i2;
                int i5 = (this.f3549D + thumbOffset) - i2;
                int i6 = this.f3548C + i5 + rect.left + rect.right + i2;
                int i7 = this.f3552G + i2;
                if (x4 > i5 && x4 < i6 && y3 > i4 && y3 < i7) {
                    this.f3579t = 1;
                    this.f3581v = x4;
                    this.f3582w = y3;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object string = this.f3574o;
                if (string == null) {
                    string = getResources().getString(com.ex.auto.R.string.abc_capital_on);
                }
                Object obj = string;
                WeakHashMap weakHashMap = N.f4222a;
                new C0287v(com.ex.auto.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, obj);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object string2 = this.f3576q;
            if (string2 == null) {
                string2 = getResources().getString(com.ex.auto.R.string.abc_capital_off);
            }
            Object obj2 = string2;
            WeakHashMap weakHashMap2 = N.f4222a;
            new C0287v(com.ex.auto.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, obj2);
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap3 = N.f4222a;
            if (A.c(this)) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f3545R, zIsChecked ? 1.0f : 0.0f);
                this.f3559N = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(250L);
                c1.a(this.f3559N, true);
                this.f3559N.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.f3559N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
        setTextOnInternal(this.f3574o);
        setTextOffInternal(this.f3576q);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z2) {
        this.f3553H = z2;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z2) {
        if (this.f3578s != z2) {
            this.f3578s = z2;
            requestLayout();
            if (z2) {
                d();
            }
        }
    }

    public void setSplitTrack(boolean z2) {
        this.f3573n = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.f3571l = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.f3572m = i2;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f3554I;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f3576q;
        if (string == null) {
            string = getResources().getString(com.ex.auto.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = N.f4222a;
        new C0287v(com.ex.auto.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, string);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f3574o;
        if (string == null) {
            string = getResources().getString(com.ex.auto.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = N.f4222a;
        new C0287v(com.ex.auto.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, string);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f3562a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3562a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f3585z = f;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(AbstractC0201a.A(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.f3570k = i2;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.f3564d = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f3563c = mode;
        this.f3565e = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(AbstractC0201a.A(getContext(), i2));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f3566g = colorStateList;
        this.f3568i = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f3567h = mode;
        this.f3569j = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3562a || drawable == this.f;
    }
}
