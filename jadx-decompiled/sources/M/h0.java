package M;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f252a = false;
    public final /* synthetic */ A b;

    public h0(A a2) {
        this.b = a2;
    }

    @Override // M.S
    public final void a(RecyclerView recyclerView, int i2) {
        if (i2 == 0 && this.f252a) {
            this.f252a = false;
            this.b.f();
        }
    }

    @Override // M.S
    public final void b(RecyclerView recyclerView, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.f252a = true;
    }
}
