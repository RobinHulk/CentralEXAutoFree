package x0;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import w0.f;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ListIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4208a = 0;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f f4211e;

    public a(c cVar, int i2) {
        I0.f.e(cVar, "list");
        this.f4211e = cVar;
        this.b = i2;
        this.f4209c = -1;
        this.f4210d = ((AbstractList) cVar).modCount;
    }

    public final void a() {
        switch (this.f4208a) {
            case 0:
                if (((AbstractList) ((b) this.f4211e).f4215e).modCount != this.f4210d) {
                    throw new ConcurrentModificationException();
                }
                return;
            default:
                if (((AbstractList) ((c) this.f4211e)).modCount != this.f4210d) {
                    throw new ConcurrentModificationException();
                }
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.f4208a) {
            case 0:
                a();
                int i2 = this.b;
                this.b = i2 + 1;
                b bVar = (b) this.f4211e;
                bVar.add(i2, obj);
                this.f4209c = -1;
                this.f4210d = ((AbstractList) bVar).modCount;
                break;
            default:
                a();
                int i3 = this.b;
                this.b = i3 + 1;
                c cVar = (c) this.f4211e;
                cVar.add(i3, obj);
                this.f4209c = -1;
                this.f4210d = ((AbstractList) cVar).modCount;
                break;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f4208a) {
            case 0:
                return this.b < ((b) this.f4211e).f4213c;
            default:
                return this.b < ((c) this.f4211e).b;
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f4208a) {
            case 0:
                return this.b > 0;
            default:
                return this.b > 0;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f4208a) {
            case 0:
                a();
                int i2 = this.b;
                b bVar = (b) this.f4211e;
                if (i2 >= bVar.f4213c) {
                    throw new NoSuchElementException();
                }
                this.b = i2 + 1;
                this.f4209c = i2;
                return bVar.f4212a[bVar.b + i2];
            default:
                a();
                int i3 = this.b;
                c cVar = (c) this.f4211e;
                if (i3 >= cVar.b) {
                    throw new NoSuchElementException();
                }
                this.b = i3 + 1;
                this.f4209c = i3;
                return cVar.f4217a[i3];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f4208a) {
            case 0:
                break;
        }
        return this.b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f4208a) {
            case 0:
                a();
                int i2 = this.b;
                if (i2 <= 0) {
                    throw new NoSuchElementException();
                }
                int i3 = i2 - 1;
                this.b = i3;
                this.f4209c = i3;
                b bVar = (b) this.f4211e;
                return bVar.f4212a[bVar.b + i3];
            default:
                a();
                int i4 = this.b;
                if (i4 <= 0) {
                    throw new NoSuchElementException();
                }
                int i5 = i4 - 1;
                this.b = i5;
                this.f4209c = i5;
                return ((c) this.f4211e).f4217a[i5];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        switch (this.f4208a) {
            case 0:
                break;
        }
        return this.b - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.f4208a) {
            case 0:
                a();
                int i2 = this.f4209c;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                b bVar = (b) this.f4211e;
                bVar.b(i2);
                this.b = this.f4209c;
                this.f4209c = -1;
                this.f4210d = ((AbstractList) bVar).modCount;
                return;
            default:
                a();
                int i3 = this.f4209c;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                c cVar = (c) this.f4211e;
                cVar.b(i3);
                this.b = this.f4209c;
                this.f4209c = -1;
                this.f4210d = ((AbstractList) cVar).modCount;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f4208a) {
            case 0:
                a();
                int i2 = this.f4209c;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((b) this.f4211e).set(i2, obj);
                return;
            default:
                a();
                int i3 = this.f4209c;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((c) this.f4211e).set(i3, obj);
                return;
        }
    }

    public a(b bVar, int i2) {
        I0.f.e(bVar, "list");
        this.f4211e = bVar;
        this.b = i2;
        this.f4209c = -1;
        this.f4210d = ((AbstractList) bVar).modCount;
    }
}
