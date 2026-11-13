package v0;

import I0.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4159a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4160c;

    public d(Object obj, Object obj2, Object obj3) {
        this.f4159a = obj;
        this.b = obj2;
        this.f4160c = obj3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return f.a(this.f4159a, dVar.f4159a) && f.a(this.b, dVar.b) && f.a(this.f4160c, dVar.f4160c);
    }

    public final int hashCode() {
        Object obj = this.f4159a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f4160c;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f4159a + ", " + this.b + ", " + this.f4160c + ')';
    }
}
