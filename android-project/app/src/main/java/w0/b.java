package w0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4181a = 1;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4182c;

    public b(Iterator it) {
        I0.f.e(it, "iterator");
        this.f4182c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f4181a) {
            case 0:
                return this.b < ((e) this.f4182c).a();
            default:
                return ((Iterator) this.f4182c).hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f4181a) {
            case 0:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i2 = this.b;
                this.b = i2 + 1;
                return ((e) this.f4182c).get(i2);
            default:
                int i3 = this.b;
                this.b = i3 + 1;
                if (i3 >= 0) {
                    return new t(i3, ((Iterator) this.f4182c).next());
                }
                j.U();
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f4181a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(e eVar) {
        this.f4182c = eVar;
    }
}
