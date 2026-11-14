package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p025p0.e;
import p027q0.d;

/* JADX INFO: loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e f2820g;

    public BaseTransientBottomBar$Behavior() {
        e eVar = new e();
        this.f2669d = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f2670e = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f2668c = 0;
        this.f2820g = eVar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, p023o.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f2820g.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (A.e.f3c == null) {
                    A.e.f3c = new A.e(24);
                }
                synchronized (A.e.f3c.b) {
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (A.e.f3c == null) {
                A.e.f3c = new A.e(24);
            }
            synchronized (A.e.f3c.b) {
            }
        }
        return super.f(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean r(View view) {
        this.f2820g.getClass();
        return view instanceof d;
    }
}
