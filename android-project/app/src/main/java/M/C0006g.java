package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: M.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0006g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e0 f242a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f245e;
    public final /* synthetic */ C0010k f;

    public C0006g(C0010k c0010k, e0 e0Var, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = c0010k;
        this.f242a = e0Var;
        this.b = i2;
        this.f243c = view;
        this.f244d = i3;
        this.f245e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i2 = this.b;
        View view = this.f243c;
        if (i2 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f244d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f245e.setListener(null);
        C0010k c0010k = this.f;
        e0 e0Var = this.f242a;
        c0010k.c(e0Var);
        c0010k.f277p.remove(e0Var);
        c0010k.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f.getClass();
    }
}
