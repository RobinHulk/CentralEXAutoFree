package com.google.android.material.behavior;

import E.e;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import p002b0.b;
import p023o.a;
import p034y.AbstractC0290y;
import p034y.N;
import p035z.d;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e f2667a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2668c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2669d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2670e = 0.5f;
    public final b f = new b(this);

    @Override // p023o.a
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zO = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zO = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = zO;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.b = false;
        }
        if (!zO) {
            return false;
        }
        if (this.f2667a == null) {
            this.f2667a = new e(coordinatorLayout.getContext(), coordinatorLayout, this.f);
        }
        return this.f2667a.p(motionEvent);
    }

    @Override // p023o.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        WeakHashMap weakHashMap = N.f4222a;
        if (AbstractC0290y.c(view) == 0) {
            AbstractC0290y.s(view, 1);
            N.f(view, 1048576);
            N.d(view, 0);
            if (r(view)) {
                N.g(view, d.f4272j, new A.e(this, 12));
            }
        }
        return false;
    }

    @Override // p023o.a
    public final boolean q(View view, MotionEvent motionEvent) {
        e eVar = this.f2667a;
        if (eVar == null) {
            return false;
        }
        eVar.j(motionEvent);
        return true;
    }

    public boolean r(View view) {
        return true;
    }
}
