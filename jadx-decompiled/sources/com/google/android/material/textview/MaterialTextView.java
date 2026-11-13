package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import p007e.AbstractC0201a;
import p014j.C0219b0;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialTextView extends C0219b0 {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = getContext();
        TypedValue typedValueN = AbstractC0201a.N(context2, com.ex.auto.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueN != null && typedValueN.type == 18 && typedValueN.data == 0) {
            return;
        }
        Resources.Theme theme = context2.getTheme();
        int[] iArr = Y.a.f1380p;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        int iG = g(context2, typedArrayObtainStyledAttributes, 1, 2);
        typedArrayObtainStyledAttributes.recycle();
        if (iG != -1) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
        typedArrayObtainStyledAttributes2.recycle();
        if (resourceId != -1) {
            TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, Y.a.f1379o);
            int iG2 = g(getContext(), typedArrayObtainStyledAttributes3, 0, 1);
            typedArrayObtainStyledAttributes3.recycle();
            if (iG2 >= 0) {
                setLineHeight(iG2);
            }
        }
    }

    public static int g(Context context, TypedArray typedArray, int... iArr) {
        int dimensionPixelSize = -1;
        for (int i2 = 0; i2 < iArr.length && dimensionPixelSize < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i3, typedValue) && typedValue.type == 2) {
                TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes.recycle();
                dimensionPixelSize = dimensionPixelSize2;
            } else {
                dimensionPixelSize = typedArray.getDimensionPixelSize(i3, -1);
            }
        }
        return dimensionPixelSize;
    }

    @Override // p014j.C0219b0, android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        TypedValue typedValueN = AbstractC0201a.N(context, com.ex.auto.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueN != null && typedValueN.type == 18 && typedValueN.data == 0) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i2, Y.a.f1379o);
        int iG = g(getContext(), typedArrayObtainStyledAttributes, 0, 1);
        typedArrayObtainStyledAttributes.recycle();
        if (iG >= 0) {
            setLineHeight(iG);
        }
    }
}
