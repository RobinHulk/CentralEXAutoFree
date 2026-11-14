package T;

/* JADX INFO: loaded from: classes.dex */
public final class w4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1196a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1198d;

    public w4(int i2, int i3, int i4, int i5) {
        this.f1196a = i2;
        this.b = i3;
        this.f1197c = i4;
        this.f1198d = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w4)) {
            return false;
        }
        w4 w4Var = (w4) obj;
        return this.f1196a == w4Var.f1196a && this.b == w4Var.b && this.f1197c == w4Var.f1197c && this.f1198d == w4Var.f1198d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f1198d) + ((Integer.hashCode(this.f1197c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f1196a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Bounds(left=" + this.f1196a + ", top=" + this.b + ", right=" + this.f1197c + ", bottom=" + this.f1198d + ')';
    }
}
