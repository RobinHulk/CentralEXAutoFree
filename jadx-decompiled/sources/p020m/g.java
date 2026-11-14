package p020m;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3858a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3860d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f3861e;

    public g(a aVar, int i2) {
        this.f3861e = aVar;
        this.f3858a = i2;
        this.b = aVar.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3859c < this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objB = this.f3861e.b(this.f3859c, this.f3858a);
        this.f3859c++;
        this.f3860d = true;
        return objB;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f3860d) {
            throw new IllegalStateException();
        }
        int i2 = this.f3859c - 1;
        this.f3859c = i2;
        this.b--;
        this.f3860d = false;
        this.f3861e.g(i2);
    }
}
