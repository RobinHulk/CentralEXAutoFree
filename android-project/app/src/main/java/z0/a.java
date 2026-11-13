package z0;

import H0.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements g {
    private final h key;

    public a(h hVar) {
        this.key = hVar;
    }

    @Override // z0.i
    public <R> R fold(R r2, p pVar) {
        I0.f.e(pVar, "operation");
        return (R) pVar.c(r2, this);
    }

    @Override // z0.i
    public <E extends g> E get(h hVar) {
        I0.f.e(hVar, "key");
        if (I0.f.a(getKey(), hVar)) {
            return this;
        }
        return null;
    }

    @Override // z0.g
    public h getKey() {
        return this.key;
    }

    @Override // z0.i
    public i minusKey(h hVar) {
        I0.f.e(hVar, "key");
        return I0.f.a(getKey(), hVar) ? j.f4284a : this;
    }

    public i plus(i iVar) {
        I0.f.e(iVar, "context");
        return iVar == j.f4284a ? this : (i) iVar.fold(this, b.f4280c);
    }
}
