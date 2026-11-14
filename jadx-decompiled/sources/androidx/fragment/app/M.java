package androidx.fragment.app;

import androidx.lifecycle.InterfaceC0198h;

/* JADX INFO: loaded from: classes.dex */
public final class M implements InterfaceC0198h, N.f, androidx.lifecycle.J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.I f1795a;
    public androidx.lifecycle.s b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public N.e f1796c = null;

    public M(androidx.lifecycle.I i2) {
        this.f1795a = i2;
    }

    @Override // N.f
    public final N.d b() {
        f();
        return this.f1796c.b;
    }

    @Override // androidx.lifecycle.J
    public final androidx.lifecycle.I c() {
        f();
        return this.f1795a;
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s d() {
        f();
        return this.b;
    }

    public final void e(androidx.lifecycle.k kVar) {
        this.b.d(kVar);
    }

    public final void f() {
        if (this.b == null) {
            this.b = new androidx.lifecycle.s(this);
            this.f1796c = new N.e(this);
        }
    }
}
