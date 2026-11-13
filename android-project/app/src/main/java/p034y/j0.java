package p034y;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;
import p028r.c;
import p033x.b;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {
    public static final j0 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0 f4257a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = h0.f4254m;
        } else {
            b = i0.b;
        }
    }

    public j0(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f4257a = new h0(this, windowInsets);
        } else if (i2 >= 29) {
            this.f4257a = new f0(this, windowInsets);
        } else {
            this.f4257a = new e0(this, windowInsets);
        }
    }

    public static c e(c cVar, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, cVar.f4042a - i2);
        int iMax2 = Math.max(0, cVar.b - i3);
        int iMax3 = Math.max(0, cVar.f4043c - i4);
        int iMax4 = Math.max(0, cVar.f4044d - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? cVar : c.a(iMax, iMax2, iMax3, iMax4);
    }

    public static j0 g(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        j0 j0Var = new j0(windowInsets);
        if (view != null) {
            WeakHashMap weakHashMap = N.f4222a;
            if (A.b(view)) {
                j0 j0VarA = E.a(view);
                i0 i0Var = j0Var.f4257a;
                i0Var.m(j0VarA);
                i0Var.d(view.getRootView());
            }
        }
        return j0Var;
    }

    public final int a() {
        return this.f4257a.h().f4044d;
    }

    public final int b() {
        return this.f4257a.h().f4042a;
    }

    public final int c() {
        return this.f4257a.h().f4043c;
    }

    public final int d() {
        return this.f4257a.h().b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        return b.a(this.f4257a, ((j0) obj).f4257a);
    }

    public final WindowInsets f() {
        i0 i0Var = this.f4257a;
        if (i0Var instanceof c0) {
            return ((c0) i0Var).f4244c;
        }
        return null;
    }

    public final int hashCode() {
        i0 i0Var = this.f4257a;
        if (i0Var == null) {
            return 0;
        }
        return i0Var.hashCode();
    }

    public j0() {
        this.f4257a = new i0(this);
    }
}
