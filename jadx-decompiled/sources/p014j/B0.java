package p014j;

import java.util.WeakHashMap;
import p034y.A;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class B0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3415a;
    public final /* synthetic */ E0 b;

    public /* synthetic */ B0(E0 e1, int i2) {
        this.f3415a = i2;
        this.b = e1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        E0 e1 = this.b;
        switch (this.f3415a) {
            case 0:
                C0252s0 c0252s0 = e1.f3425c;
                if (c0252s0 != null) {
                    c0252s0.setListSelectionHidden(true);
                    c0252s0.requestLayout();
                }
                break;
            default:
                C0252s0 c0252s1 = e1.f3425c;
                if (c0252s1 != null) {
                    WeakHashMap weakHashMap = N.f4222a;
                    if (A.b(c0252s1) && e1.f3425c.getCount() > e1.f3425c.getChildCount() && e1.f3425c.getChildCount() <= e1.f3434m) {
                        e1.f3446y.setInputMethodMode(2);
                        e1.f();
                        break;
                    }
                }
                break;
        }
    }
}
