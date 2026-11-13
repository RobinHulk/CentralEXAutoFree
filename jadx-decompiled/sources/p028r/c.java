package p028r;

import android.graphics.Insets;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f4041e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4042a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4044d;

    public c(int i2, int i3, int i4, int i5) {
        this.f4042a = i2;
        this.b = i3;
        this.f4043c = i4;
        this.f4044d = i5;
    }

    public static c a(int i2, int i3, int i4, int i5) {
        return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) ? f4041e : new c(i2, i3, i4, i5);
    }

    public final Insets b() {
        return b.a(this.f4042a, this.b, this.f4043c, this.f4044d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4044d == cVar.f4044d && this.f4042a == cVar.f4042a && this.f4043c == cVar.f4043c && this.b == cVar.b;
    }

    public final int hashCode() {
        return (((((this.f4042a * 31) + this.b) * 31) + this.f4043c) * 31) + this.f4044d;
    }

    public final String toString() {
        return "Insets{left=" + this.f4042a + ", top=" + this.b + ", right=" + this.f4043c + ", bottom=" + this.f4044d + '}';
    }
}
