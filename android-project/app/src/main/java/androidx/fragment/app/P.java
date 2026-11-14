package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1800a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractComponentCallbacksC0187o f1801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f1802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f1803e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1804g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final K f1805h;

    public P(int i2, int i3, K k2, p031u.b bVar) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
        this.f1802d = new ArrayList();
        this.f1803e = new HashSet();
        this.f = false;
        this.f1804g = false;
        this.f1800a = i2;
        this.b = i3;
        this.f1801c = abstractComponentCallbacksC0187o;
        bVar.a(new A.e(this, 10));
        this.f1805h = k2;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        HashSet hashSet = this.f1803e;
        if (hashSet.isEmpty()) {
            b();
            return;
        }
        for (p031u.b bVar : new ArrayList(hashSet)) {
            synchronized (bVar) {
                try {
                    if (!bVar.f4134a) {
                        bVar.f4134a = true;
                        bVar.f4135c = true;
                        p031u.a aVar = bVar.b;
                        if (aVar != null) {
                            try {
                                aVar.p();
                            } catch (Throwable th) {
                                synchronized (bVar) {
                                    bVar.f4135c = false;
                                    bVar.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (bVar) {
                            bVar.f4135c = false;
                            bVar.notifyAll();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void b() {
        if (!this.f1804g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f1804g = true;
            Iterator it = this.f1802d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f1805h.k();
    }

    public final void c(int i2, int i3) {
        int iE = Q.e(i3);
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = this.f1801c;
        if (iE == 0) {
            if (this.f1800a != 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0187o + " mFinalState = " + Q.g(this.f1800a) + " -> " + Q.g(i2) + ". ");
                }
                this.f1800a = i2;
                return;
            }
            return;
        }
        if (iE == 1) {
            if (this.f1800a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0187o + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + Q.f(this.b) + " to ADDING.");
                }
                this.f1800a = 2;
                this.b = 2;
                return;
            }
            return;
        }
        if (iE != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0187o + " mFinalState = " + Q.g(this.f1800a) + " -> REMOVED. mLifecycleImpact  = " + Q.f(this.b) + " to REMOVING.");
        }
        this.f1800a = 1;
        this.b = 3;
    }

    public final void d() {
        if (this.b == 2) {
            K k2 = this.f1805h;
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
            View viewFindFocus = abstractComponentCallbacksC0187o.f1878E.findFocus();
            if (viewFindFocus != null) {
                abstractComponentCallbacksC0187o.f().f1872k = viewFindFocus;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + abstractComponentCallbacksC0187o);
                }
            }
            View viewX = this.f1801c.x();
            if (viewX.getParent() == null) {
                k2.b();
                viewX.setAlpha(0.0f);
            }
            if (viewX.getAlpha() == 0.0f && viewX.getVisibility() == 0) {
                viewX.setVisibility(4);
            }
            C0186n c0186n = abstractComponentCallbacksC0187o.f1881H;
            viewX.setAlpha(c0186n == null ? 1.0f : c0186n.f1871j);
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + Q.g(this.f1800a) + "} {mLifecycleImpact = " + Q.f(this.b) + "} {mFragment = " + this.f1801c + "}";
    }
}
