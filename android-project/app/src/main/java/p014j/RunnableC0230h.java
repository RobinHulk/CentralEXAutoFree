package p014j;

import android.view.View;
import p012i.j;
import p012i.l;

/* JADX INFO: renamed from: j.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0230h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0226f f3606a;
    public final /* synthetic */ C0234j b;

    public RunnableC0230h(C0234j c0234j, C0226f c0226f) {
        this.b = c0234j;
        this.f3606a = c0226f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar;
        C0234j c0234j = this.b;
        l lVar = c0234j.f3610c;
        if (lVar != null && (jVar = lVar.f3344e) != null) {
            jVar.b(lVar);
        }
        View view = (View) c0234j.f3614h;
        if (view != null && view.getWindowToken() != null) {
            C0226f c0226f = this.f3606a;
            if (c0226f.b()) {
                c0234j.f3625s = c0226f;
            } else if (c0226f.f3404e != null) {
                c0226f.d(0, 0, false, false);
                c0234j.f3625s = c0226f;
            }
        }
        c0234j.f3627u = null;
    }
}
