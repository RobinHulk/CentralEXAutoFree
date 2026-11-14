package T;

/* JADX INFO: loaded from: classes.dex */
public final class I3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f626a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f627c;

    public I3(String str, String str2, boolean z2) {
        I0.f.e(str2, "saida");
        this.f626a = z2;
        this.b = str;
        this.f627c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I3)) {
            return false;
        }
        I3 i3 = (I3) obj;
        return this.f626a == i3.f626a && this.b.equals(i3.b) && I0.f.a(this.f627c, i3.f627c);
    }

    public final int hashCode() {
        return this.f627c.hashCode() + M.d0.b(Boolean.hashCode(this.f626a) * 31, 31, this.b);
    }

    public final String toString() {
        return "Resultado(ok=" + this.f626a + ", mensagem=" + this.b + ", saida=" + this.f627c + ')';
    }
}
