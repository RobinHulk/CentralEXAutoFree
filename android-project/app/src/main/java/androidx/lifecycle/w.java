package androidx.lifecycle;

import M.d0;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f1973j = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1974a;
    public final p018l.f b = new p018l.f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1975c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1976d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f1977e;
    public volatile Object f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1978g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1980i;

    public w() {
        Object obj = f1973j;
        this.f = obj;
        this.f1977e = obj;
        this.f1978g = -1;
    }

    public static void a(String str) {
        ((p016k.a) p016k.a.T().f3739a).getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(d0.f("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(v vVar) {
        if (vVar.b) {
            if (!vVar.e()) {
                vVar.c(false);
                return;
            }
            int i2 = vVar.f1971c;
            int i3 = this.f1978g;
            if (i2 >= i3) {
                return;
            }
            vVar.f1971c = i3;
            A.e eVar = vVar.f1970a;
            Object obj = this.f1977e;
            eVar.getClass();
            if (((q) obj) != null) {
                DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l = (DialogInterfaceOnCancelListenerC0184l) eVar.b;
                if (dialogInterfaceOnCancelListenerC0184l.f1855W) {
                    View viewX = dialogInterfaceOnCancelListenerC0184l.x();
                    if (viewX.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (dialogInterfaceOnCancelListenerC0184l.f1859a0 != null) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "DialogFragment " + eVar + " setting the content view on " + dialogInterfaceOnCancelListenerC0184l.f1859a0);
                        }
                        dialogInterfaceOnCancelListenerC0184l.f1859a0.setContentView(viewX);
                    }
                }
            }
        }
    }

    public final void c(v vVar) {
        if (this.f1979h) {
            this.f1980i = true;
            return;
        }
        this.f1979h = true;
        do {
            this.f1980i = false;
            if (vVar != null) {
                b(vVar);
                vVar = null;
            } else {
                p018l.f fVar = this.b;
                fVar.getClass();
                p018l.d dVar = new p018l.d(fVar);
                fVar.f3832c.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((v) ((Map.Entry) dVar.next()).getValue());
                    if (this.f1980i) {
                        break;
                    }
                }
            }
        } while (this.f1980i);
        this.f1979h = false;
    }

    public final void d(A.e eVar) {
        Object obj;
        a("observeForever");
        u uVar = new u(this, eVar);
        p018l.f fVar = this.b;
        p018l.c cVarA = fVar.a(eVar);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            p018l.c cVar = new p018l.c(eVar, uVar);
            fVar.f3833d++;
            p018l.c cVar2 = fVar.b;
            if (cVar2 == null) {
                fVar.f3831a = cVar;
                fVar.b = cVar;
            } else {
                cVar2.f3827c = cVar;
                cVar.f3828d = cVar2;
                fVar.b = cVar;
            }
            obj = null;
        }
        v vVar = (v) obj;
        if (vVar instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (vVar != null) {
            return;
        }
        uVar.c(true);
    }

    public final void e(Object obj) {
        a("setValue");
        this.f1978g++;
        this.f1977e = obj;
        c(null);
    }
}
