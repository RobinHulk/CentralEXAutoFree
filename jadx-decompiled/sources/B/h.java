package B;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.WeakHashMap;
import p014j.C0252s0;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class h implements View.OnTouchListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f14r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f15a;
    public final AccelerateInterpolator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ListView f16c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f17d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f18e;
    public final float[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f19g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f20h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f21i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f22j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[] f23k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f24l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f25m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f26n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f27o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f28p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C0252s0 f29q;

    public h(C0252s0 c0252s0) {
        a aVar = new a();
        aVar.f9e = Long.MIN_VALUE;
        aVar.f10g = -1L;
        aVar.f = 0L;
        this.f15a = aVar;
        this.b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f18e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f21i = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f22j = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f23k = fArr5;
        this.f16c = c0252s0;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.f19g = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f20h = f14r;
        aVar.f6a = 500;
        aVar.b = 500;
        this.f29q = c0252s0;
    }

    public static float b(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    public final float a(float f, float f2, float f3, int i2) {
        float fB;
        float interpolation;
        float fB2 = b(this.f18e[i2] * f2, 0.0f, this.f[i2]);
        float fC = c(f2 - f, fB2) - c(f, fB2);
        AccelerateInterpolator accelerateInterpolator = this.b;
        if (fC >= 0.0f) {
            if (fC > 0.0f) {
                interpolation = accelerateInterpolator.getInterpolation(fC);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f4 = this.f21i[i2];
            float f5 = this.f22j[i2];
            float f6 = this.f23k[i2];
            float f7 = f4 * f3;
            return fB > 0.0f ? b(fB * f7, f5, f6) : -b((-fB) * f7, f5, f6);
        }
        interpolation = -accelerateInterpolator.getInterpolation(-fC);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f8 = this.f21i[i2];
        float f9 = this.f22j[i2];
        float f10 = this.f23k[i2];
        float f11 = f8 * f3;
        if (fB > 0.0f) {
        }
    }

    public final float c(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f19g;
        if (i2 == 0 || i2 == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.f27o && i2 == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    public final void d() {
        int i2 = 0;
        if (this.f25m) {
            this.f27o = false;
            return;
        }
        a aVar = this.f15a;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i3 = (int) (jCurrentAnimationTimeMillis - aVar.f9e);
        int i4 = aVar.b;
        if (i3 > i4) {
            i2 = i4;
        } else if (i3 >= 0) {
            i2 = i3;
        }
        aVar.f12i = i2;
        aVar.f11h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f10g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        C0252s0 c0252s0;
        int count;
        a aVar = this.f15a;
        float f = aVar.f8d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(aVar.f7c);
        if (iAbs == 0 || (count = (c0252s0 = this.f29q).getCount()) == 0) {
            return false;
        }
        int childCount = c0252s0.getChildCount();
        int firstVisiblePosition = c0252s0.getFirstVisiblePosition();
        int i2 = firstVisiblePosition + childCount;
        if (iAbs > 0) {
            if (i2 >= count && c0252s0.getChildAt(childCount - 1).getBottom() <= c0252s0.getHeight()) {
                return false;
            }
        } else {
            if (iAbs >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && c0252s0.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i2;
        int i3 = 0;
        if (!this.f28p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                d();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    d();
                }
            }
            return false;
        }
        this.f26n = true;
        this.f24l = false;
        float x2 = motionEvent.getX();
        float width = view.getWidth();
        ListView listView = this.f16c;
        float fA = a(x2, width, listView.getWidth(), 0);
        float fA2 = a(motionEvent.getY(), view.getHeight(), listView.getHeight(), 1);
        a aVar = this.f15a;
        aVar.f7c = fA;
        aVar.f8d = fA2;
        if (!this.f27o && e()) {
            if (this.f17d == null) {
                this.f17d = new b(this, i3);
            }
            this.f27o = true;
            this.f25m = true;
            if (this.f24l || (i2 = this.f20h) <= 0) {
                this.f17d.run();
            } else {
                b bVar = this.f17d;
                long j2 = i2;
                WeakHashMap weakHashMap = N.f4222a;
                AbstractC0290y.n(listView, bVar, j2);
            }
            this.f24l = true;
        }
        return false;
    }
}
