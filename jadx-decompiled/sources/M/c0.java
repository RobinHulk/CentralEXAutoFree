package M;

import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f208a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OverScroller f209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Interpolator f210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f211e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f212g;

    public c0(RecyclerView recyclerView) {
        this.f212g = recyclerView;
        E.d dVar = RecyclerView.u0;
        this.f210d = dVar;
        this.f211e = false;
        this.f = false;
        this.f209c = new OverScroller(recyclerView.getContext(), dVar);
    }

    public final void a() {
        if (this.f211e) {
            this.f = true;
            return;
        }
        RecyclerView recyclerView = this.f212g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = p034y.N.f4222a;
        AbstractC0290y.m(recyclerView, this);
    }

    public final void b(int i2, int i3, int i4, BaseInterpolator baseInterpolator) {
        int iRound;
        RecyclerView recyclerView = this.f212g;
        if (i4 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i2);
            int iAbs2 = Math.abs(i3);
            boolean z2 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt(0);
            int iSqrt2 = (int) Math.sqrt((i3 * i3) + (i2 * i2));
            int width = z2 ? recyclerView.getWidth() : recyclerView.getHeight();
            int i5 = width / 2;
            float f = width;
            float f2 = i5;
            float fSin = (((float) Math.sin((Math.min(1.0f, (iSqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fSin / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z2) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            i4 = Math.min(iRound, 2000);
        }
        int i6 = i4;
        Interpolator interpolator = baseInterpolator;
        if (baseInterpolator == null) {
            interpolator = RecyclerView.u0;
        }
        if (this.f210d != interpolator) {
            this.f210d = interpolator;
            this.f209c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.b = 0;
        this.f208a = 0;
        recyclerView.setScrollState(2);
        this.f209c.startScroll(0, 0, i2, i3, i6);
        a();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        RecyclerView recyclerView = this.f212g;
        if (recyclerView.f2052l == null) {
            recyclerView.removeCallbacks(this);
            this.f209c.abortAnimation();
            return;
        }
        this.f = false;
        this.f211e = true;
        recyclerView.m();
        OverScroller overScroller = this.f209c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i7 = currX - this.f208a;
            int i8 = currY - this.b;
            this.f208a = currX;
            this.b = currY;
            int[] iArr = recyclerView.f2058o0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean zR = recyclerView.r(i7, i8, iArr, null, 1);
            int[] iArr2 = recyclerView.f2058o0;
            if (zR) {
                i7 -= iArr2[0];
                i8 -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.l(i7, i8);
            }
            if (recyclerView.f2050k != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.X(i7, i8, iArr2);
                int i9 = iArr2[0];
                int i10 = iArr2[1];
                int i11 = i7 - i9;
                int i12 = i8 - i10;
                C0024z c0024z = recyclerView.f2052l.f160e;
                if (c0024z != null && !c0024z.f375d && c0024z.f376e) {
                    int iB = recyclerView.f2037c0.b();
                    if (iB == 0) {
                        c0024z.g();
                    } else if (c0024z.f373a >= iB) {
                        c0024z.f373a = iB - 1;
                        c0024z.e(i9, i10);
                    } else {
                        c0024z.e(i9, i10);
                    }
                }
                i5 = i9;
                i2 = i11;
                i3 = i12;
                i4 = i10;
            } else {
                i2 = i7;
                i3 = i8;
                i4 = 0;
                i5 = 0;
            }
            if (!recyclerView.f2054m.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f2058o0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            int i13 = i4;
            recyclerView.s(i5, i4, i2, i3, null, 1, iArr3);
            int i14 = i2 - iArr2[0];
            int i15 = i3 - iArr2[1];
            if (i5 != 0 || i13 != 0) {
                recyclerView.t(i5, i13);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z2 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i14 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i15 != 0));
            C0024z c0024z2 = recyclerView.f2052l.f160e;
            if ((c0024z2 == null || !c0024z2.f375d) && z2) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i14 < 0) {
                        i6 = -currVelocity;
                    } else {
                        i6 = i14 > 0 ? currVelocity : 0;
                    }
                    if (i15 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i15 <= 0) {
                        currVelocity = 0;
                    }
                    if (i6 < 0) {
                        recyclerView.v();
                        if (recyclerView.f2016D.isFinished()) {
                            recyclerView.f2016D.onAbsorb(-i6);
                        }
                    } else if (i6 > 0) {
                        recyclerView.w();
                        if (recyclerView.f2018F.isFinished()) {
                            recyclerView.f2018F.onAbsorb(i6);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.x();
                        if (recyclerView.f2017E.isFinished()) {
                            recyclerView.f2017E.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.u();
                        if (recyclerView.f2019G.isFinished()) {
                            recyclerView.f2019G.onAbsorb(currVelocity);
                        }
                    }
                    if (i6 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = p034y.N.f4222a;
                        AbstractC0290y.k(recyclerView);
                    }
                }
                C0016q c0016q = recyclerView.f2035b0;
                int[] iArr4 = (int[]) c0016q.f337d;
                if (iArr4 != null) {
                    Arrays.fill(iArr4, -1);
                }
                c0016q.f336c = 0;
            } else {
                a();
                RunnableC0017s runnableC0017s = recyclerView.f2034a0;
                if (runnableC0017s != null) {
                    runnableC0017s.a(recyclerView, i5, i13);
                }
            }
        }
        C0024z c0024z3 = recyclerView.f2052l.f160e;
        if (c0024z3 != null && c0024z3.f375d) {
            c0024z3.e(0, 0);
        }
        this.f211e = false;
        if (!this.f) {
            recyclerView.setScrollState(0);
            recyclerView.c0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap2 = p034y.N.f4222a;
            AbstractC0290y.m(recyclerView, this);
        }
    }
}
