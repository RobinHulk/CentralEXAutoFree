package T;

/* JADX INFO: renamed from: T.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0128r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f1118a;
    public final Boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f1119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Boolean f1120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f1121e;
    public final Integer f;

    public C0128r1(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Integer num, Integer num2) {
        this.f1118a = bool;
        this.b = bool2;
        this.f1119c = bool3;
        this.f1120d = bool4;
        this.f1121e = num;
        this.f = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0128r1)) {
            return false;
        }
        C0128r1 c0128r1 = (C0128r1) obj;
        return I0.f.a(this.f1118a, c0128r1.f1118a) && I0.f.a(this.b, c0128r1.b) && I0.f.a(this.f1119c, c0128r1.f1119c) && I0.f.a(this.f1120d, c0128r1.f1120d) && I0.f.a(this.f1121e, c0128r1.f1121e) && I0.f.a(this.f, c0128r1.f);
    }

    public final int hashCode() {
        Boolean bool = this.f1118a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f1119c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.f1120d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Integer num = this.f1121e;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f;
        return iHashCode5 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "State(wheelHeat=" + this.f1118a + ", rearDefrost=" + this.b + ", frontMaxDefrost=" + this.f1119c + ", windshieldHeat=" + this.f1120d + ", seatHeatDriver=" + this.f1121e + ", seatHeatPassenger=" + this.f + ')';
    }
}
