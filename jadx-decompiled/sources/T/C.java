package T;

/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f522a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f523c;

    public C(int i2, String str, boolean z2) {
        this.f522a = i2;
        this.b = str;
        this.f523c = z2;
    }

    public static C a(C c2, int i2, String str, boolean z2, int i3) {
        if ((i3 & 1) != 0) {
            i2 = c2.f522a;
        }
        if ((i3 & 2) != 0) {
            str = c2.b;
        }
        if ((i3 & 4) != 0) {
            z2 = c2.f523c;
        }
        c2.getClass();
        I0.f.e(str, "pacote");
        return new C(i2, str, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c2 = (C) obj;
        return this.f522a == c2.f522a && I0.f.a(this.b, c2.b) && this.f523c == c2.f523c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f523c) + M.d0.b(Integer.hashCode(this.f522a) * 31, 31, this.b);
    }

    public final String toString() {
        return "AppPip(indice=" + this.f522a + ", pacote=" + this.b + ", ativo=" + this.f523c + ')';
    }
}
