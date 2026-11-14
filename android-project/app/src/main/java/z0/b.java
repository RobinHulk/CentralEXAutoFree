package z0;

import H0.p;

/* JADX INFO: loaded from: classes.dex */
public final class b extends I0.g implements p {
    public static final b b = new b(2, 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f4280c = new b(2, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4281a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i2, int i3) {
        super(i2);
        this.f4281a = i3;
    }

    @Override // H0.p
    public final Object c(Object obj, Object obj2) {
        c cVar;
        switch (this.f4281a) {
            case 0:
                String str = (String) obj;
                g gVar = (g) obj2;
                I0.f.e(str, "acc");
                if (str.length() == 0) {
                    return gVar.toString();
                }
                return str + ", " + gVar;
            default:
                i iVar = (i) obj;
                g gVar2 = (g) obj2;
                I0.f.e(iVar, "acc");
                i iVarMinusKey = iVar.minusKey(gVar2.getKey());
                j jVar = j.f4284a;
                if (iVarMinusKey == jVar) {
                    return gVar2;
                }
                e eVar = e.f4283a;
                f fVar = (f) iVarMinusKey.get(eVar);
                if (fVar == null) {
                    cVar = new c(iVarMinusKey, gVar2);
                } else {
                    i iVarMinusKey2 = iVarMinusKey.minusKey(eVar);
                    if (iVarMinusKey2 == jVar) {
                        return new c(gVar2, fVar);
                    }
                    cVar = new c(new c(iVarMinusKey2, gVar2), fVar);
                }
                return cVar;
        }
    }
}
