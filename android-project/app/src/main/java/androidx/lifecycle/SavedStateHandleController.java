package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
final class SavedStateHandleController implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1950a;

    @Override // androidx.lifecycle.o
    public final void b(q qVar, k kVar) {
        if (kVar == k.ON_DESTROY) {
            this.f1950a = false;
            qVar.d().f(this);
        }
    }
}
