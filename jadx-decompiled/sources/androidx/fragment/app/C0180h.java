package androidx.fragment.app;

import M.C0003d;
import T.G1;
import android.animation.Animator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: androidx.fragment.app.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0180h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f1844a;
    public final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1845c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1846d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1847e = false;

    public C0180h(ViewGroup viewGroup) {
        this.f1844a = viewGroup;
    }

    public static C0180h f(ViewGroup viewGroup, p025p0.e eVar) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof C0180h) {
            return (C0180h) tag;
        }
        eVar.getClass();
        C0180h c0180h = new C0180h(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, c0180h);
        return c0180h;
    }

    public final void a(int i2, int i3, K k2) {
        synchronized (this.b) {
            try {
                p031u.b bVar = new p031u.b();
                P pD = d(k2.f1786c);
                if (pD != null) {
                    pD.c(i2, i3);
                    return;
                }
                P p2 = new P(i2, i3, k2, bVar);
                this.b.add(p2);
                p2.f1802d.add(new O(this, p2, 0));
                p2.f1802d.add(new O(this, p2, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(ArrayList arrayList, boolean z2) {
        Iterator it = arrayList.iterator();
        P p2 = null;
        P p3 = null;
        while (it.hasNext()) {
            P p4 = (P) it.next();
            int iC = Q.c(p4.f1801c.f1878E);
            int iE = Q.e(p4.f1800a);
            if (iE != 0) {
                if (iE != 1) {
                    if (iE == 2 || iE == 3) {
                    }
                } else if (iC != 2) {
                    p3 = p4;
                }
            }
            if (iC == 2 && p2 == null) {
                p2 = p4;
            }
        }
        ArrayList<C0177e> arrayList2 = new ArrayList();
        ArrayList<C0179g> arrayList3 = new ArrayList();
        ArrayList<P> arrayList4 = new ArrayList(arrayList);
        Iterator it2 = arrayList.iterator();
        while (true) {
            boolean z3 = false;
            if (!it2.hasNext()) {
                break;
            }
            P p5 = (P) it2.next();
            p031u.b bVar = new p031u.b();
            p5.d();
            HashSet hashSet = p5.f1803e;
            hashSet.add(bVar);
            C0177e c0177e = new C0177e(p5, bVar);
            c0177e.f1841d = false;
            c0177e.f1840c = z2;
            arrayList2.add(c0177e);
            p031u.b bVar2 = new p031u.b();
            p5.d();
            hashSet.add(bVar2);
            if (!z2 ? p5 == p3 : p5 == p2) {
                z3 = true;
            }
            C0179g c0179g = new C0179g(p5, bVar2);
            int i2 = p5.f1800a;
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = p5.f1801c;
            if (i2 == 2) {
                if (z2) {
                    abstractComponentCallbacksC0187o.getClass();
                } else {
                    abstractComponentCallbacksC0187o.getClass();
                }
                if (z2) {
                    abstractComponentCallbacksC0187o.getClass();
                } else {
                    abstractComponentCallbacksC0187o.getClass();
                }
            } else if (z2) {
                abstractComponentCallbacksC0187o.getClass();
            } else {
                abstractComponentCallbacksC0187o.getClass();
            }
            if (z3) {
                if (z2) {
                    abstractComponentCallbacksC0187o.getClass();
                } else {
                    abstractComponentCallbacksC0187o.getClass();
                }
            }
            arrayList3.add(c0179g);
            p5.f1802d.add(new G1(this, arrayList4, p5));
        }
        HashMap map = new HashMap();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            P p6 = (P) ((C0179g) it3.next()).f1843a;
            Q.c(p6.f1801c.f1878E);
            int i3 = p6.f1800a;
        }
        for (C0179g c0179g2 : arrayList3) {
            map.put((P) c0179g2.f1843a, Boolean.FALSE);
            c0179g2.d();
        }
        boolean zContainsValue = map.containsValue(Boolean.TRUE);
        ViewGroup viewGroup = this.f1844a;
        Context context = viewGroup.getContext();
        ArrayList<C0177e> arrayList5 = new ArrayList();
        boolean z4 = false;
        for (C0177e c0177e2 : arrayList2) {
            P p7 = (P) c0177e2.f1843a;
            int iC2 = Q.c(p7.f1801c.f1878E);
            int i4 = p7.f1800a;
            if (iC2 == i4 || !(iC2 == 2 || i4 == 2)) {
                c0177e2.d();
            } else {
                G.a aVarJ = c0177e2.j(context);
                if (aVarJ == null) {
                    c0177e2.d();
                } else {
                    Animator animator = (Animator) aVarJ.f93c;
                    if (animator == null) {
                        arrayList5.add(c0177e2);
                    } else {
                        P p8 = (P) c0177e2.f1843a;
                        boolean zEquals = Boolean.TRUE.equals(map.get(p8));
                        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = p8.f1801c;
                        if (zEquals) {
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + abstractComponentCallbacksC0187o2 + " as this Fragment was involved in a Transition.");
                            }
                            c0177e2.d();
                        } else {
                            boolean z5 = p8.f1800a == 3;
                            if (z5) {
                                arrayList4.remove(p8);
                            }
                            View view = abstractComponentCallbacksC0187o2.f1878E;
                            viewGroup.startViewTransition(view);
                            animator.addListener(new C0175c(viewGroup, view, z5, p8, c0177e2));
                            animator.setTarget(view);
                            animator.start();
                            ((p031u.b) c0177e2.b).a(new A.e(animator, 7));
                            z4 = true;
                        }
                    }
                }
            }
        }
        for (C0177e c0177e3 : arrayList5) {
            P p9 = (P) c0177e3.f1843a;
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o3 = p9.f1801c;
            if (zContainsValue) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + abstractComponentCallbacksC0187o3 + " as Animations cannot run alongside Transitions.");
                }
                c0177e3.d();
            } else if (z4) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + abstractComponentCallbacksC0187o3 + " as Animations cannot run alongside Animators.");
                }
                c0177e3.d();
            } else {
                View view2 = abstractComponentCallbacksC0187o3.f1878E;
                G.a aVarJ2 = c0177e3.j(context);
                aVarJ2.getClass();
                Animation animation = (Animation) aVarJ2.b;
                animation.getClass();
                if (p9.f1800a != 1) {
                    view2.startAnimation(animation);
                    c0177e3.d();
                } else {
                    viewGroup.startViewTransition(view2);
                    RunnableC0190s runnableC0190s = new RunnableC0190s(animation, viewGroup, view2);
                    runnableC0190s.setAnimationListener(new AnimationAnimationListenerC0176d(view2, viewGroup, c0177e3));
                    view2.startAnimation(runnableC0190s);
                }
                ((p031u.b) c0177e3.b).a(new C0003d(view2, viewGroup, c0177e3));
            }
        }
        for (P p10 : arrayList4) {
            Q.a(p10.f1801c.f1878E, p10.f1800a);
        }
        arrayList4.clear();
    }

    public final void c() {
        if (this.f1847e) {
            return;
        }
        ViewGroup viewGroup = this.f1844a;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        if (!p034y.A.b(viewGroup)) {
            e();
            this.f1846d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList<P> arrayList = new ArrayList(this.f1845c);
                    this.f1845c.clear();
                    for (P p2 : arrayList) {
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + p2);
                        }
                        p2.a();
                        if (!p2.f1804g) {
                            this.f1845c.add(p2);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.f1845c.addAll(arrayList2);
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((P) it.next()).d();
                    }
                    b(arrayList2, this.f1846d);
                    this.f1846d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final P d(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        for (P p2 : this.b) {
            if (p2.f1801c.equals(abstractComponentCallbacksC0187o) && !p2.f) {
                return p2;
            }
        }
        return null;
    }

    public final void e() {
        ViewGroup viewGroup = this.f1844a;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        boolean zB = p034y.A.b(viewGroup);
        synchronized (this.b) {
            try {
                g();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((P) it.next()).d();
                }
                for (P p2 : new ArrayList(this.f1845c)) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        sb.append(zB ? "" : "Container " + this.f1844a + " is not attached to window. ");
                        sb.append("Cancelling running operation ");
                        sb.append(p2);
                        Log.v("FragmentManager", sb.toString());
                    }
                    p2.a();
                }
                for (P p3 : new ArrayList(this.b)) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zB ? "" : "Container " + this.f1844a + " is not attached to window. ");
                        sb2.append("Cancelling pending operation ");
                        sb2.append(p3);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    p3.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        for (P p2 : this.b) {
            if (p2.b == 2) {
                p2.c(Q.b(p2.f1801c.x().getVisibility()), 1);
            }
        }
    }
}
