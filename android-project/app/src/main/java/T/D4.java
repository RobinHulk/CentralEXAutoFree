package T;

/* JADX INFO: loaded from: classes.dex */
public final class D4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f547a;
    public final double b;

    public D4(String str, double d2) {
        this.f547a = str;
        this.b = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D4)) {
            return false;
        }
        D4 d4 = (D4) obj;
        return I0.f.a(this.f547a, d4.f547a) && Double.compare(this.b, d4.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.f547a.hashCode() * 31);
    }

    public final String toString() {
        return "Zona(tipo=" + this.f547a + ", celsius=" + this.b + ')';
    }
}
