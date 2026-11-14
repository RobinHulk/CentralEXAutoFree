package androidx.fragment.app;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import java.util.HashSet;

/* JADX INFO: renamed from: androidx.fragment.app.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0178f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1843a;
    public Object b;

    public AbstractC0178f(Context context) {
        this.f1843a = context;
    }

    public void c() {
        T.N n2 = (T.N) this.f1843a;
        if (n2 != null) {
            try {
                ((p007e.x) this.b).f3117k.unregisterReceiver(n2);
            } catch (IllegalArgumentException unused) {
            }
            this.f1843a = null;
        }
    }

    public void d() {
        P p2 = (P) this.f1843a;
        HashSet hashSet = p2.f1803e;
        if (hashSet.remove((p031u.b) this.b) && hashSet.isEmpty()) {
            p2.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (!(menuItem instanceof p030t.a)) {
            return menuItem;
        }
        p030t.a aVar = (p030t.a) menuItem;
        if (((p020m.k) this.b) == null) {
            this.b = new p020m.k();
        }
        MenuItem menuItem2 = (MenuItem) ((p020m.k) this.b).getOrDefault(aVar, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        p012i.s sVar = new p012i.s((Context) this.f1843a, aVar);
        ((p020m.k) this.b).put(aVar, sVar);
        return sVar;
    }

    public abstract void h();

    public void i() {
        c();
        IntentFilter intentFilterE = e();
        if (intentFilterE.countActions() == 0) {
            return;
        }
        if (((T.N) this.f1843a) == null) {
            this.f1843a = new T.N(this, 4);
        }
        ((p007e.x) this.b).f3117k.registerReceiver((T.N) this.f1843a, intentFilterE);
    }

    public AbstractC0178f(P p2, p031u.b bVar) {
        this.f1843a = p2;
        this.b = bVar;
    }

    public AbstractC0178f(p007e.x xVar) {
        this.b = xVar;
    }
}
