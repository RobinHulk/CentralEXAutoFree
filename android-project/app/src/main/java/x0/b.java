package x0;

import M.d0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p007e.AbstractC0201a;
import w0.f;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public final class b extends f implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f4212a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f4214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f4215e;

    public b(Object[] objArr, int i2, int i3, b bVar, c cVar) {
        I0.f.e(objArr, "backing");
        I0.f.e(cVar, "root");
        this.f4212a = objArr;
        this.b = i2;
        this.f4213c = i3;
        this.f4214d = bVar;
        this.f4215e = cVar;
        ((AbstractList) this).modCount = ((AbstractList) cVar).modCount;
    }

    @Override // w0.f
    public final int a() {
        f();
        return this.f4213c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        f();
        e(this.b + this.f4213c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        I0.f.e(collection, "elements");
        g();
        f();
        int size = collection.size();
        d(this.b + this.f4213c, collection, size);
        return size > 0;
    }

    @Override // w0.f
    public final Object b(int i2) {
        g();
        f();
        int i3 = this.f4213c;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return h(this.b + i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        f();
        i(this.b, this.f4213c);
    }

    public final void d(int i2, Collection collection, int i3) {
        ((AbstractList) this).modCount++;
        c cVar = this.f4215e;
        b bVar = this.f4214d;
        if (bVar != null) {
            bVar.d(i2, collection, i3);
        } else {
            c cVar2 = c.f4216d;
            cVar.d(i2, collection, i3);
        }
        this.f4212a = cVar.f4217a;
        this.f4213c += i3;
    }

    public final void e(int i2, Object obj) {
        ((AbstractList) this).modCount++;
        c cVar = this.f4215e;
        b bVar = this.f4214d;
        if (bVar != null) {
            bVar.e(i2, obj);
        } else {
            c cVar2 = c.f4216d;
            cVar.e(i2, obj);
        }
        this.f4212a = cVar.f4217a;
        this.f4213c++;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        f();
        if (obj != this) {
            if (obj instanceof List) {
                if (AbstractC0201a.e(this.f4212a, this.b, this.f4213c, (List) obj)) {
                }
            }
            return false;
        }
        return true;
    }

    public final void f() {
        if (((AbstractList) this.f4215e).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    public final void g() {
        if (this.f4215e.f4218c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        f();
        int i3 = this.f4213c;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return this.f4212a[this.b + i2];
    }

    public final Object h(int i2) {
        Object objH;
        ((AbstractList) this).modCount++;
        b bVar = this.f4214d;
        if (bVar != null) {
            objH = bVar.h(i2);
        } else {
            c cVar = c.f4216d;
            objH = this.f4215e.h(i2);
        }
        this.f4213c--;
        return objH;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        f();
        Object[] objArr = this.f4212a;
        int i2 = this.f4213c;
        int iHashCode = 1;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[this.b + i3];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i2, int i3) {
        if (i3 > 0) {
            ((AbstractList) this).modCount++;
        }
        b bVar = this.f4214d;
        if (bVar != null) {
            bVar.i(i2, i3);
        } else {
            c cVar = c.f4216d;
            this.f4215e.i(i2, i3);
        }
        this.f4213c -= i3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        f();
        for (int i2 = 0; i2 < this.f4213c; i2++) {
            if (I0.f.a(this.f4212a[this.b + i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        f();
        return this.f4213c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final int j(int i2, int i3, Collection collection, boolean z2) {
        int iJ;
        b bVar = this.f4214d;
        if (bVar != null) {
            iJ = bVar.j(i2, i3, collection, z2);
        } else {
            c cVar = c.f4216d;
            iJ = this.f4215e.j(i2, i3, collection, z2);
        }
        if (iJ > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f4213c -= iJ;
        return iJ;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        f();
        for (int i2 = this.f4213c - 1; i2 >= 0; i2--) {
            if (I0.f.a(this.f4212a[this.b + i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        f();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            b(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        I0.f.e(collection, "elements");
        g();
        f();
        return j(this.b, this.f4213c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        I0.f.e(collection, "elements");
        g();
        f();
        return j(this.b, this.f4213c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        g();
        f();
        int i3 = this.f4213c;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        Object[] objArr = this.f4212a;
        int i4 = this.b;
        Object obj2 = objArr[i4 + i2];
        objArr[i4 + i2] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i2, int i3) {
        AbstractC0201a.k(i2, i3, this.f4213c);
        return new b(this.f4212a, this.b + i2, i3 - i2, this, this.f4215e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        I0.f.e(objArr, "array");
        f();
        int length = objArr.length;
        int i2 = this.f4213c;
        int i3 = this.b;
        if (length < i2) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f4212a, i3, i2 + i3, objArr.getClass());
            I0.f.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        h.U(this.f4212a, objArr, 0, i3, i2 + i3);
        AbstractC0201a.R(this.f4213c, objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        f();
        return AbstractC0201a.f(this.f4212a, this.b, this.f4213c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        f();
        int i3 = this.f4213c;
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return new a(this, i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        g();
        f();
        int i3 = this.f4213c;
        if (i2 >= 0 && i2 <= i3) {
            e(this.b + i2, obj);
            return;
        }
        throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        I0.f.e(collection, "elements");
        g();
        f();
        int i3 = this.f4213c;
        if (i2 >= 0 && i2 <= i3) {
            int size = collection.size();
            d(this.b + i2, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        f();
        Object[] objArr = this.f4212a;
        int i2 = this.f4213c;
        int i3 = this.b;
        int i4 = i2 + i3;
        I0.f.e(objArr, "<this>");
        AbstractC0201a.n(i4, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i3, i4);
        I0.f.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }
}
