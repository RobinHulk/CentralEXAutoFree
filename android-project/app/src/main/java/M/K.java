package M;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public E f149a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f152e;
    public long f;

    public static void b(e0 e0Var) {
        RecyclerView recyclerView;
        int i2 = e0Var.f227j;
        if (e0Var.g() || (i2 & 4) != 0 || (recyclerView = e0Var.f235r) == null) {
            return;
        }
        recyclerView.F(e0Var);
    }

    public abstract boolean a(e0 e0Var, e0 e0Var2, J j2, J j3);

    public final void c(e0 e0Var) {
        E e2 = this.f149a;
        if (e2 != null) {
            boolean z2 = true;
            e0Var.o(true);
            if (e0Var.f225h != null && e0Var.f226i == null) {
                e0Var.f225h = null;
            }
            e0Var.f226i = null;
            if ((e0Var.f227j & 16) != 0) {
                return;
            }
            RecyclerView recyclerView = e2.f146a;
            recyclerView.a0();
            C0003d c0003d = recyclerView.f2040e;
            E e3 = (E) c0003d.b;
            RecyclerView recyclerView2 = e3.f146a;
            View view = e0Var.f220a;
            int iIndexOfChild = recyclerView2.indexOfChild(view);
            if (iIndexOfChild == -1) {
                c0003d.x(view);
            } else {
                C0002c c0002c = (C0002c) c0003d.f215c;
                if (c0002c.d(iIndexOfChild)) {
                    c0002c.f(iIndexOfChild);
                    c0003d.x(view);
                    e3.h(iIndexOfChild);
                } else {
                    z2 = false;
                }
            }
            if (z2) {
                e0 e0VarI = RecyclerView.I(view);
                V v2 = recyclerView.b;
                v2.j(e0VarI);
                v2.g(e0VarI);
            }
            recyclerView.b0(!z2);
            if (z2 || !e0Var.k()) {
                return;
            }
            recyclerView.removeDetachedView(view, false);
        }
    }

    public abstract void d(e0 e0Var);

    public abstract void e();

    public abstract boolean f();
}
