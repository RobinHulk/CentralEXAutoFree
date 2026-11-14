package v0;

import I0.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public H0.a f4157a;
    public volatile Object b = e.b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4158c = this;

    public c(H0.a aVar) {
        this.f4157a = aVar;
    }

    public final Object a() {
        Object objA;
        Object obj = this.b;
        e eVar = e.b;
        if (obj != eVar) {
            return obj;
        }
        synchronized (this.f4158c) {
            objA = this.b;
            if (objA == eVar) {
                H0.a aVar = this.f4157a;
                f.b(aVar);
                objA = aVar.a();
                this.b = objA;
                this.f4157a = null;
            }
        }
        return objA;
    }

    public final String toString() {
        return this.b != e.b ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
