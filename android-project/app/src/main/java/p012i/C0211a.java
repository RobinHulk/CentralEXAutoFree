package p012i;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p030t.a;
import s.b;

/* JADX INFO: renamed from: i.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0211a implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f3289a;
    public CharSequence b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f3290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f3291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3292e;
    public char f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3293g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f3294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f3295i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f3296j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f3297k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3298l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f3299m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3300n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3301o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3302p;

    @Override // p030t.a
    public final a a(o oVar) {
        throw new UnsupportedOperationException();
    }

    @Override // p030t.a
    public final o b() {
        return null;
    }

    public final void c() {
        Drawable drawable = this.f3294h;
        if (drawable != null) {
            if (this.f3300n || this.f3301o) {
                this.f3294h = drawable;
                Drawable drawableMutate = drawable.mutate();
                this.f3294h = drawableMutate;
                if (this.f3300n) {
                    b.h(drawableMutate, this.f3298l);
                }
                if (this.f3301o) {
                    b.i(this.f3294h, this.f3299m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // p030t.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f3293g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f;
    }

    @Override // p030t.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f3296j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f3294h;
    }

    @Override // p030t.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f3298l;
    }

    @Override // p030t.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f3299m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f3290c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p030t.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f3292e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f3291d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f3289a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.b;
        return charSequence != null ? charSequence : this.f3289a;
    }

    @Override // p030t.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f3297k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f3302p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f3302p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f3302p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f3302p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        this.f = Character.toLowerCase(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z2) {
        this.f3302p = (z2 ? 1 : 0) | (this.f3302p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z2) {
        this.f3302p = (z2 ? 2 : 0) | (this.f3302p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f3296j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z2) {
        this.f3302p = (z2 ? 16 : 0) | (this.f3302p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f3294h = drawable;
        c();
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3298l = colorStateList;
        this.f3300n = true;
        c();
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3299m = mode;
        this.f3301o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f3290c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        this.f3291d = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f3291d = c2;
        this.f = Character.toLowerCase(c3);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i2) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i2) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f3289a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f3297k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z2) {
        this.f3302p = (this.f3302p & 8) | (z2 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f = Character.toLowerCase(c2);
        this.f3293g = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final a setContentDescription(CharSequence charSequence) {
        this.f3296j = charSequence;
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i2) {
        this.f3291d = c2;
        this.f3292e = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i2) {
        this.f3289a = this.f3295i.getResources().getString(i2);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final a setTooltipText(CharSequence charSequence) {
        this.f3297k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i2) {
        this.f3294h = androidx.core.content.b.b(this.f3295i, i2);
        c();
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f3291d = c2;
        this.f3292e = KeyEvent.normalizeMetaState(i2);
        this.f = Character.toLowerCase(c3);
        this.f3293g = KeyEvent.normalizeMetaState(i3);
        return this;
    }
}
