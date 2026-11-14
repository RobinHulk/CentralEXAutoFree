package v;

import java.util.ArrayList;
import p020m.k;

/* JADX INFO: loaded from: classes.dex */
public final class e implements p033x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4145a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e(Object obj, int i2) {
        this.f4145a = i2;
        this.b = obj;
    }

    @Override // p033x.a
    public final void a(Object obj) {
        switch (this.f4145a) {
            case 0:
                f fVar = (f) obj;
                if (fVar == null) {
                    fVar = new f(-3);
                }
                ((G.a) this.b).B(fVar);
                return;
            default:
                f fVar2 = (f) obj;
                synchronized (g.f4148c) {
                    try {
                        k kVar = g.f4149d;
                        ArrayList arrayList = (ArrayList) kVar.getOrDefault((String) this.b, null);
                        if (arrayList == null) {
                            return;
                        }
                        kVar.remove((String) this.b);
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            ((p033x.a) arrayList.get(i2)).a(fVar2);
                        }
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
