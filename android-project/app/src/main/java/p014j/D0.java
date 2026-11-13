package p014j;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class D0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E0 f3421a;

    public D0(E0 e1) {
        this.f3421a = e1;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        A a2;
        int action = motionEvent.getAction();
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        E0 e1 = this.f3421a;
        if (action == 0 && (a2 = e1.f3446y) != null && a2.isShowing() && x2 >= 0 && x2 < e1.f3446y.getWidth() && y2 >= 0 && y2 < e1.f3446y.getHeight()) {
            e1.f3442u.postDelayed(e1.f3438q, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        e1.f3442u.removeCallbacks(e1.f3438q);
        return false;
    }
}
