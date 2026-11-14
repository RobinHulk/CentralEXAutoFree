package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* JADX INFO: renamed from: androidx.fragment.app.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class AnimationAnimationListenerC0176d implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1838a;
    public final /* synthetic */ View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0177e f1839c;

    public AnimationAnimationListenerC0176d(View view, ViewGroup viewGroup, C0177e c0177e) {
        this.f1838a = viewGroup;
        this.b = view;
        this.f1839c = c0177e;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f1838a.post(new B.b(this, 14));
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
