package p034y;

import android.os.Build;
import android.view.View;
import p028r.c;
import p033x.b;

/* JADX INFO: loaded from: classes.dex */
public class i0 {
    public static final j0 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j0 f4256a;

    static {
        b0 z2;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            z2 = new a0();
        } else {
            z2 = i2 >= 29 ? new Z() : new Y();
        }
        b = z2.b().f4257a.a().f4257a.b().f4257a.c();
    }

    public i0(j0 j0Var) {
        this.f4256a = j0Var;
    }

    public j0 a() {
        return this.f4256a;
    }

    public j0 b() {
        return this.f4256a;
    }

    public j0 c() {
        return this.f4256a;
    }

    public void d(View view) {
    }

    public C0275i e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return k() == i0Var.k() && j() == i0Var.j() && b.a(h(), i0Var.h()) && b.a(g(), i0Var.g()) && b.a(e(), i0Var.e());
    }

    public c f() {
        return h();
    }

    public c g() {
        return c.f4041e;
    }

    public c h() {
        return c.f4041e;
    }

    public int hashCode() {
        return b.b(Boolean.valueOf(k()), Boolean.valueOf(j()), h(), g(), e());
    }

    public j0 i(int i2, int i3, int i4, int i5) {
        return b;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public void l(c[] cVarArr) {
    }

    public void m(j0 j0Var) {
    }

    public void n(c cVar) {
    }
}
