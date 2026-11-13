package T;

/* JADX INFO: renamed from: T.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0113o3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1081a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1082c;

    public C0113o3(String str, String str2, String str3) {
        I0.f.e(str3, "remoteId");
        this.f1081a = str;
        this.b = str2;
        this.f1082c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0113o3)) {
            return false;
        }
        C0113o3 c0113o3 = (C0113o3) obj;
        return I0.f.a(this.f1081a, c0113o3.f1081a) && I0.f.a(this.b, c0113o3.b) && I0.f.a(this.f1082c, c0113o3.f1082c);
    }

    public final int hashCode() {
        return this.f1082c.hashCode() + M.d0.b(this.f1081a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "OutdatedDep(key=" + this.f1081a + ", label=" + this.b + ", remoteId=" + this.f1082c + ')';
    }
}
