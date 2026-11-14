package androidx.fragment.app;

import M.C0003d;
import M.d0;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.WeakHashMap;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final G.a f1785a;
    public final C0003d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractComponentCallbacksC0187o f1786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1787d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1788e = -1;

    public K(G.a aVar, C0003d c0003d, AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        this.f1785a = aVar;
        this.b = c0003d;
        this.f1786c = abstractComponentCallbacksC0187o;
    }

    public final void a() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + abstractComponentCallbacksC0187o);
        }
        Bundle bundle = abstractComponentCallbacksC0187o.b;
        abstractComponentCallbacksC0187o.f1906t.H();
        abstractComponentCallbacksC0187o.f1889a = 3;
        abstractComponentCallbacksC0187o.f1876C = true;
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + abstractComponentCallbacksC0187o);
        }
        View view = abstractComponentCallbacksC0187o.f1878E;
        if (view != null) {
            Bundle bundle2 = abstractComponentCallbacksC0187o.b;
            SparseArray<Parcelable> sparseArray = abstractComponentCallbacksC0187o.f1890c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                abstractComponentCallbacksC0187o.f1890c = null;
            }
            if (abstractComponentCallbacksC0187o.f1878E != null) {
                abstractComponentCallbacksC0187o.f1886M.f1796c.b(abstractComponentCallbacksC0187o.f1891d);
                abstractComponentCallbacksC0187o.f1891d = null;
            }
            abstractComponentCallbacksC0187o.f1876C = false;
            abstractComponentCallbacksC0187o.u(bundle2);
            if (!abstractComponentCallbacksC0187o.f1876C) {
                throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onViewStateRestored()");
            }
            if (abstractComponentCallbacksC0187o.f1878E != null) {
                abstractComponentCallbacksC0187o.f1886M.e(androidx.lifecycle.k.ON_CREATE);
            }
        }
        abstractComponentCallbacksC0187o.b = null;
        E e2 = abstractComponentCallbacksC0187o.f1906t;
        e2.f1759y = false;
        e2.f1760z = false;
        e2.f1735F.f1772h = false;
        e2.s(4);
        this.f1785a.c(false);
    }

    public final void b() {
        View view;
        View view2;
        C0003d c0003d = this.b;
        c0003d.getClass();
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            ArrayList arrayList = (ArrayList) c0003d.f216d;
            int iIndexOf = arrayList.indexOf(abstractComponentCallbacksC0187o);
            for (int i2 = iIndexOf - 1; i2 >= 0; i2--) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = (AbstractComponentCallbacksC0187o) arrayList.get(i2);
                if (abstractComponentCallbacksC0187o2.f1877D == viewGroup && (view2 = abstractComponentCallbacksC0187o2.f1878E) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= arrayList.size()) {
                    break;
                }
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 = (AbstractComponentCallbacksC0187o) arrayList.get(iIndexOf);
                if (abstractComponentCallbacksC0187o3.f1877D == viewGroup && (view = abstractComponentCallbacksC0187o3.f1878E) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        abstractComponentCallbacksC0187o.f1877D.addView(abstractComponentCallbacksC0187o.f1878E, iIndexOfChild);
    }

    public final void c() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + abstractComponentCallbacksC0187o);
        }
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = abstractComponentCallbacksC0187o.f1893g;
        C0003d c0003d = this.b;
        K k2 = null;
        if (abstractComponentCallbacksC0187o2 != null) {
            K k3 = (K) ((HashMap) c0003d.b).get(abstractComponentCallbacksC0187o2.f1892e);
            if (k3 == null) {
                throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0187o + " declared target fragment " + abstractComponentCallbacksC0187o.f1893g + " that does not belong to this FragmentManager!");
            }
            abstractComponentCallbacksC0187o.f1894h = abstractComponentCallbacksC0187o.f1893g.f1892e;
            abstractComponentCallbacksC0187o.f1893g = null;
            k2 = k3;
        } else {
            String str = abstractComponentCallbacksC0187o.f1894h;
            if (str != null && (k2 = (K) ((HashMap) c0003d.b).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(abstractComponentCallbacksC0187o);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(d0.g(sb, abstractComponentCallbacksC0187o.f1894h, " that does not belong to this FragmentManager!"));
            }
        }
        if (k2 != null) {
            k2.k();
        }
        E e2 = abstractComponentCallbacksC0187o.f1904r;
        abstractComponentCallbacksC0187o.f1905s = e2.f1748n;
        abstractComponentCallbacksC0187o.f1907u = e2.f1750p;
        G.a aVar = this.f1785a;
        aVar.i(false);
        ArrayList arrayList = abstractComponentCallbacksC0187o.P;
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        arrayList.clear();
        abstractComponentCallbacksC0187o.f1906t.b(abstractComponentCallbacksC0187o.f1905s, abstractComponentCallbacksC0187o.e(), abstractComponentCallbacksC0187o);
        abstractComponentCallbacksC0187o.f1889a = 0;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.l(abstractComponentCallbacksC0187o.f1905s.f1916d);
        if (!abstractComponentCallbacksC0187o.f1876C) {
            throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onAttach()");
        }
        Iterator it2 = abstractComponentCallbacksC0187o.f1904r.f1746l.iterator();
        while (it2.hasNext()) {
            ((H) it2.next()).a();
        }
        E e3 = abstractComponentCallbacksC0187o.f1906t;
        e3.f1759y = false;
        e3.f1760z = false;
        e3.f1735F.f1772h = false;
        e3.s(0);
        aVar.d(false);
    }

    public final int d() {
        P p2;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (abstractComponentCallbacksC0187o.f1904r == null) {
            return abstractComponentCallbacksC0187o.f1889a;
        }
        int iMin = this.f1788e;
        int iOrdinal = abstractComponentCallbacksC0187o.f1884K.ordinal();
        int i2 = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (abstractComponentCallbacksC0187o.f1899m) {
            if (abstractComponentCallbacksC0187o.f1900n) {
                iMin = Math.max(this.f1788e, 2);
                View view = abstractComponentCallbacksC0187o.f1878E;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f1788e < 4 ? Math.min(iMin, abstractComponentCallbacksC0187o.f1889a) : Math.min(iMin, 1);
            }
        }
        if (!abstractComponentCallbacksC0187o.f1897k) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        if (viewGroup != null) {
            C0180h c0180hF = C0180h.f(viewGroup, abstractComponentCallbacksC0187o.j().B());
            c0180hF.getClass();
            P pD = c0180hF.d(abstractComponentCallbacksC0187o);
            i2 = pD != null ? pD.b : 0;
            Iterator it = c0180hF.f1845c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    p2 = null;
                    break;
                }
                p2 = (P) it.next();
                if (p2.f1801c.equals(abstractComponentCallbacksC0187o) && !p2.f) {
                    break;
                }
            }
            if (p2 != null && (i2 == 0 || i2 == 1)) {
                i2 = p2.b;
            }
        }
        if (i2 == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i2 == 3) {
            iMin = Math.max(iMin, 3);
        } else if (abstractComponentCallbacksC0187o.f1898l) {
            iMin = abstractComponentCallbacksC0187o.f1903q > 0 ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (abstractComponentCallbacksC0187o.f1879F && abstractComponentCallbacksC0187o.f1889a < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + abstractComponentCallbacksC0187o);
        }
        return iMin;
    }

    public final void e() {
        Parcelable parcelable;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        final AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + abstractComponentCallbacksC0187o);
        }
        if (abstractComponentCallbacksC0187o.f1883J) {
            Bundle bundle = abstractComponentCallbacksC0187o.b;
            if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
                abstractComponentCallbacksC0187o.f1906t.M(parcelable);
                E e2 = abstractComponentCallbacksC0187o.f1906t;
                e2.f1759y = false;
                e2.f1760z = false;
                e2.f1735F.f1772h = false;
                e2.s(1);
            }
            abstractComponentCallbacksC0187o.f1889a = 1;
            return;
        }
        G.a aVar = this.f1785a;
        aVar.j(false);
        Bundle bundle2 = abstractComponentCallbacksC0187o.b;
        abstractComponentCallbacksC0187o.f1906t.H();
        abstractComponentCallbacksC0187o.f1889a = 1;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.f1885L.a(new androidx.lifecycle.o() { // from class: androidx.fragment.app.Fragment$5
            @Override // androidx.lifecycle.o
            public final void b(androidx.lifecycle.q qVar, androidx.lifecycle.k kVar) {
                View view;
                if (kVar != androidx.lifecycle.k.ON_STOP || (view = abstractComponentCallbacksC0187o.f1878E) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        abstractComponentCallbacksC0187o.f1888O.b(bundle2);
        abstractComponentCallbacksC0187o.m(bundle2);
        abstractComponentCallbacksC0187o.f1883J = true;
        if (abstractComponentCallbacksC0187o.f1876C) {
            abstractComponentCallbacksC0187o.f1885L.d(androidx.lifecycle.k.ON_CREATE);
            aVar.e(false);
        } else {
            throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onCreate()");
        }
    }

    public final void f() {
        String resourceName;
        int i2 = 0;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (abstractComponentCallbacksC0187o.f1899m) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0187o);
        }
        LayoutInflater layoutInflaterQ = abstractComponentCallbacksC0187o.q(abstractComponentCallbacksC0187o.b);
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        if (viewGroup == null) {
            int i3 = abstractComponentCallbacksC0187o.f1909w;
            if (i3 == 0) {
                viewGroup = null;
            } else {
                if (i3 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + abstractComponentCallbacksC0187o + " for a container view with no id");
                }
                viewGroup = (ViewGroup) abstractComponentCallbacksC0187o.f1904r.f1749o.N(i3);
                if (viewGroup == null && !abstractComponentCallbacksC0187o.f1901o) {
                    try {
                        resourceName = abstractComponentCallbacksC0187o.w().getResources().getResourceName(abstractComponentCallbacksC0187o.f1909w);
                    } catch (Resources.NotFoundException unused) {
                        resourceName = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(abstractComponentCallbacksC0187o.f1909w) + " (" + resourceName + ") for fragment " + abstractComponentCallbacksC0187o);
                }
            }
        }
        abstractComponentCallbacksC0187o.f1877D = viewGroup;
        abstractComponentCallbacksC0187o.v(layoutInflaterQ, viewGroup, abstractComponentCallbacksC0187o.b);
        View view = abstractComponentCallbacksC0187o.f1878E;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            abstractComponentCallbacksC0187o.f1878E.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0187o);
            if (viewGroup != null) {
                b();
            }
            if (abstractComponentCallbacksC0187o.f1911y) {
                abstractComponentCallbacksC0187o.f1878E.setVisibility(8);
            }
            View view2 = abstractComponentCallbacksC0187o.f1878E;
            WeakHashMap weakHashMap = p034y.N.f4222a;
            if (p034y.A.b(view2)) {
                p034y.B.c(abstractComponentCallbacksC0187o.f1878E);
            } else {
                View view3 = abstractComponentCallbacksC0187o.f1878E;
                view3.addOnAttachStateChangeListener(new J(view3, i2));
            }
            abstractComponentCallbacksC0187o.f1906t.s(2);
            this.f1785a.o(false);
            int visibility = abstractComponentCallbacksC0187o.f1878E.getVisibility();
            abstractComponentCallbacksC0187o.f().f1871j = abstractComponentCallbacksC0187o.f1878E.getAlpha();
            if (abstractComponentCallbacksC0187o.f1877D != null && visibility == 0) {
                View viewFindFocus = abstractComponentCallbacksC0187o.f1878E.findFocus();
                if (viewFindFocus != null) {
                    abstractComponentCallbacksC0187o.f().f1872k = viewFindFocus;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + abstractComponentCallbacksC0187o);
                    }
                }
                abstractComponentCallbacksC0187o.f1878E.setAlpha(0.0f);
            }
        }
        abstractComponentCallbacksC0187o.f1889a = 2;
    }

    public final void g() {
        boolean z2;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oE;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + abstractComponentCallbacksC0187o);
        }
        boolean z3 = abstractComponentCallbacksC0187o.f1898l && abstractComponentCallbacksC0187o.f1903q <= 0;
        C0003d c0003d = this.b;
        if (!z3) {
            G g2 = (G) c0003d.f215c;
            if (!((g2.f1768c.containsKey(abstractComponentCallbacksC0187o.f1892e) && g2.f) ? g2.f1771g : true)) {
                String str = abstractComponentCallbacksC0187o.f1894h;
                if (str != null && (abstractComponentCallbacksC0187oE = c0003d.e(str)) != null && abstractComponentCallbacksC0187oE.f1874A) {
                    abstractComponentCallbacksC0187o.f1893g = abstractComponentCallbacksC0187oE;
                }
                abstractComponentCallbacksC0187o.f1889a = 0;
                return;
            }
        }
        r rVar = abstractComponentCallbacksC0187o.f1905s;
        if (rVar != null) {
            z2 = ((G) c0003d.f215c).f1771g;
        } else {
            AbstractActivityC0210j abstractActivityC0210j = rVar.f1916d;
            z2 = abstractActivityC0210j != null ? !abstractActivityC0210j.isChangingConfigurations() : true;
        }
        if (z3 || z2) {
            G g3 = (G) c0003d.f215c;
            g3.getClass();
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + abstractComponentCallbacksC0187o);
            }
            HashMap map = g3.f1769d;
            G g4 = (G) map.get(abstractComponentCallbacksC0187o.f1892e);
            if (g4 != null) {
                g4.a();
                map.remove(abstractComponentCallbacksC0187o.f1892e);
            }
            HashMap map2 = g3.f1770e;
            androidx.lifecycle.I i2 = (androidx.lifecycle.I) map2.get(abstractComponentCallbacksC0187o.f1892e);
            if (i2 != null) {
                i2.a();
                map2.remove(abstractComponentCallbacksC0187o.f1892e);
            }
        }
        abstractComponentCallbacksC0187o.f1906t.k();
        abstractComponentCallbacksC0187o.f1885L.d(androidx.lifecycle.k.ON_DESTROY);
        abstractComponentCallbacksC0187o.f1889a = 0;
        abstractComponentCallbacksC0187o.f1883J = false;
        abstractComponentCallbacksC0187o.f1876C = true;
        this.f1785a.f(false);
        for (K k2 : c0003d.g()) {
            if (k2 != null) {
                String str2 = abstractComponentCallbacksC0187o.f1892e;
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = k2.f1786c;
                if (str2.equals(abstractComponentCallbacksC0187o2.f1894h)) {
                    abstractComponentCallbacksC0187o2.f1893g = abstractComponentCallbacksC0187o;
                    abstractComponentCallbacksC0187o2.f1894h = null;
                }
            }
        }
        String str3 = abstractComponentCallbacksC0187o.f1894h;
        if (str3 != null) {
            abstractComponentCallbacksC0187o.f1893g = c0003d.e(str3);
        }
        c0003d.u(this);
    }

    public final void h() {
        View view;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + abstractComponentCallbacksC0187o);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        if (viewGroup != null && (view = abstractComponentCallbacksC0187o.f1878E) != null) {
            viewGroup.removeView(view);
        }
        abstractComponentCallbacksC0187o.f1906t.s(1);
        if (abstractComponentCallbacksC0187o.f1878E != null) {
            M m2 = abstractComponentCallbacksC0187o.f1886M;
            m2.f();
            if (m2.b.b.a(androidx.lifecycle.l.f1958c)) {
                abstractComponentCallbacksC0187o.f1886M.e(androidx.lifecycle.k.ON_DESTROY);
            }
        }
        abstractComponentCallbacksC0187o.f1889a = 1;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.o();
        if (!abstractComponentCallbacksC0187o.f1876C) {
            throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onDestroyView()");
        }
        p020m.l lVar = ((K.a) new G.a(abstractComponentCallbacksC0187o, abstractComponentCallbacksC0187o.c()).f93c).f131c;
        if (lVar.f3874c > 0) {
            lVar.b[0].getClass();
            throw new ClassCastException();
        }
        abstractComponentCallbacksC0187o.f1902p = false;
        this.f1785a.p(false);
        abstractComponentCallbacksC0187o.f1877D = null;
        abstractComponentCallbacksC0187o.f1878E = null;
        abstractComponentCallbacksC0187o.f1886M = null;
        abstractComponentCallbacksC0187o.f1887N.e(null);
        abstractComponentCallbacksC0187o.f1900n = false;
    }

    public final void i() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1889a = -1;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.p();
        if (!abstractComponentCallbacksC0187o.f1876C) {
            throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onDetach()");
        }
        E e2 = abstractComponentCallbacksC0187o.f1906t;
        if (!e2.f1730A) {
            e2.k();
            abstractComponentCallbacksC0187o.f1906t = new E();
        }
        this.f1785a.g(false);
        abstractComponentCallbacksC0187o.f1889a = -1;
        abstractComponentCallbacksC0187o.f1905s = null;
        abstractComponentCallbacksC0187o.f1907u = null;
        abstractComponentCallbacksC0187o.f1904r = null;
        if (!abstractComponentCallbacksC0187o.f1898l || abstractComponentCallbacksC0187o.f1903q > 0) {
            G g2 = (G) this.b.f215c;
            boolean z2 = true;
            if (g2.f1768c.containsKey(abstractComponentCallbacksC0187o.f1892e) && g2.f) {
                z2 = g2.f1771g;
            }
            if (!z2) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "initState called for fragment: " + abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1885L = new androidx.lifecycle.s(abstractComponentCallbacksC0187o);
        abstractComponentCallbacksC0187o.f1888O = new N.e(abstractComponentCallbacksC0187o);
        abstractComponentCallbacksC0187o.f1892e = UUID.randomUUID().toString();
        abstractComponentCallbacksC0187o.f1897k = false;
        abstractComponentCallbacksC0187o.f1898l = false;
        abstractComponentCallbacksC0187o.f1899m = false;
        abstractComponentCallbacksC0187o.f1900n = false;
        abstractComponentCallbacksC0187o.f1901o = false;
        abstractComponentCallbacksC0187o.f1903q = 0;
        abstractComponentCallbacksC0187o.f1904r = null;
        abstractComponentCallbacksC0187o.f1906t = new E();
        abstractComponentCallbacksC0187o.f1905s = null;
        abstractComponentCallbacksC0187o.f1908v = 0;
        abstractComponentCallbacksC0187o.f1909w = 0;
        abstractComponentCallbacksC0187o.f1910x = null;
        abstractComponentCallbacksC0187o.f1911y = false;
        abstractComponentCallbacksC0187o.f1912z = false;
    }

    public final void j() {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (abstractComponentCallbacksC0187o.f1899m && abstractComponentCallbacksC0187o.f1900n && !abstractComponentCallbacksC0187o.f1902p) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0187o);
            }
            abstractComponentCallbacksC0187o.v(abstractComponentCallbacksC0187o.q(abstractComponentCallbacksC0187o.b), null, abstractComponentCallbacksC0187o.b);
            View view = abstractComponentCallbacksC0187o.f1878E;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                abstractComponentCallbacksC0187o.f1878E.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0187o);
                if (abstractComponentCallbacksC0187o.f1911y) {
                    abstractComponentCallbacksC0187o.f1878E.setVisibility(8);
                }
                abstractComponentCallbacksC0187o.f1906t.s(2);
                this.f1785a.o(false);
                abstractComponentCallbacksC0187o.f1889a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z2 = this.f1787d;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (z2) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + abstractComponentCallbacksC0187o);
                return;
            }
            return;
        }
        try {
            this.f1787d = true;
            while (true) {
                int iD = d();
                int i2 = abstractComponentCallbacksC0187o.f1889a;
                if (iD == i2) {
                    if (abstractComponentCallbacksC0187o.f1882I) {
                        if (abstractComponentCallbacksC0187o.f1878E != null && (viewGroup = abstractComponentCallbacksC0187o.f1877D) != null) {
                            C0180h c0180hF = C0180h.f(viewGroup, abstractComponentCallbacksC0187o.j().B());
                            if (abstractComponentCallbacksC0187o.f1911y) {
                                c0180hF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + abstractComponentCallbacksC0187o);
                                }
                                c0180hF.a(3, 1, this);
                            } else {
                                c0180hF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + abstractComponentCallbacksC0187o);
                                }
                                c0180hF.a(2, 1, this);
                            }
                        }
                        E e2 = abstractComponentCallbacksC0187o.f1904r;
                        if (e2 != null && abstractComponentCallbacksC0187o.f1897k && E.D(abstractComponentCallbacksC0187o)) {
                            e2.f1758x = true;
                        }
                        abstractComponentCallbacksC0187o.f1882I = false;
                    }
                    return;
                }
                if (iD <= i2) {
                    switch (i2 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            abstractComponentCallbacksC0187o.f1889a = 1;
                            break;
                        case 2:
                            abstractComponentCallbacksC0187o.f1900n = false;
                            abstractComponentCallbacksC0187o.f1889a = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + abstractComponentCallbacksC0187o);
                            }
                            if (abstractComponentCallbacksC0187o.f1878E != null && abstractComponentCallbacksC0187o.f1890c == null) {
                                o();
                            }
                            if (abstractComponentCallbacksC0187o.f1878E != null && (viewGroup3 = abstractComponentCallbacksC0187o.f1877D) != null) {
                                C0180h c0180hF2 = C0180h.f(viewGroup3, abstractComponentCallbacksC0187o.j().B());
                                c0180hF2.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + abstractComponentCallbacksC0187o);
                                }
                                c0180hF2.a(1, 3, this);
                            }
                            abstractComponentCallbacksC0187o.f1889a = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            abstractComponentCallbacksC0187o.f1889a = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i2 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (abstractComponentCallbacksC0187o.f1878E != null && (viewGroup2 = abstractComponentCallbacksC0187o.f1877D) != null) {
                                C0180h c0180hF3 = C0180h.f(viewGroup2, abstractComponentCallbacksC0187o.j().B());
                                int iB = Q.b(abstractComponentCallbacksC0187o.f1878E.getVisibility());
                                c0180hF3.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + abstractComponentCallbacksC0187o);
                                }
                                c0180hF3.a(iB, 2, this);
                            }
                            abstractComponentCallbacksC0187o.f1889a = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            abstractComponentCallbacksC0187o.f1889a = 6;
                            break;
                        case PlaybackState.STATE_ERROR /* 7 */:
                            n();
                            break;
                    }
                }
            }
        } finally {
            this.f1787d = false;
        }
    }

    public final void l() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom RESUMED: " + abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1906t.s(5);
        if (abstractComponentCallbacksC0187o.f1878E != null) {
            abstractComponentCallbacksC0187o.f1886M.e(androidx.lifecycle.k.ON_PAUSE);
        }
        abstractComponentCallbacksC0187o.f1885L.d(androidx.lifecycle.k.ON_PAUSE);
        abstractComponentCallbacksC0187o.f1889a = 6;
        abstractComponentCallbacksC0187o.f1876C = true;
        this.f1785a.h(false);
    }

    public final void m(ClassLoader classLoader) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        Bundle bundle = abstractComponentCallbacksC0187o.b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        abstractComponentCallbacksC0187o.f1890c = abstractComponentCallbacksC0187o.b.getSparseParcelableArray("android:view_state");
        abstractComponentCallbacksC0187o.f1891d = abstractComponentCallbacksC0187o.b.getBundle("android:view_registry_state");
        String string = abstractComponentCallbacksC0187o.b.getString("android:target_state");
        abstractComponentCallbacksC0187o.f1894h = string;
        if (string != null) {
            abstractComponentCallbacksC0187o.f1895i = abstractComponentCallbacksC0187o.b.getInt("android:target_req_state", 0);
        }
        boolean z2 = abstractComponentCallbacksC0187o.b.getBoolean("android:user_visible_hint", true);
        abstractComponentCallbacksC0187o.f1880G = z2;
        if (z2) {
            return;
        }
        abstractComponentCallbacksC0187o.f1879F = true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public final void n() {
        boolean zRequestFocus;
        String str;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto RESUMED: " + abstractComponentCallbacksC0187o);
        }
        C0186n c0186n = abstractComponentCallbacksC0187o.f1881H;
        View view = c0186n == null ? null : c0186n.f1872k;
        if (view != null) {
            if (view == abstractComponentCallbacksC0187o.f1878E) {
                zRequestFocus = view.requestFocus();
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                    sb.append(view);
                    sb.append(" ");
                    if (zRequestFocus) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb.append(str);
                    sb.append(" on Fragment ");
                    sb.append(abstractComponentCallbacksC0187o);
                    sb.append(" resulting in focused view ");
                    sb.append(abstractComponentCallbacksC0187o.f1878E.findFocus());
                    Log.v("FragmentManager", sb.toString());
                }
            } else {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent != null) {
                        if (parent == abstractComponentCallbacksC0187o.f1878E) {
                            zRequestFocus = view.requestFocus();
                            if (Log.isLoggable("FragmentManager", 2)) {
                                StringBuilder sb2 = new StringBuilder("requestFocus: Restoring focused view ");
                                sb2.append(view);
                                sb2.append(" ");
                                if (zRequestFocus) {
                                    str = "succeeded";
                                } else {
                                    str = "failed";
                                }
                                sb2.append(str);
                                sb2.append(" on Fragment ");
                                sb2.append(abstractComponentCallbacksC0187o);
                                sb2.append(" resulting in focused view ");
                                sb2.append(abstractComponentCallbacksC0187o.f1878E.findFocus());
                                Log.v("FragmentManager", sb2.toString());
                            }
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
            }
        }
        abstractComponentCallbacksC0187o.f().f1872k = null;
        abstractComponentCallbacksC0187o.f1906t.H();
        abstractComponentCallbacksC0187o.f1906t.w(true);
        abstractComponentCallbacksC0187o.f1889a = 7;
        abstractComponentCallbacksC0187o.f1876C = true;
        androidx.lifecycle.s sVar = abstractComponentCallbacksC0187o.f1885L;
        androidx.lifecycle.k kVar = androidx.lifecycle.k.ON_RESUME;
        sVar.d(kVar);
        if (abstractComponentCallbacksC0187o.f1878E != null) {
            abstractComponentCallbacksC0187o.f1886M.e(kVar);
        }
        E e2 = abstractComponentCallbacksC0187o.f1906t;
        e2.f1759y = false;
        e2.f1760z = false;
        e2.f1735F.f1772h = false;
        e2.s(7);
        this.f1785a.k(false);
        abstractComponentCallbacksC0187o.b = null;
        abstractComponentCallbacksC0187o.f1890c = null;
        abstractComponentCallbacksC0187o.f1891d = null;
    }

    public final void o() {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (abstractComponentCallbacksC0187o.f1878E == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        abstractComponentCallbacksC0187o.f1878E.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            abstractComponentCallbacksC0187o.f1890c = sparseArray;
        }
        Bundle bundle = new Bundle();
        abstractComponentCallbacksC0187o.f1886M.f1796c.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        abstractComponentCallbacksC0187o.f1891d = bundle;
    }

    public final void p() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto STARTED: " + abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1906t.H();
        abstractComponentCallbacksC0187o.f1906t.w(true);
        abstractComponentCallbacksC0187o.f1889a = 5;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.s();
        if (!abstractComponentCallbacksC0187o.f1876C) {
            throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onStart()");
        }
        androidx.lifecycle.s sVar = abstractComponentCallbacksC0187o.f1885L;
        androidx.lifecycle.k kVar = androidx.lifecycle.k.ON_START;
        sVar.d(kVar);
        if (abstractComponentCallbacksC0187o.f1878E != null) {
            abstractComponentCallbacksC0187o.f1886M.e(kVar);
        }
        E e2 = abstractComponentCallbacksC0187o.f1906t;
        e2.f1759y = false;
        e2.f1760z = false;
        e2.f1735F.f1772h = false;
        e2.s(5);
        this.f1785a.m(false);
    }

    public final void q() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1786c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom STARTED: " + abstractComponentCallbacksC0187o);
        }
        E e2 = abstractComponentCallbacksC0187o.f1906t;
        e2.f1760z = true;
        e2.f1735F.f1772h = true;
        e2.s(4);
        if (abstractComponentCallbacksC0187o.f1878E != null) {
            abstractComponentCallbacksC0187o.f1886M.e(androidx.lifecycle.k.ON_STOP);
        }
        abstractComponentCallbacksC0187o.f1885L.d(androidx.lifecycle.k.ON_STOP);
        abstractComponentCallbacksC0187o.f1889a = 4;
        abstractComponentCallbacksC0187o.f1876C = false;
        abstractComponentCallbacksC0187o.t();
        if (abstractComponentCallbacksC0187o.f1876C) {
            this.f1785a.n(false);
            return;
        }
        throw new S("Fragment " + abstractComponentCallbacksC0187o + " did not call through to super.onStop()");
    }

    public K(G.a aVar, C0003d c0003d, ClassLoader classLoader, y yVar, I i2) {
        this.f1785a = aVar;
        this.b = c0003d;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oA = yVar.a(i2.f1773a);
        this.f1786c = abstractComponentCallbacksC0187oA;
        Bundle bundle = i2.f1780j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        abstractComponentCallbacksC0187oA.z(bundle);
        abstractComponentCallbacksC0187oA.f1892e = i2.b;
        abstractComponentCallbacksC0187oA.f1899m = i2.f1774c;
        abstractComponentCallbacksC0187oA.f1901o = true;
        abstractComponentCallbacksC0187oA.f1908v = i2.f1775d;
        abstractComponentCallbacksC0187oA.f1909w = i2.f1776e;
        abstractComponentCallbacksC0187oA.f1910x = i2.f;
        abstractComponentCallbacksC0187oA.f1874A = i2.f1777g;
        abstractComponentCallbacksC0187oA.f1898l = i2.f1778h;
        abstractComponentCallbacksC0187oA.f1912z = i2.f1779i;
        abstractComponentCallbacksC0187oA.f1911y = i2.f1781k;
        abstractComponentCallbacksC0187oA.f1884K = androidx.lifecycle.l.values()[i2.f1782l];
        Bundle bundle2 = i2.f1783m;
        if (bundle2 != null) {
            abstractComponentCallbacksC0187oA.b = bundle2;
        } else {
            abstractComponentCallbacksC0187oA.b = new Bundle();
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + abstractComponentCallbacksC0187oA);
        }
    }

    public K(G.a aVar, C0003d c0003d, AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o, I i2) {
        this.f1785a = aVar;
        this.b = c0003d;
        this.f1786c = abstractComponentCallbacksC0187o;
        abstractComponentCallbacksC0187o.f1890c = null;
        abstractComponentCallbacksC0187o.f1891d = null;
        abstractComponentCallbacksC0187o.f1903q = 0;
        abstractComponentCallbacksC0187o.f1900n = false;
        abstractComponentCallbacksC0187o.f1897k = false;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = abstractComponentCallbacksC0187o.f1893g;
        abstractComponentCallbacksC0187o.f1894h = abstractComponentCallbacksC0187o2 != null ? abstractComponentCallbacksC0187o2.f1892e : null;
        abstractComponentCallbacksC0187o.f1893g = null;
        Bundle bundle = i2.f1783m;
        if (bundle != null) {
            abstractComponentCallbacksC0187o.b = bundle;
        } else {
            abstractComponentCallbacksC0187o.b = new Bundle();
        }
    }
}
