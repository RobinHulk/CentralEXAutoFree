package androidx.lifecycle;

import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.lifecycle.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0192b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1952a;
    public final Method b;

    public C0192b(int i2, Method method) {
        this.f1952a = i2;
        this.b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0192b)) {
            return false;
        }
        C0192b c0192b = (C0192b) obj;
        return this.f1952a == c0192b.f1952a && this.b.getName().equals(c0192b.b.getName());
    }

    public final int hashCode() {
        return this.b.getName().hashCode() + (this.f1952a * 31);
    }
}
