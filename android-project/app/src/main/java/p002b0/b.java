package p002b0;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class b extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2099d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f2100e;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f2100e = swipeDismissBehavior;
    }

    @Override // A.b
    public final int D(View view) {
        return view.getWidth();
    }

    @Override // A.b
    public final void R(View view, int i2) {
        this.f2099d = i2;
        this.f2098c = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // A.b
    public final void S(int i2) {
        this.f2100e.getClass();
    }

    @Override // A.b
    public final void T(View view, int i2, int i3) {
        float f = this.f2098c;
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f2100e;
        float f2 = (width * swipeDismissBehavior.f2669d) + f;
        float width2 = (view.getWidth() * swipeDismissBehavior.f2670e) + this.f2098c;
        float f3 = i2;
        if (f3 <= f2) {
            view.setAlpha(1.0f);
        } else if (f3 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f3 - f2) / (width2 - f2))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0055  */
    /* JADX WARN: Code duplicated, block: B:29:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:0x005f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061  */
    @Override // A.b
    public final void U(View view, float f, float f2) {
        int left;
        int i2;
        int i3;
        this.f2099d = -1;
        int width = view.getWidth();
        boolean z2 = true;
        SwipeDismissBehavior swipeDismissBehavior = this.f2100e;
        if (f != 0.0f) {
            WeakHashMap weakHashMap = N.f4222a;
            boolean z3 = AbstractC0291z.d(view) == 1;
            int i4 = swipeDismissBehavior.f2668c;
            if (i4 != 2 && (i4 != 0 ? i4 != 1 || (!z3 ? f < 0.0f : f > 0.0f) : !z3 ? f > 0.0f : f < 0.0f)) {
                i3 = this.f2098c;
                z2 = false;
            } else {
                left = view.getLeft();
                i2 = this.f2098c;
                if (left < i2) {
                    i3 = i2 - width;
                } else {
                    i3 = i2 + width;
                }
            }
        } else {
            int left2 = view.getLeft() - this.f2098c;
            float width2 = view.getWidth();
            swipeDismissBehavior.getClass();
            if (Math.abs(left2) >= Math.round(width2 * 0.5f)) {
                left = view.getLeft();
                i2 = this.f2098c;
                if (left < i2) {
                    i3 = i2 - width;
                } else {
                    i3 = i2 + width;
                }
            } else {
                i3 = this.f2098c;
                z2 = false;
            }
        }
        if (swipeDismissBehavior.f2667a.o(i3, view.getTop())) {
            c cVar = new c(swipeDismissBehavior, view, z2);
            WeakHashMap weakHashMap2 = N.f4222a;
            AbstractC0290y.m(view, cVar);
        }
    }

    @Override // A.b
    public final boolean h0(View view, int i2) {
        int i3 = this.f2099d;
        return (i3 == -1 || i3 == i2) && this.f2100e.r(view);
    }

    @Override // A.b
    public final int k(View view, int i2) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = N.f4222a;
        boolean z2 = AbstractC0291z.d(view) == 1;
        int i3 = this.f2100e.f2668c;
        if (i3 == 0) {
            if (z2) {
                width = this.f2098c - view.getWidth();
                width2 = this.f2098c;
            } else {
                width = this.f2098c;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i3 != 1) {
            width = this.f2098c - view.getWidth();
            width2 = view.getWidth() + this.f2098c;
        } else if (z2) {
            width = this.f2098c;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f2098c - view.getWidth();
            width2 = this.f2098c;
        }
        return Math.min(Math.max(width, i2), width2);
    }

    @Override // A.b
    public final int l(View view, int i2) {
        return view.getTop();
    }
}
