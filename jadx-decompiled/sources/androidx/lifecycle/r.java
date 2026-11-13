package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f1962a;
    public o b;

    public final void a(q qVar, k kVar) {
        l lVarA = kVar.a();
        l lVar = this.f1962a;
        if (lVarA.compareTo(lVar) < 0) {
            lVar = lVarA;
        }
        this.f1962a = lVar;
        this.b.b(qVar, kVar);
        this.f1962a = lVarA;
    }
}
