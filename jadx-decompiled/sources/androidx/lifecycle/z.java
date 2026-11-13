package androidx.lifecycle;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class z implements q {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final z f1981i = new z();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f1985e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1982a = 0;
    public int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1983c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1984d = true;
    public final s f = new s(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final B.b f1986g = new B.b(this, 17);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A.e f1987h = new A.e(this, 11);

    public final void a() {
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 == 1) {
            if (!this.f1983c) {
                this.f1985e.removeCallbacks(this.f1986g);
            } else {
                this.f.d(k.ON_RESUME);
                this.f1983c = false;
            }
        }
    }

    @Override // androidx.lifecycle.q
    public final s d() {
        return this.f;
    }
}
