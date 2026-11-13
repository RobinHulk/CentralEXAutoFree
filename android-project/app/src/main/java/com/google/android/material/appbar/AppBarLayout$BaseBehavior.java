package com.google.android.material.appbar;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.sun.mail.imap.IMAPStore;
import p001a0.a;

/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$BaseBehavior<T> extends a {
    public boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2663d;
    public VelocityTracker f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2662c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2664e = -1;

    public AppBarLayout$BaseBehavior() {
    }

    @Override // p023o.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f2664e < 0) {
            this.f2664e = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.b) {
            int i2 = this.f2662c;
            if (i2 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i2)) == -1) {
                return false;
            }
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y2 - this.f2663d) > this.f2664e) {
                this.f2663d = y2;
                return true;
            }
        }
        if (motionEvent.getActionMasked() != 0) {
            VelocityTracker velocityTracker = this.f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return false;
        }
        this.f2662c = -1;
        motionEvent.getX();
        motionEvent.getY();
        throw new ClassCastException();
    }

    @Override // p001a0.a, p023o.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final /* synthetic */ void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final void m(View view, Parcelable parcelable) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final Parcelable n(View view) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final boolean o(View view, int i2, int i3) {
        throw new ClassCastException();
    }

    @Override // p023o.a
    public final void p(View view, View view2, int i2) {
        throw new ClassCastException();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005b  */
    @Override // p023o.a
    public final boolean q(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2662c);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                this.f2663d = (int) motionEvent.getY(iFindPointerIndex);
                view.getClass();
                throw new ClassCastException();
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i2 = motionEvent.getActionIndex() != 0 ? 0 : 1;
                    this.f2662c = motionEvent.getPointerId(i2);
                    this.f2663d = (int) (motionEvent.getY(i2) + 0.5f);
                }
            }
            velocityTracker = this.f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return this.b;
        }
        VelocityTracker velocityTracker2 = this.f;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
            this.f.computeCurrentVelocity(IMAPStore.RESPONSE);
            this.f.getYVelocity(this.f2662c);
            view.getClass();
            throw new ClassCastException();
        }
        this.b = false;
        this.f2662c = -1;
        VelocityTracker velocityTracker3 = this.f;
        if (velocityTracker3 != null) {
            velocityTracker3.recycle();
            this.f = null;
        }
        velocityTracker = this.f;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return this.b;
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
    }
}
