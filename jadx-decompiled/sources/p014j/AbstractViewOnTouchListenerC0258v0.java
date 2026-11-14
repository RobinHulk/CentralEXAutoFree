package p014j;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import p012i.C;

/* JADX INFO: renamed from: j.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0258v0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3701a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f3703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RunnableC0256u0 f3704e;
    public RunnableC0256u0 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f3707i = new int[2];

    public AbstractViewOnTouchListenerC0258v0(View view) {
        this.f3703d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f3701a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.f3702c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        RunnableC0256u0 runnableC0256u0 = this.f;
        View view = this.f3703d;
        if (runnableC0256u0 != null) {
            view.removeCallbacks(runnableC0256u0);
        }
        RunnableC0256u0 runnableC0256u1 = this.f3704e;
        if (runnableC0256u1 != null) {
            view.removeCallbacks(runnableC0256u1);
        }
    }

    public abstract C b();

    public abstract boolean c();

    public boolean d() {
        C cB = b();
        if (cB == null || !cB.b()) {
            return true;
        }
        cB.dismiss();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z2;
        C0252s0 c0252s0K;
        boolean z3 = this.f3705g;
        View view2 = this.f3703d;
        if (z3) {
            C cB = b();
            if (cB != null && cB.b() && (c0252s0K = cB.k()) != null && c0252s0K.isShown()) {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f3707i;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                c0252s0K.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = c0252s0K.b(motionEventObtainNoHistory, this.f3706h);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z4 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z4) {
                    z2 = true;
                } else if (d()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else if (d()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    this.f3706h = motionEvent.getPointerId(0);
                    if (this.f3704e == null) {
                        this.f3704e = new RunnableC0256u0(this, 0);
                    }
                    view2.postDelayed(this.f3704e, this.b);
                    if (this.f == null) {
                        this.f = new RunnableC0256u0(this, 1);
                    }
                    view2.postDelayed(this.f, this.f3702c);
                } else if (actionMasked2 == 1) {
                    a();
                } else if (actionMasked2 == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f3706h);
                    if (iFindPointerIndex >= 0) {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float f = this.f3701a;
                        float f2 = -f;
                        if (x2 < f2 || y2 < f2 || x2 >= (view2.getRight() - view2.getLeft()) + f || y2 >= (view2.getBottom() - view2.getTop()) + f) {
                            a();
                            view2.getParent().requestDisallowInterceptTouchEvent(true);
                            if (c()) {
                                z2 = true;
                            }
                        }
                    }
                } else if (actionMasked2 == 3) {
                    a();
                }
                z2 = false;
            } else {
                z2 = false;
            }
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view2.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f3705g = z2;
        return z2 || z3;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f3705g = false;
        this.f3706h = -1;
        RunnableC0256u0 runnableC0256u0 = this.f3704e;
        if (runnableC0256u0 != null) {
            this.f3703d.removeCallbacks(runnableC0256u0);
        }
    }
}
