package androidx.fragment.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.InterfaceC0198h;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import p007e.AbstractActivityC0210j;

/* JADX INFO: renamed from: androidx.fragment.app.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractComponentCallbacksC0187o implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.q, androidx.lifecycle.J, InterfaceC0198h, N.f {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Object f1873Q = new Object();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f1874A;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f1876C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ViewGroup f1877D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public View f1878E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f1879F;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C0186n f1881H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f1882I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f1883J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public androidx.lifecycle.s f1885L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public M f1886M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public N.e f1888O;
    public final ArrayList P;
    public Bundle b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f1890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bundle f1891d;
    public Bundle f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AbstractComponentCallbacksC0187o f1893g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1895i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1897k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1898l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1899m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1900n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1901o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1902p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1903q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public E f1904r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public r f1905s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AbstractComponentCallbacksC0187o f1907u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1908v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1909w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f1910x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1911y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1912z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1889a = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1892e = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1894h = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f1896j = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public E f1906t = new E();

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final boolean f1875B = true;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f1880G = true;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public androidx.lifecycle.l f1884K = androidx.lifecycle.l.f1960e;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final androidx.lifecycle.w f1887N = new androidx.lifecycle.w();

    public AbstractComponentCallbacksC0187o() {
        new AtomicInteger();
        this.P = new ArrayList();
        this.f1885L = new androidx.lifecycle.s(this);
        this.f1888O = new N.e(this);
    }

    @Override // N.f
    public final N.d b() {
        return this.f1888O.b;
    }

    @Override // androidx.lifecycle.J
    public final androidx.lifecycle.I c() {
        if (this.f1904r == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (i() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.f1904r.f1735F.f1770e;
        androidx.lifecycle.I i2 = (androidx.lifecycle.I) map.get(this.f1892e);
        if (i2 != null) {
            return i2;
        }
        androidx.lifecycle.I i3 = new androidx.lifecycle.I();
        map.put(this.f1892e, i3);
        return i3;
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s d() {
        return this.f1885L;
    }

    public A.b e() {
        return new C0185m(this);
    }

    public final C0186n f() {
        if (this.f1881H == null) {
            C0186n c0186n = new C0186n();
            Object obj = f1873Q;
            c0186n.f1868g = obj;
            c0186n.f1869h = obj;
            c0186n.f1870i = obj;
            c0186n.f1871j = 1.0f;
            c0186n.f1872k = null;
            this.f1881H = c0186n;
        }
        return this.f1881H;
    }

    public final E g() {
        if (this.f1905s != null) {
            return this.f1906t;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Context h() {
        r rVar = this.f1905s;
        if (rVar == null) {
            return null;
        }
        return rVar.f1916d;
    }

    public final int i() {
        androidx.lifecycle.l lVar = this.f1884K;
        return (lVar == androidx.lifecycle.l.b || this.f1907u == null) ? lVar.ordinal() : Math.min(lVar.ordinal(), this.f1907u.i());
    }

    public final E j() {
        E e2 = this.f1904r;
        if (e2 != null) {
            return e2;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final void k(int i2, int i3, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i2 + " resultCode: " + i3 + " data: " + intent);
        }
    }

    public void l(AbstractActivityC0210j abstractActivityC0210j) {
        this.f1876C = true;
        r rVar = this.f1905s;
        if ((rVar == null ? null : rVar.f1915c) != null) {
            this.f1876C = true;
        }
    }

    public void m(Bundle bundle) {
        Parcelable parcelable;
        this.f1876C = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f1906t.M(parcelable);
            E e2 = this.f1906t;
            e2.f1759y = false;
            e2.f1760z = false;
            e2.f1735F.f1772h = false;
            e2.s(1);
        }
        E e3 = this.f1906t;
        if (e3.f1747m >= 1) {
            return;
        }
        e3.f1759y = false;
        e3.f1760z = false;
        e3.f1735F.f1772h = false;
        e3.s(1);
    }

    public View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public void o() {
        this.f1876C = true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.f1876C = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        r rVar = this.f1905s;
        AbstractActivityC0210j abstractActivityC0210j = rVar == null ? null : rVar.f1915c;
        if (abstractActivityC0210j != null) {
            abstractActivityC0210j.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.f1876C = true;
    }

    public void p() {
        this.f1876C = true;
    }

    public LayoutInflater q(Bundle bundle) {
        r rVar = this.f1905s;
        if (rVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        AbstractActivityC0210j abstractActivityC0210j = rVar.f1918g;
        LayoutInflater layoutInflaterCloneInContext = abstractActivityC0210j.getLayoutInflater().cloneInContext(abstractActivityC0210j);
        layoutInflaterCloneInContext.setFactory2(this.f1906t.f);
        return layoutInflaterCloneInContext;
    }

    public abstract void r(Bundle bundle);

    public void s() {
        this.f1876C = true;
    }

    public void t() {
        this.f1876C = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f1892e);
        if (this.f1908v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1908v));
        }
        if (this.f1910x != null) {
            sb.append(" tag=");
            sb.append(this.f1910x);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u(Bundle bundle) {
        this.f1876C = true;
    }

    public void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f1906t.H();
        this.f1902p = true;
        this.f1886M = new M(c());
        View viewN = n(layoutInflater, viewGroup);
        this.f1878E = viewN;
        if (viewN == null) {
            if (this.f1886M.b != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f1886M = null;
            return;
        }
        this.f1886M.f();
        this.f1878E.setTag(R.id.view_tree_lifecycle_owner, this.f1886M);
        this.f1878E.setTag(R.id.view_tree_view_model_store_owner, this.f1886M);
        View view = this.f1878E;
        M m2 = this.f1886M;
        I0.f.e(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, m2);
        this.f1887N.e(this.f1886M);
    }

    public final Context w() {
        Context contextH = h();
        if (contextH != null) {
            return contextH;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final View x() {
        View view = this.f1878E;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final void y(int i2, int i3, int i4, int i5) {
        if (this.f1881H == null && i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            return;
        }
        f().b = i2;
        f().f1865c = i3;
        f().f1866d = i4;
        f().f1867e = i5;
    }

    public final void z(Bundle bundle) {
        E e2 = this.f1904r;
        if (e2 != null && (e2.f1759y || e2.f1760z)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f = bundle;
    }
}
