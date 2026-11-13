package N0;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f394a;

    public a(f fVar) {
        this.f394a = new AtomicReference(fVar);
    }

    @Override // N0.f
    public final Iterator iterator() {
        f fVar = (f) this.f394a.getAndSet(null);
        if (fVar != null) {
            return fVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
