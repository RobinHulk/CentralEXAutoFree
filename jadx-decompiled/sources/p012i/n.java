package p012i;

import A.e;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import p007e.AbstractC0201a;
import p030t.a;
import s.b;

/* JADX INFO: loaded from: classes.dex */
public final class n implements a {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public o f3365A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f3366B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3368a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f3371e;
    public CharSequence f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f3372g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f3373h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f3375j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f3377l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final l f3379n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public E f3380o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f3381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3382q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f3383r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3390y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f3391z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3374i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3376k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3378m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f3384s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f3385t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3386u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3387v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3388w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3389x = 16;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f3367C = false;

    public n(l lVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.f3379n = lVar;
        this.f3368a = i3;
        this.b = i2;
        this.f3369c = i4;
        this.f3370d = i5;
        this.f3371e = charSequence;
        this.f3390y = i6;
    }

    public static void c(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    @Override // p030t.a
    public final a a(o oVar) {
        this.f3391z = null;
        this.f3365A = oVar;
        this.f3379n.p(true);
        o oVar2 = this.f3365A;
        if (oVar2 != null) {
            oVar2.f3393c = new e(this, 17);
            oVar2.f3392a.setVisibilityListener(oVar2);
        }
        return this;
    }

    @Override // p030t.a
    public final o b() {
        return this.f3365A;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f3390y & 8) == 0) {
            return false;
        }
        if (this.f3391z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f3366B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f3379n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f3388w && (this.f3386u || this.f3387v)) {
            drawable = drawable.mutate();
            if (this.f3386u) {
                b.h(drawable, this.f3384s);
            }
            if (this.f3387v) {
                b.i(drawable, this.f3385t);
            }
            this.f3388w = false;
        }
        return drawable;
    }

    public final boolean e() {
        o oVar;
        if ((this.f3390y & 8) == 0) {
            return false;
        }
        if (this.f3391z == null && (oVar = this.f3365A) != null) {
            this.f3391z = oVar.a(this);
        }
        return this.f3391z != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f3366B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f3379n.f(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.f3389x & 32) == 32;
    }

    public final void g(boolean z2) {
        if (z2) {
            this.f3389x |= 32;
        } else {
            this.f3389x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f3391z;
        if (view != null) {
            return view;
        }
        o oVar = this.f3365A;
        if (oVar == null) {
            return null;
        }
        View viewA = oVar.a(this);
        this.f3391z = viewA;
        return viewA;
    }

    @Override // p030t.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f3376k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f3375j;
    }

    @Override // p030t.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f3382q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f3377l;
        if (drawable != null) {
            return d(drawable);
        }
        int i2 = this.f3378m;
        if (i2 == 0) {
            return null;
        }
        Drawable drawableA = AbstractC0201a.A(this.f3379n.f3341a, i2);
        this.f3378m = 0;
        this.f3377l = drawableA;
        return d(drawableA);
    }

    @Override // p030t.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f3384s;
    }

    @Override // p030t.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f3385t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f3372g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f3368a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p030t.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f3374i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f3373h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f3369c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f3380o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f3371e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.f3371e;
    }

    @Override // p030t.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f3383r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f3380o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f3367C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f3389x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f3389x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f3389x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        o oVar = this.f3365A;
        if (oVar == null || !oVar.f3392a.overridesItemVisibility()) {
            return (this.f3389x & 8) == 0;
        }
        return (this.f3389x & 8) == 0 && this.f3365A.f3392a.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i2;
        this.f3391z = view;
        this.f3365A = null;
        if (view != null && view.getId() == -1 && (i2 = this.f3368a) > 0) {
            view.setId(i2);
        }
        l lVar = this.f3379n;
        lVar.f3349k = true;
        lVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.f3375j == c2) {
            return this;
        }
        this.f3375j = Character.toLowerCase(c2);
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z2) {
        int i2 = this.f3389x;
        int i3 = (z2 ? 1 : 0) | (i2 & (-2));
        this.f3389x = i3;
        if (i2 != i3) {
            this.f3379n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z2) {
        int i2 = this.f3389x;
        if ((i2 & 4) != 0) {
            l lVar = this.f3379n;
            lVar.getClass();
            ArrayList arrayList = lVar.f;
            int size = arrayList.size();
            lVar.w();
            for (int i3 = 0; i3 < size; i3++) {
                n nVar = (n) arrayList.get(i3);
                if (nVar.b == this.b && (nVar.f3389x & 4) != 0 && nVar.isCheckable()) {
                    boolean z3 = nVar == this;
                    int i4 = nVar.f3389x;
                    int i5 = (z3 ? 2 : 0) | (i4 & (-3));
                    nVar.f3389x = i5;
                    if (i4 != i5) {
                        nVar.f3379n.p(false);
                    }
                }
            }
            lVar.v();
        } else {
            int i6 = (i2 & (-3)) | (z2 ? 2 : 0);
            this.f3389x = i6;
            if (i2 != i6) {
                this.f3379n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.f3389x |= 16;
        } else {
            this.f3389x &= -17;
        }
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f3378m = 0;
        this.f3377l = drawable;
        this.f3388w = true;
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3384s = colorStateList;
        this.f3386u = true;
        this.f3388w = true;
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3385t = mode;
        this.f3387v = true;
        this.f3388w = true;
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f3372g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        if (this.f3373h == c2) {
            return this;
        }
        this.f3373h = c2;
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f3366B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f3381p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f3373h = c2;
        this.f3375j = Character.toLowerCase(c3);
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f3390y = i2;
        l lVar = this.f3379n;
        lVar.f3349k = true;
        lVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f3371e = charSequence;
        this.f3379n.p(false);
        E e2 = this.f3380o;
        if (e2 != null) {
            e2.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z2) {
        int i2 = this.f3389x;
        int i3 = (z2 ? 0 : 8) | (i2 & (-9));
        this.f3389x = i3;
        if (i2 != i3) {
            l lVar = this.f3379n;
            lVar.f3346h = true;
            lVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f3371e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // p030t.a, android.view.MenuItem
    public final a setContentDescription(CharSequence charSequence) {
        this.f3382q = charSequence;
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final a setTooltipText(CharSequence charSequence) {
        this.f3383r = charSequence;
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f3375j == c2 && this.f3376k == i2) {
            return this;
        }
        this.f3375j = Character.toLowerCase(c2);
        this.f3376k = KeyEvent.normalizeMetaState(i2);
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f3373h == c2 && this.f3374i == i2) {
            return this;
        }
        this.f3373h = c2;
        this.f3374i = KeyEvent.normalizeMetaState(i2);
        this.f3379n.p(false);
        return this;
    }

    @Override // p030t.a, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f3373h = c2;
        this.f3374i = KeyEvent.normalizeMetaState(i2);
        this.f3375j = Character.toLowerCase(c3);
        this.f3376k = KeyEvent.normalizeMetaState(i3);
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i2) {
        this.f3377l = null;
        this.f3378m = i2;
        this.f3388w = true;
        this.f3379n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i2) {
        setTitle(this.f3379n.f3341a.getString(i2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i2) {
        int i3;
        Context context = this.f3379n.f3341a;
        View viewInflate = LayoutInflater.from(context).inflate(i2, (ViewGroup) new LinearLayout(context), false);
        this.f3391z = viewInflate;
        this.f3365A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i3 = this.f3368a) > 0) {
            viewInflate.setId(i3);
        }
        l lVar = this.f3379n;
        lVar.f3349k = true;
        lVar.p(true);
        return this;
    }
}
