package p034y;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: y.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0285t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f4262a;
    public ViewTreeObserver b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f4263c;

    public ViewTreeObserverOnPreDrawListenerC0285t(View view, Runnable runnable) {
        this.f4262a = view;
        this.b = view.getViewTreeObserver();
        this.f4263c = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        ViewTreeObserverOnPreDrawListenerC0285t viewTreeObserverOnPreDrawListenerC0285t = new ViewTreeObserverOnPreDrawListenerC0285t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0285t);
        view.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC0285t);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.b.isAlive();
        View view = this.f4262a;
        if (zIsAlive) {
            this.b.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f4263c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.b.isAlive();
        View view2 = this.f4262a;
        if (zIsAlive) {
            this.b.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
