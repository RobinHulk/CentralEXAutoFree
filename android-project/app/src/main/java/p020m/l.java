package p020m;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f3872d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3873a;
    public Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3874c;

    public l() {
        int i2;
        int i3 = 4;
        while (true) {
            i2 = 40;
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (40 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.f3873a = new int[i5];
        this.b = new Object[i5];
    }

    public final void a(int i2, Object obj) {
        int i3 = this.f3874c;
        if (i3 != 0 && i2 <= this.f3873a[i3 - 1]) {
            c(i2, obj);
            return;
        }
        if (i3 >= this.f3873a.length) {
            int i4 = (i3 + 1) * 4;
            for (int i5 = 4; i5 < 32; i5++) {
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
            }
            int i7 = i4 / 4;
            int[] iArr = new int[i7];
            Object[] objArr = new Object[i7];
            int[] iArr2 = this.f3873a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.b;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f3873a = iArr;
            this.b = objArr;
        }
        this.f3873a[i3] = i2;
        this.b[i3] = obj;
        this.f3874c = i3 + 1;
    }

    public final Object b(int i2, Integer num) {
        Object obj;
        int iA = d.a(this.f3874c, i2, this.f3873a);
        return (iA < 0 || (obj = this.b[iA]) == f3872d) ? num : obj;
    }

    public final void c(int i2, Object obj) {
        int iA = d.a(this.f3874c, i2, this.f3873a);
        if (iA >= 0) {
            this.b[iA] = obj;
            return;
        }
        int i3 = ~iA;
        int i4 = this.f3874c;
        if (i3 < i4) {
            Object[] objArr = this.b;
            if (objArr[i3] == f3872d) {
                this.f3873a[i3] = i2;
                objArr[i3] = obj;
                return;
            }
        }
        if (i4 >= this.f3873a.length) {
            int i5 = (i4 + 1) * 4;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 4;
            int[] iArr = new int[i8];
            Object[] objArr2 = new Object[i8];
            int[] iArr2 = this.f3873a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f3873a = iArr;
            this.b = objArr2;
        }
        int i9 = this.f3874c - i3;
        if (i9 != 0) {
            int[] iArr3 = this.f3873a;
            int i10 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i10, i9);
            Object[] objArr4 = this.b;
            System.arraycopy(objArr4, i3, objArr4, i10, this.f3874c - i3);
        }
        this.f3873a[i3] = i2;
        this.b[i3] = obj;
        this.f3874c++;
    }

    public final Object clone() {
        try {
            l lVar = (l) super.clone();
            lVar.f3873a = (int[]) this.f3873a.clone();
            lVar.b = (Object[]) this.b.clone();
            return lVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final String toString() {
        int i2 = this.f3874c;
        if (i2 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i2 * 28);
        sb.append('{');
        for (int i3 = 0; i3 < this.f3874c; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(this.f3873a[i3]);
            sb.append('=');
            Object obj = this.b[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
