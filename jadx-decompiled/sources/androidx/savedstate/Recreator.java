package androidx.savedstate;

import M.d0;
import N.b;
import N.f;
import android.os.Bundle;
import androidx.lifecycle.C0199i;
import androidx.lifecycle.k;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Recreator implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2095a;

    public Recreator(f fVar) {
        this.f2095a = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [N.f, java.lang.Object] */
    @Override // androidx.lifecycle.o
    public final void b(q qVar, k kVar) {
        if (kVar != k.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        qVar.d().f(this);
        ?? r5 = this.f2095a;
        Bundle bundleC = r5.b().c("androidx.savedstate.Restarter");
        if (bundleC == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleC.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(b.class);
                I0.f.d(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(null);
                        I0.f.d(objNewInstance, "{\n                constr…wInstance()\n            }");
                        ((C0199i) ((b) objNewInstance)).a(r5);
                    } catch (Exception e2) {
                        throw new RuntimeException(d0.e("Failed to instantiate ", str), e2);
                    }
                } catch (NoSuchMethodException e3) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
                }
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException(d0.f("Class ", str, " wasn't found"), e4);
            }
        }
    }
}
