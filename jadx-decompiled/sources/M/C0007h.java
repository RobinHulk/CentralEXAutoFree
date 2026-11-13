package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: M.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0007h extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f248a;
    public final /* synthetic */ C0008i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0010k f251e;

    public /* synthetic */ C0007h(C0010k c0010k, C0008i c0008i, ViewPropertyAnimator viewPropertyAnimator, View view, int i2) {
        this.f248a = i2;
        this.f251e = c0010k;
        this.b = c0008i;
        this.f249c = viewPropertyAnimator;
        this.f250d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f248a) {
            case 0:
                this.f249c.setListener(null);
                View view = this.f250d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C0008i c0008i = this.b;
                e0 e0Var = c0008i.f253a;
                C0010k c0010k = this.f251e;
                c0010k.c(e0Var);
                c0010k.f279r.remove(c0008i.f253a);
                c0010k.i();
                break;
            default:
                this.f249c.setListener(null);
                View view2 = this.f250d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C0008i c0008i2 = this.b;
                e0 e0Var2 = c0008i2.b;
                C0010k c0010k2 = this.f251e;
                c0010k2.c(e0Var2);
                c0010k2.f279r.remove(c0008i2.b);
                c0010k2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f248a) {
            case 0:
                e0 e0Var = this.b.f253a;
                this.f251e.getClass();
                break;
            default:
                e0 e0Var2 = this.b.b;
                this.f251e.getClass();
                break;
        }
    }
}
