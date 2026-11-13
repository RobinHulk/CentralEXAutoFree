package p007e;

import T.H3;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Objects;
import p020m.c;
import p020m.g;
import p031u.e;
import p031u.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final D f3051a = new D(new E());
    public static int b = -100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e f3052c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static e f3053d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f3054e = null;
    public static boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f3055g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f3056h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f3057i = new Object();

    public static void a() {
        e eVar;
        Iterator it = f3055g.iterator();
        while (true) {
            g gVar = (g) it;
            if (!gVar.hasNext()) {
                return;
            }
            n nVar = (n) ((WeakReference) gVar.next()).get();
            if (nVar != null) {
                x xVar = (x) nVar;
                Context context = xVar.f3117k;
                if (g(context) && (eVar = f3052c) != null && !eVar.equals(f3053d)) {
                    f3051a.execute(new H3(context, 3));
                }
                xVar.t(true, true);
            }
        }
    }

    public static e c() {
        if (AbstractC0201a.D()) {
            Object objD = d();
            if (objD != null) {
                return new e(new f(m.a(objD)));
            }
        } else {
            e eVar = f3052c;
            if (eVar != null) {
                return eVar;
            }
        }
        return e.b;
    }

    public static Object d() {
        Context context;
        Iterator it = f3055g.iterator();
        while (true) {
            g gVar = (g) it;
            if (!gVar.hasNext()) {
                return null;
            }
            n nVar = (n) ((WeakReference) gVar.next()).get();
            if (nVar != null && (context = ((x) nVar).f3117k) != null) {
                return context.getSystemService("locale");
            }
        }
    }

    public static boolean g(Context context) {
        if (f3054e == null) {
            try {
                int i2 = C.f2947a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) C.class), B.a() | 128).metaData;
                if (bundle != null) {
                    f3054e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f3054e = Boolean.FALSE;
            }
        }
        return f3054e.booleanValue();
    }

    public static void j(x xVar) {
        synchronized (f3056h) {
            try {
                Iterator it = f3055g.iterator();
                while (true) {
                    g gVar = (g) it;
                    if (gVar.hasNext()) {
                        n nVar = (n) ((WeakReference) gVar.next()).get();
                        if (nVar == xVar || nVar == null) {
                            gVar.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void l(e eVar) {
        Objects.requireNonNull(eVar);
        if (AbstractC0201a.D()) {
            Object objD = d();
            if (objD != null) {
                m.b(objD, l.a(eVar.f4137a.f4138a.toLanguageTags()));
                return;
            }
            return;
        }
        if (eVar.equals(f3052c)) {
            return;
        }
        synchronized (f3056h) {
            f3052c = eVar;
            a();
        }
    }

    public static void q(int i2) {
        if (i2 != -1 && i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
            return;
        }
        if (b != i2) {
            b = i2;
            synchronized (f3056h) {
                try {
                    Iterator it = f3055g.iterator();
                    while (true) {
                        g gVar = (g) it;
                        if (gVar.hasNext()) {
                            n nVar = (n) ((WeakReference) gVar.next()).get();
                            if (nVar != null) {
                                ((x) nVar).t(true, true);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void s(Context context) {
        if (g(context)) {
            if (AbstractC0201a.D()) {
                if (f) {
                    return;
                }
                f3051a.execute(new H3(context, 2));
                return;
            }
            synchronized (f3057i) {
                try {
                    e eVar = f3052c;
                    if (eVar == null) {
                        if (f3053d == null) {
                            f3053d = e.a(AbstractC0201a.M(context));
                        }
                        if (f3053d.b()) {
                        } else {
                            f3052c = f3053d;
                        }
                    } else if (!eVar.equals(f3053d)) {
                        e eVar2 = f3052c;
                        f3053d = eVar2;
                        AbstractC0201a.L(context, eVar2.f4137a.f4138a.toLanguageTags());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void e();

    public abstract void f();

    public abstract void h();

    public abstract void i();

    public abstract boolean k(int i2);

    public abstract void m(int i2);

    public abstract void n(View view);

    public abstract void p(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void r(CharSequence charSequence);
}
