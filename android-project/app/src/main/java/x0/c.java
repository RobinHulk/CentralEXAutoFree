package x0;

import M.d0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p007e.AbstractC0201a;
import w0.f;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public final class c extends f implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f4216d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f4217a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4218c;

    static {
        c cVar = new c(0);
        cVar.f4218c = true;
        f4216d = cVar;
    }

    public c(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.f4217a = new Object[i2];
    }

    @Override // w0.f
    public final int a() {
        return this.b;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        f();
        int i2 = this.b;
        ((AbstractList) this).modCount++;
        g(i2, 1);
        this.f4217a[i2] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        I0.f.e(collection, "elements");
        f();
        int size = collection.size();
        d(this.b, collection, size);
        return size > 0;
    }

    @Override // w0.f
    public final Object b(int i2) {
        f();
        int i3 = this.b;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return h(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        f();
        i(0, this.b);
    }

    public final void d(int i2, Collection collection, int i3) {
        ((AbstractList) this).modCount++;
        g(i2, i3);
        Iterator it = collection.iterator();
        for (int i4 = 0; i4 < i3; i4++) {
            this.f4217a[i2 + i4] = it.next();
        }
    }

    public final void e(int i2, Object obj) {
        ((AbstractList) this).modCount++;
        g(i2, 1);
        this.f4217a[i2] = obj;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            if (!AbstractC0201a.e(this.f4217a, 0, this.b, (List) obj)) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        if (this.f4218c) {
            throw new UnsupportedOperationException();
        }
    }

    public final void g(int i2, int i3) {
        int i4 = this.b + i3;
        if (i4 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f4217a;
        if (i4 > objArr.length) {
            int length = objArr.length;
            int i5 = length + (length >> 1);
            if (i5 - i4 < 0) {
                i5 = i4;
            }
            if (i5 - 2147483639 > 0) {
                i5 = i4 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] objArrCopyOf = Arrays.copyOf(objArr, i5);
            I0.f.d(objArrCopyOf, "copyOf(...)");
            this.f4217a = objArrCopyOf;
        }
        Object[] objArr2 = this.f4217a;
        h.U(objArr2, objArr2, i2 + i3, i2, this.b);
        this.b += i3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        int i3 = this.b;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return this.f4217a[i2];
    }

    public final Object h(int i2) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f4217a;
        Object obj = objArr[i2];
        h.U(objArr, objArr, i2, i2 + 1, this.b);
        Object[] objArr2 = this.f4217a;
        int i3 = this.b - 1;
        I0.f.e(objArr2, "<this>");
        objArr2[i3] = null;
        this.b--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f4217a;
        int i2 = this.b;
        int iHashCode = 1;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i2, int i3) {
        if (i3 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f4217a;
        h.U(objArr, objArr, i2, i2 + i3, this.b);
        Object[] objArr2 = this.f4217a;
        int i4 = this.b;
        I0.f.e(objArr2, "<this>");
        for (int i5 = i4 - i3; i5 < i4; i5++) {
            objArr2[i5] = null;
        }
        this.b -= i3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (I0.f.a(this.f4217a[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.b == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final int j(int i2, int i3, Collection collection, boolean z2) {
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i2 + i4;
            if (collection.contains(this.f4217a[i6]) == z2) {
                Object[] objArr = this.f4217a;
                i4++;
                objArr[i5 + i2] = objArr[i6];
                i5++;
            } else {
                i4++;
            }
        }
        int i7 = i3 - i5;
        Object[] objArr2 = this.f4217a;
        h.U(objArr2, objArr2, i2 + i5, i3 + i2, this.b);
        Object[] objArr3 = this.f4217a;
        int i8 = this.b;
        I0.f.e(objArr3, "<this>");
        for (int i9 = i8 - i7; i9 < i8; i9++) {
            objArr3[i9] = null;
        }
        if (i7 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.b -= i7;
        return i7;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i2 = this.b - 1; i2 >= 0; i2--) {
            if (I0.f.a(this.f4217a[i2], obj)) {
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
        f();
        return j(0, this.b, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        I0.f.e(collection, "elements");
        f();
        return j(0, this.b, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        int i3 = this.b;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        Object[] objArr = this.f4217a;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i2, int i3) {
        AbstractC0201a.k(i2, i3, this.b);
        return new b(this.f4217a, i2, i3 - i2, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        I0.f.e(objArr, "array");
        int length = objArr.length;
        int i2 = this.b;
        if (length < i2) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f4217a, 0, i2, objArr.getClass());
            I0.f.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        h.U(this.f4217a, objArr, 0, 0, i2);
        AbstractC0201a.R(this.b, objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return AbstractC0201a.f(this.f4217a, 0, this.b, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        int i3 = this.b;
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return new a(this, i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        I0.f.e(collection, "elements");
        f();
        int i3 = this.b;
        if (i2 >= 0 && i2 <= i3) {
            int size = collection.size();
            d(i2, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        Object[] objArr = this.f4217a;
        int i2 = this.b;
        I0.f.e(objArr, "<this>");
        AbstractC0201a.n(i2, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, 0, i2);
        I0.f.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        f();
        int i3 = this.b;
        if (i2 >= 0 && i2 <= i3) {
            ((AbstractList) this).modCount++;
            g(i2, 1);
            this.f4217a[i2] = obj;
            return;
        }
        throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
    }
}
