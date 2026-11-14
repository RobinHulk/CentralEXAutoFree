package T;

/* JADX INFO: renamed from: T.p3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0119p3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1095a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1097d;

    public C0119p3(long j2, String str, String str2, String str3) {
        I0.f.e(str, "versionName");
        this.f1095a = j2;
        this.b = str;
        this.f1096c = str2;
        this.f1097d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0119p3)) {
            return false;
        }
        C0119p3 c0119p3 = (C0119p3) obj;
        return this.f1095a == c0119p3.f1095a && I0.f.a(this.b, c0119p3.b) && I0.f.a(this.f1096c, c0119p3.f1096c) && I0.f.a(this.f1097d, c0119p3.f1097d);
    }

    public final int hashCode() {
        int iB = M.d0.b(M.d0.b(Long.hashCode(this.f1095a) * 31, 31, this.b), 31, this.f1096c);
        String str = this.f1097d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "UpdateInfo(versionCode=" + this.f1095a + ", versionName=" + this.b + ", apkUrl=" + this.f1096c + ", sha256=" + this.f1097d + ')';
    }
}
