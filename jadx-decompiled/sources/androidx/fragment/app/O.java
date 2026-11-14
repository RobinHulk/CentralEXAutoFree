package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class O implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1798a;
    public final /* synthetic */ P b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0180h f1799c;

    public /* synthetic */ O(C0180h c0180h, P p2, int i2) {
        this.f1798a = i2;
        this.f1799c = c0180h;
        this.b = p2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1798a) {
            case 0:
                ArrayList arrayList = this.f1799c.b;
                P p2 = this.b;
                if (arrayList.contains(p2)) {
                    Q.a(p2.f1801c.f1878E, p2.f1800a);
                }
                break;
            default:
                C0180h c0180h = this.f1799c;
                ArrayList arrayList2 = c0180h.b;
                P p3 = this.b;
                arrayList2.remove(p3);
                c0180h.f1845c.remove(p3);
                break;
        }
    }
}
