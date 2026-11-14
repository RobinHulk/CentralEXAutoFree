package w0;

import M.d0;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b implements ListIterator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e f4183d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, int i2) {
        super(eVar);
        this.f4183d = eVar;
        int iA = eVar.a();
        if (i2 < 0 || i2 > iA) {
            throw new IndexOutOfBoundsException(d0.d(i2, iA, "index: ", ", size: "));
        }
        this.b = i2;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.b > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i2 = this.b - 1;
        this.b = i2;
        return this.f4183d.get(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
