package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1948a;
    public final C0191a b;

    public ReflectiveGenericLifecycleObserver(p pVar) {
        this.f1948a = pVar;
        C0193c c0193c = C0193c.f1953c;
        Class<?> cls = pVar.getClass();
        C0191a c0191a = (C0191a) c0193c.f1954a.get(cls);
        this.b = c0191a == null ? c0193c.a(cls, null) : c0191a;
    }

    @Override // androidx.lifecycle.o
    public final void b(q qVar, k kVar) {
        HashMap map = this.b.f1951a;
        List list = (List) map.get(kVar);
        p pVar = this.f1948a;
        C0191a.a(list, qVar, kVar, pVar);
        C0191a.a((List) map.get(k.ON_ANY), qVar, kVar, pVar);
    }
}
