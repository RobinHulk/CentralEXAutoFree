package p014j;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: renamed from: j.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0220c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3544a;
    public final /* synthetic */ ActionBarOverlayLayout b;

    public /* synthetic */ RunnableC0220c(ActionBarOverlayLayout actionBarOverlayLayout, int i2) {
        this.f3544a = i2;
        this.b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3544a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.b;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.f1513w = actionBarOverlayLayout.f1495d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f1514x);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.b;
                actionBarOverlayLayout2.h();
                actionBarOverlayLayout2.f1513w = actionBarOverlayLayout2.f1495d.animate().translationY(-actionBarOverlayLayout2.f1495d.getHeight()).setListener(actionBarOverlayLayout2.f1514x);
                break;
        }
    }
}
