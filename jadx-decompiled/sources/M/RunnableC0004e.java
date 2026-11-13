package M;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: M.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0004e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f217a;
    public final /* synthetic */ ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0010k f218c;

    public /* synthetic */ RunnableC0004e(C0010k c0010k, ArrayList arrayList, int i2) {
        this.f217a = i2;
        this.f218c = c0010k;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f217a) {
            case 0:
                ArrayList arrayList = this.b;
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    C0010k c0010k = this.f218c;
                    if (!zHasNext) {
                        arrayList.clear();
                        c0010k.f274m.remove(arrayList);
                    } else {
                        C0009j c0009j = (C0009j) it.next();
                        e0 e0Var = c0009j.f258a;
                        c0010k.getClass();
                        View view = e0Var.f220a;
                        int i2 = c0009j.f260d - c0009j.b;
                        int i3 = c0009j.f261e - c0009j.f259c;
                        if (i2 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i3 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        c0010k.f277p.add(e0Var);
                        viewPropertyAnimatorAnimate.setDuration(c0010k.f152e).setListener(new C0006g(c0010k, e0Var, i2, view, i3, viewPropertyAnimatorAnimate)).start();
                    }
                    break;
                }
                break;
            case 1:
                ArrayList arrayList2 = this.b;
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    C0010k c0010k2 = this.f218c;
                    if (!zHasNext2) {
                        arrayList2.clear();
                        c0010k2.f275n.remove(arrayList2);
                    } else {
                        C0008i c0008i = (C0008i) it2.next();
                        c0010k2.getClass();
                        e0 e0Var2 = c0008i.f253a;
                        View view2 = e0Var2 == null ? null : e0Var2.f220a;
                        e0 e0Var3 = c0008i.b;
                        View view3 = e0Var3 != null ? e0Var3.f220a : null;
                        ArrayList arrayList3 = c0010k2.f279r;
                        long j2 = c0010k2.f;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(j2);
                            arrayList3.add(c0008i.f253a);
                            duration.translationX(c0008i.f256e - c0008i.f254c);
                            duration.translationY(c0008i.f - c0008i.f255d);
                            duration.alpha(0.0f).setListener(new C0007h(c0010k2, c0008i, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                            arrayList3.add(c0008i.b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new C0007h(c0010k2, c0008i, viewPropertyAnimatorAnimate2, view3, 1)).start();
                        }
                        it2 = it2;
                    }
                    break;
                }
                break;
            default:
                ArrayList arrayList4 = this.b;
                Iterator it3 = arrayList4.iterator();
                while (true) {
                    boolean zHasNext3 = it3.hasNext();
                    C0010k c0010k3 = this.f218c;
                    if (!zHasNext3) {
                        arrayList4.clear();
                        c0010k3.f273l.remove(arrayList4);
                    } else {
                        e0 e0Var4 = (e0) it3.next();
                        c0010k3.getClass();
                        View view4 = e0Var4.f220a;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                        c0010k3.f276o.add(e0Var4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(c0010k3.f150c).setListener(new C0005f(c0010k3, e0Var4, view4, viewPropertyAnimatorAnimate3)).start();
                    }
                    break;
                }
                break;
        }
    }
}
