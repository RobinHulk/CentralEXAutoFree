package com.google.android.material.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p023o.a;

/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2665a = 0;
    public int b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewPropertyAnimator f2666c;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // p023o.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        this.f2665a = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // p023o.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
        if (i2 > 0) {
            if (this.b == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f2666c;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.b = 1;
            this.f2666c = view.animate().translationY(this.f2665a).setInterpolator(Z.a.f1390c).setDuration(175L).setListener(new p002b0.a(this, 0));
            return;
        }
        if (i2 >= 0 || this.b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f2666c;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.b = 2;
        this.f2666c = view.animate().translationY(0).setInterpolator(Z.a.f1391d).setDuration(225L).setListener(new p002b0.a(this, 0));
    }

    @Override // p023o.a
    public boolean o(View view, int i2, int i3) {
        return i2 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
