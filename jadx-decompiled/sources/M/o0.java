package M;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f327a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f330e;

    public final boolean a() {
        int i2;
        int i3;
        int i4;
        int i5 = this.f327a;
        int i6 = 2;
        if ((i5 & 7) != 0) {
            int i7 = this.f329d;
            int i8 = this.b;
            if (i7 > i8) {
                i4 = 1;
            } else {
                i4 = i7 == i8 ? 2 : 4;
            }
            if ((i4 & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 112) != 0) {
            int i9 = this.f329d;
            int i10 = this.f328c;
            if (i9 > i10) {
                i3 = 1;
            } else {
                i3 = i9 == i10 ? 2 : 4;
            }
            if (((i3 << 4) & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 1792) != 0) {
            int i11 = this.f330e;
            int i12 = this.b;
            if (i11 > i12) {
                i2 = 1;
            } else {
                i2 = i11 == i12 ? 2 : 4;
            }
            if (((i2 << 8) & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 28672) != 0) {
            int i13 = this.f330e;
            int i14 = this.f328c;
            if (i13 > i14) {
                i6 = 1;
            } else if (i13 != i14) {
                i6 = 4;
            }
            if ((i5 & (i6 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
