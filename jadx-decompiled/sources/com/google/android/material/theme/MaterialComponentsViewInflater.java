package com.google.android.material.theme;

import B.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import p007e.A;
import p007e.AbstractC0201a;
import p009f0.a;
import p014j.C;
import p014j.C0219b0;
import p014j.C0242n;
import p014j.C0244o;
import p014j.C0246p;
import p017k0.i;
import p029r0.o;

/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends A {
    @Override // p007e.A
    public final C0242n a(Context context, AttributeSet attributeSet) {
        return new o(context, attributeSet);
    }

    @Override // p007e.A
    public final C0244o b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // p007e.A
    public final C0246p c(Context context, AttributeSet attributeSet) {
        a aVar = new a(s0.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        Context context2 = aVar.getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, Y.a.f1376l, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        if (typedArrayD.hasValue(0)) {
            c.c(aVar, AbstractC0201a.y(context2, typedArrayD, 0));
        }
        aVar.f = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
        return aVar;
    }

    @Override // p007e.A
    public final C d(Context context, AttributeSet attributeSet) {
        p019l0.a aVar = new p019l0.a(s0.a.a(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = aVar.getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, Y.a.f1377m, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayD.hasValue(0)) {
            c.c(aVar, AbstractC0201a.y(context2, typedArrayD, 0));
        }
        aVar.f = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
        return aVar;
    }

    @Override // p007e.A
    public final C0219b0 e(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
