package T;

/* JADX INFO: renamed from: T.m3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0101m3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1054a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1055c;

    public C0101m3(String str, String str2, String str3) {
        this.f1054a = str;
        this.b = str2;
        this.f1055c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0101m3)) {
            return false;
        }
        C0101m3 c0101m3 = (C0101m3) obj;
        return I0.f.a(this.f1054a, c0101m3.f1054a) && I0.f.a(this.b, c0101m3.b) && I0.f.a(this.f1055c, c0101m3.f1055c);
    }

    public final int hashCode() {
        return this.f1055c.hashCode() + M.d0.b(this.f1054a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "KeyServerManifestInfo(versionName=" + this.f1054a + ", apkUrl=" + this.b + ", sha256=" + this.f1055c + ')';
    }
}
