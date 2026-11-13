package p014j;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p012i.j;
import p012i.l;

/* JADX INFO: loaded from: classes.dex */
public final class j1 implements InterfaceC0240m, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f3630a;

    public /* synthetic */ j1(Toolbar toolbar) {
        this.f3630a = toolbar;
    }

    @Override // p012i.j
    public void b(l lVar) {
        Toolbar toolbar = this.f3630a;
        C0234j c0234j = toolbar.f1594a.f1521t;
        if (c0234j == null || !c0234j.k()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.f1584G.f93c).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                throw new ClassCastException();
            }
        }
    }

    @Override // p012i.j
    public boolean o(l lVar, MenuItem menuItem) {
        this.f3630a.getClass();
        return false;
    }
}
