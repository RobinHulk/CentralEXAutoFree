package N0;

import H0.l;
import T.C0029a3;
import T.E;
import java.util.ArrayList;
import java.util.Iterator;
import w0.n;

/* JADX INFO: loaded from: classes.dex */
public final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f397a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f398c;

    public /* synthetic */ c(f fVar, Object obj, int i2) {
        this.f397a = i2;
        this.b = fVar;
        this.f398c = obj;
    }

    @Override // N0.f
    public final Iterator iterator() {
        switch (this.f397a) {
            case 0:
                return new b(new d((c) this.b), (C0029a3) this.f398c);
            case 1:
                return new d(this);
            case 2:
                c cVar = (c) this.b;
                ArrayList arrayList = new ArrayList();
                Iterator it = cVar.b.iterator();
                while (it.hasNext()) {
                    arrayList.add(((l) cVar.f398c).b(it.next()));
                }
                n.W(arrayList, (E) this.f398c);
                return arrayList.iterator();
            default:
                return new k(this);
        }
    }
}
