package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p001a0.a;
import p023o.d;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends a {
    public final int b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void s(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
        }
    }

    @Override // p023o.a
    public final boolean d(View view, View view2) {
        int i2;
        p023o.a aVar = ((d) view2.getLayoutParams()).f3893a;
        if (aVar instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) aVar).getClass();
            int i3 = this.b;
            if (i3 == 0 || (i2 = (int) (0.0f * i3)) < 0) {
                i3 = 0;
            } else if (i2 <= i3) {
                i3 = i2;
            }
            int i4 = bottom - i3;
            WeakHashMap weakHashMap = N.f4222a;
            view.offsetTopAndBottom(i4);
        }
        return false;
    }

    @Override // p023o.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view) {
        int i2 = view.getLayoutParams().height;
        if (i2 != -1 && i2 != -2) {
            return false;
        }
        s(coordinatorLayout.j(view));
        return false;
    }

    @Override // p023o.a
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        s(coordinatorLayout.j(view));
    }

    @Override // p001a0.a
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i2) {
        s(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i2);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f1381q);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
