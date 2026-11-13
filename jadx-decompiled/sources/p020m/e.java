package p020m;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f3850e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3851a = false;
    public long[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f3852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3853d;

    public e() {
        int i2;
        int i3 = 4;
        while (true) {
            i2 = 80;
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (80 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 8;
        this.b = new long[i5];
        this.f3852c = new Object[i5];
    }

    public final void a() {
        int i2 = this.f3853d;
        Object[] objArr = this.f3852c;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f3853d = 0;
        this.f3851a = false;
    }

    public final void b() {
        int i2 = this.f3853d;
        long[] jArr = this.b;
        Object[] objArr = this.f3852c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f3850e) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f3851a = false;
        this.f3853d = i3;
    }

    public final Object c(long j2, Long l2) {
        Object obj;
        int iB = d.b(this.b, this.f3853d, j2);
        return (iB < 0 || (obj = this.f3852c[iB]) == f3850e) ? l2 : obj;
    }

    public final Object clone() {
        try {
            e eVar = (e) super.clone();
            eVar.b = (long[]) this.b.clone();
            eVar.f3852c = (Object[]) this.f3852c.clone();
            return eVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void d(Object obj, long j2) {
        int iB = d.b(this.b, this.f3853d, j2);
        if (iB >= 0) {
            this.f3852c[iB] = obj;
            return;
        }
        int i2 = ~iB;
        int i3 = this.f3853d;
        if (i2 < i3) {
            Object[] objArr = this.f3852c;
            if (objArr[i2] == f3850e) {
                this.b[i2] = j2;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.f3851a && i3 >= this.b.length) {
            b();
            i2 = ~d.b(this.b, this.f3853d, j2);
        }
        int i4 = this.f3853d;
        if (i4 >= this.b.length) {
            int i5 = (i4 + 1) * 8;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 8;
            long[] jArr = new long[i8];
            Object[] objArr2 = new Object[i8];
            long[] jArr2 = this.b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f3852c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = jArr;
            this.f3852c = objArr2;
        }
        int i9 = this.f3853d - i2;
        if (i9 != 0) {
            long[] jArr3 = this.b;
            int i10 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i10, i9);
            Object[] objArr4 = this.f3852c;
            System.arraycopy(objArr4, i2, objArr4, i10, this.f3853d - i2);
        }
        this.b[i2] = j2;
        this.f3852c[i2] = obj;
        this.f3853d++;
    }

    public final int e() {
        if (this.f3851a) {
            b();
        }
        return this.f3853d;
    }

    public final Object f(int i2) {
        if (this.f3851a) {
            b();
        }
        return this.f3852c[i2];
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3853d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f3853d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.f3851a) {
                b();
            }
            sb.append(this.b[i2]);
            sb.append('=');
            Object objF = f(i2);
            if (objF != this) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
