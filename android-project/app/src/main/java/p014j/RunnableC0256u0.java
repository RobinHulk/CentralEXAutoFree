package p014j;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: renamed from: j.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0256u0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3698a;
    public final /* synthetic */ AbstractViewOnTouchListenerC0258v0 b;

    public /* synthetic */ RunnableC0256u0(AbstractViewOnTouchListenerC0258v0 abstractViewOnTouchListenerC0258v0, int i2) {
        this.f3698a = i2;
        this.b = abstractViewOnTouchListenerC0258v0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3698a) {
            case 0:
                ViewParent parent = this.b.f3703d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                AbstractViewOnTouchListenerC0258v0 abstractViewOnTouchListenerC0258v0 = this.b;
                abstractViewOnTouchListenerC0258v0.a();
                View view = abstractViewOnTouchListenerC0258v0.f3703d;
                if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC0258v0.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    abstractViewOnTouchListenerC0258v0.f3705g = true;
                    break;
                }
                break;
        }
    }
}
