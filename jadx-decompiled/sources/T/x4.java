package T;

/* JADX INFO: loaded from: classes.dex */
public final class x4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1208a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1210d;

    public x4(int i2, int i3, String str, String str2) {
        I0.f.e(str, "packageName");
        I0.f.e(str2, "component");
        this.f1208a = i2;
        this.b = i3;
        this.f1209c = str;
        this.f1210d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x4)) {
            return false;
        }
        x4 x4Var = (x4) obj;
        return this.f1208a == x4Var.f1208a && this.b == x4Var.b && I0.f.a(this.f1209c, x4Var.f1209c) && I0.f.a(this.f1210d, x4Var.f1210d);
    }

    public final int hashCode() {
        return this.f1210d.hashCode() + M.d0.b((Integer.hashCode(this.b) + (Integer.hashCode(this.f1208a) * 31)) * 31, 31, this.f1209c);
    }

    public final String toString() {
        return "FreeformWindow(stackId=" + this.f1208a + ", taskId=" + this.b + ", packageName=" + this.f1209c + ", component=" + this.f1210d + ')';
    }
}
