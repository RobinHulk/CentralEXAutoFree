package T;

/* JADX INFO: renamed from: T.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0117p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1089a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1092e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1093g;

    public C0117p1(long j2, String str, String str2, String str3, String str4, String str5, boolean z2) {
        this.f1089a = j2;
        this.b = str;
        this.f1090c = str2;
        this.f1091d = str3;
        this.f1092e = str4;
        this.f = str5;
        this.f1093g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0117p1)) {
            return false;
        }
        C0117p1 c0117p1 = (C0117p1) obj;
        return this.f1089a == c0117p1.f1089a && I0.f.a(this.b, c0117p1.b) && I0.f.a(this.f1090c, c0117p1.f1090c) && I0.f.a(this.f1091d, c0117p1.f1091d) && I0.f.a(this.f1092e, c0117p1.f1092e) && I0.f.a(this.f, c0117p1.f) && this.f1093g == c0117p1.f1093g;
    }

    public final int hashCode() {
        int iB = M.d0.b(M.d0.b(M.d0.b(Long.hashCode(this.f1089a) * 31, 31, this.b), 31, this.f1090c), 31, this.f1091d);
        String str = this.f1092e;
        return Boolean.hashCode(this.f1093g) + M.d0.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f);
    }

    public final String toString() {
        return "Signed(versionCode=" + this.f1089a + ", versionName=" + this.b + ", apkUrl=" + this.f1090c + ", notes=" + this.f1091d + ", sha256=" + this.f1092e + ", channel=" + this.f + ", channelPinned=" + this.f1093g + ')';
    }
}
