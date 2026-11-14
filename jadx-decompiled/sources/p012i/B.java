package p012i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.fragment.app.AbstractC0178f;
import p020m.k;
import p030t.a;

/* JADX INFO: loaded from: classes.dex */
public class B extends AbstractC0178f implements Menu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f3269c;

    public B(Context context, l lVar) {
        super(context);
        if (lVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f3269c = lVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return g(this.f3269c.a(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f3269c.addIntentOptions(i2, i3, i4, componentName, intentArr, intent, i5, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i6 = 0; i6 < length; i6++) {
                menuItemArr[i6] = g(menuItemArr2[i6]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f3269c.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        k kVar = (k) this.b;
        if (kVar != null) {
            kVar.clear();
        }
        this.f3269c.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f3269c.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i2) {
        return g(this.f3269c.findItem(i2));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i2) {
        return g(this.f3269c.getItem(i2));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f3269c.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return this.f3269c.isShortcutKey(i2, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i2, int i3) {
        return this.f3269c.performIdentifierAction(i2, i3);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        return this.f3269c.performShortcut(i2, keyEvent, i3);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i2) {
        if (((k) this.b) != null) {
            int i3 = 0;
            while (true) {
                k kVar = (k) this.b;
                if (i3 >= kVar.f3871c) {
                    break;
                }
                if (((a) kVar.g(i3)).getGroupId() == i2) {
                    ((k) this.b).h(i3);
                    i3--;
                }
                i3++;
            }
        }
        this.f3269c.removeGroup(i2);
    }

    @Override // android.view.Menu
    public final void removeItem(int i2) {
        if (((k) this.b) != null) {
            int i3 = 0;
            while (true) {
                k kVar = (k) this.b;
                if (i3 >= kVar.f3871c) {
                    break;
                }
                if (((a) kVar.g(i3)).getItemId() == i2) {
                    ((k) this.b).h(i3);
                    break;
                }
                i3++;
            }
        }
        this.f3269c.removeItem(i2);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i2, boolean z2, boolean z3) {
        this.f3269c.setGroupCheckable(i2, z2, z3);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i2, boolean z2) {
        this.f3269c.setGroupEnabled(i2, z2);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i2, boolean z2) {
        this.f3269c.setGroupVisible(i2, z2);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f3269c.setQwertyMode(z2);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f3269c.size();
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2) {
        return this.f3269c.addSubMenu(i2);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2) {
        return g(this.f3269c.add(i2));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        return this.f3269c.addSubMenu(i2, i3, i4, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return g(this.f3269c.a(i2, i3, i4, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return this.f3269c.addSubMenu(i2, i3, i4, i5);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, int i5) {
        return g(this.f3269c.add(i2, i3, i4, i5));
    }
}
