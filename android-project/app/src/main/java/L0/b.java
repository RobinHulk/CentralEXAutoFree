package L0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f135a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f137d;

    public b(int i2, int i3, int i4) {
        this.f135a = i4;
        this.b = i3;
        boolean z2 = false;
        if (i4 <= 0 ? i2 >= i3 : i2 <= i3) {
            z2 = true;
        }
        this.f136c = z2;
        this.f137d = z2 ? i2 : i3;
    }

    public final int a() {
        int i2 = this.f137d;
        if (i2 != this.b) {
            this.f137d = this.f135a + i2;
        } else {
            if (!this.f136c) {
                throw new NoSuchElementException();
            }
            this.f136c = false;
        }
        return i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f136c;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
