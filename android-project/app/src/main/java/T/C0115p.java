package T;

/* JADX INFO: renamed from: T.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0115p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1085a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1087d;

    public C0115p(String str, int i2, String str2, String str3) {
        this.f1085a = str;
        this.b = str2;
        this.f1086c = i2;
        this.f1087d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0115p)) {
            return false;
        }
        C0115p c0115p = (C0115p) obj;
        return this.f1085a.equals(c0115p.f1085a) && this.b.equals(c0115p.b) && this.f1086c == c0115p.f1086c && this.f1087d.equals(c0115p.f1087d);
    }

    public final int hashCode() {
        return this.f1087d.hashCode() + ((Integer.hashCode(this.f1086c) + M.d0.b(this.f1085a.hashCode() * 31, 31, this.b)) * 31);
    }

    public final String toString() {
        return "MonitorBuild(rotulo=" + this.f1085a + ", md5Orig=" + this.b + ", seek=" + this.f1086c + ", md5Patched=" + this.f1087d + ')';
    }
}
