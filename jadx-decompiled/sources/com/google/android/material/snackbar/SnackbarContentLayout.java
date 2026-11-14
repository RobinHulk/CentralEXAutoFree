package com.google.android.material.snackbar;

import Y.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f2821a;
    public Button b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2823d;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f1383s);
        this.f2822c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f2823d = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(int i2, int i3, int i4) {
        boolean z2;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.f2821a.getPaddingTop() == i3 && this.f2821a.getPaddingBottom() == i4) {
            return z2;
        }
        TextView textView = this.f2821a;
        WeakHashMap weakHashMap = N.f4222a;
        if (AbstractC0291z.g(textView)) {
            AbstractC0291z.k(textView, AbstractC0291z.f(textView), i3, AbstractC0291z.e(textView), i4);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i3, textView.getPaddingRight(), i4);
        return true;
    }

    public Button getActionView() {
        return this.b;
    }

    public TextView getMessageView() {
        return this.f2821a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f2821a = (TextView) findViewById(R.id.snackbar_text);
        this.b = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int i4 = this.f2822c;
        if (i4 > 0 && getMeasuredWidth() > i4) {
            i2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            super.onMeasure(i2, i3);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z2 = this.f2821a.getLayout().getLineCount() > 1;
        if (!z2 || this.f2823d <= 0 || this.b.getMeasuredWidth() <= this.f2823d) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i2, i3);
    }

    public void setMaxInlineActionWidth(int i2) {
        this.f2823d = i2;
    }
}
