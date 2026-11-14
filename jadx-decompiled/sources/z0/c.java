package z0;

import H0.p;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements i, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f4282a;
    public final g b;

    public c(i iVar, g gVar) {
        I0.f.e(iVar, "left");
        this.f4282a = iVar;
        this.b = gVar;
    }

    public final boolean equals(Object obj) {
        boolean zA;
        if (this != obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            cVar.getClass();
            int i2 = 2;
            c cVar2 = cVar;
            int i3 = 2;
            while (true) {
                i iVar = cVar2.f4282a;
                cVar2 = iVar instanceof c ? (c) iVar : null;
                if (cVar2 == null) {
                    break;
                }
                i3++;
            }
            c cVar3 = this;
            while (true) {
                i iVar2 = cVar3.f4282a;
                cVar3 = iVar2 instanceof c ? (c) iVar2 : null;
                if (cVar3 == null) {
                    break;
                }
                i2++;
            }
            if (i3 != i2) {
                return false;
            }
            c cVar4 = this;
            while (true) {
                g gVar = cVar4.b;
                if (!I0.f.a(cVar.get(gVar.getKey()), gVar)) {
                    zA = false;
                    break;
                }
                i iVar3 = cVar4.f4282a;
                if (!(iVar3 instanceof c)) {
                    I0.f.c(iVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    g gVar2 = (g) iVar3;
                    zA = I0.f.a(cVar.get(gVar2.getKey()), gVar2);
                    break;
                }
                cVar4 = (c) iVar3;
            }
            if (!zA) {
                return false;
            }
        }
        return true;
    }

    @Override // z0.i
    public final Object fold(Object obj, p pVar) {
        return pVar.c(this.f4282a.fold(obj, pVar), this.b);
    }

    @Override // z0.i
    public final g get(h hVar) {
        I0.f.e(hVar, "key");
        c cVar = this;
        while (true) {
            g gVar = cVar.b.get(hVar);
            if (gVar != null) {
                return gVar;
            }
            i iVar = cVar.f4282a;
            if (!(iVar instanceof c)) {
                return iVar.get(hVar);
            }
            cVar = (c) iVar;
        }
    }

    public final int hashCode() {
        return this.b.hashCode() + this.f4282a.hashCode();
    }

    @Override // z0.i
    public final i minusKey(h hVar) {
        I0.f.e(hVar, "key");
        g gVar = this.b;
        g gVar2 = gVar.get(hVar);
        i iVar = this.f4282a;
        if (gVar2 != null) {
            return iVar;
        }
        i iVarMinusKey = iVar.minusKey(hVar);
        if (iVarMinusKey == iVar) {
            return this;
        }
        return iVarMinusKey == j.f4284a ? gVar : new c(iVarMinusKey, gVar);
    }

    public final String toString() {
        return "[" + ((String) fold("", b.b)) + ']';
    }
}
