package O0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f413a = -1;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public L0.c f415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f416e;
    public final /* synthetic */ c f;

    public b(c cVar) {
        this.f = cVar;
        int iO = A.b.o(cVar.b, 0, cVar.f417a.length());
        this.b = iO;
        this.f414c = iO;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:17:0x006f  */
    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    /* JADX WARN: Type inference failed for: r0v1, types: [H0.p, I0.g] */
    public final void a() {
        v0.a aVar;
        int i2 = this.f414c;
        if (i2 < 0) {
            this.f413a = 0;
            this.f415d = null;
            return;
        }
        c cVar = this.f;
        int i3 = cVar.f418c;
        CharSequence charSequence = cVar.f417a;
        if (i3 > 0) {
            int i4 = this.f416e + 1;
            this.f416e = i4;
            if (i4 >= i3) {
                this.f415d = new L0.c(this.b, j.z0(charSequence), 1);
                this.f414c = -1;
            } else if (i2 > charSequence.length() && (aVar = (v0.a) cVar.f419d.c(charSequence, Integer.valueOf(this.f414c))) != null) {
                int iIntValue = ((Number) aVar.f4155a).intValue();
                int iIntValue2 = ((Number) aVar.b).intValue();
                this.f415d = A.b.i0(this.b, iIntValue);
                int i5 = iIntValue + iIntValue2;
                this.b = i5;
                this.f414c = i5 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.f415d = new L0.c(this.b, j.z0(charSequence), 1);
                this.f414c = -1;
            }
        } else if (i2 > charSequence.length()) {
            this.f415d = new L0.c(this.b, j.z0(charSequence), 1);
            this.f414c = -1;
        } else {
            int iIntValue3 = ((Number) aVar.f4155a).intValue();
            int iIntValue4 = ((Number) aVar.b).intValue();
            this.f415d = A.b.i0(this.b, iIntValue3);
            int i6 = iIntValue3 + iIntValue4;
            this.b = i6;
            this.f414c = i6 + (iIntValue4 == 0 ? 1 : 0);
        }
        this.f413a = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f413a == -1) {
            a();
        }
        return this.f413a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f413a == -1) {
            a();
        }
        if (this.f413a == 0) {
            throw new NoSuchElementException();
        }
        L0.c cVar = this.f415d;
        I0.f.c(cVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f415d = null;
        this.f413a = -1;
        return cVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
