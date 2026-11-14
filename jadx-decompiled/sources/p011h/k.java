package p011h;

import android.view.View;
import android.view.animation.BaseInterpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p007e.AbstractC0201a;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BaseInterpolator f3266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AbstractC0201a f3267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3268e;
    public long b = -1;
    public final j f = new j(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3265a = new ArrayList();

    public final void a() {
        if (this.f3268e) {
            Iterator it = this.f3265a.iterator();
            while (it.hasNext()) {
                ((V) it.next()).b();
            }
            this.f3268e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f3268e) {
            return;
        }
        for (V v2 : this.f3265a) {
            long j2 = this.b;
            if (j2 >= 0) {
                v2.c(j2);
            }
            BaseInterpolator baseInterpolator = this.f3266c;
            if (baseInterpolator != null && (view = (View) v2.f4228a.get()) != null) {
                view.animate().setInterpolator(baseInterpolator);
            }
            if (this.f3267d != null) {
                v2.d(this.f);
            }
            View view2 = (View) v2.f4228a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f3268e = true;
    }
}
