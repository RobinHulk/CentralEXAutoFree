package p034y;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f4228a;

    public V(View view) {
        this.f4228a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.f4228a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.f4228a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j2) {
        View view = (View) this.f4228a.get();
        if (view != null) {
            view.animate().setDuration(j2);
        }
    }

    public final void d(W w2) {
        View view = (View) this.f4228a.get();
        if (view != null) {
            if (w2 != null) {
                view.animate().setListener(new T(w2, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.f4228a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
