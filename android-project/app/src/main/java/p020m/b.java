package p020m;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b extends k implements Map {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f3840h;

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f3840h == null) {
            this.f3840h = new a(this, 0);
        }
        a aVar = this.f3840h;
        if (aVar.f3836a == null) {
            aVar.f3836a = new h(aVar, 0);
        }
        return aVar.f3836a;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f3840h == null) {
            this.f3840h = new a(this, 0);
        }
        a aVar = this.f3840h;
        if (aVar.b == null) {
            aVar.b = new h(aVar, 1);
        }
        return aVar.b;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.f3871c;
        int i2 = this.f3871c;
        int[] iArr = this.f3870a;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            a(size);
            if (this.f3871c > 0) {
                System.arraycopy(iArr, 0, this.f3870a, 0, i2);
                System.arraycopy(objArr, 0, this.b, 0, i2 << 1);
            }
            k.b(iArr, objArr, i2);
        }
        if (this.f3871c != i2) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f3840h == null) {
            this.f3840h = new a(this, 0);
        }
        a aVar = this.f3840h;
        if (aVar.f3837c == null) {
            aVar.f3837c = new j(aVar);
        }
        return aVar.f3837c;
    }
}
