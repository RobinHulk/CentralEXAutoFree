package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class u implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K f1926a;
    public final /* synthetic */ v b;

    public u(v vVar, K k2) {
        this.b = vVar;
        this.f1926a = k2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        K k2 = this.f1926a;
        k2.k();
        C0180h.f((ViewGroup) k2.f1786c.f1878E.getParent(), this.b.f1927a.B()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
