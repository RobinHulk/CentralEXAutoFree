package p014j;

import android.os.Handler;
import android.widget.AbsListView;

/* JADX INFO: loaded from: classes.dex */
public final class C0 implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E0 f3419a;

    public C0(E0 e1) {
        this.f3419a = e1;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 1) {
            E0 e1 = this.f3419a;
            if (e1.f3446y.getInputMethodMode() == 2 || e1.f3446y.getContentView() == null) {
                return;
            }
            Handler handler = e1.f3442u;
            B0 b1 = e1.f3438q;
            handler.removeCallbacks(b1);
            b1.run();
        }
    }
}
