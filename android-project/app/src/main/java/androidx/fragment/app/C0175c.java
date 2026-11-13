package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: androidx.fragment.app.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0175c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1834a;
    public final /* synthetic */ View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1835c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ P f1836d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0177e f1837e;

    public C0175c(ViewGroup viewGroup, View view, boolean z2, P p2, C0177e c0177e) {
        this.f1834a = viewGroup;
        this.b = view;
        this.f1835c = z2;
        this.f1836d = p2;
        this.f1837e = c0177e;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f1834a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        if (this.f1835c) {
            Q.a(view, this.f1836d.f1800a);
        }
        this.f1837e.d();
    }
}
