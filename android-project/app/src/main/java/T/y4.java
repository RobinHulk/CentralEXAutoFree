package T;

/* JADX INFO: loaded from: classes.dex */
public final class y4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1225a;
    public final int b;

    public y4(int i2, int i3) {
        this.f1225a = i2;
        this.b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y4)) {
            return false;
        }
        y4 y4Var = (y4) obj;
        return this.f1225a == y4Var.f1225a && this.b == y4Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.f1225a) * 31);
    }

    public final String toString() {
        return "ScreenSize(width=" + this.f1225a + ", height=" + this.b + ')';
    }
}
