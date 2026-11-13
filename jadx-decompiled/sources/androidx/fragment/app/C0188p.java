package androidx.fragment.app;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import p007e.AbstractActivityC0210j;

/* JADX INFO: renamed from: androidx.fragment.app.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0188p implements N.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1913a;
    public final Object b;

    public /* synthetic */ C0188p(AbstractActivityC0210j abstractActivityC0210j, int i2) {
        this.f1913a = i2;
        this.b = abstractActivityC0210j;
    }

    @Override // N.c
    public final Bundle a() {
        A.e eVar;
        switch (this.f1913a) {
            case 0:
                Bundle bundle = new Bundle();
                AbstractActivityC0210j abstractActivityC0210j = (AbstractActivityC0210j) this.b;
                do {
                    eVar = abstractActivityC0210j.f3045n;
                } while (AbstractActivityC0210j.k(((r) eVar.b).f));
                abstractActivityC0210j.f3046o.d(androidx.lifecycle.k.ON_STOP);
                F fN = ((r) eVar.b).f.N();
                if (fN != null) {
                    bundle.putParcelable("android:support:fragments", fN);
                }
                return bundle;
            case 1:
                Bundle bundle2 = new Bundle();
                ((AbstractActivityC0210j) this.b).i().getClass();
                return bundle2;
            default:
                Bundle bundle3 = new Bundle();
                bundle3.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.b));
                return bundle3;
        }
    }

    public C0188p(N.d dVar) {
        this.f1913a = 2;
        I0.f.e(dVar, "registry");
        this.b = new LinkedHashSet();
        dVar.e("androidx.savedstate.Restarter", this);
    }
}
