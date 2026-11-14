package p020m;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Collection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3866a;

    public j(a aVar) {
        this.f3866a = aVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f3866a.a();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f3866a.f(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f3866a.d() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new g(this.f3866a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        a aVar = this.f3866a;
        int iF = aVar.f(obj);
        if (iF < 0) {
            return false;
        }
        aVar.g(iF);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        a aVar = this.f3866a;
        int iD = aVar.d();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < iD) {
            if (collection.contains(aVar.b(i2, 1))) {
                aVar.g(i2);
                i2--;
                iD--;
                z2 = true;
            }
            i2++;
        }
        return z2;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        a aVar = this.f3866a;
        int iD = aVar.d();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < iD) {
            if (!collection.contains(aVar.b(i2, 1))) {
                aVar.g(i2);
                i2--;
                iD--;
                z2 = true;
            }
            i2++;
        }
        return z2;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f3866a.d();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        a aVar = this.f3866a;
        int iD = aVar.d();
        Object[] objArr = new Object[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            objArr[i2] = aVar.b(i2, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f3866a.i(1, objArr);
    }
}
