package E;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.sun.mail.imap.IMAPStore;
import java.util.Arrays;
import java.util.WeakHashMap;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final d f65v = new d(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f66a;
    public final int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f68d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f69e;
    public float[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f70g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f71h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f72i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f73j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f74k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f75l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f76m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f77n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f78o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final OverScroller f79p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final A.b f80q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f81r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f82s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CoordinatorLayout f83t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f67c = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final B.b f84u = new B.b(this, 1);

    public e(Context context, CoordinatorLayout coordinatorLayout, A.b bVar) {
        if (coordinatorLayout == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f83t = coordinatorLayout;
        this.f80q = bVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f78o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.f76m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f77n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f79p = new OverScroller(context, f65v);
    }

    public final void a() {
        this.f67c = -1;
        float[] fArr = this.f68d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f69e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.f70g, 0.0f);
            Arrays.fill(this.f71h, 0);
            Arrays.fill(this.f72i, 0);
            Arrays.fill(this.f73j, 0);
            this.f74k = 0;
        }
        VelocityTracker velocityTracker = this.f75l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f75l = null;
        }
    }

    public final void b(View view, int i2) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.f83t;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.f81r = view;
        this.f67c = i2;
        this.f80q.R(view, i2);
        n(1);
    }

    public final boolean c(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        A.b bVar = this.f80q;
        boolean z2 = bVar.D(view) > 0;
        boolean z3 = bVar.E() > 0;
        if (z2 && z3) {
            float f3 = (f2 * f2) + (f * f);
            int i2 = this.b;
            return f3 > ((float) (i2 * i2));
        }
        if (z2) {
            return Math.abs(f) > ((float) this.b);
        }
        return z3 && Math.abs(f2) > ((float) this.b);
    }

    public final void d(int i2) {
        float[] fArr = this.f68d;
        if (fArr != null) {
            int i3 = this.f74k;
            int i4 = 1 << i2;
            if ((i3 & i4) != 0) {
                fArr[i2] = 0.0f;
                this.f69e[i2] = 0.0f;
                this.f[i2] = 0.0f;
                this.f70g[i2] = 0.0f;
                this.f71h[i2] = 0;
                this.f72i[i2] = 0;
                this.f73j[i2] = 0;
                this.f74k = (~i4) & i3;
            }
        }
    }

    public final int e(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.f83t.getWidth();
        float f = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i2) / width) - 0.5f) * 0.47123894f)) * f) + f;
        int iAbs = Math.abs(i3);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f66a == 2) {
            OverScroller overScroller = this.f79p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f81r.getLeft();
            int top = currY - this.f81r.getTop();
            if (left != 0) {
                View view = this.f81r;
                WeakHashMap weakHashMap = N.f4222a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f81r;
                WeakHashMap weakHashMap2 = N.f4222a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f80q.T(this.f81r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f83t.post(this.f84u);
            }
        }
        return this.f66a == 2;
    }

    public final View g(int i2, int i3) {
        CoordinatorLayout coordinatorLayout = this.f83t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f80q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i2, int i3, int i4, int i5) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f81r.getLeft();
        int top = this.f81r.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        OverScroller overScroller = this.f79p;
        int i8 = 0;
        if (i6 == 0 && i7 == 0) {
            overScroller.abortAnimation();
            n(0);
            return false;
        }
        View view = this.f81r;
        int i9 = (int) this.f77n;
        int i10 = (int) this.f76m;
        int iAbs = Math.abs(i4);
        if (iAbs < i9) {
            i4 = 0;
        } else if (iAbs > i10) {
            i4 = i4 > 0 ? i10 : -i10;
        }
        int iAbs2 = Math.abs(i5);
        if (iAbs2 < i9) {
            i5 = i8;
        } else if (iAbs2 > i10) {
            if (i5 > 0) {
                i5 = i10;
            } else {
                i8 = -i10;
                i5 = i8;
            }
        }
        int iAbs3 = Math.abs(i6);
        int iAbs4 = Math.abs(i7);
        int iAbs5 = Math.abs(i4);
        int iAbs6 = Math.abs(i5);
        int i11 = iAbs5 + iAbs6;
        int i12 = iAbs3 + iAbs4;
        if (i4 != 0) {
            f = iAbs5;
            f2 = i11;
        } else {
            f = iAbs3;
            f2 = i12;
        }
        float f5 = f / f2;
        if (i5 != 0) {
            f3 = iAbs6;
            f4 = i11;
        } else {
            f3 = iAbs4;
            f4 = i12;
        }
        float f6 = f3 / f4;
        A.b bVar = this.f80q;
        overScroller.startScroll(left, top, i6, i7, (int) ((e(i7, i5, bVar.E()) * f6) + (e(i6, i4, bVar.D(view)) * f5)));
        n(2);
        return true;
    }

    public final boolean i(int i2) {
        if ((this.f74k & (1 << i2)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f75l == null) {
            this.f75l = VelocityTracker.obtain();
        }
        this.f75l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x2, (int) y2);
            l(x2, y2, pointerId);
            q(viewG, pointerId);
            int i4 = this.f71h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f66a == 1) {
                k();
            }
            a();
            return;
        }
        A.b bVar = this.f80q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f66a == 1) {
                    this.f82s = true;
                    bVar.U(this.f81r, 0.0f, 0.0f);
                    this.f82s = false;
                    if (this.f66a == 1) {
                        n(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(x3, y3, pointerId2);
                if (this.f66a == 0) {
                    q(g((int) x3, (int) y3), pointerId2);
                    int i5 = this.f71h[pointerId2];
                    return;
                }
                int i6 = (int) x3;
                int i7 = (int) y3;
                View view = this.f81r;
                if (view != null) {
                    i3 = (i6 < view.getLeft() || i6 >= view.getRight() || i7 < view.getTop() || i7 >= view.getBottom()) ? 0 : 1;
                }
                if (i3 != 0) {
                    q(this.f81r, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f66a == 1 && pointerId3 == this.f67c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i3 >= pointerCount) {
                        i2 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i3);
                    if (pointerId4 != this.f67c) {
                        View viewG2 = g((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                        View view2 = this.f81r;
                        if (viewG2 == view2 && q(view2, pointerId4)) {
                            i2 = this.f67c;
                            break;
                        }
                    }
                    i3++;
                }
                if (i2 == -1) {
                    k();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f66a == 1) {
            if (i(this.f67c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f67c);
                float x4 = motionEvent.getX(iFindPointerIndex);
                float y4 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i8 = this.f67c;
                int i9 = (int) (x4 - fArr[i8]);
                int i10 = (int) (y4 - this.f70g[i8]);
                int left = this.f81r.getLeft() + i9;
                int top = this.f81r.getTop() + i10;
                int left2 = this.f81r.getLeft();
                int top2 = this.f81r.getTop();
                if (i9 != 0) {
                    left = bVar.k(this.f81r, left);
                    WeakHashMap weakHashMap = N.f4222a;
                    this.f81r.offsetLeftAndRight(left - left2);
                }
                if (i10 != 0) {
                    top = bVar.l(this.f81r, top);
                    WeakHashMap weakHashMap2 = N.f4222a;
                    this.f81r.offsetTopAndBottom(top - top2);
                }
                if (i9 != 0 || i10 != 0) {
                    bVar.T(this.f81r, left, top);
                }
                m(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i3 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i3);
            if (i(pointerId5)) {
                float x5 = motionEvent.getX(i3);
                float y5 = motionEvent.getY(i3);
                float f = x5 - this.f68d[pointerId5];
                float f2 = y5 - this.f69e[pointerId5];
                Math.abs(f);
                Math.abs(f2);
                int i11 = this.f71h[pointerId5];
                Math.abs(f2);
                Math.abs(f);
                int i12 = this.f71h[pointerId5];
                Math.abs(f);
                Math.abs(f2);
                int i13 = this.f71h[pointerId5];
                Math.abs(f2);
                Math.abs(f);
                int i14 = this.f71h[pointerId5];
                if (this.f66a != 1) {
                    View viewG3 = g((int) x5, (int) y5);
                    if (c(viewG3, f, f2) && q(viewG3, pointerId5)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i3++;
        }
        m(motionEvent);
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f75l;
        float f = this.f76m;
        velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE, f);
        float xVelocity = this.f75l.getXVelocity(this.f67c);
        float f2 = this.f77n;
        float fAbs = Math.abs(xVelocity);
        float f3 = 0.0f;
        if (fAbs < f2) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f75l.getYVelocity(this.f67c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 >= f2) {
            if (fAbs2 > f) {
                if (yVelocity <= 0.0f) {
                    f = -f;
                }
                f3 = f;
            } else {
                f3 = yVelocity;
            }
        }
        this.f82s = true;
        this.f80q.U(this.f81r, xVelocity, f3);
        this.f82s = false;
        if (this.f66a == 1) {
            n(0);
        }
    }

    public final void l(float f, float f2, int i2) {
        float[] fArr = this.f68d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f69e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f70g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f71h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f72i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f73j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f68d = fArr2;
            this.f69e = fArr3;
            this.f = fArr4;
            this.f70g = fArr5;
            this.f71h = iArr;
            this.f72i = iArr2;
            this.f73j = iArr3;
        }
        float[] fArr9 = this.f68d;
        this.f[i2] = f;
        fArr9[i2] = f;
        float[] fArr10 = this.f69e;
        this.f70g[i2] = f2;
        fArr10[i2] = f2;
        int[] iArr7 = this.f71h;
        int i4 = (int) f;
        int i5 = (int) f2;
        CoordinatorLayout coordinatorLayout = this.f83t;
        int left = coordinatorLayout.getLeft();
        int i6 = this.f78o;
        int i7 = i4 < left + i6 ? 1 : 0;
        if (i5 < coordinatorLayout.getTop() + i6) {
            i7 |= 4;
        }
        if (i4 > coordinatorLayout.getRight() - i6) {
            i7 |= 2;
        }
        if (i5 > coordinatorLayout.getBottom() - i6) {
            i7 |= 8;
        }
        iArr7[i2] = i7;
        this.f74k |= 1 << i2;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (i(pointerId)) {
                float x2 = motionEvent.getX(i2);
                float y2 = motionEvent.getY(i2);
                this.f[pointerId] = x2;
                this.f70g[pointerId] = y2;
            }
        }
    }

    public final void n(int i2) {
        this.f83t.removeCallbacks(this.f84u);
        if (this.f66a != i2) {
            this.f66a = i2;
            this.f80q.S(i2);
            if (this.f66a == 0) {
                this.f81r = null;
            }
        }
    }

    public final boolean o(int i2, int i3) {
        if (this.f82s) {
            return h(i2, i3, (int) this.f75l.getXVelocity(this.f67c), (int) this.f75l.getYVelocity(this.f67c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:61:0x0114  */
    public final boolean p(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f75l == null) {
            this.f75l = VelocityTracker.obtain();
        }
        this.f75l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            l(x2, y2, pointerId);
            View viewG2 = g((int) x2, (int) y2);
            if (viewG2 == this.f81r && this.f66a == 2) {
                q(viewG2, pointerId);
            }
            int i2 = this.f71h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(x3, y3, pointerId2);
                int i3 = this.f66a;
                if (i3 == 0) {
                    int i4 = this.f71h[pointerId2];
                } else if (i3 == 2 && (viewG = g((int) x3, (int) y3)) == this.f81r) {
                    q(viewG, pointerId2);
                }
            } else if (actionMasked == 6) {
                d(motionEvent.getPointerId(actionIndex));
            }
        } else if (this.f68d != null && this.f69e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i5 = 0; i5 < pointerCount; i5++) {
                int pointerId3 = motionEvent.getPointerId(i5);
                if (i(pointerId3)) {
                    float x4 = motionEvent.getX(i5);
                    float y4 = motionEvent.getY(i5);
                    float f = x4 - this.f68d[pointerId3];
                    float f2 = y4 - this.f69e[pointerId3];
                    View viewG3 = g((int) x4, (int) y4);
                    boolean z2 = viewG3 != null && c(viewG3, f, f2);
                    if (!z2) {
                        Math.abs(f);
                        Math.abs(f2);
                        int i6 = this.f71h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f);
                        int i7 = this.f71h[pointerId3];
                        Math.abs(f);
                        Math.abs(f2);
                        int i8 = this.f71h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f);
                        int i9 = this.f71h[pointerId3];
                        if (this.f66a != 1) {
                            break;
                        }
                    } else {
                        int left = viewG3.getLeft();
                        A.b bVar = this.f80q;
                        int iK = bVar.k(viewG3, ((int) f) + left);
                        int top = viewG3.getTop();
                        int iL = bVar.l(viewG3, ((int) f2) + top);
                        int iD = bVar.D(viewG3);
                        int iE = bVar.E();
                        if ((iD == 0 || (iD > 0 && iK == left)) && (iE == 0 || (iE > 0 && iL == top))) {
                            break;
                        }
                        Math.abs(f);
                        Math.abs(f2);
                        int i10 = this.f71h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f);
                        int i11 = this.f71h[pointerId3];
                        Math.abs(f);
                        Math.abs(f2);
                        int i12 = this.f71h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f);
                        int i13 = this.f71h[pointerId3];
                        if (this.f66a != 1 || (z2 && q(viewG3, pointerId3))) {
                            break;
                        }
                    }
                }
            }
            m(motionEvent);
        }
        return this.f66a == 1;
    }

    public final boolean q(View view, int i2) {
        if (view == this.f81r && this.f67c == i2) {
            return true;
        }
        if (view == null || !this.f80q.h0(view, i2)) {
            return false;
        }
        this.f67c = i2;
        b(view, i2);
        return true;
    }
}
