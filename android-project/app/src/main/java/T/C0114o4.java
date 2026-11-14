package T;

/* JADX INFO: renamed from: T.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0114o4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1083a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1084c;

    public C0114o4(String str, String str2, String str3) {
        I0.f.e(str, "asset");
        I0.f.e(str2, "src");
        I0.f.e(str3, "target");
        this.f1083a = str;
        this.b = str2;
        this.f1084c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0114o4)) {
            return false;
        }
        C0114o4 c0114o4 = (C0114o4) obj;
        return I0.f.a(this.f1083a, c0114o4.f1083a) && I0.f.a(this.b, c0114o4.b) && I0.f.a(this.f1084c, c0114o4.f1084c);
    }

    public final int hashCode() {
        return this.f1084c.hashCode() + M.d0.b(this.f1083a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "Overlay(asset=" + this.f1083a + ", src=" + this.b + ", target=" + this.f1084c + ')';
    }
}
