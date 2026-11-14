package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.ex.auto.R;
import g0.f;
import g0.g;
import g0.h;
import g0.i;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p017k0.d;
import p034y.AbstractC0290y;
import p034y.N;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public class ChipGroup extends d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2740e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f2743i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final i f2744j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2745k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2746l;

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet) {
        Context contextA = a.a(context, attributeSet, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup);
        super(contextA, attributeSet, R.attr.chipGroupStyle);
        this.f3782c = false;
        TypedArray typedArrayObtainStyledAttributes = contextA.getTheme().obtainStyledAttributes(attributeSet, Y.a.f, 0, 0);
        this.f3781a = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f2743i = new f(this);
        i iVar = new i(this);
        this.f2744j = iVar;
        this.f2745k = -1;
        this.f2746l = false;
        TypedArray typedArrayD = p017k0.i.d(getContext(), attributeSet, Y.a.f1368c, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayD.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(typedArrayD.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayD.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(typedArrayD.getBoolean(5, false));
        setSingleSelection(typedArrayD.getBoolean(6, false));
        setSelectionRequired(typedArrayD.getBoolean(4, false));
        int resourceId = typedArrayD.getResourceId(0, -1);
        if (resourceId != -1) {
            this.f2745k = resourceId;
        }
        typedArrayD.recycle();
        super.setOnHierarchyChangeListener(iVar);
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.s(this, 1);
    }

    private int getChipCount() {
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) instanceof Chip) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i2) {
        this.f2745k = i2;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i3 = this.f2745k;
                if (i3 != -1 && this.f2741g) {
                    b(i3, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i2, layoutParams);
    }

    public final void b(int i2, boolean z2) {
        View viewFindViewById = findViewById(i2);
        if (viewFindViewById instanceof Chip) {
            this.f2746l = true;
            ((Chip) viewFindViewById).setChecked(z2);
            this.f2746l = false;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof g);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        if (this.f2741g) {
            return this.f2745k;
        }
        return -1;
    }

    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f2741g) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public int getChipSpacingHorizontal() {
        return this.f2740e;
    }

    public int getChipSpacingVertical() {
        return this.f;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f2745k;
        if (i2 != -1) {
            b(i2, true);
            setCheckedId(this.f2745k);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(getRowCount(), this.f3782c ? getChipCount() : -1, false, this.f2741g ? 1 : 2));
    }

    public void setChipSpacing(int i2) {
        setChipSpacingHorizontal(i2);
        setChipSpacingVertical(i2);
    }

    public void setChipSpacingHorizontal(int i2) {
        if (this.f2740e != i2) {
            this.f2740e = i2;
            setItemSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i2) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingResource(int i2) {
        setChipSpacing(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingVertical(int i2) {
        if (this.f != i2) {
            this.f = i2;
            setLineSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i2) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i2));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i2) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(h hVar) {
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f2744j.f3215a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z2) {
        this.f2742h = z2;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // p017k0.d
    public void setSingleLine(boolean z2) {
        super.setSingleLine(z2);
    }

    public void setSingleSelection(boolean z2) {
        if (this.f2741g != z2) {
            this.f2741g = z2;
            this.f2746l = true;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.f2746l = false;
            setCheckedId(-1);
        }
    }

    public void setSingleLine(int i2) {
        setSingleLine(getResources().getBoolean(i2));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new g(layoutParams);
    }

    public void setSingleSelection(int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }
}
