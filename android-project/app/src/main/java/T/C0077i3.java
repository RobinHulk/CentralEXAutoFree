package T;

/* JADX INFO: renamed from: T.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0077i3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1006a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1009e;

    public C0077i3(long j2, String str, String str2, String str3, String str4) {
        I0.f.e(str, "versionName");
        this.f1006a = j2;
        this.b = str;
        this.f1007c = str2;
        this.f1008d = str3;
        this.f1009e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0077i3)) {
            return false;
        }
        C0077i3 c0077i3 = (C0077i3) obj;
        return this.f1006a == c0077i3.f1006a && I0.f.a(this.b, c0077i3.b) && I0.f.a(this.f1007c, c0077i3.f1007c) && I0.f.a(this.f1008d, c0077i3.f1008d) && I0.f.a(this.f1009e, c0077i3.f1009e);
    }

    public final int hashCode() {
        int iB = M.d0.b(Long.hashCode(this.f1006a) * 31, 31, this.b);
        String str = this.f1007c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f1008d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f1009e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AppManifestInfo(versionCode=" + this.f1006a + ", versionName=" + this.b + ", apkUrl=" + this.f1007c + ", sha256=" + this.f1008d + ", pageUrl=" + this.f1009e + ')';
    }
}
