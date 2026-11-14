package N0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f402a;
    public int b = -2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ F0.b f403c;

    public e(F0.b bVar) {
        this.f403c = bVar;
    }

    public final void a() {
        Object objB;
        int i2 = this.b;
        F0.b bVar = this.f403c;
        if (i2 == -2) {
            objB = ((O0.f) bVar.b).a();
        } else {
            bVar.getClass();
            O0.g gVar = O0.g.f425h;
            Object obj = this.f402a;
            I0.f.b(obj);
            objB = gVar.b(obj);
        }
        this.f402a = objB;
        this.b = objB == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b < 0) {
            a();
        }
        return this.b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b < 0) {
            a();
        }
        if (this.b == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f402a;
        I0.f.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
        this.b = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
