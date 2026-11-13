package I0;

/* JADX INFO: loaded from: classes.dex */
public final class h implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f121a;

    public h(Class cls) {
        this.f121a = cls;
    }

    @Override // I0.b
    public final Class a() {
        return this.f121a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            if (f.a(this.f121a, ((h) obj).f121a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f121a.hashCode();
    }

    public final String toString() {
        return this.f121a.toString() + " (Kotlin reflection is not available)";
    }
}
