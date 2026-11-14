package Z;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1393a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TimeInterpolator f1394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1396e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f1394c;
        return timeInterpolator != null ? timeInterpolator : a.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f1393a == cVar.f1393a && this.b == cVar.b && this.f1395d == cVar.f1395d && this.f1396e == cVar.f1396e) {
            return a().getClass().equals(cVar.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j2 = this.f1393a;
        long j3 = this.b;
        return ((((a().getClass().hashCode() + (((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31)) * 31) + this.f1395d) * 31) + this.f1396e;
    }

    public final String toString() {
        return "\n" + c.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f1393a + " duration: " + this.b + " interpolator: " + a().getClass() + " repeatCount: " + this.f1395d + " repeatMode: " + this.f1396e + "}\n";
    }
}
