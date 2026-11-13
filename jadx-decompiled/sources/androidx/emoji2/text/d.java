package androidx.emoji2.text;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f1689c;

    public d(e eVar) {
        this.f1689c = eVar;
    }

    @Override // A.b
    public final void M(Throwable th) {
        this.f1689c.f1690a.d(th);
    }

    @Override // A.b
    public final void P(q qVar) {
        e eVar = this.f1689c;
        eVar.f1691c = qVar;
        eVar.b = new G.a(eVar.f1691c, new p025p0.e(), eVar.f1690a.f1701h);
        i iVar = eVar.f1690a;
        iVar.getClass();
        ArrayList arrayList = new ArrayList();
        iVar.f1696a.writeLock().lock();
        try {
            iVar.f1697c = 1;
            arrayList.addAll(iVar.b);
            iVar.b.clear();
            iVar.f1696a.writeLock().unlock();
            iVar.f1698d.post(new g(arrayList, iVar.f1697c, (Throwable) null));
        } catch (Throwable th) {
            iVar.f1696a.writeLock().unlock();
            throw th;
        }
    }
}
