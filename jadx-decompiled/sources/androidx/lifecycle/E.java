package androidx.lifecycle;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class E implements N.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N.d f1940a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f1941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v0.c f1942d;

    public E(N.d dVar, androidx.activity.g gVar) {
        I0.f.e(dVar, "savedStateRegistry");
        this.f1940a = dVar;
        this.f1942d = new v0.c(new D(gVar, 0));
    }

    @Override // N.c
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1941c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = ((F) this.f1942d.a()).f1943c.entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getValue().getClass();
        throw new ClassCastException();
    }
}
