package p020m;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Collection, Set {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f3841e = new int[0];
    public static final Object[] f = new Object[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Object[] f3842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f3843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Object[] f3844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f3845j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3846a = f3841e;
    public Object[] b = f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3847c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f3848d;

    public static void b(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                try {
                    if (f3845j < 10) {
                        objArr[0] = f3844i;
                        objArr[1] = iArr;
                        for (int i3 = i2 - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f3844i = objArr;
                        f3845j++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                try {
                    if (f3843h < 10) {
                        objArr[0] = f3842g;
                        objArr[1] = iArr;
                        for (int i4 = i2 - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f3842g = objArr;
                        f3843h++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (c.class) {
                try {
                    Object[] objArr = f3844i;
                    if (objArr != null) {
                        this.b = objArr;
                        f3844i = (Object[]) objArr[0];
                        this.f3846a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f3845j--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i2 == 4) {
            synchronized (c.class) {
                try {
                    Object[] objArr2 = f3842g;
                    if (objArr2 != null) {
                        this.b = objArr2;
                        f3842g = (Object[]) objArr2[0];
                        this.f3846a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f3843h--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f3846a = new int[i2];
        this.b = new Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i2;
        int iC;
        if (obj == null) {
            iC = d();
            i2 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i2 = iHashCode;
            iC = c(iHashCode, obj);
        }
        if (iC >= 0) {
            return false;
        }
        int i3 = ~iC;
        int i4 = this.f3847c;
        int[] iArr = this.f3846a;
        if (i4 >= iArr.length) {
            int i5 = 8;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i5 = 4;
            }
            Object[] objArr = this.b;
            a(i5);
            int[] iArr2 = this.f3846a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.b, 0, objArr.length);
            }
            b(iArr, objArr, this.f3847c);
        }
        int i6 = this.f3847c;
        if (i3 < i6) {
            int[] iArr3 = this.f3846a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f3847c - i3);
        }
        this.f3846a[i3] = i2;
        this.b[i3] = obj;
        this.f3847c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int size = collection.size() + this.f3847c;
        int[] iArr = this.f3846a;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            a(size);
            int i2 = this.f3847c;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f3846a, 0, i2);
                System.arraycopy(objArr, 0, this.b, 0, this.f3847c);
            }
            b(iArr, objArr, this.f3847c);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final int c(int i2, Object obj) {
        int i3 = this.f3847c;
        if (i3 == 0) {
            return -1;
        }
        int iA = d.a(i3, i2, this.f3846a);
        if (iA < 0 || obj.equals(this.b[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f3846a[i4] == i2) {
            if (obj.equals(this.b[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f3846a[i5] == i2; i5--) {
            if (obj.equals(this.b[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i2 = this.f3847c;
        if (i2 != 0) {
            b(this.f3846a, this.b, i2);
            this.f3846a = f3841e;
            this.b = f;
            this.f3847c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int d() {
        int i2 = this.f3847c;
        if (i2 == 0) {
            return -1;
        }
        int iA = d.a(i2, 0, this.f3846a);
        if (iA < 0 || this.b[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f3846a[i3] == 0) {
            if (this.b[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f3846a[i4] == 0; i4--) {
            if (this.b[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public final void e(int i2) {
        Object[] objArr = this.b;
        Object obj = objArr[i2];
        int i3 = this.f3847c;
        if (i3 <= 1) {
            b(this.f3846a, objArr, i3);
            this.f3846a = f3841e;
            this.b = f;
            this.f3847c = 0;
            return;
        }
        int[] iArr = this.f3846a;
        if (iArr.length <= 8 || i3 >= iArr.length / 3) {
            int i4 = i3 - 1;
            this.f3847c = i4;
            if (i2 < i4) {
                int i5 = i2 + 1;
                System.arraycopy(iArr, i5, iArr, i2, i4 - i2);
                Object[] objArr2 = this.b;
                System.arraycopy(objArr2, i5, objArr2, i2, this.f3847c - i2);
            }
            this.b[this.f3847c] = null;
            return;
        }
        a(i3 > 8 ? i3 + (i3 >> 1) : 8);
        this.f3847c--;
        if (i2 > 0) {
            System.arraycopy(iArr, 0, this.f3846a, 0, i2);
            System.arraycopy(objArr, 0, this.b, 0, i2);
        }
        int i6 = this.f3847c;
        if (i2 < i6) {
            int i7 = i2 + 1;
            System.arraycopy(iArr, i7, this.f3846a, i2, i6 - i2);
            System.arraycopy(objArr, i7, this.b, i2, this.f3847c - i2);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f3847c != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f3847c; i2++) {
                try {
                    if (!set.contains(this.b[i2])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f3846a;
        int i2 = this.f3847c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public final int indexOf(Object obj) {
        return obj == null ? d() : c(obj.hashCode(), obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f3847c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        if (this.f3848d == null) {
            this.f3848d = new a(this, 1);
        }
        a aVar = this.f3848d;
        if (aVar.b == null) {
            aVar.b = new h(aVar, 1);
        }
        return aVar.b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        e(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        boolean z2 = false;
        for (int i2 = this.f3847c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.b[i2])) {
                e(i2);
                z2 = true;
            }
        }
        return z2;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f3847c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i2 = this.f3847c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.b, 0, objArr, 0, i2);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3847c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f3847c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f3847c) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f3847c);
        }
        System.arraycopy(this.b, 0, objArr, 0, this.f3847c);
        int length = objArr.length;
        int i2 = this.f3847c;
        if (length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }
}
