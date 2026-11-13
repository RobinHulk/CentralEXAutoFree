package p014j;

import C.c;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final class R0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3486a;
    public final /* synthetic */ SearchView b;

    public /* synthetic */ R0(SearchView searchView, int i2) {
        this.f3486a = i2;
        this.b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3486a) {
            case 0:
                this.b.u();
                break;
            default:
                c cVar = this.b.f1552O;
                if (cVar instanceof a1) {
                    cVar.b(null);
                }
                break;
        }
    }
}
