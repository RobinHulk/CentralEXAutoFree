package T;

/* JADX INFO: renamed from: T.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0091l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1035a;
    public final double b;

    public C0091l(String str, double d2) {
        this.f1035a = str;
        this.b = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0091l)) {
            return false;
        }
        C0091l c0091l = (C0091l) obj;
        return I0.f.a(this.f1035a, c0091l.f1035a) && Double.compare(this.b, c0091l.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.f1035a.hashCode() * 31);
    }

    public final String toString() {
        return "Step(type=" + this.f1035a + ", value=" + this.b + ')';
    }
}
