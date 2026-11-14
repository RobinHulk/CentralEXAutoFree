package M;

/* JADX INFO: renamed from: M.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0000a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f189a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f190c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0000a.class != obj.getClass()) {
            return false;
        }
        C0000a c0000a = (C0000a) obj;
        int i2 = this.f189a;
        if (i2 != c0000a.f189a) {
            return false;
        }
        if (i2 == 8 && Math.abs(this.f190c - this.b) == 1 && this.f190c == c0000a.b && this.b == c0000a.f190c) {
            return true;
        }
        return this.f190c == c0000a.f190c && this.b == c0000a.b;
    }

    public final int hashCode() {
        return (((this.f189a * 31) + this.b) * 31) + this.f190c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i2 = this.f189a;
        if (i2 == 1) {
            str = "add";
        } else if (i2 == 2) {
            str = "rm";
        } else if (i2 != 4) {
            str = i2 != 8 ? "??" : "mv";
        } else {
            str = "up";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        sb.append(this.f190c);
        sb.append(",p:null]");
        return sb.toString();
    }
}
