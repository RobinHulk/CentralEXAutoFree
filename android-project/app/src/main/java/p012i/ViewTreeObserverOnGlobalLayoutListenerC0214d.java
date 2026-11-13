package p012i;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p014j.I;
import p014j.J;
import p014j.K0;
import p014j.P;
import p014j.T;
import p034y.A;
import p034y.N;

/* JADX INFO: renamed from: i.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0214d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3305a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0214d(Object obj, int i2) {
        this.f3305a = i2;
        this.b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Object obj = this.b;
        switch (this.f3305a) {
            case 0:
                f fVar = (f) obj;
                if (fVar.b()) {
                    ArrayList arrayList = fVar.f3312h;
                    if (arrayList.size() > 0 && !((C0215e) arrayList.get(0)).f3306a.f3445x) {
                        View view = fVar.f3319o;
                        if (view != null && view.isShown()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((C0215e) it.next()).f3306a.f();
                            }
                        } else {
                            fVar.dismiss();
                        }
                        break;
                    }
                }
                break;
            case 1:
                D d2 = (D) obj;
                if (d2.b()) {
                    K0 k1 = d2.f3274h;
                    if (!k1.f3445x) {
                        View view2 = d2.f3279m;
                        if (view2 != null && view2.isShown()) {
                            k1.f();
                        } else {
                            d2.dismiss();
                        }
                    }
                }
                break;
            case 2:
                T t2 = (T) obj;
                if (!t2.getInternalPopup().b()) {
                    t2.f.d(J.b(t2), J.a(t2));
                }
                ViewTreeObserver viewTreeObserver = t2.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    I.a(viewTreeObserver, this);
                }
                break;
            default:
                P p2 = (P) obj;
                T t3 = p2.f3483F;
                p2.getClass();
                WeakHashMap weakHashMap = N.f4222a;
                if (A.b(t3) && t3.getGlobalVisibleRect(p2.f3481D)) {
                    p2.s();
                    p2.f();
                } else {
                    p2.dismiss();
                }
                break;
        }
    }
}
