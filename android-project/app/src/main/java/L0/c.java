package L0;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f138d = new c(1, 0, 1);

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f133a == cVar.f133a) {
                    if (this.b == cVar.b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f133a * 31) + this.b;
    }

    public final boolean isEmpty() {
        return this.f133a > this.b;
    }

    public final String toString() {
        return this.f133a + ".." + this.b;
    }
}
