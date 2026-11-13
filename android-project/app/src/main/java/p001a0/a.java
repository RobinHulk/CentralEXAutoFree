package p001a0;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends p023o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f1398a;

    @Override // p023o.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        r(coordinatorLayout, view, i2);
        if (this.f1398a == null) {
            this.f1398a = new b(view);
        }
        b bVar = this.f1398a;
        View view2 = bVar.f1399a;
        bVar.b = view2.getTop();
        bVar.f1400c = view2.getLeft();
        b bVar2 = this.f1398a;
        View view3 = bVar2.f1399a;
        int top = 0 - (view3.getTop() - bVar2.b);
        WeakHashMap weakHashMap = N.f4222a;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - bVar2.f1400c));
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i2) {
        coordinatorLayout.q(view, i2);
    }
}
