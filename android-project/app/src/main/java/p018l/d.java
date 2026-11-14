package p018l;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Iterator, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f3829a;
    public boolean b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f3830c;

    public d(f fVar) {
        this.f3830c = fVar;
    }

    @Override // p018l.e
    public final void a(c cVar) {
        c cVar2 = this.f3829a;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f3828d;
            this.f3829a = cVar3;
            this.b = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            return this.f3830c.f3831a != null;
        }
        c cVar = this.f3829a;
        return (cVar == null || cVar.f3827c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            this.b = false;
            this.f3829a = this.f3830c.f3831a;
        } else {
            c cVar = this.f3829a;
            this.f3829a = cVar != null ? cVar.f3827c : null;
        }
        return this.f3829a;
    }
}
