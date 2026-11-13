package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import p007e.p;
import p007e.x;
import p012i.l;
import p014j.C0226f;
import p014j.C0234j;
import p014j.InterfaceC0231h0;
import p014j.InterfaceC0233i0;
import p014j.q1;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TypedValue f1531a;
    public TypedValue b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f1532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TypedValue f1533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f1534e;
    public TypedValue f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Rect f1535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InterfaceC0231h0 f1536h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1535g = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1534e == null) {
            this.f1534e = new TypedValue();
        }
        return this.f1534e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1532c == null) {
            this.f1532c = new TypedValue();
        }
        return this.f1532c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1533d == null) {
            this.f1533d = new TypedValue();
        }
        return this.f1533d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1531a == null) {
            this.f1531a = new TypedValue();
        }
        return this.f1531a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0231h0 interfaceC0231h0 = this.f1536h;
        if (interfaceC0231h0 != null) {
            interfaceC0231h0.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0234j c0234j;
        super.onDetachedFromWindow();
        InterfaceC0231h0 interfaceC0231h0 = this.f1536h;
        if (interfaceC0231h0 != null) {
            x xVar = ((p) interfaceC0231h0).b;
            InterfaceC0233i0 interfaceC0233i0 = xVar.f3124r;
            if (interfaceC0233i0 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0233i0;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((q1) actionBarOverlayLayout.f1496e).f3662a.f1594a;
                if (actionMenuView != null && (c0234j = actionMenuView.f1521t) != null) {
                    c0234j.f();
                    C0226f c0226f = c0234j.f3626t;
                    if (c0226f != null && c0226f.b()) {
                        c0226f.f3407i.dismiss();
                    }
                }
            }
            if (xVar.f3129w != null) {
                xVar.f3118l.getDecorView().removeCallbacks(xVar.f3130x);
                if (xVar.f3129w.isShowing()) {
                    try {
                        xVar.f3129w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                xVar.f3129w = null;
            }
            V v2 = xVar.f3131y;
            if (v2 != null) {
                v2.b();
            }
            l lVar = xVar.F(0).f3074h;
            if (lVar != null) {
                lVar.c(true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        int iMakeMeasureSpec;
        boolean z2;
        int iMakeMeasureSpec2;
        int i4;
        int i5;
        float fraction;
        int i6;
        int i7;
        float fraction2;
        int i8;
        int i9;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z3 = true;
        boolean z4 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        Rect rect = this.f1535g;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i2;
            z2 = false;
        } else {
            TypedValue typedValue = z4 ? this.f1533d : this.f1532c;
            if (typedValue == null || (i8 = typedValue.type) == 0) {
                iMakeMeasureSpec = i2;
                z2 = false;
            } else {
                if (i8 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i8 == 6) {
                        int i10 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i10, i10);
                    } else {
                        i9 = 0;
                    }
                    if (i9 > 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i9 - (rect.left + rect.right), View.MeasureSpec.getSize(i2)), 1073741824);
                        z2 = true;
                    } else {
                        iMakeMeasureSpec = i2;
                        z2 = false;
                    }
                }
                i9 = (int) fraction3;
                if (i9 > 0) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i9 - (rect.left + rect.right), View.MeasureSpec.getSize(i2)), 1073741824);
                    z2 = true;
                } else {
                    iMakeMeasureSpec = i2;
                    z2 = false;
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i3;
        } else {
            TypedValue typedValue2 = z4 ? this.f1534e : this.f;
            if (typedValue2 == null || (i6 = typedValue2.type) == 0) {
                iMakeMeasureSpec2 = i3;
            } else {
                if (i6 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i6 == 6) {
                        int i11 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i11, i11);
                    } else {
                        i7 = 0;
                    }
                    if (i7 > 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i7 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i3)), 1073741824);
                    } else {
                        iMakeMeasureSpec2 = i3;
                    }
                }
                i7 = (int) fraction2;
                if (i7 > 0) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i7 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i3)), 1073741824);
                } else {
                    iMakeMeasureSpec2 = i3;
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z2 || mode != Integer.MIN_VALUE) {
            z3 = false;
        } else {
            TypedValue typedValue3 = z4 ? this.b : this.f1531a;
            if (typedValue3 == null || (i4 = typedValue3.type) == 0) {
                z3 = false;
            } else {
                if (i4 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i4 == 6) {
                        int i12 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i12, i12);
                    } else {
                        i5 = 0;
                    }
                    if (i5 > 0) {
                        i5 -= rect.left + rect.right;
                    }
                    if (measuredWidth < i5) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                    } else {
                        z3 = false;
                    }
                }
                i5 = (int) fraction;
                if (i5 > 0) {
                    i5 -= rect.left + rect.right;
                }
                if (measuredWidth < i5) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                } else {
                    z3 = false;
                }
            }
        }
        if (z3) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(InterfaceC0231h0 interfaceC0231h0) {
        this.f1536h = interfaceC0231h0;
    }
}
