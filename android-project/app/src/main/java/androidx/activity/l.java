package androidx.activity;

import androidx.fragment.app.x;
import java.util.ArrayDeque;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class l implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f1431a;
    public final /* synthetic */ m b;

    public l(m mVar, x xVar) {
        this.b = mVar;
        this.f1431a = xVar;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        m mVar = this.b;
        ArrayDeque arrayDeque = mVar.b;
        x xVar = this.f1431a;
        arrayDeque.remove(xVar);
        xVar.b.remove(this);
        if (AbstractC0201a.D()) {
            xVar.f1930c = null;
            mVar.c();
        }
    }
}
