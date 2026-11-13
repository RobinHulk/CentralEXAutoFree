package P0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends z0.a implements z0.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f433a = new b(z0.e.f4283a, a.f431a);

    public c() {
        super(z0.e.f4283a);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [H0.l, I0.g] */
    @Override // z0.a, z0.i
    public final z0.g get(z0.h hVar) {
        z0.g gVar;
        I0.f.e(hVar, "key");
        if (!(hVar instanceof b)) {
            if (z0.e.f4283a == hVar) {
                return this;
            }
            return null;
        }
        b bVar = (b) hVar;
        z0.h key = getKey();
        I0.f.e(key, "key");
        if ((key == bVar || bVar.b == key) && (gVar = (z0.g) bVar.f432a.b(this)) != null) {
            return gVar;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [H0.l, I0.g] */
    @Override // z0.a, z0.i
    public final z0.i minusKey(z0.h hVar) {
        I0.f.e(hVar, "key");
        boolean z2 = hVar instanceof b;
        z0.j jVar = z0.j.f4284a;
        if (z2) {
            b bVar = (b) hVar;
            z0.h key = getKey();
            I0.f.e(key, "key");
            if ((key == bVar || bVar.b == key) && ((z0.g) bVar.f432a.b(this)) != null) {
                return jVar;
            }
        } else if (z0.e.f4283a == hVar) {
            return jVar;
        }
        return this;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
