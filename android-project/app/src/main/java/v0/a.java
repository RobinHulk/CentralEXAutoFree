package v0;

import I0.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4155a;
    public final Object b;

    public a(Object obj, Object obj2) {
        this.f4155a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return f.a(this.f4155a, aVar.f4155a) && f.a(this.b, aVar.b);
    }

    public final int hashCode() {
        Object obj = this.f4155a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f4155a + ", " + this.b + ')';
    }
}
