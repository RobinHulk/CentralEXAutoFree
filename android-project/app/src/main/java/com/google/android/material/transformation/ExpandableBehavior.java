package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p023o.a;
import p034y.A;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends a {
    public ExpandableBehavior() {
    }

    @Override // p023o.a
    public abstract void b(View view);

    @Override // p023o.a
    public final boolean d(View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        WeakHashMap weakHashMap = N.f4222a;
        if (!A.c(view)) {
            ArrayList arrayListJ = coordinatorLayout.j(view);
            int size = arrayListJ.size();
            for (int i3 = 0; i3 < size; i3++) {
                b(view);
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
