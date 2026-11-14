package M;

/* JADX INFO: renamed from: M.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0002c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f207a = 0;
    public C0002c b;

    public final void a(int i2) {
        if (i2 < 64) {
            this.f207a &= ~(1 << i2);
            return;
        }
        C0002c c0002c = this.b;
        if (c0002c != null) {
            c0002c.a(i2 - 64);
        }
    }

    public final int b(int i2) {
        C0002c c0002c = this.b;
        if (c0002c == null) {
            return i2 >= 64 ? Long.bitCount(this.f207a) : Long.bitCount(this.f207a & ((1 << i2) - 1));
        }
        if (i2 < 64) {
            return Long.bitCount(this.f207a & ((1 << i2) - 1));
        }
        return Long.bitCount(this.f207a) + c0002c.b(i2 - 64);
    }

    public final void c() {
        if (this.b == null) {
            this.b = new C0002c();
        }
    }

    public final boolean d(int i2) {
        if (i2 < 64) {
            return (this.f207a & (1 << i2)) != 0;
        }
        c();
        return this.b.d(i2 - 64);
    }

    public final void e(int i2, boolean z2) {
        if (i2 >= 64) {
            c();
            this.b.e(i2 - 64, z2);
            return;
        }
        long j2 = this.f207a;
        boolean z3 = (Long.MIN_VALUE & j2) != 0;
        long j3 = (1 << i2) - 1;
        this.f207a = ((j2 & (~j3)) << 1) | (j2 & j3);
        if (z2) {
            h(i2);
        } else {
            a(i2);
        }
        if (z3 || this.b != null) {
            c();
            this.b.e(0, z3);
        }
    }

    public final boolean f(int i2) {
        if (i2 >= 64) {
            c();
            return this.b.f(i2 - 64);
        }
        long j2 = 1 << i2;
        long j3 = this.f207a;
        boolean z2 = (j3 & j2) != 0;
        long j4 = j3 & (~j2);
        this.f207a = j4;
        long j5 = j2 - 1;
        this.f207a = (j4 & j5) | Long.rotateRight((~j5) & j4, 1);
        C0002c c0002c = this.b;
        if (c0002c != null) {
            if (c0002c.d(0)) {
                h(63);
            }
            this.b.f(0);
        }
        return z2;
    }

    public final void g() {
        this.f207a = 0L;
        C0002c c0002c = this.b;
        if (c0002c != null) {
            c0002c.g();
        }
    }

    public final void h(int i2) {
        if (i2 < 64) {
            this.f207a |= 1 << i2;
        } else {
            c();
            this.b.h(i2 - 64);
        }
    }

    public final String toString() {
        if (this.b == null) {
            return Long.toBinaryString(this.f207a);
        }
        return this.b.toString() + "xx" + Long.toBinaryString(this.f207a);
    }
}
