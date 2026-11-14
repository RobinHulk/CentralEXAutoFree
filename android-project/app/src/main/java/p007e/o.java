package p007e;

import android.view.ViewGroup;
import java.util.WeakHashMap;
import p034y.A;
import p034y.N;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3058a;
    public final /* synthetic */ x b;

    public /* synthetic */ o(x xVar, int i2) {
        this.f3058a = i2;
        this.b = xVar;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        ViewGroup viewGroup;
        x xVar = this.b;
        switch (this.f3058a) {
            case 0:
                if ((1 & xVar.f3108Z) != 0) {
                    xVar.B(0);
                }
                if ((xVar.f3108Z & 4096) != 0) {
                    xVar.B(108);
                }
                xVar.f3107Y = false;
                xVar.f3108Z = 0;
                break;
            default:
                xVar.f3129w.showAtLocation(xVar.f3128v, 55, 0, 0);
                V v2 = xVar.f3131y;
                if (v2 != null) {
                    v2.b();
                }
                if (xVar.f3132z && (viewGroup = xVar.f3086A) != null) {
                    WeakHashMap weakHashMap = N.f4222a;
                    z2 = A.c(viewGroup);
                }
                if (!z2) {
                    xVar.f3128v.setAlpha(1.0f);
                    xVar.f3128v.setVisibility(0);
                } else {
                    xVar.f3128v.setAlpha(0.0f);
                    V vA = N.a(xVar.f3128v);
                    vA.a(1.0f);
                    xVar.f3131y = vA;
                    vA.d(new q(this, 0));
                }
                break;
        }
    }
}
