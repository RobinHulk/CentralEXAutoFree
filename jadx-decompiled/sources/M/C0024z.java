package M;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: M.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0024z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f373a = -1;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public O f374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f376e;
    public View f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Y f377g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f381k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f382l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f383m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f384n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f385o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f386p;

    public C0024z(Context context) {
        Y y2 = new Y();
        y2.f186d = -1;
        y2.f = false;
        y2.f188g = 0;
        y2.f184a = 0;
        y2.b = 0;
        y2.f185c = Integer.MIN_VALUE;
        y2.f187e = null;
        this.f377g = y2;
        this.f379i = new LinearInterpolator();
        this.f380j = new DecelerateInterpolator();
        this.f383m = false;
        this.f385o = 0;
        this.f386p = 0;
        this.f382l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    public float b(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public final int c(int i2) {
        float fAbs = Math.abs(i2);
        if (!this.f383m) {
            this.f384n = b(this.f382l);
            this.f383m = true;
        }
        return (int) Math.ceil(fAbs * this.f384n);
    }

    public final PointF d(int i2) {
        Object obj = this.f374c;
        if (obj instanceof Z) {
            return ((Z) obj).a(i2);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + Z.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f8  */
    public final void e(int i2, int i3) {
        PointF pointFD;
        RecyclerView recyclerView = this.b;
        if (this.f373a == -1 || recyclerView == null) {
            g();
        }
        if (this.f375d && this.f == null && this.f374c != null && (pointFD = d(this.f373a)) != null) {
            float f = pointFD.x;
            if (f != 0.0f || pointFD.y != 0.0f) {
                recyclerView.X((int) Math.signum(f), (int) Math.signum(pointFD.y), null);
            }
        }
        this.f375d = false;
        View view = this.f;
        Y y2 = this.f377g;
        if (view != null) {
            this.b.getClass();
            e0 e0VarI = RecyclerView.I(view);
            if ((e0VarI != null ? e0VarI.b() : -1) == this.f373a) {
                View view2 = this.f;
                a0 a0Var = recyclerView.f2037c0;
                f(view2, y2);
                y2.a(recyclerView);
                g();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.f376e) {
            a0 a0Var2 = recyclerView.f2037c0;
            if (this.b.f2052l.v() == 0) {
                g();
            } else {
                int i4 = this.f385o;
                int i5 = i4 - i2;
                if (i4 * i5 <= 0) {
                    i5 = 0;
                }
                this.f385o = i5;
                int i6 = this.f386p;
                int i7 = i6 - i3;
                if (i6 * i7 <= 0) {
                    i7 = 0;
                }
                this.f386p = i7;
                if (i5 == 0 && i7 == 0) {
                    PointF pointFD2 = d(this.f373a);
                    if (pointFD2 != null) {
                        float f2 = pointFD2.x;
                        if (f2 == 0.0f && pointFD2.y == 0.0f) {
                            y2.f186d = this.f373a;
                            g();
                        } else {
                            float f3 = pointFD2.y;
                            float fSqrt = (float) Math.sqrt((f3 * f3) + (f2 * f2));
                            float f4 = pointFD2.x / fSqrt;
                            pointFD2.x = f4;
                            float f5 = pointFD2.y / fSqrt;
                            pointFD2.y = f5;
                            this.f381k = pointFD2;
                            this.f385o = (int) (f4 * 10000.0f);
                            this.f386p = (int) (f5 * 10000.0f);
                            int iC = c(10000);
                            int i8 = (int) (this.f385o * 1.2f);
                            int i9 = (int) (this.f386p * 1.2f);
                            LinearInterpolator linearInterpolator = this.f379i;
                            y2.f184a = i8;
                            y2.b = i9;
                            y2.f185c = (int) (iC * 1.2f);
                            y2.f187e = linearInterpolator;
                            y2.f = true;
                        }
                    } else {
                        y2.f186d = this.f373a;
                        g();
                    }
                }
            }
            boolean z2 = y2.f186d >= 0;
            y2.a(recyclerView);
            if (z2 && this.f376e) {
                this.f375d = true;
                recyclerView.f2032W.a();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    public void f(View view, Y y2) {
        int i2;
        int iA;
        PointF pointF = this.f381k;
        int i3 = -1;
        int iA2 = 0;
        if (pointF != null) {
            float f = pointF.x;
            if (f == 0.0f) {
                i2 = 0;
            } else {
                i2 = f > 0.0f ? 1 : -1;
            }
        } else {
            i2 = 0;
        }
        O o2 = this.f374c;
        if (o2 == null || !o2.d()) {
            iA = 0;
        } else {
            P p2 = (P) view.getLayoutParams();
            iA = a((view.getLeft() - ((P) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) p2).leftMargin, view.getRight() + ((P) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) p2).rightMargin, o2.A(), o2.f168n - o2.B(), i2);
        }
        PointF pointF2 = this.f381k;
        if (pointF2 != null) {
            float f2 = pointF2.y;
            if (f2 == 0.0f) {
                i3 = 0;
            } else if (f2 > 0.0f) {
                i3 = 1;
            }
        } else {
            i3 = 0;
        }
        O o3 = this.f374c;
        if (o3 != null && o3.e()) {
            P p3 = (P) view.getLayoutParams();
            iA2 = a((view.getTop() - ((P) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) p3).topMargin, view.getBottom() + ((P) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) p3).bottomMargin, o3.C(), o3.f169o - o3.z(), i3);
        }
        int iCeil = (int) Math.ceil(((double) c((int) Math.sqrt((iA2 * iA2) + (iA * iA)))) / 0.3356d);
        if (iCeil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.f380j;
            y2.f184a = -iA;
            y2.b = -iA2;
            y2.f185c = iCeil;
            y2.f187e = decelerateInterpolator;
            y2.f = true;
        }
    }

    public final void g() {
        if (this.f376e) {
            this.f376e = false;
            this.f386p = 0;
            this.f385o = 0;
            this.f381k = null;
            this.b.f2037c0.f191a = -1;
            this.f = null;
            this.f373a = -1;
            this.f375d = false;
            O o2 = this.f374c;
            if (o2.f160e == this) {
                o2.f160e = null;
            }
            this.f374c = null;
            this.b = null;
        }
    }
}
