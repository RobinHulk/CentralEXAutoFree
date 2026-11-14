package T;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f535a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f537d;

    public D(int i2, String str, String str2, boolean z2) {
        this.f535a = i2;
        this.b = str;
        this.f536c = str2;
        this.f537d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d2 = (D) obj;
        return this.f535a == d2.f535a && I0.f.a(this.b, d2.b) && I0.f.a(this.f536c, d2.f536c) && this.f537d == d2.f537d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f537d) + M.d0.b(M.d0.b(Integer.hashCode(this.f535a) * 31, 31, this.b), 31, this.f536c);
    }

    public final String toString() {
        return "Grupo(indice=" + this.f535a + ", esquerda=" + this.b + ", direita=" + this.f536c + ", ativo=" + this.f537d + ')';
    }
}
