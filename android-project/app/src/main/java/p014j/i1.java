package p014j;

import androidx.appcompat.widget.Toolbar;
import p012i.n;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3608a;
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ i1(Toolbar toolbar, int i2) {
        this.f3608a = i2;
        this.b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3608a) {
            case 0:
                l1 l1Var = this.b.f1589L;
                n nVar = l1Var == null ? null : l1Var.b;
                if (nVar != null) {
                    nVar.collapseActionView();
                }
                break;
            default:
                this.b.n();
                break;
        }
    }
}
