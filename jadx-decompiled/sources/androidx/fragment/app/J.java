package androidx.fragment.app;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class J implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1784a;
    public final /* synthetic */ Object b;

    public /* synthetic */ J(Object obj, int i2) {
        this.f1784a = i2;
        this.b = obj;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f1784a) {
            case 0:
                View view2 = (View) this.b;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = p034y.N.f4222a;
                p034y.B.c(view2);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.f1784a) {
            case 0:
                break;
            case 1:
                p012i.f fVar = (p012i.f) this.b;
                ViewTreeObserver viewTreeObserver = fVar.f3328x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        fVar.f3328x = view.getViewTreeObserver();
                    }
                    fVar.f3328x.removeGlobalOnLayoutListener(fVar.f3313i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                p012i.D d2 = (p012i.D) this.b;
                ViewTreeObserver viewTreeObserver2 = d2.f3281o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        d2.f3281o = view.getViewTreeObserver();
                    }
                    d2.f3281o.removeGlobalOnLayoutListener(d2.f3275i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }
}
