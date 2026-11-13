package androidx.fragment.app;

import M.C0003d;
import M.d0;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f1730A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f1731B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ArrayList f1732C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ArrayList f1733D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public ArrayList f1734E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public G f1735F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final B.b f1736G;
    public boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f1739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f1740e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.activity.m f1741g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final G.a f1745k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f1746l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1747m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public r f1748n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public A.b f1749o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AbstractComponentCallbacksC0187o f1750p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AbstractComponentCallbacksC0187o f1751q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final y f1752r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final p025p0.e f1753s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public G.a f1754t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public G.a f1755u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public G.a f1756v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ArrayDeque f1757w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1758x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1759y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1760z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1737a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0003d f1738c = new C0003d();
    public final v f = new v(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x f1742h = new x(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f1743i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f1744j = Collections.synchronizedMap(new HashMap());

    public E() {
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        new p025p0.e(this);
        this.f1745k = new G.a(this);
        this.f1746l = new CopyOnWriteArrayList();
        this.f1747m = -1;
        this.f1752r = new y(this);
        this.f1753s = new p025p0.e();
        this.f1757w = new ArrayDeque();
        this.f1736G = new B.b(this, 16);
    }

    public static boolean D(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        abstractComponentCallbacksC0187o.getClass();
        C0003d c0003d = abstractComponentCallbacksC0187o.f1906t.f1738c;
        c0003d.getClass();
        ArrayList<AbstractComponentCallbacksC0187o> arrayList = new ArrayList();
        for (K k2 : ((HashMap) c0003d.b).values()) {
            if (k2 != null) {
                arrayList.add(k2.f1786c);
            } else {
                arrayList.add(null);
            }
        }
        boolean zD = false;
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 : arrayList) {
            if (abstractComponentCallbacksC0187o2 != null) {
                zD = D(abstractComponentCallbacksC0187o2);
            }
            if (zD) {
                return true;
            }
        }
        return false;
    }

    public static boolean E(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (abstractComponentCallbacksC0187o == null) {
            return true;
        }
        return abstractComponentCallbacksC0187o.f1875B && (abstractComponentCallbacksC0187o.f1904r == null || E(abstractComponentCallbacksC0187o.f1907u));
    }

    public static boolean F(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (abstractComponentCallbacksC0187o == null) {
            return true;
        }
        E e2 = abstractComponentCallbacksC0187o.f1904r;
        return abstractComponentCallbacksC0187o.equals(e2.f1751q) && F(e2.f1750p);
    }

    public static void T(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + abstractComponentCallbacksC0187o);
        }
        if (abstractComponentCallbacksC0187o.f1911y) {
            abstractComponentCallbacksC0187o.f1911y = false;
            abstractComponentCallbacksC0187o.f1882I = !abstractComponentCallbacksC0187o.f1882I;
        }
    }

    public final y A() {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1750p;
        return abstractComponentCallbacksC0187o != null ? abstractComponentCallbacksC0187o.f1904r.A() : this.f1752r;
    }

    public final p025p0.e B() {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1750p;
        return abstractComponentCallbacksC0187o != null ? abstractComponentCallbacksC0187o.f1904r.B() : this.f1753s;
    }

    public final void C(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + abstractComponentCallbacksC0187o);
        }
        if (abstractComponentCallbacksC0187o.f1911y) {
            return;
        }
        abstractComponentCallbacksC0187o.f1911y = true;
        abstractComponentCallbacksC0187o.f1882I = true ^ abstractComponentCallbacksC0187o.f1882I;
        S(abstractComponentCallbacksC0187o);
    }

    public final void G(int i2, boolean z2) {
        HashMap map;
        r rVar;
        if (this.f1748n == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z2 || i2 != this.f1747m) {
            this.f1747m = i2;
            C0003d c0003d = this.f1738c;
            Iterator it = ((ArrayList) c0003d.f216d).iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                map = (HashMap) c0003d.b;
                if (!zHasNext) {
                    break;
                }
                K k2 = (K) map.get(((AbstractComponentCallbacksC0187o) it.next()).f1892e);
                if (k2 != null) {
                    k2.k();
                }
            }
            for (K k3 : map.values()) {
                if (k3 != null) {
                    k3.k();
                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k3.f1786c;
                    if (abstractComponentCallbacksC0187o.f1898l && abstractComponentCallbacksC0187o.f1903q <= 0) {
                        c0003d.u(k3);
                    }
                }
            }
            U();
            if (this.f1758x && (rVar = this.f1748n) != null && this.f1747m == 7) {
                rVar.f1918g.i().f();
                this.f1758x = false;
            }
        }
    }

    public final void H() {
        if (this.f1748n == null) {
            return;
        }
        this.f1759y = false;
        this.f1760z = false;
        this.f1735F.f1772h = false;
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                abstractComponentCallbacksC0187o.f1906t.H();
            }
        }
    }

    public final boolean I() {
        w(false);
        v(true);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1751q;
        if (abstractComponentCallbacksC0187o != null && abstractComponentCallbacksC0187o.g().I()) {
            return true;
        }
        boolean zJ = J(this.f1732C, this.f1733D, -1, 0);
        if (zJ) {
            this.b = true;
            try {
                L(this.f1732C, this.f1733D);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        V();
        if (this.f1731B) {
            this.f1731B = false;
            U();
        }
        ((HashMap) this.f1738c.b).values().removeAll(Collections.singleton(null));
        return zJ;
    }

    public final boolean J(ArrayList arrayList, ArrayList arrayList2, int i2, int i3) {
        int size;
        C0173a c0173a;
        ArrayList arrayList3 = this.f1739d;
        if (arrayList3 == null) {
            return false;
        }
        if (i2 >= 0 || (i3 & 1) != 0) {
            if (i2 >= 0) {
                size = arrayList3.size() - 1;
                while (size >= 0) {
                    C0173a c0173a2 = (C0173a) this.f1739d.get(size);
                    if (i2 >= 0 && i2 == c0173a2.f1821r) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    do {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        c0173a = (C0173a) this.f1739d.get(size);
                        if (i2 < 0) {
                            break;
                        }
                    } while (i2 == c0173a.f1821r);
                }
            } else {
                size = -1;
            }
            if (size == this.f1739d.size() - 1) {
                return false;
            }
            for (int size2 = this.f1739d.size() - 1; size2 > size; size2--) {
                arrayList.add(this.f1739d.remove(size2));
                arrayList2.add(Boolean.TRUE);
            }
        } else {
            int size3 = arrayList3.size() - 1;
            if (size3 < 0) {
                return false;
            }
            arrayList.add(this.f1739d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void K(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + abstractComponentCallbacksC0187o + " nesting=" + abstractComponentCallbacksC0187o.f1903q);
        }
        boolean z2 = abstractComponentCallbacksC0187o.f1903q > 0;
        if (abstractComponentCallbacksC0187o.f1912z && z2) {
            return;
        }
        C0003d c0003d = this.f1738c;
        synchronized (((ArrayList) c0003d.f216d)) {
            ((ArrayList) c0003d.f216d).remove(abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1897k = false;
        if (D(abstractComponentCallbacksC0187o)) {
            this.f1758x = true;
        }
        abstractComponentCallbacksC0187o.f1898l = true;
        S(abstractComponentCallbacksC0187o);
    }

    public final void L(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!((C0173a) arrayList.get(i2)).f1818o) {
                if (i3 != i2) {
                    x(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i3 < size && ((Boolean) arrayList2.get(i3)).booleanValue() && !((C0173a) arrayList.get(i3)).f1818o) {
                        i3++;
                    }
                }
                x(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            x(arrayList, arrayList2, i3, size);
        }
    }

    public final void M(Parcelable parcelable) {
        int i2;
        G.a aVar;
        int i3;
        K k2;
        if (parcelable == null) {
            return;
        }
        F f = (F) parcelable;
        if (f.f1761a == null) {
            return;
        }
        C0003d c0003d = this.f1738c;
        ((HashMap) c0003d.b).clear();
        Iterator it = f.f1761a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            i2 = 2;
            aVar = this.f1745k;
            if (!zHasNext) {
                break;
            }
            I i4 = (I) it.next();
            if (i4 != null) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = (AbstractComponentCallbacksC0187o) this.f1735F.f1768c.get(i4.b);
                if (abstractComponentCallbacksC0187o != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + abstractComponentCallbacksC0187o);
                    }
                    k2 = new K(aVar, c0003d, abstractComponentCallbacksC0187o, i4);
                } else {
                    k2 = new K(this.f1745k, this.f1738c, this.f1748n.f1916d.getClassLoader(), A(), i4);
                }
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = k2.f1786c;
                abstractComponentCallbacksC0187o2.f1904r = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + abstractComponentCallbacksC0187o2.f1892e + "): " + abstractComponentCallbacksC0187o2);
                }
                k2.m(this.f1748n.f1916d.getClassLoader());
                c0003d.t(k2);
                k2.f1788e = this.f1747m;
            }
        }
        G g2 = this.f1735F;
        g2.getClass();
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 : new ArrayList(g2.f1768c.values())) {
            if (!(((HashMap) c0003d.b).get(abstractComponentCallbacksC0187o3.f1892e) != null)) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + abstractComponentCallbacksC0187o3 + " that was not found in the set of active Fragments " + f.f1761a);
                }
                this.f1735F.b(abstractComponentCallbacksC0187o3);
                abstractComponentCallbacksC0187o3.f1904r = this;
                K k3 = new K(aVar, c0003d, abstractComponentCallbacksC0187o3);
                k3.f1788e = 1;
                k3.k();
                abstractComponentCallbacksC0187o3.f1898l = true;
                k3.k();
            }
        }
        ArrayList<String> arrayList = f.b;
        ((ArrayList) c0003d.f216d).clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oE = c0003d.e(str);
                if (abstractComponentCallbacksC0187oE == null) {
                    throw new IllegalStateException(d0.f("No instantiated fragment for (", str, ")"));
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + abstractComponentCallbacksC0187oE);
                }
                c0003d.a(abstractComponentCallbacksC0187oE);
            }
        }
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o4 = null;
        if (f.f1762c != null) {
            this.f1739d = new ArrayList(f.f1762c.length);
            int i5 = 0;
            while (true) {
                C0174b[] c0174bArr = f.f1762c;
                if (i5 >= c0174bArr.length) {
                    break;
                }
                C0174b c0174b = c0174bArr[i5];
                c0174b.getClass();
                C0173a c0173a = new C0173a(this);
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    int[] iArr = c0174b.f1822a;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    L l2 = new L();
                    int i8 = i6 + 1;
                    l2.f1789a = iArr[i6];
                    if (Log.isLoggable("FragmentManager", i2)) {
                        Log.v("FragmentManager", "Instantiate " + c0173a + " op #" + i7 + " base fragment #" + iArr[i8]);
                    }
                    String str2 = (String) c0174b.b.get(i7);
                    if (str2 != null) {
                        l2.b = c0003d.e(str2);
                    } else {
                        l2.b = abstractComponentCallbacksC0187o4;
                    }
                    l2.f1793g = androidx.lifecycle.l.values()[c0174b.f1823c[i7]];
                    l2.f1794h = androidx.lifecycle.l.values()[c0174b.f1824d[i7]];
                    int i9 = iArr[i8];
                    l2.f1790c = i9;
                    int i10 = iArr[i6 + 2];
                    l2.f1791d = i10;
                    int i11 = i6 + 4;
                    int i12 = iArr[i6 + 3];
                    l2.f1792e = i12;
                    i6 += 5;
                    int i13 = iArr[i11];
                    l2.f = i13;
                    c0173a.b = i9;
                    c0173a.f1807c = i10;
                    c0173a.f1808d = i12;
                    c0173a.f1809e = i13;
                    c0173a.b(l2);
                    i7++;
                    abstractComponentCallbacksC0187o4 = null;
                    i2 = 2;
                }
                c0173a.f = c0174b.f1825e;
                c0173a.f1811h = c0174b.f;
                c0173a.f1821r = c0174b.f1826g;
                c0173a.f1810g = true;
                c0173a.f1812i = c0174b.f1827h;
                c0173a.f1813j = c0174b.f1828i;
                c0173a.f1814k = c0174b.f1829j;
                c0173a.f1815l = c0174b.f1830k;
                c0173a.f1816m = c0174b.f1831l;
                c0173a.f1817n = c0174b.f1832m;
                c0173a.f1818o = c0174b.f1833n;
                c0173a.c(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sbH = d0.h("restoreAllState: back stack #", i5, " (index ");
                    sbH.append(c0173a.f1821r);
                    sbH.append("): ");
                    sbH.append(c0173a);
                    Log.v("FragmentManager", sbH.toString());
                    PrintWriter printWriter = new PrintWriter(new N());
                    c0173a.d("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1739d.add(c0173a);
                i5++;
                i2 = 2;
                abstractComponentCallbacksC0187o4 = null;
            }
            i3 = 0;
        } else {
            i3 = 0;
            this.f1739d = null;
        }
        this.f1743i.set(f.f1763d);
        String str3 = f.f1764e;
        if (str3 != null) {
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oE2 = c0003d.e(str3);
            this.f1751q = abstractComponentCallbacksC0187oE2;
            p(abstractComponentCallbacksC0187oE2);
        }
        ArrayList arrayList2 = f.f;
        if (arrayList2 != null) {
            while (i3 < arrayList2.size()) {
                Bundle bundle = (Bundle) f.f1765g.get(i3);
                bundle.setClassLoader(this.f1748n.f1916d.getClassLoader());
                this.f1744j.put(arrayList2.get(i3), bundle);
                i3++;
            }
        }
        this.f1757w = new ArrayDeque(f.f1766h);
    }

    public final F N() {
        int i2;
        ArrayList arrayList;
        C0174b[] c0174bArr;
        int size;
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C0180h c0180h = (C0180h) it.next();
            if (c0180h.f1847e) {
                c0180h.f1847e = false;
                c0180h.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((C0180h) it2.next()).e();
        }
        w(true);
        this.f1759y = true;
        this.f1735F.f1772h = true;
        C0003d c0003d = this.f1738c;
        c0003d.getClass();
        HashMap map = (HashMap) c0003d.b;
        ArrayList arrayList2 = new ArrayList(map.size());
        Iterator it3 = map.values().iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            K k2 = (K) it3.next();
            if (k2 != null) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
                I i3 = new I(abstractComponentCallbacksC0187o);
                if (abstractComponentCallbacksC0187o.f1889a <= -1 || i3.f1783m != null) {
                    i3.f1783m = abstractComponentCallbacksC0187o.b;
                } else {
                    Bundle bundle = new Bundle();
                    abstractComponentCallbacksC0187o.r(bundle);
                    abstractComponentCallbacksC0187o.f1888O.c(bundle);
                    F fN = abstractComponentCallbacksC0187o.f1906t.N();
                    if (fN != null) {
                        bundle.putParcelable("android:support:fragments", fN);
                    }
                    k2.f1785a.l(false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (abstractComponentCallbacksC0187o.f1878E != null) {
                        k2.o();
                    }
                    if (abstractComponentCallbacksC0187o.f1890c != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", abstractComponentCallbacksC0187o.f1890c);
                    }
                    if (abstractComponentCallbacksC0187o.f1891d != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", abstractComponentCallbacksC0187o.f1891d);
                    }
                    if (!abstractComponentCallbacksC0187o.f1880G) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", abstractComponentCallbacksC0187o.f1880G);
                    }
                    i3.f1783m = bundle2;
                    if (abstractComponentCallbacksC0187o.f1894h != null) {
                        if (bundle2 == null) {
                            i3.f1783m = new Bundle();
                        }
                        i3.f1783m.putString("android:target_state", abstractComponentCallbacksC0187o.f1894h);
                        int i4 = abstractComponentCallbacksC0187o.f1895i;
                        if (i4 != 0) {
                            i3.f1783m.putInt("android:target_req_state", i4);
                        }
                    }
                }
                arrayList2.add(i3);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + abstractComponentCallbacksC0187o + ": " + i3.f1783m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        C0003d c0003d2 = this.f1738c;
        synchronized (((ArrayList) c0003d2.f216d)) {
            try {
                if (((ArrayList) c0003d2.f216d).isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(((ArrayList) c0003d2.f216d).size());
                    for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 : (ArrayList) c0003d2.f216d) {
                        arrayList.add(abstractComponentCallbacksC0187o2.f1892e);
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + abstractComponentCallbacksC0187o2.f1892e + "): " + abstractComponentCallbacksC0187o2);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList3 = this.f1739d;
        if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
            c0174bArr = null;
        } else {
            c0174bArr = new C0174b[size];
            for (i2 = 0; i2 < size; i2++) {
                c0174bArr[i2] = new C0174b((C0173a) this.f1739d.get(i2));
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sbH = d0.h("saveAllState: adding back stack #", i2, ": ");
                    sbH.append(this.f1739d.get(i2));
                    Log.v("FragmentManager", sbH.toString());
                }
            }
        }
        F f = new F();
        f.f1764e = null;
        ArrayList arrayList4 = new ArrayList();
        f.f = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        f.f1765g = arrayList5;
        f.f1761a = arrayList2;
        f.b = arrayList;
        f.f1762c = c0174bArr;
        f.f1763d = this.f1743i.get();
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 = this.f1751q;
        if (abstractComponentCallbacksC0187o3 != null) {
            f.f1764e = abstractComponentCallbacksC0187o3.f1892e;
        }
        arrayList4.addAll(this.f1744j.keySet());
        arrayList5.addAll(this.f1744j.values());
        f.f1766h = new ArrayList(this.f1757w);
        return f;
    }

    public final void O() {
        synchronized (this.f1737a) {
            try {
                if (this.f1737a.size() == 1) {
                    this.f1748n.f1917e.removeCallbacks(this.f1736G);
                    this.f1748n.f1917e.post(this.f1736G);
                    V();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void P(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o, boolean z2) {
        ViewGroup viewGroupZ = z(abstractComponentCallbacksC0187o);
        if (viewGroupZ == null || !(viewGroupZ instanceof t)) {
            return;
        }
        ((t) viewGroupZ).setDrawDisappearingViewsLast(!z2);
    }

    public final void Q(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o, androidx.lifecycle.l lVar) {
        if (abstractComponentCallbacksC0187o.equals(this.f1738c.e(abstractComponentCallbacksC0187o.f1892e)) && (abstractComponentCallbacksC0187o.f1905s == null || abstractComponentCallbacksC0187o.f1904r == this)) {
            abstractComponentCallbacksC0187o.f1884K = lVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0187o + " is not an active fragment of FragmentManager " + this);
    }

    public final void R(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (abstractComponentCallbacksC0187o != null) {
            if (!abstractComponentCallbacksC0187o.equals(this.f1738c.e(abstractComponentCallbacksC0187o.f1892e)) || (abstractComponentCallbacksC0187o.f1905s != null && abstractComponentCallbacksC0187o.f1904r != this)) {
                throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0187o + " is not an active fragment of FragmentManager " + this);
            }
        }
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = this.f1751q;
        this.f1751q = abstractComponentCallbacksC0187o;
        p(abstractComponentCallbacksC0187o2);
        p(this.f1751q);
    }

    public final void S(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        ViewGroup viewGroupZ = z(abstractComponentCallbacksC0187o);
        if (viewGroupZ != null) {
            C0186n c0186n = abstractComponentCallbacksC0187o.f1881H;
            if ((c0186n == null ? 0 : c0186n.f1867e) + (c0186n == null ? 0 : c0186n.f1866d) + (c0186n == null ? 0 : c0186n.f1865c) + (c0186n == null ? 0 : c0186n.b) > 0) {
                if (viewGroupZ.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupZ.setTag(R.id.visible_removing_fragment_view_tag, abstractComponentCallbacksC0187o);
                }
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = (AbstractComponentCallbacksC0187o) viewGroupZ.getTag(R.id.visible_removing_fragment_view_tag);
                C0186n c0186n2 = abstractComponentCallbacksC0187o.f1881H;
                boolean z2 = c0186n2 != null ? c0186n2.f1864a : false;
                if (abstractComponentCallbacksC0187o2.f1881H == null) {
                    return;
                }
                abstractComponentCallbacksC0187o2.f().f1864a = z2;
            }
        }
    }

    public final void U() {
        for (K k2 : this.f1738c.g()) {
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
            if (abstractComponentCallbacksC0187o.f1879F) {
                if (this.b) {
                    this.f1731B = true;
                } else {
                    abstractComponentCallbacksC0187o.f1879F = false;
                    k2.k();
                }
            }
        }
    }

    public final void V() {
        synchronized (this.f1737a) {
            try {
                if (!this.f1737a.isEmpty()) {
                    x xVar = this.f1742h;
                    xVar.f1929a = true;
                    androidx.activity.i iVar = xVar.f1930c;
                    if (iVar != null) {
                        iVar.a(Boolean.TRUE);
                    }
                    return;
                }
                x xVar2 = this.f1742h;
                ArrayList arrayList = this.f1739d;
                boolean z2 = (arrayList != null ? arrayList.size() : 0) > 0 && F(this.f1750p);
                xVar2.f1929a = z2;
                androidx.activity.i iVar2 = xVar2.f1930c;
                if (iVar2 != null) {
                    iVar2.a(Boolean.valueOf(z2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final K a(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + abstractComponentCallbacksC0187o);
        }
        K kF = f(abstractComponentCallbacksC0187o);
        abstractComponentCallbacksC0187o.f1904r = this;
        C0003d c0003d = this.f1738c;
        c0003d.t(kF);
        if (!abstractComponentCallbacksC0187o.f1912z) {
            c0003d.a(abstractComponentCallbacksC0187o);
            abstractComponentCallbacksC0187o.f1898l = false;
            if (abstractComponentCallbacksC0187o.f1878E == null) {
                abstractComponentCallbacksC0187o.f1882I = false;
            }
            if (D(abstractComponentCallbacksC0187o)) {
                this.f1758x = true;
            }
        }
        return kF;
    }

    public final void b(r rVar, A.b bVar, AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        G g2;
        if (this.f1748n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f1748n = rVar;
        this.f1749o = bVar;
        this.f1750p = abstractComponentCallbacksC0187o;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f1746l;
        if (abstractComponentCallbacksC0187o != null) {
            copyOnWriteArrayList.add(new z(abstractComponentCallbacksC0187o));
        } else if (rVar != null) {
            copyOnWriteArrayList.add(rVar);
        }
        if (this.f1750p != null) {
            V();
        }
        if (rVar != null) {
            androidx.activity.m mVar = rVar.f1918g.f1422g;
            this.f1741g = mVar;
            mVar.a(abstractComponentCallbacksC0187o != null ? abstractComponentCallbacksC0187o : rVar, this.f1742h);
        }
        if (abstractComponentCallbacksC0187o != null) {
            G g3 = abstractComponentCallbacksC0187o.f1904r.f1735F;
            HashMap map = g3.f1769d;
            G g4 = (G) map.get(abstractComponentCallbacksC0187o.f1892e);
            if (g4 == null) {
                g4 = new G(g3.f);
                map.put(abstractComponentCallbacksC0187o.f1892e, g4);
            }
            this.f1735F = g4;
        } else if (rVar != null) {
            androidx.lifecycle.I iC = rVar.f1918g.c();
            I0.f.e(iC, "store");
            J.a aVar = J.a.b;
            I0.f.e(aVar, "defaultCreationExtras");
            String canonicalName = G.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            I0.f.e(strConcat, "key");
            HashMap map2 = iC.f1947a;
            androidx.lifecycle.G g5 = (androidx.lifecycle.G) map2.get(strConcat);
            if (!G.class.isInstance(g5)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(aVar.f127a);
                linkedHashMap.put(androidx.lifecycle.H.b, strConcat);
                try {
                    g2 = new G(true);
                } catch (AbstractMethodError unused) {
                    g2 = new G(true);
                }
                g5 = g2;
                androidx.lifecycle.G g6 = (androidx.lifecycle.G) map2.put(strConcat, g5);
                if (g6 != null) {
                    g6.a();
                }
            } else if (g5 == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
            this.f1735F = (G) g5;
        } else {
            this.f1735F = new G(false);
        }
        G g7 = this.f1735F;
        g7.f1772h = this.f1759y || this.f1760z;
        this.f1738c.f215c = g7;
        r rVar2 = this.f1748n;
        if (rVar2 != null) {
            AbstractActivityC0210j abstractActivityC0210j = rVar2.f1918g;
            String strE = d0.e("FragmentManager:", abstractComponentCallbacksC0187o != null ? d0.g(new StringBuilder(), abstractComponentCallbacksC0187o.f1892e, ":") : "");
            String strD = Q.d(strE, "StartActivityForResult");
            A a2 = new A(2);
            w wVar = new w(this, 2);
            androidx.activity.d dVar = abstractActivityC0210j.f1423h;
            this.f1754t = dVar.b(strD, a2, wVar);
            this.f1755u = dVar.b(Q.d(strE, "StartIntentSenderForResult"), new A(0), new w(this, 0));
            this.f1756v = dVar.b(Q.d(strE, "RequestPermissions"), new A(1), new w(this, 1));
        }
    }

    public final void c(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + abstractComponentCallbacksC0187o);
        }
        if (abstractComponentCallbacksC0187o.f1912z) {
            abstractComponentCallbacksC0187o.f1912z = false;
            if (abstractComponentCallbacksC0187o.f1897k) {
                return;
            }
            this.f1738c.a(abstractComponentCallbacksC0187o);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "add from attach: " + abstractComponentCallbacksC0187o);
            }
            if (D(abstractComponentCallbacksC0187o)) {
                this.f1758x = true;
            }
        }
    }

    public final void d() {
        this.b = false;
        this.f1733D.clear();
        this.f1732C.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f1738c.g().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((K) it.next()).f1786c.f1877D;
            if (viewGroup != null) {
                hashSet.add(C0180h.f(viewGroup, B()));
            }
        }
        return hashSet;
    }

    public final K f(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        String str = abstractComponentCallbacksC0187o.f1892e;
        C0003d c0003d = this.f1738c;
        K k2 = (K) ((HashMap) c0003d.b).get(str);
        if (k2 != null) {
            return k2;
        }
        K k3 = new K(this.f1745k, c0003d, abstractComponentCallbacksC0187o);
        k3.m(this.f1748n.f1916d.getClassLoader());
        k3.f1788e = this.f1747m;
        return k3;
    }

    public final void g(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + abstractComponentCallbacksC0187o);
        }
        if (abstractComponentCallbacksC0187o.f1912z) {
            return;
        }
        abstractComponentCallbacksC0187o.f1912z = true;
        if (abstractComponentCallbacksC0187o.f1897k) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "remove from detach: " + abstractComponentCallbacksC0187o);
            }
            C0003d c0003d = this.f1738c;
            synchronized (((ArrayList) c0003d.f216d)) {
                ((ArrayList) c0003d.f216d).remove(abstractComponentCallbacksC0187o);
            }
            abstractComponentCallbacksC0187o.f1897k = false;
            if (D(abstractComponentCallbacksC0187o)) {
                this.f1758x = true;
            }
            S(abstractComponentCallbacksC0187o);
        }
    }

    public final void h() {
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                abstractComponentCallbacksC0187o.f1876C = true;
                abstractComponentCallbacksC0187o.f1906t.h();
            }
        }
    }

    public final boolean i() {
        if (this.f1747m < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                if (!abstractComponentCallbacksC0187o.f1911y ? abstractComponentCallbacksC0187o.f1906t.i() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean j() {
        if (this.f1747m < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z2 = false;
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null && E(abstractComponentCallbacksC0187o)) {
                if (!abstractComponentCallbacksC0187o.f1911y ? abstractComponentCallbacksC0187o.f1906t.j() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(abstractComponentCallbacksC0187o);
                    z2 = true;
                }
            }
        }
        if (this.f1740e != null) {
            for (int i2 = 0; i2 < this.f1740e.size(); i2++) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = (AbstractComponentCallbacksC0187o) this.f1740e.get(i2);
                if (arrayList == null || !arrayList.contains(abstractComponentCallbacksC0187o2)) {
                    abstractComponentCallbacksC0187o2.getClass();
                }
            }
        }
        this.f1740e = arrayList;
        return z2;
    }

    public final void k() {
        Integer num;
        Integer num2;
        Integer num3;
        this.f1730A = true;
        w(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((C0180h) it.next()).e();
        }
        s(-1);
        this.f1748n = null;
        this.f1749o = null;
        this.f1750p = null;
        if (this.f1741g != null) {
            Iterator it2 = this.f1742h.b.iterator();
            while (it2.hasNext()) {
                ((androidx.activity.a) it2.next()).cancel();
            }
            this.f1741g = null;
        }
        G.a aVar = this.f1754t;
        if (aVar != null) {
            androidx.activity.d dVar = (androidx.activity.d) aVar.f93c;
            ArrayList arrayList = dVar.f1414e;
            String str = (String) aVar.b;
            if (!arrayList.contains(str) && (num3 = (Integer) dVar.f1412c.remove(str)) != null) {
                dVar.b.remove(num3);
            }
            dVar.f.remove(str);
            HashMap map = dVar.f1415g;
            if (map.containsKey(str)) {
                StringBuilder sbJ = d0.j("Dropping pending result for request ", str, ": ");
                sbJ.append(map.get(str));
                Log.w("ActivityResultRegistry", sbJ.toString());
                map.remove(str);
            }
            Bundle bundle = dVar.f1416h;
            if (bundle.containsKey(str)) {
                StringBuilder sbJ2 = d0.j("Dropping pending result for request ", str, ": ");
                sbJ2.append(bundle.getParcelable(str));
                Log.w("ActivityResultRegistry", sbJ2.toString());
                bundle.remove(str);
            }
            if (dVar.f1413d.get(str) != null) {
                throw new ClassCastException();
            }
            G.a aVar2 = this.f1755u;
            androidx.activity.d dVar2 = (androidx.activity.d) aVar2.f93c;
            ArrayList arrayList2 = dVar2.f1414e;
            String str2 = (String) aVar2.b;
            if (!arrayList2.contains(str2) && (num2 = (Integer) dVar2.f1412c.remove(str2)) != null) {
                dVar2.b.remove(num2);
            }
            dVar2.f.remove(str2);
            HashMap map2 = dVar2.f1415g;
            if (map2.containsKey(str2)) {
                StringBuilder sbJ3 = d0.j("Dropping pending result for request ", str2, ": ");
                sbJ3.append(map2.get(str2));
                Log.w("ActivityResultRegistry", sbJ3.toString());
                map2.remove(str2);
            }
            Bundle bundle2 = dVar2.f1416h;
            if (bundle2.containsKey(str2)) {
                StringBuilder sbJ4 = d0.j("Dropping pending result for request ", str2, ": ");
                sbJ4.append(bundle2.getParcelable(str2));
                Log.w("ActivityResultRegistry", sbJ4.toString());
                bundle2.remove(str2);
            }
            if (dVar2.f1413d.get(str2) != null) {
                throw new ClassCastException();
            }
            G.a aVar3 = this.f1756v;
            androidx.activity.d dVar3 = (androidx.activity.d) aVar3.f93c;
            ArrayList arrayList3 = dVar3.f1414e;
            String str3 = (String) aVar3.b;
            if (!arrayList3.contains(str3) && (num = (Integer) dVar3.f1412c.remove(str3)) != null) {
                dVar3.b.remove(num);
            }
            dVar3.f.remove(str3);
            HashMap map3 = dVar3.f1415g;
            if (map3.containsKey(str3)) {
                StringBuilder sbJ5 = d0.j("Dropping pending result for request ", str3, ": ");
                sbJ5.append(map3.get(str3));
                Log.w("ActivityResultRegistry", sbJ5.toString());
                map3.remove(str3);
            }
            Bundle bundle3 = dVar3.f1416h;
            if (bundle3.containsKey(str3)) {
                StringBuilder sbJ6 = d0.j("Dropping pending result for request ", str3, ": ");
                sbJ6.append(bundle3.getParcelable(str3));
                Log.w("ActivityResultRegistry", sbJ6.toString());
                bundle3.remove(str3);
            }
            if (dVar3.f1413d.get(str3) != null) {
                throw new ClassCastException();
            }
        }
    }

    public final void l() {
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                abstractComponentCallbacksC0187o.f1876C = true;
                abstractComponentCallbacksC0187o.f1906t.l();
            }
        }
    }

    public final void m(boolean z2) {
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                abstractComponentCallbacksC0187o.f1906t.m(z2);
            }
        }
    }

    public final boolean n() {
        if (this.f1747m < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                if (!abstractComponentCallbacksC0187o.f1911y ? abstractComponentCallbacksC0187o.f1906t.n() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void o() {
        if (this.f1747m < 1) {
            return;
        }
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null && !abstractComponentCallbacksC0187o.f1911y) {
                abstractComponentCallbacksC0187o.f1906t.o();
            }
        }
    }

    public final void p(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (abstractComponentCallbacksC0187o != null) {
            if (abstractComponentCallbacksC0187o.equals(this.f1738c.e(abstractComponentCallbacksC0187o.f1892e))) {
                abstractComponentCallbacksC0187o.f1904r.getClass();
                boolean zF = F(abstractComponentCallbacksC0187o);
                Boolean bool = abstractComponentCallbacksC0187o.f1896j;
                if (bool == null || bool.booleanValue() != zF) {
                    abstractComponentCallbacksC0187o.f1896j = Boolean.valueOf(zF);
                    E e2 = abstractComponentCallbacksC0187o.f1906t;
                    e2.V();
                    e2.p(e2.f1751q);
                }
            }
        }
    }

    public final void q(boolean z2) {
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                abstractComponentCallbacksC0187o.f1906t.q(z2);
            }
        }
    }

    public final boolean r() {
        if (this.f1747m < 1) {
            return false;
        }
        boolean z2 = false;
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : this.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null && E(abstractComponentCallbacksC0187o)) {
                if (!abstractComponentCallbacksC0187o.f1911y ? abstractComponentCallbacksC0187o.f1906t.r() : false) {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    public final void s(int i2) {
        try {
            this.b = true;
            for (K k2 : ((HashMap) this.f1738c.b).values()) {
                if (k2 != null) {
                    k2.f1788e = i2;
                }
            }
            G(i2, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((C0180h) it.next()).e();
            }
            this.b = false;
            w(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void t(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2;
        String strD = Q.d(str, "    ");
        C0003d c0003d = this.f1738c;
        c0003d.getClass();
        String str3 = str + "    ";
        HashMap map = (HashMap) c0003d.b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (K k2 : map.values()) {
                printWriter.print(str);
                if (k2 != null) {
                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
                    printWriter.println(abstractComponentCallbacksC0187o);
                    abstractComponentCallbacksC0187o.getClass();
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC0187o.f1908v));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC0187o.f1909w));
                    printWriter.print(" mTag=");
                    printWriter.println(abstractComponentCallbacksC0187o.f1910x);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1889a);
                    printWriter.print(" mWho=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1892e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(abstractComponentCallbacksC0187o.f1903q);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1897k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1898l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1899m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(abstractComponentCallbacksC0187o.f1900n);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1911y);
                    printWriter.print(" mDetached=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1912z);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1875B);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(abstractComponentCallbacksC0187o.f1874A);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(abstractComponentCallbacksC0187o.f1880G);
                    if (abstractComponentCallbacksC0187o.f1904r != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1904r);
                    }
                    if (abstractComponentCallbacksC0187o.f1905s != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1905s);
                    }
                    if (abstractComponentCallbacksC0187o.f1907u != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1907u);
                    }
                    if (abstractComponentCallbacksC0187o.f != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(abstractComponentCallbacksC0187o.f);
                    }
                    if (abstractComponentCallbacksC0187o.b != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(abstractComponentCallbacksC0187o.b);
                    }
                    if (abstractComponentCallbacksC0187o.f1890c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1890c);
                    }
                    if (abstractComponentCallbacksC0187o.f1891d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1891d);
                    }
                    Object objE = abstractComponentCallbacksC0187o.f1893g;
                    if (objE == null) {
                        E e2 = abstractComponentCallbacksC0187o.f1904r;
                        objE = (e2 == null || (str2 = abstractComponentCallbacksC0187o.f1894h) == null) ? null : e2.f1738c.e(str2);
                    }
                    if (objE != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(objE);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1895i);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    C0186n c0186n = abstractComponentCallbacksC0187o.f1881H;
                    printWriter.println(c0186n == null ? false : c0186n.f1864a);
                    C0186n c0186n2 = abstractComponentCallbacksC0187o.f1881H;
                    if ((c0186n2 == null ? 0 : c0186n2.b) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        C0186n c0186n3 = abstractComponentCallbacksC0187o.f1881H;
                        printWriter.println(c0186n3 == null ? 0 : c0186n3.b);
                    }
                    C0186n c0186n4 = abstractComponentCallbacksC0187o.f1881H;
                    if ((c0186n4 == null ? 0 : c0186n4.f1865c) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        C0186n c0186n5 = abstractComponentCallbacksC0187o.f1881H;
                        printWriter.println(c0186n5 == null ? 0 : c0186n5.f1865c);
                    }
                    C0186n c0186n6 = abstractComponentCallbacksC0187o.f1881H;
                    if ((c0186n6 == null ? 0 : c0186n6.f1866d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        C0186n c0186n7 = abstractComponentCallbacksC0187o.f1881H;
                        printWriter.println(c0186n7 == null ? 0 : c0186n7.f1866d);
                    }
                    C0186n c0186n8 = abstractComponentCallbacksC0187o.f1881H;
                    if ((c0186n8 == null ? 0 : c0186n8.f1867e) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        C0186n c0186n9 = abstractComponentCallbacksC0187o.f1881H;
                        printWriter.println(c0186n9 == null ? 0 : c0186n9.f1867e);
                    }
                    if (abstractComponentCallbacksC0187o.f1877D != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1877D);
                    }
                    if (abstractComponentCallbacksC0187o.f1878E != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(abstractComponentCallbacksC0187o.f1878E);
                    }
                    if (abstractComponentCallbacksC0187o.h() != null) {
                        new G.a(abstractComponentCallbacksC0187o, abstractComponentCallbacksC0187o.c()).q(str3, printWriter);
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + abstractComponentCallbacksC0187o.f1906t + ":");
                    abstractComponentCallbacksC0187o.f1906t.t(Q.d(str3, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = (ArrayList) c0003d.f216d;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size3; i2++) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = (AbstractComponentCallbacksC0187o) arrayList.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0187o2.toString());
            }
        }
        ArrayList arrayList2 = this.f1740e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 = (AbstractComponentCallbacksC0187o) this.f1740e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0187o3.toString());
            }
        }
        ArrayList arrayList3 = this.f1739d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size; i4++) {
                C0173a c0173a = (C0173a) this.f1739d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(c0173a.toString());
                c0173a.d(strD, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1743i.get());
        synchronized (this.f1737a) {
            try {
                int size4 = this.f1737a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        Object obj = (C) this.f1737a.get(i5);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1748n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1749o);
        if (this.f1750p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1750p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1747m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1759y);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1760z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1730A);
        if (this.f1758x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1758x);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            sb.append(abstractComponentCallbacksC0187o.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f1750p)));
            sb.append("}");
        } else {
            r rVar = this.f1748n;
            if (rVar != null) {
                sb.append(rVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f1748n)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(C c2, boolean z2) {
        if (!z2) {
            if (this.f1748n == null) {
                if (!this.f1730A) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.f1759y || this.f1760z) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f1737a) {
            try {
                if (this.f1748n == null) {
                    if (!z2) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f1737a.add(c2);
                    O();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(boolean z2) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f1748n == null) {
            if (!this.f1730A) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f1748n.f1917e.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z2 && (this.f1759y || this.f1760z)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f1732C == null) {
            this.f1732C = new ArrayList();
            this.f1733D = new ArrayList();
        }
        this.b = false;
    }

    public final boolean w(boolean z2) {
        boolean zA;
        v(z2);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.f1732C;
            ArrayList arrayList2 = this.f1733D;
            synchronized (this.f1737a) {
                try {
                    if (this.f1737a.isEmpty()) {
                        zA = false;
                    } else {
                        int size = this.f1737a.size();
                        zA = false;
                        for (int i2 = 0; i2 < size; i2++) {
                            zA |= ((C) this.f1737a.get(i2)).a(arrayList, arrayList2);
                        }
                        this.f1737a.clear();
                        this.f1748n.f1917e.removeCallbacks(this.f1736G);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!zA) {
                break;
            }
            z3 = true;
            this.b = true;
            try {
                L(this.f1732C, this.f1733D);
                d();
            } catch (Throwable th2) {
                d();
                throw th2;
            }
        }
        V();
        if (this.f1731B) {
            this.f1731B = false;
            U();
        }
        ((HashMap) this.f1738c.b).values().removeAll(Collections.singleton(null));
        return z3;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x014e  */
    public final void x(ArrayList arrayList, ArrayList arrayList2, int i2, int i3) {
        ViewGroup viewGroup;
        C0003d c0003d;
        C0003d c0003d2;
        int i4;
        ArrayList arrayList3 = arrayList;
        boolean z2 = ((C0173a) arrayList3.get(i2)).f1818o;
        ArrayList arrayList4 = this.f1734E;
        if (arrayList4 == null) {
            this.f1734E = new ArrayList();
        } else {
            arrayList4.clear();
        }
        ArrayList arrayList5 = this.f1734E;
        C0003d c0003d3 = this.f1738c;
        arrayList5.addAll(c0003d3.n());
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1751q;
        int i5 = i2;
        boolean z3 = false;
        while (true) {
            int i6 = 1;
            if (i5 >= i3) {
                C0003d c0003d4 = c0003d3;
                this.f1734E.clear();
                if (!z2 && this.f1747m >= 1) {
                    for (int i7 = i2; i7 < i3; i7++) {
                        Iterator it = ((C0173a) arrayList.get(i7)).f1806a.iterator();
                        while (it.hasNext()) {
                            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = ((L) it.next()).b;
                            if (abstractComponentCallbacksC0187o2 == null || abstractComponentCallbacksC0187o2.f1904r == null) {
                                c0003d = c0003d4;
                            } else {
                                c0003d = c0003d4;
                                c0003d.t(f(abstractComponentCallbacksC0187o2));
                            }
                            c0003d4 = c0003d;
                        }
                    }
                }
                for (int i8 = i2; i8 < i3; i8++) {
                    C0173a c0173a = (C0173a) arrayList.get(i8);
                    if (((Boolean) arrayList2.get(i8)).booleanValue()) {
                        c0173a.c(-1);
                        ArrayList arrayList6 = c0173a.f1806a;
                        for (int size = arrayList6.size() - 1; size >= 0; size--) {
                            L l2 = (L) arrayList6.get(size);
                            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 = l2.b;
                            if (abstractComponentCallbacksC0187o3 != null) {
                                if (abstractComponentCallbacksC0187o3.f1881H != null) {
                                    abstractComponentCallbacksC0187o3.f().f1864a = true;
                                }
                                int i9 = c0173a.f;
                                int i10 = 8194;
                                if (i9 != 4097) {
                                    i10 = i9 != 4099 ? i9 != 8194 ? 0 : 4097 : 4099;
                                }
                                if (abstractComponentCallbacksC0187o3.f1881H != null || i10 != 0) {
                                    abstractComponentCallbacksC0187o3.f();
                                    abstractComponentCallbacksC0187o3.f1881H.f = i10;
                                }
                                abstractComponentCallbacksC0187o3.f();
                                abstractComponentCallbacksC0187o3.f1881H.getClass();
                            }
                            int i11 = l2.f1789a;
                            E e2 = c0173a.f1819p;
                            switch (i11) {
                                case 1:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.P(abstractComponentCallbacksC0187o3, true);
                                    e2.K(abstractComponentCallbacksC0187o3);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + l2.f1789a);
                                case 3:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.a(abstractComponentCallbacksC0187o3);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.getClass();
                                    T(abstractComponentCallbacksC0187o3);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.P(abstractComponentCallbacksC0187o3, true);
                                    e2.C(abstractComponentCallbacksC0187o3);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.c(abstractComponentCallbacksC0187o3);
                                    break;
                                case PlaybackState.STATE_ERROR /* 7 */:
                                    abstractComponentCallbacksC0187o3.y(l2.f1790c, l2.f1791d, l2.f1792e, l2.f);
                                    e2.P(abstractComponentCallbacksC0187o3, true);
                                    e2.g(abstractComponentCallbacksC0187o3);
                                    break;
                                case Response.NO /* 8 */:
                                    e2.R(null);
                                    break;
                                case 9:
                                    e2.R(abstractComponentCallbacksC0187o3);
                                    break;
                                case 10:
                                    e2.Q(abstractComponentCallbacksC0187o3, l2.f1793g);
                                    break;
                            }
                        }
                    } else {
                        c0173a.c(1);
                        ArrayList arrayList7 = c0173a.f1806a;
                        int size2 = arrayList7.size();
                        for (int i12 = 0; i12 < size2; i12++) {
                            L l3 = (L) arrayList7.get(i12);
                            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o4 = l3.b;
                            if (abstractComponentCallbacksC0187o4 != null) {
                                if (abstractComponentCallbacksC0187o4.f1881H != null) {
                                    abstractComponentCallbacksC0187o4.f().f1864a = false;
                                }
                                int i13 = c0173a.f;
                                if (abstractComponentCallbacksC0187o4.f1881H != null || i13 != 0) {
                                    abstractComponentCallbacksC0187o4.f();
                                    abstractComponentCallbacksC0187o4.f1881H.f = i13;
                                }
                                abstractComponentCallbacksC0187o4.f();
                                abstractComponentCallbacksC0187o4.f1881H.getClass();
                            }
                            int i14 = l3.f1789a;
                            E e3 = c0173a.f1819p;
                            switch (i14) {
                                case 1:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.P(abstractComponentCallbacksC0187o4, false);
                                    e3.a(abstractComponentCallbacksC0187o4);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + l3.f1789a);
                                case 3:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.K(abstractComponentCallbacksC0187o4);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.C(abstractComponentCallbacksC0187o4);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.P(abstractComponentCallbacksC0187o4, false);
                                    T(abstractComponentCallbacksC0187o4);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.g(abstractComponentCallbacksC0187o4);
                                    break;
                                case PlaybackState.STATE_ERROR /* 7 */:
                                    abstractComponentCallbacksC0187o4.y(l3.f1790c, l3.f1791d, l3.f1792e, l3.f);
                                    e3.P(abstractComponentCallbacksC0187o4, false);
                                    e3.c(abstractComponentCallbacksC0187o4);
                                    break;
                                case Response.NO /* 8 */:
                                    e3.R(abstractComponentCallbacksC0187o4);
                                    break;
                                case 9:
                                    e3.R(null);
                                    break;
                                case 10:
                                    e3.Q(abstractComponentCallbacksC0187o4, l3.f1794h);
                                    break;
                            }
                        }
                    }
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i3 - 1)).booleanValue();
                for (int i15 = i2; i15 < i3; i15++) {
                    C0173a c0173a2 = (C0173a) arrayList.get(i15);
                    if (zBooleanValue) {
                        for (int size3 = c0173a2.f1806a.size() - 1; size3 >= 0; size3--) {
                            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o5 = ((L) c0173a2.f1806a.get(size3)).b;
                            if (abstractComponentCallbacksC0187o5 != null) {
                                f(abstractComponentCallbacksC0187o5).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0173a2.f1806a.iterator();
                        while (it2.hasNext()) {
                            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o6 = ((L) it2.next()).b;
                            if (abstractComponentCallbacksC0187o6 != null) {
                                f(abstractComponentCallbacksC0187o6).k();
                            }
                        }
                    }
                }
                G(this.f1747m, true);
                HashSet<C0180h> hashSet = new HashSet();
                for (int i16 = i2; i16 < i3; i16++) {
                    Iterator it3 = ((C0173a) arrayList.get(i16)).f1806a.iterator();
                    while (it3.hasNext()) {
                        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o7 = ((L) it3.next()).b;
                        if (abstractComponentCallbacksC0187o7 != null && (viewGroup = abstractComponentCallbacksC0187o7.f1877D) != null) {
                            hashSet.add(C0180h.f(viewGroup, B()));
                        }
                    }
                }
                for (C0180h c0180h : hashSet) {
                    c0180h.f1846d = zBooleanValue;
                    synchronized (c0180h.b) {
                        try {
                            c0180h.g();
                            c0180h.f1847e = false;
                            for (int size4 = c0180h.b.size() - 1; size4 >= 0; size4--) {
                                P p2 = (P) c0180h.b.get(size4);
                                int iC = Q.c(p2.f1801c.f1878E);
                                if (p2.f1800a == 2 && iC != 2) {
                                    p2.f1801c.getClass();
                                    c0180h.f1847e = false;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    c0180h.c();
                }
                for (int i17 = i2; i17 < i3; i17++) {
                    C0173a c0173a3 = (C0173a) arrayList.get(i17);
                    if (((Boolean) arrayList2.get(i17)).booleanValue() && c0173a3.f1821r >= 0) {
                        c0173a3.f1821r = -1;
                    }
                    c0173a3.getClass();
                }
                return;
            }
            C0173a c0173a4 = (C0173a) arrayList3.get(i5);
            if (((Boolean) arrayList2.get(i5)).booleanValue()) {
                c0003d2 = c0003d3;
                int i18 = 1;
                ArrayList arrayList8 = this.f1734E;
                ArrayList arrayList9 = c0173a4.f1806a;
                int size5 = arrayList9.size() - 1;
                while (size5 >= 0) {
                    L l4 = (L) arrayList9.get(size5);
                    int i19 = l4.f1789a;
                    if (i19 != i18) {
                        if (i19 != 3) {
                            switch (i19) {
                                case 6:
                                    arrayList8.add(l4.b);
                                    break;
                                case Response.NO /* 8 */:
                                    abstractComponentCallbacksC0187o = null;
                                    break;
                                case 9:
                                    abstractComponentCallbacksC0187o = l4.b;
                                    break;
                                case 10:
                                    l4.f1794h = l4.f1793g;
                                    break;
                            }
                        } else {
                            arrayList8.add(l4.b);
                        }
                        size5--;
                        i18 = 1;
                    }
                    arrayList8.remove(l4.b);
                    size5--;
                    i18 = 1;
                }
            } else {
                ArrayList arrayList10 = this.f1734E;
                int i20 = 0;
                while (true) {
                    ArrayList arrayList11 = c0173a4.f1806a;
                    if (i20 < arrayList11.size()) {
                        L l5 = (L) arrayList11.get(i20);
                        int i21 = l5.f1789a;
                        if (i21 != i6) {
                            if (i21 != 2) {
                                if (i21 == 3 || i21 == 6) {
                                    arrayList10.remove(l5.b);
                                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o8 = l5.b;
                                    if (abstractComponentCallbacksC0187o8 == abstractComponentCallbacksC0187o) {
                                        arrayList11.add(i20, new L(9, abstractComponentCallbacksC0187o8));
                                        i20++;
                                        c0003d3 = c0003d3;
                                        i4 = 1;
                                        abstractComponentCallbacksC0187o = null;
                                    }
                                } else if (i21 == 7) {
                                    i4 = 1;
                                } else if (i21 == 8) {
                                    arrayList11.add(i20, new L(9, abstractComponentCallbacksC0187o));
                                    i20++;
                                    abstractComponentCallbacksC0187o = l5.b;
                                }
                                c0003d3 = c0003d3;
                                i4 = 1;
                            } else {
                                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o9 = l5.b;
                                int i22 = abstractComponentCallbacksC0187o9.f1909w;
                                int size6 = arrayList10.size() - 1;
                                boolean z4 = false;
                                while (size6 >= 0) {
                                    C0003d c0003d5 = c0003d3;
                                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o10 = (AbstractComponentCallbacksC0187o) arrayList10.get(size6);
                                    if (abstractComponentCallbacksC0187o10.f1909w == i22) {
                                        if (abstractComponentCallbacksC0187o10 == abstractComponentCallbacksC0187o9) {
                                            z4 = true;
                                        } else {
                                            if (abstractComponentCallbacksC0187o10 == abstractComponentCallbacksC0187o) {
                                                arrayList11.add(i20, new L(9, abstractComponentCallbacksC0187o10));
                                                i20++;
                                                abstractComponentCallbacksC0187o = null;
                                            }
                                            L l6 = new L(3, abstractComponentCallbacksC0187o10);
                                            l6.f1790c = l5.f1790c;
                                            l6.f1792e = l5.f1792e;
                                            l6.f1791d = l5.f1791d;
                                            l6.f = l5.f;
                                            arrayList11.add(i20, l6);
                                            arrayList10.remove(abstractComponentCallbacksC0187o10);
                                            i20++;
                                            abstractComponentCallbacksC0187o = abstractComponentCallbacksC0187o;
                                        }
                                    }
                                    size6--;
                                    c0003d3 = c0003d5;
                                }
                                c0003d3 = c0003d3;
                                i4 = 1;
                                if (z4) {
                                    arrayList11.remove(i20);
                                    i20--;
                                } else {
                                    l5.f1789a = 1;
                                    arrayList10.add(abstractComponentCallbacksC0187o9);
                                }
                            }
                            i20 += i4;
                            i6 = i4;
                            c0003d3 = c0003d3;
                        } else {
                            i4 = i6;
                        }
                        arrayList10.add(l5.b);
                        i20 += i4;
                        i6 = i4;
                        c0003d3 = c0003d3;
                    } else {
                        c0003d2 = c0003d3;
                    }
                }
            }
            z3 = z3 || c0173a4.f1810g;
            i5++;
            arrayList3 = arrayList;
            c0003d3 = c0003d2;
        }
    }

    public final AbstractComponentCallbacksC0187o y(int i2) {
        C0003d c0003d = this.f1738c;
        ArrayList arrayList = (ArrayList) c0003d.f216d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = (AbstractComponentCallbacksC0187o) arrayList.get(size);
            if (abstractComponentCallbacksC0187o != null && abstractComponentCallbacksC0187o.f1908v == i2) {
                return abstractComponentCallbacksC0187o;
            }
        }
        for (K k2 : ((HashMap) c0003d.b).values()) {
            if (k2 != null) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = k2.f1786c;
                if (abstractComponentCallbacksC0187o2.f1908v == i2) {
                    return abstractComponentCallbacksC0187o2;
                }
            }
        }
        return null;
    }

    public final ViewGroup z(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (abstractComponentCallbacksC0187o.f1909w > 0 && this.f1749o.O()) {
            View viewN = this.f1749o.N(abstractComponentCallbacksC0187o.f1909w);
            if (viewN instanceof ViewGroup) {
                return (ViewGroup) viewN;
            }
        }
        return null;
    }
}
