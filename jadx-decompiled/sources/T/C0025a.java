package T;

/* JADX INFO: renamed from: T.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0025a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f875a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f878e;
    public final byte f;

    public C0025a(int i2, String str, String str2, String str3, int i3, byte b) {
        this.f875a = i2;
        this.b = str;
        this.f876c = str2;
        this.f877d = str3;
        this.f878e = i3;
        this.f = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0025a)) {
            return false;
        }
        C0025a c0025a = (C0025a) obj;
        return this.f875a == c0025a.f875a && I0.f.a(this.b, c0025a.b) && I0.f.a(this.f876c, c0025a.f876c) && I0.f.a(this.f877d, c0025a.f877d) && this.f878e == c0025a.f878e && this.f == c0025a.f;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f875a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f876c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f877d;
        return Byte.hashCode(this.f) + ((Integer.hashCode(this.f878e) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "RawDevice(deviceType=" + this.f875a + ", btMac=" + this.b + ", usbSerial=" + this.f876c + ", btName=" + this.f877d + ", connectState=" + this.f878e + ", wireless=" + ((int) this.f) + ')';
    }
}
