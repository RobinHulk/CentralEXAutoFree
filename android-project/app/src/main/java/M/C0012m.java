package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: M.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0012m extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f285a = false;
    public final /* synthetic */ C0014o b;

    public C0012m(C0014o c0014o) {
        this.b = c0014o;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f285a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f285a) {
            this.f285a = false;
            return;
        }
        C0014o c0014o = this.b;
        if (((Float) c0014o.f326z.getAnimatedValue()).floatValue() == 0.0f) {
            c0014o.f301A = 0;
            c0014o.f(0);
        } else {
            c0014o.f301A = 2;
            c0014o.f319s.invalidate();
        }
    }
}
