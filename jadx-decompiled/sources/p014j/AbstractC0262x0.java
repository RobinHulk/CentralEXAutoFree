package p014j;

import M.C0003d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import p005d.a;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: renamed from: j.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0262x0 extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3712a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3715e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f3716g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f3718i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f3719j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f3720k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3721l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3722m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3723n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3724o;

    public AbstractC0262x0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f3712a = true;
        this.b = -1;
        this.f3713c = 0;
        this.f3715e = 8388659;
        int[] iArr = a.f2917n;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, i2);
        N.h(this, context, iArr, attributeSet, (TypedArray) c0003dV.f215c, i2);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        int i3 = typedArray.getInt(1, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = typedArray.getInt(0, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z2 = typedArray.getBoolean(2, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.f3716g = typedArray.getFloat(4, -1.0f);
        this.b = typedArray.getInt(3, -1);
        this.f3717h = typedArray.getBoolean(7, false);
        setDividerDrawable(c0003dV.k(5));
        this.f3723n = typedArray.getInt(8, 0);
        this.f3724o = typedArray.getDimensionPixelSize(6, 0);
        c0003dV.w();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0260w0;
    }

    public final void f(Canvas canvas, int i2) {
        this.f3720k.setBounds(getPaddingLeft() + this.f3724o, i2, (getWidth() - getPaddingRight()) - this.f3724o, this.f3722m + i2);
        this.f3720k.draw(canvas);
    }

    public final void g(Canvas canvas, int i2) {
        this.f3720k.setBounds(i2, getPaddingTop() + this.f3724o, this.f3721l + i2, (getHeight() - getPaddingBottom()) - this.f3724o);
        this.f3720k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i2;
        if (this.b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i3 = this.b;
        if (childCount <= i3) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i3);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f3713c;
        if (this.f3714d == 1 && (i2 = this.f3715e & 112) != 48) {
            if (i2 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
            } else if (i2 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((C0260w0) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public Drawable getDividerDrawable() {
        return this.f3720k;
    }

    public int getDividerPadding() {
        return this.f3724o;
    }

    public int getDividerWidth() {
        return this.f3721l;
    }

    public int getGravity() {
        return this.f3715e;
    }

    public int getOrientation() {
        return this.f3714d;
    }

    public int getShowDividers() {
        return this.f3723n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f3716g;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public C0260w0 generateDefaultLayoutParams() {
        int i2 = this.f3714d;
        if (i2 == 0) {
            return new C0260w0(-2, -2);
        }
        if (i2 == 1) {
            return new C0260w0(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public C0260w0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0260w0(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public C0260w0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0260w0(layoutParams);
    }

    public final boolean k(int i2) {
        if (i2 == 0) {
            return (this.f3723n & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.f3723n & 4) != 0;
        }
        if ((this.f3723n & 2) == 0) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i2;
        int bottom;
        if (this.f3720k == null) {
            return;
        }
        int i3 = 0;
        if (this.f3714d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i3 < virtualChildCount) {
                View childAt = getChildAt(i3);
                if (childAt != null && childAt.getVisibility() != 8 && k(i3)) {
                    f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C0260w0) childAt.getLayoutParams())).topMargin) - this.f3722m);
                }
                i3++;
            }
            if (k(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                if (childAt2 == null) {
                    bottom = (getHeight() - getPaddingBottom()) - this.f3722m;
                } else {
                    bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C0260w0) childAt2.getLayoutParams())).bottomMargin;
                }
                f(canvas, bottom);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zA = u1.a(this);
        while (i3 < virtualChildCount2) {
            View childAt3 = getChildAt(i3);
            if (childAt3 != null && childAt3.getVisibility() != 8 && k(i3)) {
                C0260w0 c0260w0 = (C0260w0) childAt3.getLayoutParams();
                g(canvas, zA ? childAt3.getRight() + ((LinearLayout.LayoutParams) c0260w0).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c0260w0).leftMargin) - this.f3721l);
            }
            i3++;
        }
        if (k(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                C0260w0 c0260w1 = (C0260w0) childAt4.getLayoutParams();
                if (zA) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) c0260w1).leftMargin;
                    i2 = this.f3721l;
                    right = left - i2;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) c0260w1).rightMargin;
                }
            } else if (zA) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i2 = this.f3721l;
                right = left - i2;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0153  */
    /* JADX WARN: Code duplicated, block: B:60:0x015c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0160  */
    /* JADX WARN: Code duplicated, block: B:64:0x0164  */
    /* JADX WARN: Code duplicated, block: B:65:0x0167  */
    /* JADX WARN: Code duplicated, block: B:67:0x016f  */
    /* JADX WARN: Code duplicated, block: B:68:0x017d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0183  */
    /* JADX WARN: Code duplicated, block: B:71:0x018c  */
    /* JADX WARN: Code duplicated, block: B:74:0x019e  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft;
        int i6;
        int i7;
        int i8;
        int i9;
        int baseline;
        int i10;
        int i11;
        int measuredHeight;
        int paddingTop;
        int i12;
        int i13;
        int i14;
        int i15 = 8;
        if (this.f3714d == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i16 = i4 - i2;
            int paddingRight = i16 - getPaddingRight();
            int paddingRight2 = (i16 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i17 = this.f3715e;
            int i18 = i17 & 112;
            int i19 = 8388615 & i17;
            if (i18 != 16) {
                paddingTop = i18 != 80 ? getPaddingTop() : ((getPaddingTop() + i5) - i3) - this.f;
            } else {
                paddingTop = getPaddingTop() + (((i5 - i3) - this.f) / 2);
            }
            int i20 = 0;
            while (i20 < virtualChildCount) {
                View childAt = getChildAt(i20);
                if (childAt != null && childAt.getVisibility() != i15) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    C0260w0 c0260w0 = (C0260w0) childAt.getLayoutParams();
                    int i21 = ((LinearLayout.LayoutParams) c0260w0).gravity;
                    if (i21 < 0) {
                        i21 = i19;
                    }
                    WeakHashMap weakHashMap = N.f4222a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i21, AbstractC0291z.d(this)) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i14 = ((LinearLayout.LayoutParams) c0260w0).leftMargin + paddingLeft2;
                        } else {
                            i12 = paddingRight - measuredWidth;
                            i13 = ((LinearLayout.LayoutParams) c0260w0).rightMargin;
                        }
                        if (k(i20)) {
                            paddingTop += this.f3722m;
                        }
                        int i22 = paddingTop + ((LinearLayout.LayoutParams) c0260w0).topMargin;
                        childAt.layout(i14, i22, measuredWidth + i14, i22 + measuredHeight2);
                        paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0260w0).bottomMargin + i22;
                    } else {
                        i12 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((LinearLayout.LayoutParams) c0260w0).leftMargin;
                        i13 = ((LinearLayout.LayoutParams) c0260w0).rightMargin;
                    }
                    i14 = i12 - i13;
                    if (k(i20)) {
                        paddingTop += this.f3722m;
                    }
                    int i23 = paddingTop + ((LinearLayout.LayoutParams) c0260w0).topMargin;
                    childAt.layout(i14, i23, measuredWidth + i14, i23 + measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0260w0).bottomMargin + i23;
                }
                i20++;
                i15 = 8;
            }
            return;
        }
        boolean zA = u1.a(this);
        int paddingTop2 = getPaddingTop();
        int i24 = i5 - i3;
        int paddingBottom = i24 - getPaddingBottom();
        int paddingBottom2 = (i24 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i25 = this.f3715e;
        int i26 = 8388615 & i25;
        int i27 = i25 & 112;
        boolean z3 = this.f3712a;
        int[] iArr = this.f3718i;
        int[] iArr2 = this.f3719j;
        WeakHashMap weakHashMap2 = N.f4222a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i26, AbstractC0291z.d(this));
        if (absoluteGravity2 != 1) {
            paddingLeft = absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i4) - i2) - this.f;
        } else {
            paddingLeft = getPaddingLeft() + (((i4 - i2) - this.f) / 2);
        }
        if (zA) {
            i7 = virtualChildCount2 - 1;
            i6 = -1;
        } else {
            i6 = 1;
            i7 = 0;
        }
        int i28 = 0;
        while (i28 < virtualChildCount2) {
            int i29 = (i6 * i28) + i7;
            View childAt2 = getChildAt(i29);
            if (childAt2 == null) {
                i6 = i6;
                i8 = virtualChildCount2;
                i27 = i27;
                i9 = 1;
            } else {
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight3 = childAt2.getMeasuredHeight();
                    C0260w0 c0260w1 = (C0260w0) childAt2.getLayoutParams();
                    if (z3) {
                        i8 = virtualChildCount2;
                        baseline = ((LinearLayout.LayoutParams) c0260w1).height != -1 ? childAt2.getBaseline() : -1;
                        i10 = ((LinearLayout.LayoutParams) c0260w1).gravity;
                        if (i10 < 0) {
                            i10 = i27;
                        }
                        i11 = i10 & 112;
                        if (i11 != 16) {
                            measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) c0260w1).topMargin) - ((LinearLayout.LayoutParams) c0260w1).bottomMargin;
                        } else if (i11 != 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) c0260w1).topMargin + paddingTop2;
                            if (baseline != -1) {
                                measuredHeight = (iArr[1] - baseline) + measuredHeight;
                            }
                        } else if (i11 != 80) {
                            measuredHeight = paddingTop2;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) c0260w1).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (k(i29)) {
                            paddingLeft += this.f3721l;
                        }
                        int i30 = paddingLeft + ((LinearLayout.LayoutParams) c0260w1).leftMargin;
                        childAt2.layout(i30, measuredHeight, i30 + measuredWidth2, measuredHeight + measuredHeight3);
                        paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) c0260w1).rightMargin + i30;
                    } else {
                        i8 = virtualChildCount2;
                    }
                    i10 = ((LinearLayout.LayoutParams) c0260w1).gravity;
                    if (i10 < 0) {
                        i10 = i27;
                    }
                    i11 = i10 & 112;
                    if (i11 != 16) {
                        measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) c0260w1).topMargin) - ((LinearLayout.LayoutParams) c0260w1).bottomMargin;
                    } else if (i11 != 48) {
                        measuredHeight = ((LinearLayout.LayoutParams) c0260w1).topMargin + paddingTop2;
                        if (baseline != -1) {
                            measuredHeight = (iArr[1] - baseline) + measuredHeight;
                        }
                    } else if (i11 != 80) {
                        measuredHeight = paddingTop2;
                    } else {
                        measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) c0260w1).bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                        }
                    }
                    if (k(i29)) {
                        paddingLeft += this.f3721l;
                    }
                    int i31 = paddingLeft + ((LinearLayout.LayoutParams) c0260w1).leftMargin;
                    childAt2.layout(i31, measuredHeight, i31 + measuredWidth2, measuredHeight + measuredHeight3);
                    paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) c0260w1).rightMargin + i31;
                } else {
                    i8 = virtualChildCount2;
                }
                i9 = 1;
            }
            i28 += i9;
            i7 = i7;
            i6 = i6;
            virtualChildCount2 = i8;
            i27 = i27;
        }
    }

    /* JADX WARN: Code duplicated, block: B:153:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:213:0x0486  */
    /* JADX WARN: Code duplicated, block: B:214:0x048b  */
    /* JADX WARN: Code duplicated, block: B:217:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:218:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:221:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:222:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:224:0x04de  */
    /* JADX WARN: Code duplicated, block: B:230:0x04f2  */
    /* JADX WARN: Code duplicated, block: B:240:0x0537  */
    /* JADX WARN: Code duplicated, block: B:246:0x0548  */
    /* JADX WARN: Code duplicated, block: B:249:0x0550 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:250:0x0552  */
    /* JADX WARN: Code duplicated, block: B:252:0x055b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:253:0x055d  */
    /* JADX WARN: Code duplicated, block: B:280:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:282:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:283:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:286:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:288:0x0600  */
    /* JADX WARN: Code duplicated, block: B:289:0x060c  */
    /* JADX WARN: Code duplicated, block: B:313:0x0691  */
    /* JADX WARN: Code duplicated, block: B:315:0x0698  */
    /* JADX WARN: Code duplicated, block: B:318:0x06b4  */
    /* JADX WARN: Code duplicated, block: B:320:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:322:0x06c2  */
    /* JADX WARN: Code duplicated, block: B:368:0x07cb  */
    /* JADX WARN: Code duplicated, block: B:373:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:381:0x0806  */
    /* JADX WARN: Code duplicated, block: B:388:0x083d  */
    /* JADX WARN: Code duplicated, block: B:391:0x0860  */
    /* JADX WARN: Code duplicated, block: B:393:0x086e  */
    /* JADX WARN: Code duplicated, block: B:395:0x087a  */
    /* JADX WARN: Code duplicated, block: B:397:0x0886  */
    /* JADX WARN: Code duplicated, block: B:398:0x089b  */
    /* JADX WARN: Code duplicated, block: B:429:0x061c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:0x089c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:442:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        char c2;
        int iMax;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        char c3;
        int i8;
        View childAt;
        int i9;
        int i10;
        int i11;
        int baseline;
        int i12;
        int iMakeMeasureSpec;
        int i13;
        View childAt2;
        C0260w0 c0260w0;
        int i14;
        View childAt3;
        C0260w0 c0260w1;
        float f2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z2;
        boolean z3;
        C0260w0 c0260w2;
        int measuredWidth;
        boolean z4;
        int i21;
        boolean z5;
        int i22;
        int measuredHeight;
        boolean z6;
        int baseline2;
        int i23;
        int i24;
        boolean z7;
        int i25;
        int i26;
        boolean z8;
        C0260w0 c0260w3;
        boolean z9;
        int i27;
        boolean z10;
        int iMax2;
        int i28 = -2;
        int i29 = 1073741824;
        int i30 = 8;
        int i31 = Integer.MIN_VALUE;
        float f3 = 0.0f;
        boolean z11 = true;
        if (this.f3714d == 1) {
            this.f = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int i32 = this.b;
            boolean z12 = this.f3717h;
            boolean z13 = true;
            int i33 = 0;
            int iMax3 = 0;
            int iMax4 = 0;
            boolean z14 = false;
            int iMax5 = 0;
            int i34 = 0;
            int i35 = 0;
            boolean z15 = false;
            float f4 = 0.0f;
            while (i33 < virtualChildCount) {
                View childAt4 = getChildAt(i33);
                if (childAt4 == null) {
                    this.f = this.f;
                } else {
                    if (childAt4.getVisibility() != i30) {
                        if (k(i33)) {
                            this.f += this.f3722m;
                        }
                        C0260w0 c0260w4 = (C0260w0) childAt4.getLayoutParams();
                        float f5 = ((LinearLayout.LayoutParams) c0260w4).weight;
                        f4 += f5;
                        if (mode2 == i29 && ((LinearLayout.LayoutParams) c0260w4).height == 0 && f5 > f3) {
                            int i36 = this.f;
                            this.f = Math.max(i36, ((LinearLayout.LayoutParams) c0260w4).topMargin + i36 + ((LinearLayout.LayoutParams) c0260w4).bottomMargin);
                            c0260w3 = c0260w4;
                            z9 = true;
                            z8 = true;
                        } else {
                            if (((LinearLayout.LayoutParams) c0260w4).height != 0 || f5 <= f3) {
                                i26 = i31;
                            } else {
                                ((LinearLayout.LayoutParams) c0260w4).height = i28;
                                i26 = 0;
                            }
                            int i37 = f4 == f3 ? this.f : 0;
                            z8 = true;
                            c0260w3 = c0260w4;
                            measureChildWithMargins(childAt4, i2, 0, i3, i37);
                            if (i26 != i31) {
                                ((LinearLayout.LayoutParams) c0260w3).height = i26;
                            }
                            int measuredHeight2 = childAt4.getMeasuredHeight();
                            int i38 = this.f;
                            this.f = Math.max(i38, i38 + measuredHeight2 + ((LinearLayout.LayoutParams) c0260w3).topMargin + ((LinearLayout.LayoutParams) c0260w3).bottomMargin);
                            int i39 = iMax5;
                            if (z12) {
                                iMax5 = Math.max(measuredHeight2, i39);
                            }
                            z9 = z14;
                        }
                        if (i32 >= 0 && i32 == i33 + 1) {
                            this.f3713c = this.f;
                        }
                        if (i33 < i32 && ((LinearLayout.LayoutParams) c0260w3).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        i27 = mode;
                        if (i27 == 1073741824 || ((LinearLayout.LayoutParams) c0260w3).width != -1) {
                            z10 = false;
                        } else {
                            z10 = z8;
                            z15 = z10;
                        }
                        int i40 = ((LinearLayout.LayoutParams) c0260w3).leftMargin + ((LinearLayout.LayoutParams) c0260w3).rightMargin;
                        int measuredWidth2 = childAt4.getMeasuredWidth() + i40;
                        iMax2 = Math.max(i34, measuredWidth2);
                        int iCombineMeasuredStates = View.combineMeasuredStates(i35, childAt4.getMeasuredState());
                        boolean z16 = (z13 && ((LinearLayout.LayoutParams) c0260w3).width == -1) ? z8 : false;
                        if (((LinearLayout.LayoutParams) c0260w3).weight > 0.0f) {
                            if (!z10) {
                                i40 = measuredWidth2;
                            }
                            iMax4 = Math.max(iMax4, i40);
                        } else {
                            int i41 = iMax4;
                            if (!z10) {
                                i40 = measuredWidth2;
                            }
                            iMax3 = Math.max(iMax3, i40);
                            iMax4 = i41;
                        }
                        z14 = z9;
                        i35 = iCombineMeasuredStates;
                        z13 = z16;
                    }
                    i33++;
                    mode = i27;
                    i34 = iMax2;
                    i32 = i32;
                    z11 = z8;
                    mode2 = mode2;
                    virtualChildCount = virtualChildCount;
                    i28 = -2;
                    i29 = 1073741824;
                    i30 = 8;
                    i31 = Integer.MIN_VALUE;
                    f3 = 0.0f;
                }
                i32 = i32;
                mode2 = mode2;
                i27 = mode;
                virtualChildCount = virtualChildCount;
                iMax2 = i34;
                z8 = true;
                i33++;
                mode = i27;
                i34 = iMax2;
                i32 = i32;
                z11 = z8;
                mode2 = mode2;
                virtualChildCount = virtualChildCount;
                i28 = -2;
                i29 = 1073741824;
                i30 = 8;
                i31 = Integer.MIN_VALUE;
                f3 = 0.0f;
            }
            int i42 = mode2;
            int i43 = mode;
            int i44 = virtualChildCount;
            boolean z17 = z11;
            int iMax6 = iMax3;
            int i45 = iMax4;
            int i46 = iMax5;
            int i47 = i34;
            int iCombineMeasuredStates2 = i35;
            if (this.f > 0 && k(i44)) {
                this.f += this.f3722m;
            }
            int i48 = i42;
            if (z12 && (i48 == Integer.MIN_VALUE || i48 == 0)) {
                this.f = 0;
                for (int i49 = 0; i49 < i44; i49++) {
                    View childAt5 = getChildAt(i49);
                    if (childAt5 == null) {
                        this.f = this.f;
                    } else if (childAt5.getVisibility() != 8) {
                        C0260w0 c0260w5 = (C0260w0) childAt5.getLayoutParams();
                        int i50 = this.f;
                        this.f = Math.max(i50, i50 + i46 + ((LinearLayout.LayoutParams) c0260w5).topMargin + ((LinearLayout.LayoutParams) c0260w5).bottomMargin);
                    }
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f;
            this.f = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, 0);
            int i51 = (16777215 & iResolveSizeAndState) - this.f;
            if (z14 || (i51 != 0 && f4 > 0.0f)) {
                float f6 = this.f3716g;
                if (f6 > 0.0f) {
                    f4 = f6;
                }
                this.f = 0;
                int i52 = 0;
                while (i52 < i44) {
                    View childAt6 = getChildAt(i52);
                    if (childAt6.getVisibility() == 8) {
                        i23 = i48;
                    } else {
                        C0260w0 c0260w6 = (C0260w0) childAt6.getLayoutParams();
                        float f7 = ((LinearLayout.LayoutParams) c0260w6).weight;
                        if (f7 > 0.0f) {
                            int i53 = (int) ((i51 * f7) / f4);
                            f4 -= f7;
                            int i54 = i51 - i53;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) c0260w6).leftMargin + ((LinearLayout.LayoutParams) c0260w6).rightMargin, ((LinearLayout.LayoutParams) c0260w6).width);
                            if (((LinearLayout.LayoutParams) c0260w6).height == 0) {
                                i25 = 1073741824;
                                if (i48 == 1073741824) {
                                    if (i53 <= 0) {
                                        i53 = 0;
                                    }
                                    childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i53, 1073741824));
                                }
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt6.getMeasuredState() & (-256));
                                i51 = i54;
                            } else {
                                i25 = 1073741824;
                            }
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i53;
                            if (measuredHeight3 < 0) {
                                measuredHeight3 = 0;
                            }
                            childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight3, i25));
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt6.getMeasuredState() & (-256));
                            i51 = i54;
                        }
                        int i55 = ((LinearLayout.LayoutParams) c0260w6).leftMargin + ((LinearLayout.LayoutParams) c0260w6).rightMargin;
                        int measuredWidth3 = childAt6.getMeasuredWidth() + i55;
                        int iMax7 = Math.max(i47, measuredWidth3);
                        if (i43 != 1073741824) {
                            i23 = i48;
                            i24 = -1;
                            if (((LinearLayout.LayoutParams) c0260w6).width != -1) {
                            }
                            iMax6 = Math.max(iMax6, i55);
                            if (z13 || ((LinearLayout.LayoutParams) c0260w6).width != i24) {
                                z7 = false;
                            } else {
                                z7 = z17;
                            }
                            int i56 = this.f;
                            this.f = Math.max(i56, childAt6.getMeasuredHeight() + i56 + ((LinearLayout.LayoutParams) c0260w6).topMargin + ((LinearLayout.LayoutParams) c0260w6).bottomMargin);
                            z13 = z7;
                            i47 = iMax7;
                        } else {
                            i23 = i48;
                            i24 = -1;
                        }
                        i55 = measuredWidth3;
                        iMax6 = Math.max(iMax6, i55);
                        if (z13) {
                            z7 = false;
                        } else {
                            z7 = false;
                        }
                        int i57 = this.f;
                        this.f = Math.max(i57, childAt6.getMeasuredHeight() + i57 + ((LinearLayout.LayoutParams) c0260w6).topMargin + ((LinearLayout.LayoutParams) c0260w6).bottomMargin);
                        z13 = z7;
                        i47 = iMax7;
                    }
                    i52++;
                    i48 = i23;
                }
                this.f = getPaddingBottom() + getPaddingTop() + this.f;
            } else {
                iMax6 = Math.max(iMax6, i45);
                if (z12 && i48 != 1073741824) {
                    for (int i58 = 0; i58 < i44; i58++) {
                        View childAt7 = getChildAt(i58);
                        if (childAt7 != null && childAt7.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((C0260w0) childAt7.getLayoutParams())).weight > 0.0f) {
                            childAt7.measure(View.MeasureSpec.makeMeasureSpec(childAt7.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i46, 1073741824));
                        }
                    }
                }
            }
            int i59 = i47;
            if (z13 || i43 == 1073741824) {
                iMax6 = i59;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates2), iResolveSizeAndState);
            if (z15) {
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i60 = 0; i60 < i44; i60++) {
                    View childAt8 = getChildAt(i60);
                    if (childAt8.getVisibility() != 8) {
                        C0260w0 c0260w7 = (C0260w0) childAt8.getLayoutParams();
                        if (((LinearLayout.LayoutParams) c0260w7).width == -1) {
                            int i61 = ((LinearLayout.LayoutParams) c0260w7).height;
                            ((LinearLayout.LayoutParams) c0260w7).height = childAt8.getMeasuredHeight();
                            measureChildWithMargins(childAt8, iMakeMeasureSpec2, 0, i3, 0);
                            ((LinearLayout.LayoutParams) c0260w7).height = i61;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i2);
        int mode4 = View.MeasureSpec.getMode(i3);
        if (this.f3718i == null || this.f3719j == null) {
            this.f3718i = new int[4];
            this.f3719j = new int[4];
        }
        int[] iArr = this.f3718i;
        int[] iArr2 = this.f3719j;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z18 = this.f3712a;
        boolean z19 = this.f3717h;
        boolean z20 = mode3 == 1073741824;
        boolean z21 = true;
        int iMax8 = 0;
        float f8 = 0.0f;
        int i62 = 0;
        int i63 = 0;
        int i64 = 0;
        int iMax9 = 0;
        int iMax10 = 0;
        boolean z22 = false;
        boolean z23 = false;
        while (i63 < virtualChildCount2) {
            View childAt9 = getChildAt(i63);
            if (childAt9 == null) {
                this.f = this.f;
                i20 = i63;
                z2 = z19;
                z3 = z18;
            } else {
                int i65 = iMax8;
                int i66 = i62;
                if (childAt9.getVisibility() == 8) {
                    z3 = z18;
                    iMax8 = i65;
                    i62 = i66;
                    i20 = i63;
                    z2 = z19;
                } else {
                    if (k(i63)) {
                        this.f += this.f3721l;
                    }
                    C0260w0 c0260w8 = (C0260w0) childAt9.getLayoutParams();
                    float f9 = ((LinearLayout.LayoutParams) c0260w8).weight;
                    float f10 = f8 + f9;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) c0260w8).width == 0 && f9 > 0.0f) {
                        if (z20) {
                            this.f = ((LinearLayout.LayoutParams) c0260w8).leftMargin + ((LinearLayout.LayoutParams) c0260w8).rightMargin + this.f;
                        } else {
                            int i67 = this.f;
                            this.f = Math.max(i67, ((LinearLayout.LayoutParams) c0260w8).leftMargin + i67 + ((LinearLayout.LayoutParams) c0260w8).rightMargin);
                        }
                        if (z18) {
                            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt9.measure(iMakeMeasureSpec3, iMakeMeasureSpec3);
                            c0260w2 = c0260w8;
                            i17 = i65;
                            i18 = i66;
                            i20 = i63;
                            z2 = z19;
                            z3 = z18;
                        } else {
                            c0260w2 = c0260w8;
                            i17 = i65;
                            i18 = i66;
                            i20 = i63;
                            i21 = 1073741824;
                            z2 = z19;
                            z3 = z18;
                            z4 = true;
                        }
                        if (mode4 == i21 && ((LinearLayout.LayoutParams) c0260w2).height == -1) {
                            z5 = true;
                            z23 = true;
                        } else {
                            z5 = false;
                        }
                        i22 = ((LinearLayout.LayoutParams) c0260w2).topMargin + ((LinearLayout.LayoutParams) c0260w2).bottomMargin;
                        measuredHeight = childAt9.getMeasuredHeight() + i22;
                        int iCombineMeasuredStates3 = View.combineMeasuredStates(i64, childAt9.getMeasuredState());
                        if (!z3 && (baseline2 = childAt9.getBaseline()) != -1) {
                            int i68 = ((LinearLayout.LayoutParams) c0260w2).gravity;
                            if (i68 < 0) {
                                i68 = this.f3715e;
                            }
                            int i69 = (((i68 & 112) >> 4) & (-2)) >> 1;
                            iArr[i69] = Math.max(iArr[i69], baseline2);
                            iArr2[i69] = Math.max(iArr2[i69], measuredHeight - baseline2);
                        }
                        int iMax11 = Math.max(i18, measuredHeight);
                        if (z21 || ((LinearLayout.LayoutParams) c0260w2).height != -1) {
                            z6 = false;
                        } else {
                            z6 = true;
                        }
                        if (((LinearLayout.LayoutParams) c0260w2).weight > 0.0f) {
                            if (z5) {
                                measuredHeight = i22;
                            }
                            iMax10 = Math.max(iMax10, measuredHeight);
                            iMax8 = i17;
                        } else {
                            if (z5) {
                                measuredHeight = i22;
                            }
                            iMax8 = Math.max(i17, measuredHeight);
                        }
                        i62 = iMax11;
                        i64 = iCombineMeasuredStates3;
                        z22 = z4;
                        z21 = z6;
                        f8 = f10;
                    } else {
                        int i70 = i63;
                        if (((LinearLayout.LayoutParams) c0260w8).width == 0) {
                            f2 = 0.0f;
                            if (f9 > 0.0f) {
                                ((LinearLayout.LayoutParams) c0260w8).width = -2;
                                i15 = 0;
                            }
                            if (f10 == f2) {
                                i16 = this.f;
                            } else {
                                i16 = 0;
                            }
                            i17 = i65;
                            i18 = i66;
                            i19 = i15;
                            i20 = i70;
                            z2 = z19;
                            z3 = z18;
                            measureChildWithMargins(childAt9, i2, i16, i3, 0);
                            if (i19 != Integer.MIN_VALUE) {
                                c0260w2 = c0260w8;
                                ((LinearLayout.LayoutParams) c0260w2).width = i19;
                            } else {
                                c0260w2 = c0260w8;
                            }
                            measuredWidth = childAt9.getMeasuredWidth();
                            if (z20) {
                                this.f = ((LinearLayout.LayoutParams) c0260w2).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) c0260w2).rightMargin + this.f;
                            } else {
                                int i71 = this.f;
                                this.f = Math.max(i71, i71 + measuredWidth + ((LinearLayout.LayoutParams) c0260w2).leftMargin + ((LinearLayout.LayoutParams) c0260w2).rightMargin);
                            }
                            if (z2) {
                                iMax9 = Math.max(measuredWidth, iMax9);
                            }
                        } else {
                            f2 = 0.0f;
                        }
                        i15 = Integer.MIN_VALUE;
                        if (f10 == f2) {
                            i16 = this.f;
                        } else {
                            i16 = 0;
                        }
                        i17 = i65;
                        i18 = i66;
                        i19 = i15;
                        i20 = i70;
                        z2 = z19;
                        z3 = z18;
                        measureChildWithMargins(childAt9, i2, i16, i3, 0);
                        if (i19 != Integer.MIN_VALUE) {
                            c0260w2 = c0260w8;
                            ((LinearLayout.LayoutParams) c0260w2).width = i19;
                        } else {
                            c0260w2 = c0260w8;
                        }
                        measuredWidth = childAt9.getMeasuredWidth();
                        if (z20) {
                            this.f = ((LinearLayout.LayoutParams) c0260w2).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) c0260w2).rightMargin + this.f;
                        } else {
                            int i72 = this.f;
                            this.f = Math.max(i72, i72 + measuredWidth + ((LinearLayout.LayoutParams) c0260w2).leftMargin + ((LinearLayout.LayoutParams) c0260w2).rightMargin);
                        }
                        if (z2) {
                            iMax9 = Math.max(measuredWidth, iMax9);
                        }
                    }
                    z4 = z22;
                    i21 = 1073741824;
                    if (mode4 == i21) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    i22 = ((LinearLayout.LayoutParams) c0260w2).topMargin + ((LinearLayout.LayoutParams) c0260w2).bottomMargin;
                    measuredHeight = childAt9.getMeasuredHeight() + i22;
                    int iCombineMeasuredStates4 = View.combineMeasuredStates(i64, childAt9.getMeasuredState());
                    if (!z3) {
                    }
                    int iMax12 = Math.max(i18, measuredHeight);
                    if (z21) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    if (((LinearLayout.LayoutParams) c0260w2).weight > 0.0f) {
                        if (z5) {
                            measuredHeight = i22;
                        }
                        iMax10 = Math.max(iMax10, measuredHeight);
                        iMax8 = i17;
                    } else {
                        if (z5) {
                            measuredHeight = i22;
                        }
                        iMax8 = Math.max(i17, measuredHeight);
                    }
                    i62 = iMax12;
                    i64 = iCombineMeasuredStates4;
                    z22 = z4;
                    z21 = z6;
                    f8 = f10;
                }
            }
            i63 = i20 + 1;
            z19 = z2;
            z18 = z3;
        }
        int i73 = i62;
        boolean z24 = z19;
        boolean z25 = z18;
        if (this.f > 0 && k(virtualChildCount2)) {
            this.f += this.f3721l;
        }
        int i74 = iArr[1];
        if (i74 == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c2 = 3;
            if (iArr[3] == -1) {
                iMax = i73;
            }
            if (z24 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                this.f = 0;
                for (i14 = 0; i14 < virtualChildCount2; i14++) {
                    childAt3 = getChildAt(i14);
                    if (childAt3 == null) {
                        this.f = this.f;
                    } else if (childAt3.getVisibility() == 8) {
                        c0260w1 = (C0260w0) childAt3.getLayoutParams();
                        if (z20) {
                            this.f = ((LinearLayout.LayoutParams) c0260w1).leftMargin + iMax9 + ((LinearLayout.LayoutParams) c0260w1).rightMargin + this.f;
                        } else {
                            int i75 = this.f;
                            this.f = Math.max(i75, i75 + iMax9 + ((LinearLayout.LayoutParams) c0260w1).leftMargin + ((LinearLayout.LayoutParams) c0260w1).rightMargin);
                        }
                    }
                }
            }
            int paddingRight = getPaddingRight() + getPaddingLeft() + this.f;
            this.f = paddingRight;
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, 0);
            i4 = (16777215 & iResolveSizeAndState2) - this.f;
            if (!z22 || (i4 != 0 && f8 > 0.0f)) {
                f = this.f3716g;
                if (f > 0.0f) {
                    f8 = f;
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.f = 0;
                int iCombineMeasuredStates5 = i64;
                iMax = -1;
                i5 = 0;
                while (i5 < virtualChildCount2) {
                    childAt = getChildAt(i5);
                    if (childAt != null || childAt.getVisibility() == 8) {
                        i9 = i4;
                        virtualChildCount2 = virtualChildCount2;
                    } else {
                        C0260w0 c0260w9 = (C0260w0) childAt.getLayoutParams();
                        float f11 = ((LinearLayout.LayoutParams) c0260w9).weight;
                        if (f11 > 0.0f) {
                            int i76 = (int) ((i4 * f11) / f8);
                            float f12 = f8 - f11;
                            int i77 = i4 - i76;
                            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) c0260w9).topMargin + ((LinearLayout.LayoutParams) c0260w9).bottomMargin, ((LinearLayout.LayoutParams) c0260w9).height);
                            if (((LinearLayout.LayoutParams) c0260w9).width == 0) {
                                i12 = 1073741824;
                                if (mode3 == 1073741824) {
                                    if (i76 <= 0) {
                                        i76 = 0;
                                    }
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i76, 1073741824), childMeasureSpec2);
                                }
                                iCombineMeasuredStates5 = View.combineMeasuredStates(iCombineMeasuredStates5, childAt.getMeasuredState() & (-16777216));
                                f8 = f12;
                                i10 = i77;
                            } else {
                                i12 = 1073741824;
                            }
                            int measuredWidth4 = childAt.getMeasuredWidth() + i76;
                            if (measuredWidth4 < 0) {
                                measuredWidth4 = 0;
                            }
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i12), childMeasureSpec2);
                            iCombineMeasuredStates5 = View.combineMeasuredStates(iCombineMeasuredStates5, childAt.getMeasuredState() & (-16777216));
                            f8 = f12;
                            i10 = i77;
                        } else {
                            i10 = i4;
                        }
                        if (z20) {
                            this.f = childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0260w9).leftMargin + ((LinearLayout.LayoutParams) c0260w9).rightMargin + this.f;
                        } else {
                            int i78 = this.f;
                            this.f = Math.max(i78, childAt.getMeasuredWidth() + i78 + ((LinearLayout.LayoutParams) c0260w9).leftMargin + ((LinearLayout.LayoutParams) c0260w9).rightMargin);
                        }
                        boolean z26 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) c0260w9).height == -1;
                        int i79 = ((LinearLayout.LayoutParams) c0260w9).topMargin + ((LinearLayout.LayoutParams) c0260w9).bottomMargin;
                        int measuredHeight4 = childAt.getMeasuredHeight() + i79;
                        iMax = Math.max(iMax, measuredHeight4);
                        if (!z26) {
                            i79 = measuredHeight4;
                        }
                        iMax8 = Math.max(iMax8, i79);
                        if (z21) {
                            i11 = -1;
                            boolean z27 = ((LinearLayout.LayoutParams) c0260w9).height == -1;
                            if (!z25 && (baseline = childAt.getBaseline()) != i11) {
                                int i80 = ((LinearLayout.LayoutParams) c0260w9).gravity;
                                if (i80 < 0) {
                                    i80 = this.f3715e;
                                }
                                int i81 = (((i80 & 112) >> 4) & (-2)) >> 1;
                                iArr[i81] = Math.max(iArr[i81], baseline);
                                iArr2[i81] = Math.max(iArr2[i81], measuredHeight4 - baseline);
                            }
                            z21 = z27;
                            i9 = i10;
                            f8 = f8;
                        } else {
                            i11 = -1;
                        }
                        if (!z25) {
                        }
                        z21 = z27;
                        i9 = i10;
                        f8 = f8;
                    }
                    i5++;
                    i4 = i9;
                    virtualChildCount2 = virtualChildCount2;
                }
                i6 = virtualChildCount2;
                this.f = getPaddingRight() + getPaddingLeft() + this.f;
                i7 = iArr[1];
                if (i7 != -1 && iArr[0] == -1 && iArr[2] == -1) {
                    c3 = 3;
                    if (iArr[3] == -1) {
                        i8 = 0;
                    }
                    i64 = iCombineMeasuredStates5;
                } else {
                    c3 = 3;
                }
                i8 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c3], Math.max(iArr[0], Math.max(i7, iArr[2]))));
                i64 = iCombineMeasuredStates5;
            } else {
                iMax8 = Math.max(iMax8, iMax10);
                if (z24 && mode3 != 1073741824) {
                    for (int i82 = 0; i82 < virtualChildCount2; i82++) {
                        View childAt10 = getChildAt(i82);
                        if (childAt10 != null && childAt10.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((C0260w0) childAt10.getLayoutParams())).weight > 0.0f) {
                            childAt10.measure(View.MeasureSpec.makeMeasureSpec(iMax9, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt10.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i6 = virtualChildCount2;
                i8 = 0;
            }
            if (z21 || mode4 == 1073741824) {
                iMax8 = iMax;
            }
            setMeasuredDimension((i64 & (-16777216)) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i3, i64 << 16));
            if (z23) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                i13 = i6;
                while (i8 < i13) {
                    childAt2 = getChildAt(i8);
                    if (childAt2.getVisibility() != 8) {
                        c0260w0 = (C0260w0) childAt2.getLayoutParams();
                        if (((LinearLayout.LayoutParams) c0260w0).height == -1) {
                            int i83 = ((LinearLayout.LayoutParams) c0260w0).width;
                            ((LinearLayout.LayoutParams) c0260w0).width = childAt2.getMeasuredWidth();
                            measureChildWithMargins(childAt2, i2, 0, iMakeMeasureSpec, 0);
                            ((LinearLayout.LayoutParams) c0260w0).width = i83;
                        }
                    }
                    i8++;
                }
            }
        }
        c2 = 3;
        iMax = Math.max(i73, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c2], Math.max(iArr[0], Math.max(i74, iArr[2]))));
        if (z24) {
            this.f = 0;
            while (i14 < virtualChildCount2) {
                childAt3 = getChildAt(i14);
                if (childAt3 == null) {
                    this.f = this.f;
                } else if (childAt3.getVisibility() == 8) {
                    c0260w1 = (C0260w0) childAt3.getLayoutParams();
                    if (z20) {
                        this.f = ((LinearLayout.LayoutParams) c0260w1).leftMargin + iMax9 + ((LinearLayout.LayoutParams) c0260w1).rightMargin + this.f;
                    } else {
                        int i710 = this.f;
                        this.f = Math.max(i710, i710 + iMax9 + ((LinearLayout.LayoutParams) c0260w1).leftMargin + ((LinearLayout.LayoutParams) c0260w1).rightMargin);
                    }
                }
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f;
        this.f = paddingRight2;
        int iResolveSizeAndState3 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i2, 0);
        i4 = (16777215 & iResolveSizeAndState3) - this.f;
        if (z22) {
            f = this.f3716g;
            if (f > 0.0f) {
                f8 = f;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f = 0;
            int iCombineMeasuredStates6 = i64;
            iMax = -1;
            i5 = 0;
            while (i5 < virtualChildCount2) {
                childAt = getChildAt(i5);
                if (childAt != null) {
                    i9 = i4;
                    virtualChildCount2 = virtualChildCount2;
                } else {
                    i9 = i4;
                    virtualChildCount2 = virtualChildCount2;
                }
                i5++;
                i4 = i9;
                virtualChildCount2 = virtualChildCount2;
            }
            i6 = virtualChildCount2;
            this.f = getPaddingRight() + getPaddingLeft() + this.f;
            i7 = iArr[1];
            if (i7 != -1) {
                c3 = 3;
                i8 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c3], Math.max(iArr[0], Math.max(i7, iArr[2]))));
            } else {
                c3 = 3;
                i8 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c3], Math.max(iArr[0], Math.max(i7, iArr[2]))));
            }
            i64 = iCombineMeasuredStates6;
        } else {
            f = this.f3716g;
            if (f > 0.0f) {
                f8 = f;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f = 0;
            int iCombineMeasuredStates7 = i64;
            iMax = -1;
            i5 = 0;
            while (i5 < virtualChildCount2) {
                childAt = getChildAt(i5);
                if (childAt != null) {
                    i9 = i4;
                    virtualChildCount2 = virtualChildCount2;
                } else {
                    i9 = i4;
                    virtualChildCount2 = virtualChildCount2;
                }
                i5++;
                i4 = i9;
                virtualChildCount2 = virtualChildCount2;
            }
            i6 = virtualChildCount2;
            this.f = getPaddingRight() + getPaddingLeft() + this.f;
            i7 = iArr[1];
            if (i7 != -1) {
                c3 = 3;
                i8 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c3], Math.max(iArr[0], Math.max(i7, iArr[2]))));
            } else {
                c3 = 3;
                i8 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c3], Math.max(iArr[0], Math.max(i7, iArr[2]))));
            }
            i64 = iCombineMeasuredStates7;
        }
        if (z21) {
            iMax8 = iMax;
        } else {
            iMax8 = iMax;
        }
        setMeasuredDimension((i64 & (-16777216)) | iResolveSizeAndState3, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i3, i64 << 16));
        if (z23) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            i13 = i6;
            while (i8 < i13) {
                childAt2 = getChildAt(i8);
                if (childAt2.getVisibility() != 8) {
                    c0260w0 = (C0260w0) childAt2.getLayoutParams();
                    if (((LinearLayout.LayoutParams) c0260w0).height == -1) {
                        int i84 = ((LinearLayout.LayoutParams) c0260w0).width;
                        ((LinearLayout.LayoutParams) c0260w0).width = childAt2.getMeasuredWidth();
                        measureChildWithMargins(childAt2, i2, 0, iMakeMeasureSpec, 0);
                        ((LinearLayout.LayoutParams) c0260w0).width = i84;
                    }
                }
                i8++;
            }
        }
    }

    public void setBaselineAligned(boolean z2) {
        this.f3712a = z2;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 >= 0 && i2 < getChildCount()) {
            this.b = i2;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f3720k) {
            return;
        }
        this.f3720k = drawable;
        if (drawable != null) {
            this.f3721l = drawable.getIntrinsicWidth();
            this.f3722m = drawable.getIntrinsicHeight();
        } else {
            this.f3721l = 0;
            this.f3722m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        this.f3724o = i2;
    }

    public void setGravity(int i2) {
        if (this.f3715e != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f3715e = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.f3715e;
        if ((8388615 & i4) != i3) {
            this.f3715e = i3 | ((-8388616) & i4);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z2) {
        this.f3717h = z2;
    }

    public void setOrientation(int i2) {
        if (this.f3714d != i2) {
            this.f3714d = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.f3723n) {
            requestLayout();
        }
        this.f3723n = i2;
    }

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.f3715e;
        if ((i4 & 112) != i3) {
            this.f3715e = i3 | (i4 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f3716g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
