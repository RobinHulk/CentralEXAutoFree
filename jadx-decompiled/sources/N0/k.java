package N0;

import H0.l;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class k implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterator f407a;
    public final /* synthetic */ c b;

    public k(c cVar) {
        this.b = cVar;
        this.f407a = cVar.b.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f407a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return ((l) this.b.f398c).b(this.f407a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
