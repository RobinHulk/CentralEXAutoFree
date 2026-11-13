package w0;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4193a;
    public final Object b;

    public t(int i2, Object obj) {
        this.f4193a = i2;
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f4193a == tVar.f4193a && I0.f.a(this.b, tVar.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f4193a) * 31;
        Object obj = this.b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f4193a + ", value=" + this.b + ')';
    }
}
