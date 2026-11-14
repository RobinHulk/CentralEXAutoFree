package N;

import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.lifecycle.l;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import androidx.savedstate.Recreator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f392a;
    public final d b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f393c;

    public e(f fVar) {
        this.f392a = fVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [N.f, androidx.lifecycle.q, java.lang.Object] */
    public final void a() {
        ?? r1 = this.f392a;
        s sVarD = r1.d();
        I0.f.d(sVarD, "owner.lifecycle");
        if (sVarD.b != l.b) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        sVarD.a(new Recreator(r1));
        final d dVar = this.b;
        dVar.getClass();
        if (dVar.f388a) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        sVarD.a(new o() { // from class: N.a
            @Override // androidx.lifecycle.o
            public final void b(q qVar, k kVar) {
                d dVar2 = dVar;
                I0.f.e(dVar2, "this$0");
                if (kVar == k.ON_START) {
                    dVar2.f389c = true;
                } else if (kVar == k.ON_STOP) {
                    dVar2.f389c = false;
                }
            }
        });
        dVar.f388a = true;
        this.f393c = true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.q, java.lang.Object] */
    public final void b(Bundle bundle) {
        if (!this.f393c) {
            a();
        }
        s sVarD = this.f392a.d();
        I0.f.d(sVarD, "owner.lifecycle");
        if (sVarD.b.a(l.f1959d)) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + sVarD.b).toString());
        }
        d dVar = this.b;
        if (!dVar.f388a) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (dVar.b) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        dVar.f391e = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        dVar.b = true;
    }

    public final void c(Bundle bundle) {
        I0.f.e(bundle, "outBundle");
        d dVar = this.b;
        dVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) dVar.f391e;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        p018l.f fVar = (p018l.f) dVar.f390d;
        fVar.getClass();
        p018l.d dVar2 = new p018l.d(fVar);
        fVar.f3832c.put(dVar2, Boolean.FALSE);
        while (dVar2.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar2.next();
            bundle2.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
