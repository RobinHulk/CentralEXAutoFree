package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p023o.a;
import p023o.d;

/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton$BaseBehavior<T> extends a {
    public FloatingActionButton$BaseBehavior() {
    }

    @Override // p023o.a
    public final boolean a(View view) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final void c(d dVar) {
        if (dVar.f3898h == 0) {
            dVar.f3898h = 80;
        }
    }

    @Override // p023o.a
    public final boolean d(View view, View view2) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        throw new ClassCastException();
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f1370e);
        typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
