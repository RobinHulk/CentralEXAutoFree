package T;

import java.util.ArrayList;

/* JADX INFO: renamed from: T.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0085k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1026a;
    public final boolean b;

    public C0085k(ArrayList arrayList, boolean z2) {
        this.f1026a = arrayList;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0085k)) {
            return false;
        }
        C0085k c0085k = (C0085k) obj;
        return this.f1026a.equals(c0085k.f1026a) && this.b == c0085k.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.f1026a.hashCode() * 31);
    }

    public final String toString() {
        return "Program(steps=" + this.f1026a + ", repeat=" + this.b + ')';
    }
}
