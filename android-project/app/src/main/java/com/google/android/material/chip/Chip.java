package com.google.android.material.chip;

import Z.b;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import g0.a;
import g0.c;
import g0.d;
import g0.e;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.C0246p;
import p017k0.i;
import p025p0.k;
import p025p0.u;
import p032w.g;
import p032w.h;
import p032w.j;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class Chip extends C0246p implements d, u {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Rect f2722u = new Rect();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f2723v = {R.attr.state_selected};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f2724w = {R.attr.state_checkable};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f2725e;
    public InsetDrawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public RippleDrawable f2726g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View.OnClickListener f2727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f2728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2730k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2731l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2732m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2733n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2734o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2735p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final c f2736q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f2737r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RectF f2738s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final a f2739t;

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        int resourceId3;
        super(s0.a.a(context, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.ex.auto.R.attr.chipStyle);
        this.f2737r = new Rect();
        this.f2738s = new RectF();
        this.f2739t = new a(this, 0);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        e eVar = new e(context2, attributeSet);
        int[] iArr = Y.a.b;
        TypedArray typedArrayD = i.d(eVar.f3193e0, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        eVar.f3170E0 = typedArrayD.hasValue(36);
        Context context3 = eVar.f3193e0;
        ColorStateList colorStateListY = AbstractC0201a.y(context3, typedArrayD, 23);
        if (eVar.f3209x != colorStateListY) {
            eVar.f3209x = colorStateListY;
            eVar.onStateChange(eVar.getState());
        }
        ColorStateList colorStateListY2 = AbstractC0201a.y(context3, typedArrayD, 10);
        if (eVar.f3211y != colorStateListY2) {
            eVar.f3211y = colorStateListY2;
            eVar.onStateChange(eVar.getState());
        }
        float dimension = typedArrayD.getDimension(18, 0.0f);
        if (eVar.f3212z != dimension) {
            eVar.f3212z = dimension;
            eVar.invalidateSelf();
            eVar.s();
        }
        if (typedArrayD.hasValue(11)) {
            eVar.y(typedArrayD.getDimension(11, 0.0f));
        }
        eVar.D(AbstractC0201a.y(context3, typedArrayD, 21));
        eVar.E(typedArrayD.getDimension(22, 0.0f));
        eVar.N(AbstractC0201a.y(context3, typedArrayD, 35));
        String text = typedArrayD.getText(4);
        text = text == null ? "" : text;
        if (!TextUtils.equals(eVar.f3169E, text)) {
            eVar.f3169E = text;
            eVar.f3198k0.f3792d = true;
            eVar.invalidateSelf();
            eVar.s();
        }
        eVar.O((!typedArrayD.hasValue(0) || (resourceId3 = typedArrayD.getResourceId(0, 0)) == 0) ? null : new p021m0.d(context3, resourceId3));
        int i2 = typedArrayD.getInt(2, 0);
        if (i2 == 1) {
            eVar.f3164B0 = TextUtils.TruncateAt.START;
        } else if (i2 == 2) {
            eVar.f3164B0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i2 == 3) {
            eVar.f3164B0 = TextUtils.TruncateAt.END;
        }
        eVar.C(typedArrayD.getBoolean(17, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            eVar.C(typedArrayD.getBoolean(14, false));
        }
        eVar.z(AbstractC0201a.B(context3, typedArrayD, 13));
        if (typedArrayD.hasValue(16)) {
            eVar.B(AbstractC0201a.y(context3, typedArrayD, 16));
        }
        eVar.A(typedArrayD.getDimension(15, 0.0f));
        eVar.K(typedArrayD.getBoolean(30, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            eVar.K(typedArrayD.getBoolean(25, false));
        }
        eVar.F(AbstractC0201a.B(context3, typedArrayD, 24));
        eVar.J(AbstractC0201a.y(context3, typedArrayD, 29));
        eVar.H(typedArrayD.getDimension(27, 0.0f));
        eVar.u(typedArrayD.getBoolean(5, false));
        eVar.x(typedArrayD.getBoolean(9, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            eVar.x(typedArrayD.getBoolean(7, false));
        }
        eVar.v(AbstractC0201a.B(context3, typedArrayD, 6));
        if (typedArrayD.hasValue(8)) {
            eVar.w(AbstractC0201a.y(context3, typedArrayD, 8));
        }
        eVar.f3184U = (!typedArrayD.hasValue(38) || (resourceId2 = typedArrayD.getResourceId(38, 0)) == 0) ? null : b.a(context3, resourceId2);
        eVar.V = (!typedArrayD.hasValue(32) || (resourceId = typedArrayD.getResourceId(32, 0)) == 0) ? null : b.a(context3, resourceId);
        float dimension2 = typedArrayD.getDimension(20, 0.0f);
        if (eVar.f3185W != dimension2) {
            eVar.f3185W = dimension2;
            eVar.invalidateSelf();
            eVar.s();
        }
        eVar.M(typedArrayD.getDimension(34, 0.0f));
        eVar.L(typedArrayD.getDimension(33, 0.0f));
        float dimension3 = typedArrayD.getDimension(40, 0.0f);
        if (eVar.f3188Z != dimension3) {
            eVar.f3188Z = dimension3;
            eVar.invalidateSelf();
            eVar.s();
        }
        float dimension4 = typedArrayD.getDimension(39, 0.0f);
        if (eVar.f3189a0 != dimension4) {
            eVar.f3189a0 = dimension4;
            eVar.invalidateSelf();
            eVar.s();
        }
        eVar.I(typedArrayD.getDimension(28, 0.0f));
        eVar.G(typedArrayD.getDimension(26, 0.0f));
        float dimension5 = typedArrayD.getDimension(12, 0.0f);
        if (eVar.f3192d0 != dimension5) {
            eVar.f3192d0 = dimension5;
            eVar.invalidateSelf();
            eVar.s();
        }
        eVar.f3168D0 = typedArrayD.getDimensionPixelSize(3, Integer.MAX_VALUE);
        typedArrayD.recycle();
        i.a(context2, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        i.b(context2, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        this.f2733n = typedArrayObtainStyledAttributes.getBoolean(31, false);
        this.f2735p = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(19, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(eVar);
        eVar.g(D.i(this));
        i.a(context2, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        i.b(context2, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(36);
        typedArrayObtainStyledAttributes2.recycle();
        this.f2736q = new c(this, this);
        e();
        if (!zHasValue) {
            setOutlineProvider(new g0.b(this));
        }
        setChecked(this.f2729j);
        setText(eVar.f3169E);
        setEllipsize(eVar.f3164B0);
        h();
        if (!this.f2725e.f3166C0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.f2733n) {
            setMinHeight(this.f2735p);
        }
        this.f2734o = AbstractC0291z.d(this);
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.f2738s;
        rectF.setEmpty();
        if (c()) {
            e eVar = this.f2725e;
            Rect bounds = eVar.getBounds();
            rectF.setEmpty();
            if (eVar.R()) {
                float f = eVar.f3192d0 + eVar.f3191c0 + eVar.f3180O + eVar.f3190b0 + eVar.f3189a0;
                if (s.c.a(eVar) == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i2 = (int) closeIconTouchBounds.left;
        int i3 = (int) closeIconTouchBounds.top;
        int i4 = (int) closeIconTouchBounds.right;
        int i5 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f2737r;
        rect.set(i2, i3, i4, i5);
        return rect;
    }

    private p021m0.d getTextAppearance() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3198k0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z2) {
        if (this.f2731l != z2) {
            this.f2731l = z2;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z2) {
        if (this.f2730k != z2) {
            this.f2730k = z2;
            refreshDrawableState();
        }
    }

    public final void b(int i2) {
        this.f2735p = i2;
        if (!this.f2733n) {
            InsetDrawable insetDrawable = this.f;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i2 - ((int) this.f2725e.f3212z));
        int iMax2 = Math.max(0, i2 - this.f2725e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i3 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i4 = iMax > 0 ? iMax / 2 : 0;
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            if (rect.top == i4 && rect.bottom == i4 && rect.left == i3 && rect.right == i3) {
                f();
                return;
            }
        }
        if (getMinHeight() != i2) {
            setMinHeight(i2);
        }
        if (getMinWidth() != i2) {
            setMinWidth(i2);
        }
        this.f = new InsetDrawable((Drawable) this.f2725e, i3, i4, i3, i4);
        f();
    }

    public final boolean c() {
        e eVar = this.f2725e;
        if (eVar != null) {
            Object obj = eVar.f3177L;
            if (obj == null) {
                obj = null;
            } else if (obj instanceof s.e) {
                obj = null;
            }
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean d() {
        e eVar = this.f2725e;
        return eVar != null && eVar.f3181Q;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        c cVar = this.f2736q;
        if (action == 10) {
            try {
                Field declaredField = E.b.class.getDeclaredField("m");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(cVar)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = E.b.class.getDeclaredMethod("r", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cVar, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            } catch (NoSuchFieldException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (NoSuchMethodException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            } catch (InvocationTargetException e5) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e5);
            }
        }
        AccessibilityManager accessibilityManager = cVar.f55h;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action2 = motionEvent.getAction();
            if (action2 == 7 || action2 == 9) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                Chip chip = cVar.f3159q;
                int i2 = (chip.c() && chip.getCloseIconTouchBounds().contains(x2, y2)) ? 1 : 0;
                cVar.r(i2);
                if (i2 != Integer.MIN_VALUE) {
                    return true;
                }
            } else if (action2 == 10 && cVar.f60m != Integer.MIN_VALUE) {
                cVar.r(Integer.MIN_VALUE);
                return true;
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0063  */
    /* JADX WARN: Code duplicated, block: B:36:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i2;
        Chip chip;
        View.OnClickListener onClickListener;
        c cVar = this.f2736q;
        cVar.getClass();
        boolean zM = false;
        int i3 = 0;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i4 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i4 = 33;
                                } else if (keyCode == 21) {
                                    i4 = 17;
                                } else if (keyCode != 22) {
                                    i4 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i3 < repeatCount && cVar.m(i4, null)) {
                                    i3++;
                                    z2 = true;
                                }
                                zM = z2;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i2 = cVar.f59l;
                                if (i2 != Integer.MIN_VALUE) {
                                    chip = cVar.f3159q;
                                    if (i2 == 0) {
                                        chip.performClick();
                                    } else if (i2 == 1) {
                                        chip.playSoundEffect(0);
                                        onClickListener = chip.f2727h;
                                        if (onClickListener != null) {
                                            onClickListener.onClick(chip);
                                        }
                                        chip.f2736q.q(1, 1);
                                    }
                                }
                                zM = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i2 = cVar.f59l;
                    if (i2 != Integer.MIN_VALUE) {
                        chip = cVar.f3159q;
                        if (i2 == 0) {
                            chip.performClick();
                        } else if (i2 == 1) {
                            chip.playSoundEffect(0);
                            onClickListener = chip.f2727h;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            chip.f2736q.q(1, 1);
                        }
                    }
                    zM = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zM = cVar.m(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zM = cVar.m(1, null);
            }
        }
        if (!zM || cVar.f59l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // p014j.C0246p, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i2;
        int i3;
        super.drawableStateChanged();
        e eVar = this.f2725e;
        boolean zT = false;
        if (eVar != null && e.r(eVar.f3177L)) {
            e eVar2 = this.f2725e;
            ?? IsEnabled = isEnabled();
            if (this.f2732m) {
                i2 = IsEnabled;
                i2 = IsEnabled + 1;
            }
            i2 = IsEnabled;
            int i4 = i2;
            if (this.f2731l) {
                i4 = i2 + 1;
            }
            int i5 = i4;
            if (this.f2730k) {
                i5 = i4 + 1;
            }
            int i6 = i5;
            if (isChecked()) {
                i6 = i5 + 1;
            }
            int[] iArr = new int[i6];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i3 = 1;
            } else {
                i3 = 0;
            }
            if (this.f2732m) {
                iArr[i3] = 16842908;
                i3++;
            }
            if (this.f2731l) {
                iArr[i3] = 16843623;
                i3++;
            }
            if (this.f2730k) {
                iArr[i3] = 16842919;
                i3++;
            }
            if (isChecked()) {
                iArr[i3] = 16842913;
            }
            if (!Arrays.equals(eVar2.y0, iArr)) {
                eVar2.y0 = iArr;
                if (eVar2.R()) {
                    zT = eVar2.t(eVar2.getState(), iArr);
                }
            }
        }
        if (zT) {
            invalidate();
        }
    }

    public final void e() {
        e eVar;
        if (!c() || (eVar = this.f2725e) == null || !eVar.f3176K || this.f2727h == null) {
            N.i(this, null);
        } else {
            N.i(this, this.f2736q);
        }
    }

    public final void f() {
        ColorStateList colorStateListValueOf = this.f2725e.f3167D;
        if (colorStateListValueOf == null) {
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        this.f2726g = new RippleDrawable(colorStateListValueOf, getBackgroundDrawable(), null);
        this.f2725e.getClass();
        RippleDrawable rippleDrawable = this.f2726g;
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.q(this, rippleDrawable);
        g();
    }

    public final void g() {
        e eVar;
        if (TextUtils.isEmpty(getText()) || (eVar = this.f2725e) == null) {
            return;
        }
        int iO = (int) (eVar.o() + eVar.f3192d0 + eVar.f3189a0);
        e eVar2 = this.f2725e;
        int iN = (int) (eVar2.n() + eVar2.f3185W + eVar2.f3188Z);
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            iN += rect.left;
            iO += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0291z.k(this, iN, paddingTop, iO, paddingBottom);
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.f2725e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.S;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3183T;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3211y;
        }
        return null;
    }

    public float getChipCornerRadius() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return Math.max(0.0f, eVar.p());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f2725e;
    }

    public float getChipEndPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3192d0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.graphics.drawable.Drawable] */
    public Drawable getChipIcon() {
        Object obj;
        e eVar = this.f2725e;
        if (eVar == null || (obj = eVar.f3172G) == null) {
            return null;
        }
        if (obj instanceof s.e) {
            obj = null;
        }
        return obj;
    }

    public float getChipIconSize() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3174I;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3173H;
        }
        return null;
    }

    public float getChipMinHeight() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3212z;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3185W;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3163B;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3165C;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.graphics.drawable.Drawable] */
    public Drawable getCloseIcon() {
        Object obj;
        e eVar = this.f2725e;
        if (eVar == null || (obj = eVar.f3177L) == null) {
            return null;
        }
        if (obj instanceof s.e) {
            obj = null;
        }
        return obj;
    }

    public CharSequence getCloseIconContentDescription() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.P;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3191c0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3180O;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3190b0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3179N;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3164B0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        c cVar = this.f2736q;
        if (cVar.f59l == 1 || cVar.f58k == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public b getHideMotionSpec() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.V;
        }
        return null;
    }

    public float getIconEndPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3187Y;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3186X;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3167D;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        return this.f2725e.f3939a.f3924a;
    }

    public b getShowMotionSpec() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3184U;
        }
        return null;
    }

    public float getTextEndPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3189a0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        e eVar = this.f2725e;
        if (eVar != null) {
            return eVar.f3188Z;
        }
        return 0.0f;
    }

    public final void h() {
        TextPaint paint = getPaint();
        e eVar = this.f2725e;
        if (eVar != null) {
            paint.drawableState = eVar.getState();
        }
        p021m0.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.c(getContext(), paint, this.f2739t);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0201a.Q(this, this.f2725e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2723v);
        }
        if (d()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2724w);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        c cVar = this.f2736q;
        int i3 = cVar.f59l;
        if (i3 != Integer.MIN_VALUE) {
            cVar.j(i3);
        }
        if (z2) {
            cVar.m(i2, rect);
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i2;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (d() || isClickable()) {
            accessibilityNodeInfo.setClassName(d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(d());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (!chipGroup.f3782c) {
                i2 = -1;
                break;
            }
            int i3 = 0;
            i2 = 0;
            while (true) {
                if (i3 >= chipGroup.getChildCount()) {
                    i2 = -1;
                    break;
                }
                if (chipGroup.getChildAt(i3) instanceof Chip) {
                    if (((Chip) chipGroup.getChildAt(i3)) == this) {
                        break;
                    } else {
                        i2++;
                    }
                }
                i3++;
            }
            Object tag = getTag(com.ex.auto.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) A.e.v(isChecked(), tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i2, 1).b);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (this.f2734o != i2) {
            this.f2734o = i2;
            g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f2730k) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z2 = true;
                }
                z2 = false;
            } else {
                if (this.f2730k) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f2727h;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    this.f2736q.q(1, 1);
                    z2 = true;
                }
                setCloseIconPressed(false);
            }
            z2 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2726g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // p014j.C0246p, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2726g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // p014j.C0246p, android.view.View
    public void setBackgroundResource(int i2) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.u(z2);
        }
    }

    public void setCheckableResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.u(eVar.f3193e0.getResources().getBoolean(i2));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        e eVar = this.f2725e;
        if (eVar == null) {
            this.f2729j = z2;
            return;
        }
        if (eVar.f3181Q) {
            boolean zIsChecked = isChecked();
            super.setChecked(z2);
            if (zIsChecked == z2 || (onCheckedChangeListener = this.f2728i) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.v(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.v(AbstractC0201a.A(eVar.f3193e0, i2));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.w(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.w(AbstractC0201a.w(eVar.f3193e0, i2));
        }
    }

    public void setCheckedIconVisible(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.x(eVar.f3193e0.getResources().getBoolean(i2));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3211y == colorStateList) {
            return;
        }
        eVar.f3211y = colorStateList;
        eVar.onStateChange(eVar.getState());
    }

    public void setChipBackgroundColorResource(int i2) {
        ColorStateList colorStateListW;
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3211y == (colorStateListW = AbstractC0201a.w(eVar.f3193e0, i2))) {
            return;
        }
        eVar.f3211y = colorStateListW;
        eVar.onStateChange(eVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.y(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.y(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setChipDrawable(e eVar) {
        e eVar2 = this.f2725e;
        if (eVar2 != eVar) {
            if (eVar2 != null) {
                eVar2.f3162A0 = new WeakReference(null);
            }
            this.f2725e = eVar;
            eVar.f3166C0 = false;
            eVar.f3162A0 = new WeakReference(this);
            b(this.f2735p);
        }
    }

    public void setChipEndPadding(float f) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3192d0 == f) {
            return;
        }
        eVar.f3192d0 = f;
        eVar.invalidateSelf();
        eVar.s();
    }

    public void setChipEndPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            float dimension = eVar.f3193e0.getResources().getDimension(i2);
            if (eVar.f3192d0 != dimension) {
                eVar.f3192d0 = dimension;
                eVar.invalidateSelf();
                eVar.s();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.z(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.z(AbstractC0201a.A(eVar.f3193e0, i2));
        }
    }

    public void setChipIconSize(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.A(f);
        }
    }

    public void setChipIconSizeResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.A(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.B(colorStateList);
        }
    }

    public void setChipIconTintResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.B(AbstractC0201a.w(eVar.f3193e0, i2));
        }
    }

    public void setChipIconVisible(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.C(eVar.f3193e0.getResources().getBoolean(i2));
        }
    }

    public void setChipMinHeight(float f) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3212z == f) {
            return;
        }
        eVar.f3212z = f;
        eVar.invalidateSelf();
        eVar.s();
    }

    public void setChipMinHeightResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            float dimension = eVar.f3193e0.getResources().getDimension(i2);
            if (eVar.f3212z != dimension) {
                eVar.f3212z = dimension;
                eVar.invalidateSelf();
                eVar.s();
            }
        }
    }

    public void setChipStartPadding(float f) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3185W == f) {
            return;
        }
        eVar.f3185W = f;
        eVar.invalidateSelf();
        eVar.s();
    }

    public void setChipStartPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            float dimension = eVar.f3193e0.getResources().getDimension(i2);
            if (eVar.f3185W != dimension) {
                eVar.f3185W = dimension;
                eVar.invalidateSelf();
                eVar.s();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.D(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.D(AbstractC0201a.w(eVar.f3193e0, i2));
        }
    }

    public void setChipStrokeWidth(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.E(f);
        }
    }

    public void setChipStrokeWidthResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.E(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(Drawable drawable) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.F(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.P == charSequence) {
            return;
        }
        String str = p032w.b.b;
        Locale locale = Locale.getDefault();
        int i2 = j.f4179a;
        p032w.b bVar = p032w.i.a(locale) == 1 ? p032w.b.f4169e : p032w.b.f4168d;
        bVar.getClass();
        g gVar = h.f4176a;
        eVar.P = bVar.c(charSequence);
        eVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.G(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.G(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setCloseIconResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.F(AbstractC0201a.A(eVar.f3193e0, i2));
        }
        e();
    }

    public void setCloseIconSize(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.H(f);
        }
    }

    public void setCloseIconSizeResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.H(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setCloseIconStartPadding(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.I(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.I(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.J(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.J(AbstractC0201a.w(eVar.f3193e0, i2));
        }
    }

    public void setCloseIconVisible(int i2) {
        setCloseIconVisible(getResources().getBoolean(i2));
    }

    @Override // p014j.C0246p, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // p014j.C0246p, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i4 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i4 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.g(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f2725e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.f3164B0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z2) {
        this.f2733n = z2;
        b(this.f2735p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i2) {
        if (i2 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i2);
        }
    }

    public void setHideMotionSpec(b bVar) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.V = bVar;
        }
    }

    public void setHideMotionSpecResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.V = b.a(eVar.f3193e0, i2);
        }
    }

    public void setIconEndPadding(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.L(f);
        }
    }

    public void setIconEndPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.L(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    public void setIconStartPadding(float f) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.M(f);
        }
    }

    public void setIconStartPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.M(eVar.f3193e0.getResources().getDimension(i2));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        if (this.f2725e == null) {
            return;
        }
        super.setLayoutDirection(i2);
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i2);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i2);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.f3168D0 = i2;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i2);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f2728i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f2727h = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.N(colorStateList);
        }
        this.f2725e.getClass();
        f();
    }

    public void setRippleColorResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.N(AbstractC0201a.w(eVar.f3193e0, i2));
            this.f2725e.getClass();
            f();
        }
    }

    @Override // p025p0.u
    public void setShapeAppearanceModel(k kVar) {
        this.f2725e.setShapeAppearanceModel(kVar);
    }

    public void setShowMotionSpec(b bVar) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.f3184U = bVar;
        }
    }

    public void setShowMotionSpecResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.f3184U = b.a(eVar.f3193e0, i2);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z2) {
        if (!z2) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z2);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        e eVar = this.f2725e;
        if (eVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(eVar.f3166C0 ? null : charSequence, bufferType);
        e eVar2 = this.f2725e;
        if (eVar2 == null || TextUtils.equals(eVar2.f3169E, charSequence)) {
            return;
        }
        eVar2.f3169E = charSequence;
        eVar2.f3198k0.f3792d = true;
        eVar2.invalidateSelf();
        eVar2.s();
    }

    public void setTextAppearance(p021m0.d dVar) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.O(dVar);
        }
        h();
    }

    public void setTextAppearanceResource(int i2) {
        setTextAppearance(getContext(), i2);
    }

    public void setTextEndPadding(float f) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3189a0 == f) {
            return;
        }
        eVar.f3189a0 = f;
        eVar.invalidateSelf();
        eVar.s();
    }

    public void setTextEndPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            float dimension = eVar.f3193e0.getResources().getDimension(i2);
            if (eVar.f3189a0 != dimension) {
                eVar.f3189a0 = dimension;
                eVar.invalidateSelf();
                eVar.s();
            }
        }
    }

    public void setTextStartPadding(float f) {
        e eVar = this.f2725e;
        if (eVar == null || eVar.f3188Z == f) {
            return;
        }
        eVar.f3188Z = f;
        eVar.invalidateSelf();
        eVar.s();
    }

    public void setTextStartPaddingResource(int i2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            float dimension = eVar.f3193e0.getResources().getDimension(i2);
            if (eVar.f3188Z != dimension) {
                eVar.f3188Z = dimension;
                eVar.invalidateSelf();
                eVar.s();
            }
        }
    }

    public void setCloseIconVisible(boolean z2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.K(z2);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.x(z2);
        }
    }

    public void setChipIconVisible(boolean z2) {
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.C(z2);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.O(new p021m0.d(eVar.f3193e0, i2));
        }
        h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        e eVar = this.f2725e;
        if (eVar != null) {
            eVar.O(new p021m0.d(eVar.f3193e0, i2));
        }
        h();
    }
}
