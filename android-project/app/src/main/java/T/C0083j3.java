package T;

/* JADX INFO: renamed from: T.j3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0083j3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1023a;
    public final String b;

    public C0083j3(String str, String str2) {
        this.f1023a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0083j3)) {
            return false;
        }
        C0083j3 c0083j3 = (C0083j3) obj;
        return I0.f.a(this.f1023a, c0083j3.f1023a) && I0.f.a(this.b, c0083j3.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1023a.hashCode() * 31);
    }

    public final String toString() {
        return "CarplayMonitorManifestInfo(md5=" + this.f1023a + ", fileUrl=" + this.b + ')';
    }
}
