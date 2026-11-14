package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import p034y.ViewTreeObserverOnPreDrawListenerC0285t;

/* JADX INFO: renamed from: androidx.fragment.app.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0190s extends AnimationSet implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f1919a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1922e;

    public RunnableC0190s(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f1922e = true;
        this.f1919a = viewGroup;
        this.b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j2, Transformation transformation) {
        this.f1922e = true;
        if (this.f1920c) {
            return !this.f1921d;
        }
        if (!super.getTransformation(j2, transformation)) {
            this.f1920c = true;
            ViewTreeObserverOnPreDrawListenerC0285t.a(this.f1919a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = this.f1920c;
        ViewGroup viewGroup = this.f1919a;
        if (z2 || !this.f1922e) {
            viewGroup.endViewTransition(this.b);
            this.f1921d = true;
        } else {
            this.f1922e = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j2, Transformation transformation, float f) {
        this.f1922e = true;
        if (this.f1920c) {
            return !this.f1921d;
        }
        if (!super.getTransformation(j2, transformation, f)) {
            this.f1920c = true;
            ViewTreeObserverOnPreDrawListenerC0285t.a(this.f1919a, this);
        }
        return true;
    }
}
