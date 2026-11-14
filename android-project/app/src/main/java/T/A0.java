package T;

/* JADX INFO: loaded from: classes.dex */
public final class A0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f468a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f469c;

    public A0(long j2, String str, String str2) {
        this.f468a = j2;
        this.b = str;
        this.f469c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A0)) {
            return false;
        }
        A0 a1 = (A0) obj;
        return this.f468a == a1.f468a && this.b.equals(a1.b) && this.f469c.equals(a1.f469c) && I0.f.a(null, null);
    }

    public final int hashCode() {
        return M.d0.b(M.d0.b(Long.hashCode(this.f468a) * 31, 31, this.b), 31, this.f469c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WdUpdateInfo(versionCode=");
        sb.append(this.f468a);
        sb.append(", versionName=");
        sb.append(this.b);
        sb.append(", apkUrl=");
        return M.d0.g(sb, this.f469c, ", sha256=null)");
    }
}
