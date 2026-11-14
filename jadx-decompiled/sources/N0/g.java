package N0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p007e.AbstractC0201a;
import w0.x;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Iterator, z0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f404a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z0.d f405c;

    @Override // z0.d
    public final z0.i a() {
        return z0.j.f4284a;
    }

    @Override // z0.d
    public final void b(Object obj) throws Throwable {
        AbstractC0201a.S(obj);
        this.f404a = 4;
    }

    public final RuntimeException c() {
        int i2 = this.f404a;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f404a);
    }

    public final void d(Object obj, x xVar) {
        this.b = obj;
        this.f404a = 3;
        this.f405c = xVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2;
        while (true) {
            i2 = this.f404a;
            if (i2 != 0) {
                break;
            }
            this.f404a = 5;
            z0.d dVar = this.f405c;
            I0.f.b(dVar);
            this.f405c = null;
            dVar.b(v0.e.f4161c);
        }
        if (i2 == 1) {
            I0.f.b(null);
            throw null;
        }
        if (i2 == 2 || i2 == 3) {
            return true;
        }
        if (i2 == 4) {
            return false;
        }
        throw c();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f404a;
        if (i2 == 0 || i2 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i2 == 2) {
            this.f404a = 1;
            I0.f.b(null);
            throw null;
        }
        if (i2 != 3) {
            throw c();
        }
        this.f404a = 0;
        Object obj = this.b;
        this.b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
