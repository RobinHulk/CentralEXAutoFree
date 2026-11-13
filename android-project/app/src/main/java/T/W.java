package T;

/* JADX INFO: loaded from: classes.dex */
public final class W {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f821a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte f823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte f824e;
    public final byte f;

    public W(String str, String str2, String str3, byte b, byte b2, byte b3) {
        this.f821a = str;
        this.b = str2;
        this.f822c = str3;
        this.f823d = b;
        this.f824e = b2;
        this.f = b3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof W)) {
            return false;
        }
        W w2 = (W) obj;
        return I0.f.a(this.f821a, w2.f821a) && I0.f.a(this.b, w2.b) && I0.f.a(this.f822c, w2.f822c) && this.f823d == w2.f823d && this.f824e == w2.f824e && this.f == w2.f;
    }

    public final int hashCode() {
        String str = this.f821a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f822c;
        return Byte.hashCode(this.f) + ((Byte.hashCode(this.f824e) + ((Byte.hashCode(this.f823d) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RawDevice(deviceName=" + this.f821a + ", btAddress=" + this.b + ", usbSerial=" + this.f822c + ", connectState=" + ((int) this.f823d) + ", wirelessLink=" + ((int) this.f824e) + ", autoConnection=" + ((int) this.f) + ')';
    }
}
