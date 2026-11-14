package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: M.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0005f extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f236a = 1;
    public final /* synthetic */ e0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0010k f239e;

    public C0005f(C0010k c0010k, e0 e0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f239e = c0010k;
        this.b = e0Var;
        this.f238d = viewPropertyAnimator;
        this.f237c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f236a) {
            case 1:
                this.f237c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f236a) {
            case 0:
                this.f238d.setListener(null);
                this.f237c.setAlpha(1.0f);
                C0010k c0010k = this.f239e;
                e0 e0Var = this.b;
                c0010k.c(e0Var);
                c0010k.f278q.remove(e0Var);
                c0010k.i();
                break;
            default:
                this.f238d.setListener(null);
                C0010k c0010k2 = this.f239e;
                e0 e0Var2 = this.b;
                c0010k2.c(e0Var2);
                c0010k2.f276o.remove(e0Var2);
                c0010k2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f236a) {
            case 0:
                this.f239e.getClass();
                break;
            default:
                this.f239e.getClass();
                break;
        }
    }

    public C0005f(C0010k c0010k, e0 e0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f239e = c0010k;
        this.b = e0Var;
        this.f237c = view;
        this.f238d = viewPropertyAnimator;
    }
}
