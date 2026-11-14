package N0;

import H0.l;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterator f399a;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f401d;

    public d(c cVar) {
        this.f401d = cVar;
        this.f399a = new k((c) cVar.b);
    }

    public final void a() {
        Object next;
        boolean zBooleanValue;
        do {
            Iterator it = this.f399a;
            if (!it.hasNext()) {
                this.b = 0;
                return;
            }
            next = it.next();
            c cVar = this.f401d;
            zBooleanValue = ((Boolean) ((l) cVar.f398c).b(next)).booleanValue();
            cVar.getClass();
        } while (!zBooleanValue);
        this.f400c = next;
        this.b = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b == -1) {
            a();
        }
        return this.b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b == -1) {
            a();
        }
        if (this.b == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f400c;
        this.f400c = null;
        this.b = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
