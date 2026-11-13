package p012i;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class r implements MenuItem.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f3396a;
    public final /* synthetic */ s b;

    public r(s sVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.b = sVar;
        this.f3396a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3396a.onMenuItemClick(this.b.g(menuItem));
    }
}
