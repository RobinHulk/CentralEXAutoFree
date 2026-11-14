package T;

/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f810a;
    public final String b;

    public V(String str, String str2) {
        I0.f.e(str2, "qClean");
        this.f810a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V)) {
            return false;
        }
        V v2 = (V) obj;
        return I0.f.a(this.f810a, v2.f810a) && I0.f.a(this.b, v2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f810a.hashCode() * 31);
    }

    public final String toString() {
        return "Clean(renameBlock=" + this.f810a + ", qClean=" + this.b + ')';
    }
}
