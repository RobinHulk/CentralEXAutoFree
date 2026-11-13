package z0;

import H0.p;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class j implements i, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f4284a = new j();

    @Override // z0.i
    public final Object fold(Object obj, p pVar) {
        return obj;
    }

    @Override // z0.i
    public final g get(h hVar) {
        I0.f.e(hVar, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // z0.i
    public final i minusKey(h hVar) {
        I0.f.e(hVar, "key");
        return this;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
