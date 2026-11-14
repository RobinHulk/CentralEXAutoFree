package p018l;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3826a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f3827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f3828d;

    public c(Object obj, Object obj2) {
        this.f3826a = obj;
        this.b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3826a.equals(cVar.f3826a) && this.b.equals(cVar.b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f3826a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f3826a.hashCode() ^ this.b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f3826a + "=" + this.b;
    }
}
