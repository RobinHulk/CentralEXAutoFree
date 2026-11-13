package p012i;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class q implements MenuItem.OnActionExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f3395a;
    public final /* synthetic */ s b;

    public q(s sVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.b = sVar;
        this.f3395a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f3395a.onMenuItemActionCollapse(this.b.g(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f3395a.onMenuItemActionExpand(this.b.g(menuItem));
    }
}
