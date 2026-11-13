package F0;

import N0.e;
import N0.f;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f91a;
    public final Object b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f91a = i2;
        this.b = obj;
    }

    @Override // N0.f
    public final Iterator iterator() {
        switch (this.f91a) {
            case 0:
                return new a(this);
            case 1:
                return new e(this);
            case 2:
                return (Iterator) this.b;
            default:
                return ((List) this.b).iterator();
        }
    }

    public b(O0.f fVar) {
        this.f91a = 1;
        this.b = fVar;
    }
}
