package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class D implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1729a;
    public final /* synthetic */ E b;

    public D(E e2, int i2) {
        this.b = e2;
        this.f1729a = i2;
    }

    @Override // androidx.fragment.app.C
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        E e2 = this.b;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = e2.f1751q;
        int i2 = this.f1729a;
        if (abstractComponentCallbacksC0187o == null || i2 >= 0 || !abstractComponentCallbacksC0187o.g().I()) {
            return e2.J(arrayList, arrayList2, i2, 1);
        }
        return false;
    }
}
