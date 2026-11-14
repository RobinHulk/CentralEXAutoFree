package N0;

import androidx.lifecycle.D;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f406a;
    public final Object b;

    public /* synthetic */ j(Object obj, int i2) {
        this.f406a = i2;
        this.b = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f406a) {
            case 0:
                return new O0.b((O0.c) this.b);
            default:
                return new w0.b(((List) ((D) this.b).b).iterator());
        }
    }
}
