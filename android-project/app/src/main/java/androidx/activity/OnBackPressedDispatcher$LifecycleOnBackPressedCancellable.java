package androidx.activity;

import androidx.fragment.app.x;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import java.util.ArrayDeque;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements o, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f1406a;
    public final x b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f1407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m f1408d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(m mVar, s sVar, x xVar) {
        this.f1408d = mVar;
        this.f1406a = sVar;
        this.b = xVar;
        sVar.a(this);
    }

    @Override // androidx.lifecycle.o
    public final void b(q qVar, androidx.lifecycle.k kVar) {
        if (kVar != androidx.lifecycle.k.ON_START) {
            if (kVar != androidx.lifecycle.k.ON_STOP) {
                if (kVar == androidx.lifecycle.k.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                l lVar = this.f1407c;
                if (lVar != null) {
                    lVar.cancel();
                    return;
                }
                return;
            }
        }
        m mVar = this.f1408d;
        ArrayDeque arrayDeque = mVar.b;
        x xVar = this.b;
        arrayDeque.add(xVar);
        l lVar2 = new l(mVar, xVar);
        xVar.b.add(lVar2);
        if (AbstractC0201a.D()) {
            mVar.c();
            xVar.f1930c = mVar.f1433c;
        }
        this.f1407c = lVar2;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        this.f1406a.f(this);
        this.b.b.remove(this);
        l lVar = this.f1407c;
        if (lVar != null) {
            lVar.cancel();
            this.f1407c = null;
        }
    }
}
