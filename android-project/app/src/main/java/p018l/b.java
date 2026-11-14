package p018l;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f3824a;
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3825c;

    public b(c cVar, c cVar2, int i2) {
        this.f3825c = i2;
        this.f3824a = cVar2;
        this.b = cVar;
    }

    @Override // p018l.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.f3824a == cVar && cVar == this.b) {
            this.b = null;
            this.f3824a = null;
        }
        c cVar3 = this.f3824a;
        if (cVar3 == cVar) {
            switch (this.f3825c) {
                case 0:
                    cVar2 = cVar3.f3828d;
                    break;
                default:
                    cVar2 = cVar3.f3827c;
                    break;
            }
            this.f3824a = cVar2;
        }
        c cVar4 = this.b;
        if (cVar4 == cVar) {
            c cVar5 = this.f3824a;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.b = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f3825c) {
            case 0:
                return cVar.f3827c;
            default:
                return cVar.f3828d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.b;
        c cVar2 = this.f3824a;
        this.b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
