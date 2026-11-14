package p012i;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p034y.P;

/* JADX INFO: loaded from: classes.dex */
public class l implements Menu {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f3340y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3341a;
    public final Resources b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f3344e;
    public final ArrayList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f3347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f3348j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3349k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f3351m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f3352n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f3353o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public n f3360v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3362x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3350l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3354p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3355q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3356r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3357s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f3358t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f3359u = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3361w = false;

    public l(Context context) {
        boolean z2 = false;
        this.f3341a = context;
        Resources resources = context.getResources();
        this.b = resources;
        this.f = new ArrayList();
        this.f3345g = new ArrayList();
        this.f3346h = true;
        this.f3347i = new ArrayList();
        this.f3348j = new ArrayList();
        this.f3349k = true;
        if (resources.getConfiguration().keyboard != 1 && P.b(ViewConfiguration.get(context))) {
            z2 = true;
        }
        this.f3343d = z2;
    }

    public final n a(int i2, int i3, int i4, CharSequence charSequence) {
        int i5;
        int i6 = ((-65536) & i4) >> 16;
        if (i6 < 0 || i6 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i7 = (f3340y[i6] << 16) | (65535 & i4);
        n nVar = new n(this, i2, i3, i4, i7, charSequence, this.f3350l);
        ArrayList arrayList = this.f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((n) arrayList.get(size)).f3370d <= i7) {
                i5 = size + 1;
                arrayList.add(i5, nVar);
                p(true);
                return nVar;
            }
        }
        i5 = 0;
        arrayList.add(i5, nVar);
        p(true);
        return nVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        int i6;
        PackageManager packageManager = this.f3341a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i8 < 0 ? intent : intentArr[i8]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            n nVarA = a(i2, i3, i4, resolveInfo.loadLabel(packageManager));
            nVarA.setIcon(resolveInfo.loadIcon(packageManager));
            nVarA.f3372g = intent2;
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = nVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(y yVar, Context context) {
        this.f3359u.add(new WeakReference(yVar));
        yVar.e(context, this);
        this.f3349k = true;
    }

    public final void c(boolean z2) {
        if (this.f3357s) {
            return;
        }
        this.f3357s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                yVar.a(this, z2);
            }
        }
        this.f3357s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        n nVar = this.f3360v;
        if (nVar != null) {
            d(nVar);
        }
        this.f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f3352n = null;
        this.f3351m = null;
        this.f3353o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(n nVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
        boolean zC = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f3360v == nVar) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                y yVar = (y) weakReference.get();
                if (yVar != null) {
                    zC = yVar.c(nVar);
                    if (zC) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zC) {
                this.f3360v = null;
            }
        }
        return zC;
    }

    public boolean e(l lVar, MenuItem menuItem) {
        j jVar = this.f3344e;
        return jVar != null && jVar.o(lVar, menuItem);
    }

    public boolean f(n nVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
        boolean zH = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            y yVar = (y) weakReference.get();
            if (yVar != null) {
                zH = yVar.h(nVar);
                if (zH) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zH) {
            this.f3360v = nVar;
        }
        return zH;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i2) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) arrayList.get(i3);
            if (nVar.f3368a == i2) {
                return nVar;
            }
            if (nVar.hasSubMenu() && (menuItemFindItem = nVar.f3380o.findItem(i2)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final n g(int i2, KeyEvent keyEvent) {
        ArrayList arrayList = this.f3358t;
        arrayList.clear();
        h(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (n) arrayList.get(0);
        }
        boolean zN = n();
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) arrayList.get(i3);
            char c2 = zN ? nVar.f3375j : nVar.f3373h;
            char[] cArr = keyData.meta;
            if ((c2 == cArr[0] && (metaState & 2) == 0) || ((c2 == cArr[2] && (metaState & 2) != 0) || (zN && c2 == '\b' && i2 == 67))) {
                return nVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i2) {
        return (MenuItem) this.f.get(i2);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0069  */
    public final void h(ArrayList arrayList, int i2, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            ArrayList arrayList2 = this.f;
            int size = arrayList2.size();
            for (int i3 = 0; i3 < size; i3++) {
                n nVar = (n) arrayList2.get(i3);
                if (nVar.hasSubMenu()) {
                    nVar.f3380o.h(arrayList, i2, keyEvent);
                }
                char c2 = zN ? nVar.f3375j : nVar.f3373h;
                if ((modifiers & 69647) == ((zN ? nVar.f3376k : nVar.f3374i) & 69647) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if (c2 != cArr[0] && c2 != cArr[2]) {
                        if (zN && c2 == '\b') {
                            if (i2 == 67) {
                            }
                        }
                    }
                    if (nVar.isEnabled()) {
                        arrayList.add(nVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f3362x) {
            return true;
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((n) arrayList.get(i2)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f3349k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
            boolean zD = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                y yVar = (y) weakReference.get();
                if (yVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zD |= yVar.d();
                }
            }
            ArrayList arrayList = this.f3347i;
            ArrayList arrayList2 = this.f3348j;
            if (zD) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i2 = 0; i2 < size; i2++) {
                    n nVar = (n) arrayListL.get(i2);
                    if (nVar.f()) {
                        arrayList.add(nVar);
                    } else {
                        arrayList2.add(nVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f3349k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return g(i2, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public l k() {
        return this;
    }

    public final ArrayList l() {
        boolean z2 = this.f3346h;
        ArrayList arrayList = this.f3345g;
        if (!z2) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = (n) arrayList2.get(i2);
            if (nVar.isVisible()) {
                arrayList.add(nVar);
            }
        }
        this.f3346h = false;
        this.f3349k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f3361w;
    }

    public boolean n() {
        return this.f3342c;
    }

    public boolean o() {
        return this.f3343d;
    }

    public final void p(boolean z2) {
        if (this.f3354p) {
            this.f3355q = true;
            if (z2) {
                this.f3356r = true;
                return;
            }
            return;
        }
        if (z2) {
            this.f3346h = true;
            this.f3349k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                yVar.i();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i2, int i3) {
        return q(findItem(i2), null, i3);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        n nVarG = g(i2, keyEvent);
        boolean zQ = nVarG != null ? q(nVarG, null, i3) : false;
        if ((i3 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00b1 A[SYNTHETIC] */
    public final boolean q(MenuItem menuItem, y yVar, int i2) {
        o oVar;
        boolean zExpandActionView;
        o oVar2;
        boolean z2;
        E e2;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList;
        y yVar2;
        n nVar = (n) menuItem;
        boolean zJ = false;
        if (nVar == null || !nVar.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = nVar.f3381p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(nVar)) {
            l lVar = nVar.f3379n;
            if (lVar.e(lVar, nVar)) {
                zExpandActionView = true;
            } else {
                Intent intent = nVar.f3372g;
                if (intent != null) {
                    try {
                        lVar.f3341a.startActivity(intent);
                    } catch (ActivityNotFoundException e3) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e3);
                        oVar = nVar.f3365A;
                        if (oVar == null) {
                        }
                        zExpandActionView = false;
                        oVar2 = nVar.f3365A;
                        if (oVar2 == null) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        if (nVar.e()) {
                            zExpandActionView |= nVar.expandActionView();
                            if (zExpandActionView) {
                                c(true);
                            }
                        } else if (nVar.hasSubMenu()) {
                            if ((i2 & 4) == 0) {
                                c(false);
                            }
                            if (!nVar.hasSubMenu()) {
                                E e4 = new E(this.f3341a, this, nVar);
                                nVar.f3380o = e4;
                                e4.setHeaderTitle(nVar.f3371e);
                            }
                            e2 = nVar.f3380o;
                            if (z2) {
                                oVar2.b.getClass();
                                oVar2.f3392a.onPrepareSubMenu(e2);
                            }
                            copyOnWriteArrayList = this.f3359u;
                            if (!copyOnWriteArrayList.isEmpty()) {
                                if (yVar != null) {
                                }
                                for (WeakReference weakReference : copyOnWriteArrayList) {
                                    yVar2 = (y) weakReference.get();
                                    if (yVar2 == null) {
                                        copyOnWriteArrayList.remove(weakReference);
                                    } else if (!zJ) {
                                        zJ = yVar2.j(e2);
                                    }
                                }
                            }
                            zExpandActionView |= zJ;
                            if (!zExpandActionView) {
                                c(true);
                            }
                        } else {
                            if ((i2 & 4) == 0) {
                                c(false);
                            }
                            if (!nVar.hasSubMenu()) {
                                E e5 = new E(this.f3341a, this, nVar);
                                nVar.f3380o = e5;
                                e5.setHeaderTitle(nVar.f3371e);
                            }
                            e2 = nVar.f3380o;
                            if (z2) {
                                oVar2.b.getClass();
                                oVar2.f3392a.onPrepareSubMenu(e2);
                            }
                            copyOnWriteArrayList = this.f3359u;
                            if (!copyOnWriteArrayList.isEmpty()) {
                                zJ = yVar != null ? yVar.j(e2) : false;
                                while (r8.hasNext()) {
                                    yVar2 = (y) weakReference.get();
                                    if (yVar2 == null) {
                                        copyOnWriteArrayList.remove(weakReference);
                                    } else if (!zJ) {
                                        zJ = yVar2.j(e2);
                                    }
                                }
                            }
                            zExpandActionView |= zJ;
                            if (!zExpandActionView) {
                                c(true);
                            }
                        }
                        return zExpandActionView;
                    }
                    zExpandActionView = true;
                } else {
                    oVar = nVar.f3365A;
                    if (oVar == null && oVar.f3392a.onPerformDefaultAction()) {
                        zExpandActionView = true;
                    } else {
                        zExpandActionView = false;
                    }
                }
            }
        } else {
            zExpandActionView = true;
        }
        oVar2 = nVar.f3365A;
        if (oVar2 == null && oVar2.f3392a.hasSubMenu()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (nVar.e()) {
            zExpandActionView |= nVar.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (nVar.hasSubMenu() || z2) {
            if ((i2 & 4) == 0) {
                c(false);
            }
            if (!nVar.hasSubMenu()) {
                E e6 = new E(this.f3341a, this, nVar);
                nVar.f3380o = e6;
                e6.setHeaderTitle(nVar.f3371e);
            }
            e2 = nVar.f3380o;
            if (z2) {
                oVar2.b.getClass();
                oVar2.f3392a.onPrepareSubMenu(e2);
            }
            copyOnWriteArrayList = this.f3359u;
            if (!copyOnWriteArrayList.isEmpty()) {
                if (yVar != null) {
                }
                while (r8.hasNext()) {
                    yVar2 = (y) weakReference.get();
                    if (yVar2 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zJ) {
                        zJ = yVar2.j(e2);
                    }
                }
            }
            zExpandActionView |= zJ;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i2 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(y yVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3359u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            y yVar2 = (y) weakReference.get();
            if (yVar2 == null || yVar2 == yVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (((n) arrayList.get(i4)).b == i2) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 >= 0) {
            int size2 = arrayList.size() - i4;
            while (true) {
                int i5 = i3 + 1;
                if (i3 >= size2 || ((n) arrayList.get(i4)).b != i2) {
                    break;
                }
                if (i4 >= 0) {
                    ArrayList arrayList2 = this.f;
                    if (i4 < arrayList2.size()) {
                        arrayList2.remove(i4);
                    }
                }
                i3 = i5;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (((n) arrayList.get(i3)).f3368a == i2) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            ArrayList arrayList2 = this.f;
            if (i3 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i3);
            p(true);
        }
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((E) item.getSubMenu()).s(bundle);
            }
        }
        int i3 = bundle.getInt("android:menu:expandedactionview");
        if (i3 <= 0 || (menuItemFindItem = findItem(i3)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i2, boolean z2, boolean z3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) arrayList.get(i3);
            if (nVar.b == i2) {
                nVar.f3389x = (nVar.f3389x & (-5)) | (z3 ? 4 : 0);
                nVar.setCheckable(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z2) {
        this.f3361w = z2;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i2, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) arrayList.get(i3);
            if (nVar.b == i2) {
                nVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i2, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) arrayList.get(i3);
            if (nVar.b == i2) {
                int i4 = nVar.f3389x;
                int i5 = (i4 & (-9)) | (z2 ? 0 : 8);
                nVar.f3389x = i5;
                if (i4 != i5) {
                    z3 = true;
                }
            }
        }
        if (z3) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f3342c = z2;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((E) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i2, CharSequence charSequence, int i3, Drawable drawable, View view) {
        if (view != null) {
            this.f3353o = view;
            this.f3351m = null;
            this.f3352n = null;
        } else {
            if (i2 > 0) {
                this.f3351m = this.b.getText(i2);
            } else if (charSequence != null) {
                this.f3351m = charSequence;
            }
            if (i3 > 0) {
                this.f3352n = b.b(this.f3341a, i3);
            } else if (drawable != null) {
                this.f3352n = drawable;
            }
            this.f3353o = null;
        }
        p(false);
    }

    public final void v() {
        this.f3354p = false;
        if (this.f3355q) {
            this.f3355q = false;
            p(this.f3356r);
        }
    }

    public final void w() {
        if (this.f3354p) {
            return;
        }
        this.f3354p = true;
        this.f3355q = false;
        this.f3356r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2) {
        return a(0, 0, 0, this.b.getString(i2));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.b.getString(i2));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(i2, i3, i4, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        n nVarA = a(i2, i3, i4, charSequence);
        E e2 = new E(this.f3341a, this, nVarA);
        nVarA.f3380o = e2;
        e2.setHeaderTitle(nVarA.f3371e);
        return e2;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, int i5) {
        return a(i2, i3, i4, this.b.getString(i5));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, this.b.getString(i5));
    }
}
