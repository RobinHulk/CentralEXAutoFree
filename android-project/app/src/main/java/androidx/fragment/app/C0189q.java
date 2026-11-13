package androidx.fragment.app;

import android.os.Bundle;
import p007e.AbstractActivityC0210j;

/* JADX INFO: renamed from: androidx.fragment.app.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0189q implements p000a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1914a;
    public final /* synthetic */ AbstractActivityC0210j b;

    public /* synthetic */ C0189q(AbstractActivityC0210j abstractActivityC0210j, int i2) {
        this.f1914a = i2;
        this.b = abstractActivityC0210j;
    }

    @Override // p000a.b
    public final void a() {
        switch (this.f1914a) {
            case 0:
                AbstractActivityC0210j abstractActivityC0210j = this.b;
                A.e eVar = abstractActivityC0210j.f3045n;
                r rVar = (r) eVar.b;
                rVar.f.b(rVar, rVar, null);
                Bundle bundleC = abstractActivityC0210j.f1421e.b.c("android:support:fragments");
                if (bundleC != null) {
                    ((r) eVar.b).f.M(bundleC.getParcelable("android:support:fragments"));
                }
                break;
            default:
                AbstractActivityC0210j abstractActivityC0210j2 = this.b;
                p007e.n nVarI = abstractActivityC0210j2.i();
                nVarI.e();
                abstractActivityC0210j2.f1421e.b.c("androidx:appcompat");
                nVarI.h();
                break;
        }
    }
}
