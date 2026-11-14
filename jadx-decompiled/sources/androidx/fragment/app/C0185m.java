package androidx.fragment.app;

import android.view.View;

/* JADX INFO: renamed from: androidx.fragment.app.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0185m extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractComponentCallbacksC0187o f1863c;

    public C0185m(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        this.f1863c = abstractComponentCallbacksC0187o;
    }

    @Override // A.b
    public final View N(int i2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1863c;
        View view = abstractComponentCallbacksC0187o.f1878E;
        if (view != null) {
            return view.findViewById(i2);
        }
        throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0187o + " does not have a view");
    }

    @Override // A.b
    public final boolean O() {
        return this.f1863c.f1878E != null;
    }
}
