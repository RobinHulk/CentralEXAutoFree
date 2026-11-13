package androidx.lifecycle;

import M.d0;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p018l.a f1963a;
    public l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f1964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1966e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f1967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1968h;

    public s(q qVar) {
        new AtomicReference();
        this.f1963a = new p018l.a();
        this.f1965d = 0;
        this.f1966e = false;
        this.f = false;
        this.f1967g = new ArrayList();
        this.f1964c = new WeakReference(qVar);
        this.b = l.b;
        this.f1968h = true;
    }

    public final void a(p pVar) {
        o reflectiveGenericLifecycleObserver;
        Object obj;
        q qVar;
        k kVar;
        ArrayList arrayList = this.f1967g;
        c("addObserver");
        l lVar = this.b;
        l lVar2 = l.f1957a;
        if (lVar != lVar2) {
            lVar2 = l.b;
        }
        r rVar = new r();
        HashMap map = t.f1969a;
        boolean z2 = pVar instanceof o;
        boolean z3 = pVar instanceof InterfaceC0194d;
        if (z2 && z3) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((InterfaceC0194d) pVar, (o) pVar);
        } else if (z3) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((InterfaceC0194d) pVar, null);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = (o) pVar;
        } else {
            Class<?> cls = pVar.getClass();
            if (t.c(cls) == 2) {
                List list = (List) t.b.get(cls);
                if (list.size() == 1) {
                    t.a((Constructor) list.get(0), pVar);
                    reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver();
                } else {
                    InterfaceC0197g[] interfaceC0197gArr = new InterfaceC0197g[list.size()];
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        t.a((Constructor) list.get(i2), pVar);
                        interfaceC0197gArr[i2] = null;
                    }
                    reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(interfaceC0197gArr);
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(pVar);
            }
        }
        rVar.b = reflectiveGenericLifecycleObserver;
        rVar.f1962a = lVar2;
        p018l.a aVar = this.f1963a;
        p018l.c cVarA = aVar.a(pVar);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            HashMap map2 = aVar.f3823e;
            p018l.c cVar = new p018l.c(pVar, rVar);
            aVar.f3833d++;
            p018l.c cVar2 = aVar.b;
            if (cVar2 == null) {
                aVar.f3831a = cVar;
                aVar.b = cVar;
            } else {
                cVar2.f3827c = cVar;
                cVar.f3828d = cVar2;
                aVar.b = cVar;
            }
            map2.put(pVar, cVar);
            obj = null;
        }
        if (((r) obj) == null && (qVar = (q) this.f1964c.get()) != null) {
            boolean z4 = this.f1965d != 0 || this.f1966e;
            l lVarB = b(pVar);
            this.f1965d++;
            while (rVar.f1962a.compareTo(lVarB) < 0 && this.f1963a.f3823e.containsKey(pVar)) {
                arrayList.add(rVar.f1962a);
                int iOrdinal = rVar.f1962a.ordinal();
                if (iOrdinal == 1) {
                    kVar = k.ON_CREATE;
                } else if (iOrdinal != 2) {
                    kVar = iOrdinal != 3 ? null : k.ON_RESUME;
                } else {
                    kVar = k.ON_START;
                }
                if (kVar == null) {
                    throw new IllegalStateException("no event up from " + rVar.f1962a);
                }
                rVar.a(qVar, kVar);
                arrayList.remove(arrayList.size() - 1);
                lVarB = b(pVar);
            }
            if (!z4) {
                g();
            }
            this.f1965d--;
        }
    }

    public final l b(p pVar) {
        HashMap map = this.f1963a.f3823e;
        p018l.c cVar = map.containsKey(pVar) ? ((p018l.c) map.get(pVar)).f3828d : null;
        l lVar = cVar != null ? ((r) cVar.b).f1962a : null;
        ArrayList arrayList = this.f1967g;
        l lVar2 = arrayList.isEmpty() ? null : (l) arrayList.get(arrayList.size() - 1);
        l lVar3 = this.b;
        if (lVar == null || lVar.compareTo(lVar3) >= 0) {
            lVar = lVar3;
        }
        return (lVar2 == null || lVar2.compareTo(lVar) >= 0) ? lVar : lVar2;
    }

    public final void c(String str) {
        if (this.f1968h) {
            ((p016k.a) p016k.a.T().f3739a).getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(d0.f("Method ", str, " must be called on the main thread"));
            }
        }
    }

    public final void d(k kVar) {
        c("handleLifecycleEvent");
        e(kVar.a());
    }

    public final void e(l lVar) {
        l lVar2 = this.b;
        if (lVar2 == lVar) {
            return;
        }
        l lVar3 = l.b;
        l lVar4 = l.f1957a;
        if (lVar2 == lVar3 && lVar == lVar4) {
            throw new IllegalStateException("no event down from " + this.b);
        }
        this.b = lVar;
        if (this.f1966e || this.f1965d != 0) {
            this.f = true;
            return;
        }
        this.f1966e = true;
        g();
        this.f1966e = false;
        if (this.b == lVar4) {
            this.f1963a = new p018l.a();
        }
    }

    public final void f(p pVar) {
        c("removeObserver");
        this.f1963a.b(pVar);
    }

    public final void g() {
        k kVar;
        k kVar2;
        q qVar = (q) this.f1964c.get();
        if (qVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            p018l.a aVar = this.f1963a;
            if (aVar.f3833d != 0) {
                Object obj = aVar.f3831a.b;
                l lVar = ((r) obj).f1962a;
                l lVar2 = ((r) aVar.b.b).f1962a;
                if (lVar != lVar2 || this.b != lVar2) {
                    this.f = false;
                    if (this.b.compareTo(((r) obj).f1962a) < 0) {
                        p018l.a aVar2 = this.f1963a;
                        p018l.b bVar = new p018l.b(aVar2.b, aVar2.f3831a, 1);
                        aVar2.f3832c.put(bVar, Boolean.FALSE);
                        while (bVar.hasNext() && !this.f) {
                            Map.Entry entry = (Map.Entry) bVar.next();
                            r rVar = (r) entry.getValue();
                            while (rVar.f1962a.compareTo(this.b) > 0 && !this.f) {
                                if (!this.f1963a.f3823e.containsKey((p) entry.getKey())) {
                                    break;
                                }
                                int iOrdinal = rVar.f1962a.ordinal();
                                if (iOrdinal == 2) {
                                    kVar2 = k.ON_DESTROY;
                                } else if (iOrdinal != 3) {
                                    kVar2 = iOrdinal != 4 ? null : k.ON_PAUSE;
                                } else {
                                    kVar2 = k.ON_STOP;
                                }
                                if (kVar2 == null) {
                                    throw new IllegalStateException("no event down from " + rVar.f1962a);
                                }
                                this.f1967g.add(kVar2.a());
                                rVar.a(qVar, kVar2);
                                ArrayList arrayList = this.f1967g;
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                    p018l.c cVar = this.f1963a.b;
                    if (!this.f && cVar != null && this.b.compareTo(((r) cVar.b).f1962a) > 0) {
                        p018l.a aVar3 = this.f1963a;
                        aVar3.getClass();
                        p018l.d dVar = new p018l.d(aVar3);
                        aVar3.f3832c.put(dVar, Boolean.FALSE);
                        while (dVar.hasNext() && !this.f) {
                            Map.Entry entry2 = (Map.Entry) dVar.next();
                            r rVar2 = (r) entry2.getValue();
                            while (rVar2.f1962a.compareTo(this.b) < 0 && !this.f) {
                                if (!this.f1963a.f3823e.containsKey((p) entry2.getKey())) {
                                    break;
                                }
                                this.f1967g.add(rVar2.f1962a);
                                int iOrdinal2 = rVar2.f1962a.ordinal();
                                if (iOrdinal2 == 1) {
                                    kVar = k.ON_CREATE;
                                } else if (iOrdinal2 != 2) {
                                    kVar = iOrdinal2 != 3 ? null : k.ON_RESUME;
                                } else {
                                    kVar = k.ON_START;
                                }
                                if (kVar == null) {
                                    throw new IllegalStateException("no event up from " + rVar2.f1962a);
                                }
                                rVar2.a(qVar, kVar);
                                ArrayList arrayList2 = this.f1967g;
                                arrayList2.remove(arrayList2.size() - 1);
                            }
                        }
                    }
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        this.f = false;
    }
}
