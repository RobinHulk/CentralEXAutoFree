package w0;

import M.d0;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class g extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object[] f4186d = new Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4187a;
    public Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4188c;

    @Override // w0.f
    public final int a() {
        return this.f4188c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int length;
        int length2;
        int i3 = this.f4188c;
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        if (i2 == i3) {
            c(obj);
            return;
        }
        if (i2 == 0) {
            j();
            e(this.f4188c + 1);
            int length3 = this.f4187a;
            if (length3 == 0) {
                Object[] objArr = this.b;
                I0.f.e(objArr, "<this>");
                length3 = objArr.length;
            }
            int i4 = length3 - 1;
            this.f4187a = i4;
            this.b[i4] = obj;
            this.f4188c++;
            return;
        }
        j();
        e(this.f4188c + 1);
        int i5 = i(this.f4187a + i2);
        int i6 = this.f4188c;
        if (i2 < ((i6 + 1) >> 1)) {
            if (i5 == 0) {
                Object[] objArr2 = this.b;
                I0.f.e(objArr2, "<this>");
                length = objArr2.length - 1;
            } else {
                length = i5 - 1;
            }
            int i7 = this.f4187a;
            if (i7 == 0) {
                Object[] objArr3 = this.b;
                I0.f.e(objArr3, "<this>");
                length2 = objArr3.length - 1;
            } else {
                length2 = i7 - 1;
            }
            int i8 = this.f4187a;
            if (length >= i8) {
                Object[] objArr4 = this.b;
                objArr4[length2] = objArr4[i8];
                h.U(objArr4, objArr4, i8, i8 + 1, length + 1);
            } else {
                Object[] objArr5 = this.b;
                h.U(objArr5, objArr5, i8 - 1, i8, objArr5.length);
                Object[] objArr6 = this.b;
                objArr6[objArr6.length - 1] = objArr6[0];
                h.U(objArr6, objArr6, 0, 1, length + 1);
            }
            this.b[length] = obj;
            this.f4187a = length2;
        } else {
            int i9 = i(i6 + this.f4187a);
            if (i5 < i9) {
                Object[] objArr7 = this.b;
                h.U(objArr7, objArr7, i5 + 1, i5, i9);
            } else {
                Object[] objArr8 = this.b;
                h.U(objArr8, objArr8, 1, 0, i9);
                Object[] objArr9 = this.b;
                objArr9[0] = objArr9[objArr9.length - 1];
                h.U(objArr9, objArr9, i5 + 1, i5, objArr9.length - 1);
            }
            this.b[i5] = obj;
        }
        this.f4188c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        I0.f.e(collection, "elements");
        int i3 = this.f4188c;
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i2 == this.f4188c) {
            return addAll(collection);
        }
        j();
        e(collection.size() + this.f4188c);
        int i4 = i(this.f4188c + this.f4187a);
        int i5 = i(this.f4187a + i2);
        int size = collection.size();
        if (i2 < ((this.f4188c + 1) >> 1)) {
            int i6 = this.f4187a;
            int length = i6 - size;
            if (i5 < i6) {
                Object[] objArr = this.b;
                h.U(objArr, objArr, length, i6, objArr.length);
                if (size >= i5) {
                    Object[] objArr2 = this.b;
                    h.U(objArr2, objArr2, objArr2.length - size, 0, i5);
                } else {
                    Object[] objArr3 = this.b;
                    h.U(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.b;
                    h.U(objArr4, objArr4, 0, size, i5);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.b;
                h.U(objArr5, objArr5, length, i6, i5);
            } else {
                Object[] objArr6 = this.b;
                length += objArr6.length;
                int i7 = i5 - i6;
                int length2 = objArr6.length - length;
                if (length2 >= i7) {
                    h.U(objArr6, objArr6, length, i6, i5);
                } else {
                    h.U(objArr6, objArr6, length, i6, i6 + length2);
                    Object[] objArr7 = this.b;
                    h.U(objArr7, objArr7, 0, this.f4187a + length2, i5);
                }
            }
            this.f4187a = length;
            d(g(i5 - size), collection);
        } else {
            int i8 = i5 + size;
            if (i5 < i4) {
                int i9 = size + i4;
                Object[] objArr8 = this.b;
                if (i9 <= objArr8.length) {
                    h.U(objArr8, objArr8, i8, i5, i4);
                } else if (i8 >= objArr8.length) {
                    h.U(objArr8, objArr8, i8 - objArr8.length, i5, i4);
                } else {
                    int length3 = i4 - (i9 - objArr8.length);
                    h.U(objArr8, objArr8, 0, length3, i4);
                    Object[] objArr9 = this.b;
                    h.U(objArr9, objArr9, i8, i5, length3);
                }
            } else {
                Object[] objArr10 = this.b;
                h.U(objArr10, objArr10, size, 0, i4);
                Object[] objArr11 = this.b;
                if (i8 >= objArr11.length) {
                    h.U(objArr11, objArr11, i8 - objArr11.length, i5, objArr11.length);
                } else {
                    h.U(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.b;
                    h.U(objArr12, objArr12, i8, i5, objArr12.length - size);
                }
            }
            d(i5, collection);
        }
        return true;
    }

    @Override // w0.f
    public final Object b(int i2) {
        int i3 = this.f4188c;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        if (i2 == size() - 1) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            j();
            int i4 = i((size() - 1) + this.f4187a);
            Object[] objArr = this.b;
            Object obj = objArr[i4];
            objArr[i4] = null;
            this.f4188c--;
            return obj;
        }
        if (i2 == 0) {
            return k();
        }
        j();
        int i5 = i(this.f4187a + i2);
        Object[] objArr2 = this.b;
        Object obj2 = objArr2[i5];
        if (i2 < (this.f4188c >> 1)) {
            int i6 = this.f4187a;
            if (i5 >= i6) {
                h.U(objArr2, objArr2, i6 + 1, i6, i5);
            } else {
                h.U(objArr2, objArr2, 1, 0, i5);
                Object[] objArr3 = this.b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i7 = this.f4187a;
                h.U(objArr3, objArr3, i7 + 1, i7, objArr3.length - 1);
            }
            Object[] objArr4 = this.b;
            int i8 = this.f4187a;
            objArr4[i8] = null;
            this.f4187a = f(i8);
        } else {
            int i9 = i((size() - 1) + this.f4187a);
            if (i5 <= i9) {
                Object[] objArr5 = this.b;
                h.U(objArr5, objArr5, i5, i5 + 1, i9 + 1);
            } else {
                Object[] objArr6 = this.b;
                h.U(objArr6, objArr6, i5, i5 + 1, objArr6.length);
                Object[] objArr7 = this.b;
                objArr7[objArr7.length - 1] = objArr7[0];
                h.U(objArr7, objArr7, 0, 1, i9 + 1);
            }
            this.b[i9] = null;
        }
        this.f4188c--;
        return obj2;
    }

    public final void c(Object obj) {
        j();
        e(a() + 1);
        this.b[i(a() + this.f4187a)] = obj;
        this.f4188c = a() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            j();
            h(this.f4187a, i(a() + this.f4187a));
        }
        this.f4187a = 0;
        this.f4188c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i2, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i2 < length && it.hasNext()) {
            this.b[i2] = it.next();
            i2++;
        }
        int i3 = this.f4187a;
        for (int i4 = 0; i4 < i3 && it.hasNext(); i4++) {
            this.b[i4] = it.next();
        }
        this.f4188c = collection.size() + a();
    }

    public final void e(int i2) {
        if (i2 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.b;
        if (i2 <= objArr.length) {
            return;
        }
        if (objArr == f4186d) {
            if (i2 < 10) {
                i2 = 10;
            }
            this.b = new Object[i2];
            return;
        }
        int length = objArr.length;
        int i3 = length + (length >> 1);
        if (i3 - i2 < 0) {
            i3 = i2;
        }
        if (i3 - 2147483639 > 0) {
            i3 = i2 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i3];
        h.U(objArr, objArr2, 0, this.f4187a, objArr.length);
        Object[] objArr3 = this.b;
        int length2 = objArr3.length;
        int i4 = this.f4187a;
        h.U(objArr3, objArr2, length2 - i4, 0, i4);
        this.f4187a = 0;
        this.b = objArr2;
    }

    public final int f(int i2) {
        Object[] objArr = this.b;
        I0.f.e(objArr, "<this>");
        if (i2 == objArr.length - 1) {
            return 0;
        }
        return i2 + 1;
    }

    public final int g(int i2) {
        return i2 < 0 ? i2 + this.b.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        int iA = a();
        if (i2 < 0 || i2 >= iA) {
            throw new IndexOutOfBoundsException(d0.d(i2, iA, "index: ", ", size: "));
        }
        return this.b[i(this.f4187a + i2)];
    }

    public final void h(int i2, int i3) {
        if (i2 < i3) {
            h.V(this.b, i2, i3);
            return;
        }
        Object[] objArr = this.b;
        h.V(objArr, i2, objArr.length);
        h.V(this.b, 0, i3);
    }

    public final int i(int i2) {
        Object[] objArr = this.b;
        return i2 >= objArr.length ? i2 - objArr.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i2;
        int i3 = i(a() + this.f4187a);
        int length = this.f4187a;
        if (length < i3) {
            while (length < i3) {
                if (I0.f.a(obj, this.b[length])) {
                    i2 = this.f4187a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < i3) {
            return -1;
        }
        int length2 = this.b.length;
        while (length < length2) {
            if (I0.f.a(obj, this.b[length])) {
                i2 = this.f4187a;
            } else {
                length++;
            }
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (I0.f.a(obj, this.b[i4])) {
                length = i4 + this.b.length;
                i2 = this.f4187a;
            }
        }
        return -1;
        return length - i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return a() == 0;
    }

    public final void j() {
        ((AbstractList) this).modCount++;
    }

    public final Object k() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        j();
        Object[] objArr = this.b;
        int i2 = this.f4187a;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f4187a = f(i2);
        this.f4188c = a() - 1;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i2;
        int i3 = i(this.f4188c + this.f4187a);
        int i4 = this.f4187a;
        if (i4 < i3) {
            length = i3 - 1;
            if (i4 <= length) {
                while (!I0.f.a(obj, this.b[length])) {
                    if (length != i4) {
                        length--;
                    }
                }
                i2 = this.f4187a;
                return length - i2;
            }
            return -1;
        }
        if (i4 > i3) {
            for (int i5 = i3 - 1; -1 < i5; i5--) {
                if (I0.f.a(obj, this.b[i5])) {
                    length = i5 + this.b.length;
                    i2 = this.f4187a;
                    return length - i2;
                }
            }
            Object[] objArr = this.b;
            I0.f.e(objArr, "<this>");
            length = objArr.length - 1;
            int i6 = this.f4187a;
            if (i6 <= length) {
                while (!I0.f.a(obj, this.b[length])) {
                    if (length != i6) {
                        length--;
                    }
                }
                i2 = this.f4187a;
                return length - i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        b(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int i2;
        I0.f.e(collection, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.b.length != 0) {
            int i3 = i(this.f4188c + this.f4187a);
            int i4 = this.f4187a;
            if (i4 < i3) {
                i2 = i4;
                while (i4 < i3) {
                    Object obj = this.b[i4];
                    if (collection.contains(obj)) {
                        z2 = true;
                    } else {
                        this.b[i2] = obj;
                        i2++;
                    }
                    i4++;
                }
                h.V(this.b, i2, i3);
            } else {
                int length = this.b.length;
                boolean z3 = false;
                int i5 = i4;
                while (i4 < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i4];
                    objArr[i4] = null;
                    if (collection.contains(obj2)) {
                        z3 = true;
                    } else {
                        this.b[i5] = obj2;
                        i5++;
                    }
                    i4++;
                }
                i2 = i(i5);
                for (int i6 = 0; i6 < i3; i6++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i6];
                    objArr2[i6] = null;
                    if (collection.contains(obj3)) {
                        z3 = true;
                    } else {
                        this.b[i2] = obj3;
                        i2 = f(i2);
                    }
                }
                z2 = z3;
            }
            if (z2) {
                j();
                this.f4188c = g(i2 - this.f4187a);
            }
        }
        return z2;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        AbstractC0201a.k(i2, i3, this.f4188c);
        int i4 = i3 - i2;
        if (i4 == 0) {
            return;
        }
        if (i4 == this.f4188c) {
            clear();
            return;
        }
        if (i4 == 1) {
            b(i2);
            return;
        }
        j();
        if (i2 < this.f4188c - i3) {
            int i5 = i((i2 - 1) + this.f4187a);
            int i6 = i((i3 - 1) + this.f4187a);
            while (i2 > 0) {
                int i7 = i5 + 1;
                int iMin = Math.min(i2, Math.min(i7, i6 + 1));
                Object[] objArr = this.b;
                int i8 = i6 - iMin;
                int i9 = i5 - iMin;
                h.U(objArr, objArr, i8 + 1, i9 + 1, i7);
                i5 = g(i9);
                i6 = g(i8);
                i2 -= iMin;
            }
            int i10 = i(this.f4187a + i4);
            h(this.f4187a, i10);
            this.f4187a = i10;
        } else {
            int i11 = i(this.f4187a + i3);
            int i12 = i(this.f4187a + i2);
            int i13 = this.f4188c;
            while (true) {
                i13 -= i3;
                if (i13 <= 0) {
                    break;
                }
                Object[] objArr2 = this.b;
                i3 = Math.min(i13, Math.min(objArr2.length - i11, objArr2.length - i12));
                Object[] objArr3 = this.b;
                int i14 = i11 + i3;
                h.U(objArr3, objArr3, i12, i11, i14);
                i11 = i(i14);
                i12 = i(i12 + i3);
            }
            int i15 = i(this.f4188c + this.f4187a);
            h(g(i15 - i4), i15);
        }
        this.f4188c -= i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int i2;
        I0.f.e(collection, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.b.length != 0) {
            int i3 = i(this.f4188c + this.f4187a);
            int i4 = this.f4187a;
            if (i4 < i3) {
                i2 = i4;
                while (i4 < i3) {
                    Object obj = this.b[i4];
                    if (collection.contains(obj)) {
                        this.b[i2] = obj;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i4++;
                }
                h.V(this.b, i2, i3);
            } else {
                int length = this.b.length;
                boolean z3 = false;
                int i5 = i4;
                while (i4 < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i4];
                    objArr[i4] = null;
                    if (collection.contains(obj2)) {
                        this.b[i5] = obj2;
                        i5++;
                    } else {
                        z3 = true;
                    }
                    i4++;
                }
                i2 = i(i5);
                for (int i6 = 0; i6 < i3; i6++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i6];
                    objArr2[i6] = null;
                    if (collection.contains(obj3)) {
                        this.b[i2] = obj3;
                        i2 = f(i2);
                    } else {
                        z3 = true;
                    }
                }
                z2 = z3;
            }
            if (z2) {
                j();
                this.f4188c = g(i2 - this.f4187a);
            }
        }
        return z2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        int iA = a();
        if (i2 < 0 || i2 >= iA) {
            throw new IndexOutOfBoundsException(d0.d(i2, iA, "index: ", ", size: "));
        }
        int i3 = i(this.f4187a + i2);
        Object[] objArr = this.b;
        Object obj2 = objArr[i3];
        objArr[i3] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        I0.f.e(objArr, "array");
        int length = objArr.length;
        int i2 = this.f4188c;
        if (length < i2) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i2);
            I0.f.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) objNewInstance;
        }
        int i3 = i(this.f4188c + this.f4187a);
        int i4 = this.f4187a;
        if (i4 < i3) {
            h.U(this.b, objArr, 0, i4, i3);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.b;
            h.U(objArr2, objArr, 0, this.f4187a, objArr2.length);
            Object[] objArr3 = this.b;
            h.U(objArr3, objArr, objArr3.length - this.f4187a, 0, i3);
        }
        AbstractC0201a.R(this.f4188c, objArr);
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        I0.f.e(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        j();
        e(collection.size() + a());
        d(i(a() + this.f4187a), collection);
        return true;
    }
}
