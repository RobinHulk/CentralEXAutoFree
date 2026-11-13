package T;

/* JADX INFO: renamed from: T.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0089k3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1033a;
    public final String b;

    public C0089k3(String str, String str2) {
        this.f1033a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0089k3)) {
            return false;
        }
        C0089k3 c0089k3 = (C0089k3) obj;
        return I0.f.a(this.f1033a, c0089k3.f1033a) && I0.f.a(this.b, c0089k3.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1033a.hashCode() * 31);
    }

    public final String toString() {
        return "ConnadaptorManifestInfo(md5=" + this.f1033a + ", apkUrl=" + this.b + ')';
    }
}
