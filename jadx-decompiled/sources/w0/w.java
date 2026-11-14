package w0;

import M.d0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class w extends e implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f4197a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4199d;

    public w(int i2, Object[] objArr) {
        this.f4197a = objArr;
        if (i2 < 0) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i2).toString());
        }
        if (i2 <= objArr.length) {
            this.b = objArr.length;
            this.f4199d = i2;
        } else {
            StringBuilder sbH = d0.h("ring buffer filled size: ", i2, " cannot be larger than the buffer size: ");
            sbH.append(objArr.length);
            throw new IllegalArgumentException(sbH.toString().toString());
        }
    }

    @Override // w0.e
    public final int a() {
        return this.f4199d;
    }

    public final void b(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i2).toString());
        }
        if (i2 > this.f4199d) {
            StringBuilder sbH = d0.h("n shouldn't be greater than the buffer size: n = ", i2, ", size = ");
            sbH.append(this.f4199d);
            throw new IllegalArgumentException(sbH.toString().toString());
        }
        if (i2 > 0) {
            int i3 = this.f4198c;
            int i4 = this.b;
            int i5 = (i3 + i2) % i4;
            Object[] objArr = this.f4197a;
            if (i3 > i5) {
                h.V(objArr, i3, i4);
                h.V(objArr, 0, i5);
            } else {
                h.V(objArr, i3, i5);
            }
            this.f4198c = i5;
            this.f4199d -= i2;
        }
    }

    @Override // java.util.List
    public final Object get(int i2) {
        int iA = a();
        if (i2 < 0 || i2 >= iA) {
            throw new IndexOutOfBoundsException(d0.d(i2, iA, "index: ", ", size: "));
        }
        return this.f4197a[(this.f4198c + i2) % this.b];
    }

    @Override // w0.e, java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new v(this);
    }

    @Override // w0.e, java.util.List, java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // w0.e, java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] objArr2;
        I0.f.e(objArr, "array");
        int length = objArr.length;
        int i2 = this.f4199d;
        if (length < i2) {
            objArr = Arrays.copyOf(objArr, i2);
            I0.f.d(objArr, "copyOf(...)");
        }
        int i3 = this.f4199d;
        int i4 = this.f4198c;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            objArr2 = this.f4197a;
            if (i6 >= i3 || i4 >= this.b) {
                break;
            }
            objArr[i6] = objArr2[i4];
            i6++;
            i4++;
        }
        while (i6 < i3) {
            objArr[i6] = objArr2[i5];
            i6++;
            i5++;
        }
        AbstractC0201a.R(i3, objArr);
        return objArr;
    }
}
