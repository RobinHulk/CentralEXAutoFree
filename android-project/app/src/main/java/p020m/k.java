package p020m;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Object[] f3867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f3868e;
    public static Object[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f3869g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3870a = d.f3849a;
    public Object[] b = d.b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3871c = 0;

    public static void b(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (k.class) {
                try {
                    if (f3869g < 10) {
                        objArr[0] = f;
                        objArr[1] = iArr;
                        for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f = objArr;
                        f3869g++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (k.class) {
                try {
                    if (f3868e < 10) {
                        objArr[0] = f3867d;
                        objArr[1] = iArr;
                        for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f3867d = objArr;
                        f3868e++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (k.class) {
                try {
                    Object[] objArr = f;
                    if (objArr != null) {
                        this.b = objArr;
                        f = (Object[]) objArr[0];
                        this.f3870a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f3869g--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i2 == 4) {
            synchronized (k.class) {
                try {
                    Object[] objArr2 = f3867d;
                    if (objArr2 != null) {
                        this.b = objArr2;
                        f3867d = (Object[]) objArr2[0];
                        this.f3870a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f3868e--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f3870a = new int[i2];
        this.b = new Object[i2 << 1];
    }

    public final int c(int i2, Object obj) {
        int i3 = this.f3871c;
        if (i3 == 0) {
            return -1;
        }
        try {
            int iA = d.a(i3, i2, this.f3870a);
            if (iA < 0 || obj.equals(this.b[iA << 1])) {
                return iA;
            }
            int i4 = iA + 1;
            while (i4 < i3 && this.f3870a[i4] == i2) {
                if (obj.equals(this.b[i4 << 1])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = iA - 1; i5 >= 0 && this.f3870a[i5] == i2; i5--) {
                if (obj.equals(this.b[i5 << 1])) {
                    return i5;
                }
            }
            return ~i4;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        int i2 = this.f3871c;
        if (i2 > 0) {
            int[] iArr = this.f3870a;
            Object[] objArr = this.b;
            this.f3870a = d.f3849a;
            this.b = d.b;
            this.f3871c = 0;
            b(iArr, objArr, i2);
        }
        if (this.f3871c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return f(obj) >= 0;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj.hashCode(), obj);
    }

    public final int e() {
        int i2 = this.f3871c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int iA = d.a(i2, 0, this.f3870a);
            if (iA < 0 || this.b[iA << 1] == null) {
                return iA;
            }
            int i3 = iA + 1;
            while (i3 < i2 && this.f3870a[i3] == 0) {
                if (this.b[i3 << 1] == null) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iA - 1; i4 >= 0 && this.f3870a[i4] == 0; i4--) {
                if (this.b[i4 << 1] == null) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f3871c != kVar.f3871c) {
                return false;
            }
            for (int i2 = 0; i2 < this.f3871c; i2++) {
                try {
                    Object objG = g(i2);
                    Object objI = i(i2);
                    Object orDefault = kVar.getOrDefault(objG, null);
                    if (objI == null) {
                        if (orDefault != null || !kVar.containsKey(objG)) {
                            return false;
                        }
                    } else if (!objI.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f3871c != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.f3871c; i3++) {
                try {
                    Object objG2 = g(i3);
                    Object objI2 = i(i3);
                    Object obj2 = map.get(objG2);
                    if (objI2 == null) {
                        if (obj2 != null || !map.containsKey(objG2)) {
                            return false;
                        }
                    } else if (!objI2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f(Object obj) {
        int i2 = this.f3871c * 2;
        Object[] objArr = this.b;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public final Object g(int i2) {
        return this.b[i2 << 1];
    }

    public final Object get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iD = d(obj);
        return iD >= 0 ? this.b[(iD << 1) + 1] : obj2;
    }

    public final Object h(int i2) {
        Object[] objArr = this.b;
        int i3 = i2 << 1;
        Object obj = objArr[i3 + 1];
        int i4 = this.f3871c;
        int i5 = 0;
        if (i4 <= 1) {
            b(this.f3870a, objArr, i4);
            this.f3870a = d.f3849a;
            this.b = d.b;
        } else {
            int i6 = i4 - 1;
            int[] iArr = this.f3870a;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    int i8 = i6 - i2;
                    System.arraycopy(iArr, i7, iArr, i2, i8);
                    Object[] objArr2 = this.b;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.b;
                int i9 = i6 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                a(i4 > 8 ? i4 + (i4 >> 1) : 8);
                if (i4 != this.f3871c) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f3870a, 0, i2);
                    System.arraycopy(objArr, 0, this.b, 0, i3);
                }
                if (i2 < i6) {
                    int i10 = i2 + 1;
                    int i11 = i6 - i2;
                    System.arraycopy(iArr, i10, this.f3870a, i2, i11);
                    System.arraycopy(objArr, i10 << 1, this.b, i3, i11 << 1);
                }
            }
            i5 = i6;
        }
        if (i4 != this.f3871c) {
            throw new ConcurrentModificationException();
        }
        this.f3871c = i5;
        return obj;
    }

    public final int hashCode() {
        int[] iArr = this.f3870a;
        Object[] objArr = this.b;
        int i2 = this.f3871c;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public final Object i(int i2) {
        return this.b[(i2 << 1) + 1];
    }

    public final boolean isEmpty() {
        return this.f3871c <= 0;
    }

    public final Object put(Object obj, Object obj2) {
        int i2;
        int iC;
        int i3 = this.f3871c;
        if (obj == null) {
            iC = e();
            i2 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i2 = iHashCode;
            iC = c(iHashCode, obj);
        }
        if (iC >= 0) {
            int i4 = (iC << 1) + 1;
            Object[] objArr = this.b;
            Object obj3 = objArr[i4];
            objArr[i4] = obj2;
            return obj3;
        }
        int i5 = ~iC;
        int[] iArr = this.f3870a;
        if (i3 >= iArr.length) {
            int i6 = 8;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i6 = 4;
            }
            Object[] objArr2 = this.b;
            a(i6);
            if (i3 != this.f3871c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f3870a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.b, 0, objArr2.length);
            }
            b(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f3870a;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f3871c - i5) << 1);
        }
        int i8 = this.f3871c;
        if (i3 == i8) {
            int[] iArr4 = this.f3870a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.b;
                int i9 = i5 << 1;
                objArr4[i9] = obj;
                objArr4[i9 + 1] = obj2;
                this.f3871c = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object orDefault = getOrDefault(obj, null);
        return orDefault == null ? put(obj, obj2) : orDefault;
    }

    public final Object remove(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return h(iD);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0) {
            return null;
        }
        int i2 = (iD << 1) + 1;
        Object[] objArr = this.b;
        Object obj3 = objArr[i2];
        objArr[i2] = obj2;
        return obj3;
    }

    public final int size() {
        return this.f3871c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3871c * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f3871c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object objG = g(i2);
            if (objG != this) {
                sb.append(objG);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objI = i(i2);
            if (objI != this) {
                sb.append(objI);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0) {
            return false;
        }
        Object objI = i(iD);
        if (obj2 != objI && (obj2 == null || !obj2.equals(objI))) {
            return false;
        }
        h(iD);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iD = d(obj);
        if (iD < 0) {
            return false;
        }
        Object objI = i(iD);
        if (objI != obj2 && (obj2 == null || !obj2.equals(objI))) {
            return false;
        }
        int i2 = (iD << 1) + 1;
        Object[] objArr = this.b;
        Object obj4 = objArr[i2];
        objArr[i2] = obj3;
        return true;
    }
}
