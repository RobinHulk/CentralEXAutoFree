package w0;

import M.d0;
import java.util.RandomAccess;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class d extends e implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f4184a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4185c;

    public d(e eVar, int i2, int i3) {
        I0.f.e(eVar, "list");
        this.f4184a = eVar;
        this.b = i2;
        AbstractC0201a.k(i2, i3, eVar.a());
        this.f4185c = i3 - i2;
    }

    @Override // w0.e
    public final int a() {
        return this.f4185c;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        int i3 = this.f4185c;
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(d0.d(i2, i3, "index: ", ", size: "));
        }
        return this.f4184a.get(this.b + i2);
    }
}
