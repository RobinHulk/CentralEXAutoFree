package v0;

import I0.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f4156a;

    public b(Throwable th) {
        this.f4156a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            if (f.a(this.f4156a, ((b) obj).f4156a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4156a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f4156a + ')';
    }
}
