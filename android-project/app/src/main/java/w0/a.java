package w0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4180a;
    public Object b;

    public abstract void a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f4180a;
        if (i2 == 0) {
            this.f4180a = 3;
            a();
            if (this.f4180a != 1) {
                return false;
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                return false;
            }
            throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f4180a;
        if (i2 == 1) {
            this.f4180a = 0;
            return this.b;
        }
        if (i2 != 2) {
            this.f4180a = 3;
            a();
            if (this.f4180a == 1) {
                this.f4180a = 0;
                return this.b;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
