package p002b0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import p029r0.k;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2097a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(Object obj, int i2) {
        this.f2097a = i2;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f2097a) {
            case 1:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.f1513w = null;
                actionBarOverlayLayout.f1501k = false;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2097a) {
            case 0:
                ((HideBottomViewOnScrollBehavior) this.b).f2666c = null;
                break;
            case 1:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.f1513w = null;
                actionBarOverlayLayout.f1501k = false;
                break;
            default:
                k kVar = (k) this.b;
                kVar.f4086c.setChecked(kVar.f4078j);
                kVar.f4084p.start();
                break;
        }
    }
}
