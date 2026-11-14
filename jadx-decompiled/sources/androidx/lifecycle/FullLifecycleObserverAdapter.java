package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0194d f1944a;
    public final o b;

    public FullLifecycleObserverAdapter(InterfaceC0194d interfaceC0194d, o oVar) {
        this.f1944a = interfaceC0194d;
        this.b = oVar;
    }

    @Override // androidx.lifecycle.o
    public final void b(q qVar, k kVar) {
        int i2 = AbstractC0196f.f1955a[kVar.ordinal()];
        InterfaceC0194d interfaceC0194d = this.f1944a;
        if (i2 == 3) {
            interfaceC0194d.a();
        } else if (i2 == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        o oVar = this.b;
        if (oVar != null) {
            oVar.b(qVar, kVar);
        }
    }
}
