package p017k0;

import android.view.View;
import android.view.ViewGroup;
import com.ex.auto.R;
import com.google.android.material.chip.ChipGroup;
import java.util.WeakHashMap;
import p034y.AbstractC0278l;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3781a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3783d;

    public int getItemSpacing() {
        return this.b;
    }

    public int getLineSpacing() {
        return this.f3781a;
    }

    public int getRowCount() {
        return this.f3783d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int iB;
        int iC;
        if (getChildCount() == 0) {
            this.f3783d = 0;
            return;
        }
        this.f3783d = 1;
        WeakHashMap weakHashMap = N.f4222a;
        boolean z3 = AbstractC0291z.d(this) == 1;
        int paddingRight = z3 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z3 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i6 = (i4 - i2) - paddingLeft;
        int measuredWidth = paddingRight;
        int i7 = paddingTop;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    iC = AbstractC0278l.c(marginLayoutParams);
                    iB = AbstractC0278l.b(marginLayoutParams);
                } else {
                    iB = 0;
                    iC = 0;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth + iC;
                if (!this.f3782c && measuredWidth2 > i6) {
                    i7 = this.f3781a + paddingTop;
                    this.f3783d++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.f3783d - 1));
                int i9 = measuredWidth + iC;
                int measuredWidth3 = childAt.getMeasuredWidth() + i9;
                int measuredHeight = childAt.getMeasuredHeight() + i7;
                if (z3) {
                    childAt.layout(i6 - measuredWidth3, i7, (i6 - measuredWidth) - iC, measuredHeight);
                } else {
                    childAt.layout(i9, i7, measuredWidth3, measuredHeight);
                }
                measuredWidth += childAt.getMeasuredWidth() + iC + iB + this.b;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i7 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i7 - getPaddingRight();
        int i8 = paddingTop;
        int i9 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i3);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = marginLayoutParams.leftMargin;
                    i5 = marginLayoutParams.rightMargin;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int i11 = paddingLeft2;
                if (childAt.getMeasuredWidth() + paddingLeft2 + i6 <= paddingRight || ((ChipGroup) this).f3782c) {
                    paddingLeft = i11;
                } else {
                    paddingLeft = getPaddingLeft();
                    i8 = this.f3781a + paddingTop;
                }
                int measuredWidth = childAt.getMeasuredWidth() + paddingLeft + i6;
                int measuredHeight = childAt.getMeasuredHeight() + i8;
                if (measuredWidth > i9) {
                    i9 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + i6 + i5 + this.b + paddingLeft;
                if (i10 == getChildCount() - 1) {
                    i9 += i5;
                }
                paddingLeft2 = measuredWidth2;
                paddingTop = measuredHeight;
            }
        }
        int paddingRight2 = getPaddingRight() + i9;
        int paddingBottom = getPaddingBottom() + paddingTop;
        if (mode != Integer.MIN_VALUE) {
            i4 = 1073741824;
            if (mode != 1073741824) {
                size = paddingRight2;
            }
        } else {
            i4 = 1073741824;
            size = Math.min(paddingRight2, size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(paddingBottom, size2);
        } else if (mode2 != i4) {
            size2 = paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }

    public void setItemSpacing(int i2) {
        this.b = i2;
    }

    public void setLineSpacing(int i2) {
        this.f3781a = i2;
    }

    public void setSingleLine(boolean z2) {
        this.f3782c = z2;
    }
}
