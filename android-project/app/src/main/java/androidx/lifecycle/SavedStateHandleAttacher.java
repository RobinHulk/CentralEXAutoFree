package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandleAttacher implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f1949a;

    public SavedStateHandleAttacher(E e2) {
        this.f1949a = e2;
    }

    @Override // androidx.lifecycle.o
    public final void b(q qVar, k kVar) {
        if (kVar != k.ON_CREATE) {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + kVar).toString());
        }
        qVar.d().f(this);
        E e2 = this.f1949a;
        if (e2.b) {
            return;
        }
        e2.f1941c = e2.f1940a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        e2.b = true;
    }
}
