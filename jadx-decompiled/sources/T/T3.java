package T;

/* JADX INFO: loaded from: classes.dex */
public final class T3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f800a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f803e;

    public T3(int i2, int i3, int i4, int i5, String str) {
        this.f800a = i2;
        this.b = i3;
        this.f801c = str;
        this.f802d = i4;
        this.f803e = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof T3)) {
            return false;
        }
        T3 t3 = (T3) obj;
        return this.f800a == t3.f800a && this.b == t3.b && this.f801c.equals(t3.f801c) && this.f802d == t3.f802d && this.f803e == t3.f803e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f803e) + ((Integer.hashCode(this.f802d) + M.d0.b((Integer.hashCode(this.b) + (Integer.hashCode(this.f800a) * 31)) * 31, 31, this.f801c)) * 31);
    }

    public final String toString() {
        return "PresenceFunc(prop=" + this.f800a + ", area=" + this.b + ", label=" + this.f801c + ", onVal=" + this.f802d + ", offVal=" + this.f803e + ')';
    }
}
