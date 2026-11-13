package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class r extends A.b implements androidx.lifecycle.J, androidx.lifecycle.q, H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractActivityC0210j f1915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AbstractActivityC0210j f1916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f1917e;
    public final E f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0210j f1918g;

    public r(AbstractActivityC0210j abstractActivityC0210j) {
        this.f1918g = abstractActivityC0210j;
        Handler handler = new Handler();
        this.f = new E();
        this.f1915c = abstractActivityC0210j;
        this.f1916d = abstractActivityC0210j;
        this.f1917e = handler;
    }

    @Override // A.b
    public final View N(int i2) {
        return this.f1918g.findViewById(i2);
    }

    @Override // A.b
    public final boolean O() {
        Window window = this.f1918g.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.H
    public final void a() {
    }

    @Override // androidx.lifecycle.J
    public final androidx.lifecycle.I c() {
        return this.f1918g.c();
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s d() {
        return this.f1918g.f3046o;
    }
}
