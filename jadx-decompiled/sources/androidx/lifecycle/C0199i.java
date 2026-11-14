package androidx.lifecycle;

import androidx.fragment.app.C0188p;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: renamed from: androidx.lifecycle.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0199i implements N.b {
    public final void a(N.f fVar) {
        Object obj;
        boolean z2;
        I iC = ((J) fVar).c();
        N.d dVarB = fVar.b();
        iC.getClass();
        Iterator it = new HashSet(iC.f1947a.keySet()).iterator();
        while (it.hasNext()) {
            G g2 = (G) iC.f1947a.get((String) it.next());
            s sVarD = fVar.d();
            HashMap map = g2.f1945a;
            if (map == null) {
                obj = null;
            } else {
                synchronized (map) {
                    obj = g2.f1945a.get("androidx.lifecycle.savedstate.vm.tag");
                }
            }
            SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
            if (savedStateHandleController != null && !(z2 = savedStateHandleController.f1950a)) {
                if (z2) {
                    throw new IllegalStateException("Already attached to lifecycleOwner");
                }
                savedStateHandleController.f1950a = true;
                sVarD.a(savedStateHandleController);
                throw null;
            }
        }
        if (new HashSet(iC.f1947a.keySet()).isEmpty()) {
            return;
        }
        if (!dVarB.f389c) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        C0188p c0188p = (C0188p) dVarB.f;
        if (c0188p == null) {
            c0188p = new C0188p(dVarB);
        }
        dVarB.f = c0188p;
        try {
            C0199i.class.getDeclaredConstructor(null);
            C0188p c0188p2 = (C0188p) dVarB.f;
            if (c0188p2 != null) {
                ((LinkedHashSet) c0188p2.b).add(C0199i.class.getName());
            }
        } catch (NoSuchMethodException e2) {
            throw new IllegalArgumentException("Class " + C0199i.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
        }
    }
}
