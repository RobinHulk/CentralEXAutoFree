package p012i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class E extends l implements SubMenu {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final n f3287A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final l f3288z;

    public E(Context context, l lVar, n nVar) {
        super(context);
        this.f3288z = lVar;
        this.f3287A = nVar;
    }

    @Override // p012i.l
    public final boolean d(n nVar) {
        return this.f3288z.d(nVar);
    }

    @Override // p012i.l
    public final boolean e(l lVar, MenuItem menuItem) {
        return super.e(lVar, menuItem) || this.f3288z.e(lVar, menuItem);
    }

    @Override // p012i.l
    public final boolean f(n nVar) {
        return this.f3288z.f(nVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f3287A;
    }

    @Override // p012i.l
    public final String j() {
        n nVar = this.f3287A;
        int i2 = nVar != null ? nVar.f3368a : 0;
        if (i2 == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i2;
    }

    @Override // p012i.l
    public final l k() {
        return this.f3288z.k();
    }

    @Override // p012i.l
    public final boolean m() {
        return this.f3288z.m();
    }

    @Override // p012i.l
    public final boolean n() {
        return this.f3288z.n();
    }

    @Override // p012i.l
    public final boolean o() {
        return this.f3288z.o();
    }

    @Override // p012i.l, android.view.Menu
    public final void setGroupDividerEnabled(boolean z2) {
        this.f3288z.setGroupDividerEnabled(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f3287A.setIcon(drawable);
        return this;
    }

    @Override // p012i.l, android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f3288z.setQwertyMode(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i2) {
        u(0, null, i2, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i2) {
        u(i2, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i2) {
        this.f3287A.setIcon(i2);
        return this;
    }
}
