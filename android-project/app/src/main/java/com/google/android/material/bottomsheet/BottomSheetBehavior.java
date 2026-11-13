package com.google.android.material.bottomsheet;

import E.e;
import M.C0013n;
import T.C0081j1;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.ex.auto.R;
import com.sun.mail.imap.IMAPStore;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import p006d0.b;
import p006d0.c;
import p006d0.d;
import p007e.AbstractC0201a;
import p017k0.j;
import p023o.a;
import p025p0.f;
import p025p0.g;
import p025p0.k;
import p034y.A;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.B;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f2671A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f2672B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f2673C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f2674D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f2675E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2676F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public WeakReference f2677G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public WeakReference f2678H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f2679I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public VelocityTracker f2680J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f2681K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f2682L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f2683M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public HashMap f2684N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final b f2685O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2686a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2689e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f2692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2694k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k f2695l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2696m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public d f2697n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ValueAnimator f2698o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f2699p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2700q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2701r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f2702s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2703t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f2704u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2705v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2706w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f2707x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2708y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public e f2709z;

    public BottomSheetBehavior() {
        this.f2686a = 0;
        this.b = true;
        this.f2697n = null;
        this.f2702s = 0.5f;
        this.f2704u = -1.0f;
        this.f2707x = true;
        this.f2708y = 4;
        this.f2679I = new ArrayList();
        this.f2685O = new b(this);
    }

    public static View v(View view) {
        WeakHashMap weakHashMap = N.f4222a;
        if (D.p(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View viewV = v(viewGroup.getChildAt(i2));
            if (viewV != null) {
                return viewV;
            }
        }
        return null;
    }

    public final void A(View view, int i2) {
        int iW;
        int i3;
        if (i2 == 4) {
            iW = this.f2703t;
        } else if (i2 == 6) {
            iW = this.f2701r;
            if (this.b && iW <= (i3 = this.f2700q)) {
                i2 = 3;
                iW = i3;
            }
        } else if (i2 == 3) {
            iW = w();
        } else {
            if (!this.f2705v || i2 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i2);
            }
            iW = this.f2676F;
        }
        C(view, i2, iW, false);
    }

    public final boolean B(View view, float f) {
        if (this.f2706w) {
            return true;
        }
        if (view.getTop() < this.f2703t) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.f2703t)) / ((float) s()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r5 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        z(2);
        E(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r2.f2697n != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        r2.f2697n = new p006d0.d(r2, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        r5 = r2.f2697n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r5.b != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        r5.f2939c = r4;
        r4 = p034y.N.f4222a;
        p034y.AbstractC0290y.m(r3, r5);
        r2.f2697n.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
    
        r5.f2939c = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (r0.o(r3.getLeft(), r5) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(android.view.View r3, int r4, int r5, boolean r6) {
        /*
            r2 = this;
            E.e r0 = r2.f2709z
            if (r0 == 0) goto L56
            if (r6 == 0) goto L11
            int r6 = r3.getLeft()
            boolean r5 = r0.o(r6, r5)
            if (r5 == 0) goto L56
            goto L2e
        L11:
            int r6 = r3.getLeft()
            r0.f81r = r3
            r1 = -1
            r0.f67c = r1
            r1 = 0
            boolean r5 = r0.h(r6, r5, r1, r1)
            if (r5 != 0) goto L2c
            int r6 = r0.f66a
            if (r6 != 0) goto L2c
            android.view.View r6 = r0.f81r
            if (r6 == 0) goto L2c
            r6 = 0
            r0.f81r = r6
        L2c:
            if (r5 == 0) goto L56
        L2e:
            r5 = 2
            r2.z(r5)
            r2.E(r4)
            d0.d r5 = r2.f2697n
            if (r5 != 0) goto L40
            d0.d r5 = new d0.d
            r5.<init>(r2, r3, r4)
            r2.f2697n = r5
        L40:
            d0.d r5 = r2.f2697n
            boolean r6 = r5.b
            if (r6 != 0) goto L53
            r5.f2939c = r4
            java.util.WeakHashMap r4 = p034y.N.f4222a
            p034y.AbstractC0290y.m(r3, r5)
            d0.d r3 = r2.f2697n
            r4 = 1
            r3.b = r4
            goto L59
        L53:
            r5.f2939c = r4
            goto L59
        L56:
            r2.z(r4)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C(android.view.View, int, int, boolean):void");
    }

    public final void D() {
        View view;
        WeakReference weakReference = this.f2677G;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        N.f(view, 524288);
        N.d(view, 0);
        N.f(view, 262144);
        N.d(view, 0);
        N.f(view, 1048576);
        N.d(view, 0);
        if (this.f2705v && this.f2708y != 5) {
            N.g(view, p035z.d.f4272j, new C0081j1(this, 5));
        }
        int i2 = this.f2708y;
        if (i2 == 3) {
            N.g(view, p035z.d.f4271i, new C0081j1(this, this.b ? 4 : 6));
            return;
        }
        if (i2 == 4) {
            N.g(view, p035z.d.f4270h, new C0081j1(this, this.b ? 3 : 6));
        } else {
            if (i2 != 6) {
                return;
            }
            N.g(view, p035z.d.f4271i, new C0081j1(this, 4));
            N.g(view, p035z.d.f4270h, new C0081j1(this, 3));
        }
    }

    public final void E(int i2) {
        ValueAnimator valueAnimator = this.f2698o;
        if (i2 == 2) {
            return;
        }
        boolean z2 = i2 == 3;
        if (this.f2696m != z2) {
            this.f2696m = z2;
            if (this.f2692i == null || valueAnimator == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            }
            float f = z2 ? 0.0f : 1.0f;
            valueAnimator.setFloatValues(1.0f - f, f);
            valueAnimator.start();
        }
    }

    public final void F(boolean z2) {
        WeakReference weakReference = this.f2677G;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z2) {
                if (this.f2684N != null) {
                    return;
                } else {
                    this.f2684N = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.f2677G.get() && z2) {
                    this.f2684N.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z2) {
                return;
            }
            this.f2684N = null;
        }
    }

    public final void G() {
        View view;
        if (this.f2677G != null) {
            r();
            if (this.f2708y != 4 || (view = (View) this.f2677G.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // p023o.a
    public final void c(p023o.d dVar) {
        this.f2677G = null;
        this.f2709z = null;
    }

    @Override // p023o.a
    public final void e() {
        this.f2677G = null;
        this.f2709z = null;
    }

    @Override // p023o.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        e eVar;
        if (!view.isShown() || !this.f2707x) {
            this.f2671A = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2681K = -1;
            VelocityTracker velocityTracker = this.f2680J;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2680J = null;
            }
        }
        if (this.f2680J == null) {
            this.f2680J = VelocityTracker.obtain();
        }
        this.f2680J.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.f2682L = (int) motionEvent.getY();
            if (this.f2708y != 2) {
                WeakReference weakReference = this.f2678H;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.o(view2, x2, this.f2682L)) {
                    this.f2681K = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f2683M = true;
                }
            }
            this.f2671A = this.f2681K == -1 && !coordinatorLayout.o(view, x2, this.f2682L);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2683M = false;
            this.f2681K = -1;
            if (this.f2671A) {
                this.f2671A = false;
                return false;
            }
        }
        if (!this.f2671A && (eVar = this.f2709z) != null && eVar.p(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.f2678H;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.f2671A || this.f2708y == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f2709z == null || Math.abs(((float) this.f2682L) - motionEvent.getY()) <= ((float) this.f2709z.b)) ? false : true;
    }

    @Override // p023o.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i2) {
        g gVar;
        WeakHashMap weakHashMap = N.f4222a;
        if (AbstractC0290y.b(coordinatorLayout) && !AbstractC0290y.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.f2677G == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.f2694k && !this.f2689e) {
                A.e eVar = new A.e(this, 14);
                AbstractC0291z.f(view);
                view.getPaddingTop();
                AbstractC0291z.e(view);
                view.getPaddingBottom();
                D.u(view, new A.e(eVar, new p025p0.e()));
                if (A.b(view)) {
                    B.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new j());
                }
            }
            this.f2677G = new WeakReference(view);
            if (this.f2691h && (gVar = this.f2692i) != null) {
                AbstractC0290y.q(view, gVar);
            }
            g gVar2 = this.f2692i;
            if (gVar2 != null) {
                float fI = this.f2704u;
                if (fI == -1.0f) {
                    fI = D.i(view);
                }
                gVar2.g(fI);
                boolean z2 = this.f2708y == 3;
                this.f2696m = z2;
                g gVar3 = this.f2692i;
                float f = z2 ? 0.0f : 1.0f;
                f fVar = gVar3.f3939a;
                if (fVar.f3930i != f) {
                    fVar.f3930i = f;
                    gVar3.f3942e = true;
                    gVar3.invalidateSelf();
                }
            }
            D();
            if (AbstractC0290y.c(view) == 0) {
                AbstractC0290y.s(view, 1);
            }
        }
        if (this.f2709z == null) {
            this.f2709z = new e(coordinatorLayout.getContext(), coordinatorLayout, this.f2685O);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i2);
        this.f2675E = coordinatorLayout.getWidth();
        this.f2676F = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f2674D = height;
        this.f2700q = Math.max(0, this.f2676F - height);
        this.f2701r = (int) ((1.0f - this.f2702s) * this.f2676F);
        r();
        int i3 = this.f2708y;
        if (i3 == 3) {
            view.offsetTopAndBottom(w());
        } else if (i3 == 6) {
            view.offsetTopAndBottom(this.f2701r);
        } else if (this.f2705v && i3 == 5) {
            view.offsetTopAndBottom(this.f2676F);
        } else if (i3 == 4) {
            view.offsetTopAndBottom(this.f2703t);
        } else if (i3 == 1 || i3 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        this.f2678H = new WeakReference(v(view));
        return true;
    }

    @Override // p023o.a
    public final boolean i(View view) {
        WeakReference weakReference = this.f2678H;
        return (weakReference == null || view != weakReference.get() || this.f2708y == 3) ? false : true;
    }

    @Override // p023o.a
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
        boolean z2 = this.f2707x;
        if (i4 == 1) {
            return;
        }
        WeakReference weakReference = this.f2678H;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i5 = top - i3;
        if (i3 > 0) {
            if (i5 < w()) {
                int iW = top - w();
                iArr[1] = iW;
                WeakHashMap weakHashMap = N.f4222a;
                view.offsetTopAndBottom(-iW);
                z(3);
            } else {
                if (!z2) {
                    return;
                }
                iArr[1] = i3;
                WeakHashMap weakHashMap2 = N.f4222a;
                view.offsetTopAndBottom(-i3);
                z(1);
            }
        } else if (i3 < 0 && !view2.canScrollVertically(-1)) {
            int i6 = this.f2703t;
            if (i5 > i6 && !this.f2705v) {
                int i7 = top - i6;
                iArr[1] = i7;
                WeakHashMap weakHashMap3 = N.f4222a;
                view.offsetTopAndBottom(-i7);
                z(4);
            } else {
                if (!z2) {
                    return;
                }
                iArr[1] = i3;
                WeakHashMap weakHashMap4 = N.f4222a;
                view.offsetTopAndBottom(-i3);
                z(1);
            }
        }
        u(view.getTop());
        this.f2672B = i3;
        this.f2673C = true;
    }

    @Override // p023o.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
    }

    @Override // p023o.a
    public final void m(View view, Parcelable parcelable) {
        c cVar = (c) parcelable;
        int i2 = this.f2686a;
        if (i2 != 0) {
            if (i2 == -1 || (i2 & 1) == 1) {
                this.f2688d = cVar.f2935d;
            }
            if (i2 == -1 || (i2 & 2) == 2) {
                this.b = cVar.f2936e;
            }
            if (i2 == -1 || (i2 & 4) == 4) {
                this.f2705v = cVar.f;
            }
            if (i2 == -1 || (i2 & 8) == 8) {
                this.f2706w = cVar.f2937g;
            }
        }
        int i3 = cVar.f2934c;
        if (i3 == 1 || i3 == 2) {
            this.f2708y = 4;
        } else {
            this.f2708y = i3;
        }
    }

    @Override // p023o.a
    public final Parcelable n(View view) {
        return new c(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // p023o.a
    public final boolean o(View view, int i2, int i3) {
        this.f2672B = 0;
        this.f2673C = false;
        return (i2 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0081  */
    /* JADX WARN: Code duplicated, block: B:39:0x0084  */
    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ce  */
    @Override // p023o.a
    public final void p(View view, View view2, int i2) {
        int top;
        int i3;
        int top2;
        int i4;
        float yVelocity;
        int i5 = 3;
        if (view.getTop() == w()) {
            z(3);
            return;
        }
        WeakReference weakReference = this.f2678H;
        if (weakReference != null && view2 == weakReference.get() && this.f2673C) {
            if (this.f2672B > 0) {
                if (this.b) {
                    i3 = this.f2700q;
                } else {
                    int top3 = view.getTop();
                    int i6 = this.f2701r;
                    if (top3 > i6) {
                        i5 = 6;
                        i3 = i6;
                    } else {
                        i3 = this.f2699p;
                    }
                }
            } else if (this.f2705v) {
                VelocityTracker velocityTracker = this.f2680J;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(IMAPStore.RESPONSE, this.f2687c);
                    yVelocity = this.f2680J.getYVelocity(this.f2681K);
                }
                if (B(view, yVelocity)) {
                    i3 = this.f2676F;
                    i5 = 5;
                } else if (this.f2672B == 0) {
                    top2 = view.getTop();
                    if (this.b) {
                        i4 = this.f2701r;
                        if (top2 < i4) {
                            if (top2 < Math.abs(top2 - this.f2703t)) {
                                i3 = this.f2699p;
                            } else {
                                i3 = this.f2701r;
                            }
                        } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f2703t)) {
                            i3 = this.f2701r;
                        } else {
                            i3 = this.f2703t;
                            i5 = 4;
                        }
                        i5 = 6;
                    } else if (Math.abs(top2 - this.f2700q) < Math.abs(top2 - this.f2703t)) {
                        i3 = this.f2700q;
                    } else {
                        i3 = this.f2703t;
                        i5 = 4;
                    }
                } else {
                    if (this.b) {
                        i3 = this.f2703t;
                    } else {
                        top = view.getTop();
                        if (Math.abs(top - this.f2701r) < Math.abs(top - this.f2703t)) {
                            i3 = this.f2701r;
                            i5 = 6;
                        } else {
                            i3 = this.f2703t;
                        }
                    }
                    i5 = 4;
                }
            } else if (this.f2672B == 0) {
                top2 = view.getTop();
                if (this.b) {
                    i4 = this.f2701r;
                    if (top2 < i4) {
                        if (top2 < Math.abs(top2 - this.f2703t)) {
                            i3 = this.f2699p;
                        } else {
                            i3 = this.f2701r;
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f2703t)) {
                        i3 = this.f2701r;
                    } else {
                        i3 = this.f2703t;
                        i5 = 4;
                    }
                    i5 = 6;
                } else if (Math.abs(top2 - this.f2700q) < Math.abs(top2 - this.f2703t)) {
                    i3 = this.f2700q;
                } else {
                    i3 = this.f2703t;
                    i5 = 4;
                }
            } else {
                if (this.b) {
                    i3 = this.f2703t;
                } else {
                    top = view.getTop();
                    if (Math.abs(top - this.f2701r) < Math.abs(top - this.f2703t)) {
                        i3 = this.f2701r;
                        i5 = 6;
                    } else {
                        i3 = this.f2703t;
                    }
                }
                i5 = 4;
            }
            C(view, i5, i3, false);
            this.f2673C = false;
        }
    }

    @Override // p023o.a
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2708y == 1 && actionMasked == 0) {
            return true;
        }
        e eVar = this.f2709z;
        if (eVar != null) {
            eVar.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.f2681K = -1;
            VelocityTracker velocityTracker = this.f2680J;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2680J = null;
            }
        }
        if (this.f2680J == null) {
            this.f2680J = VelocityTracker.obtain();
        }
        this.f2680J.addMovement(motionEvent);
        if (this.f2709z != null && actionMasked == 2 && !this.f2671A) {
            float fAbs = Math.abs(this.f2682L - motionEvent.getY());
            e eVar2 = this.f2709z;
            if (fAbs > eVar2.b) {
                eVar2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f2671A;
    }

    public final void r() {
        int iS = s();
        if (this.b) {
            this.f2703t = Math.max(this.f2676F - iS, this.f2700q);
        } else {
            this.f2703t = this.f2676F - iS;
        }
    }

    public final int s() {
        int i2;
        if (this.f2689e) {
            return Math.min(Math.max(this.f, this.f2676F - ((this.f2675E * 9) / 16)), this.f2674D);
        }
        return (this.f2694k || (i2 = this.f2693j) <= 0) ? this.f2688d : Math.max(this.f2688d, i2 + this.f2690g);
    }

    public final void t(Context context, AttributeSet attributeSet, boolean z2, ColorStateList colorStateList) {
        if (this.f2691h) {
            this.f2695l = k.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
            g gVar = new g(this.f2695l);
            this.f2692i = gVar;
            gVar.f(context);
            if (z2 && colorStateList != null) {
                this.f2692i.h(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
            this.f2692i.setTint(typedValue.data);
        }
    }

    public final void u(int i2) {
        if (((View) this.f2677G.get()) != null) {
            ArrayList arrayList = this.f2679I;
            if (arrayList.isEmpty()) {
                return;
            }
            if (i2 <= this.f2703t) {
                w();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final int w() {
        return this.b ? this.f2700q : this.f2699p;
    }

    public final void x(int i2) {
        if (i2 == -1) {
            if (this.f2689e) {
                return;
            } else {
                this.f2689e = true;
            }
        } else {
            if (!this.f2689e && this.f2688d == i2) {
                return;
            }
            this.f2689e = false;
            this.f2688d = Math.max(0, i2);
        }
        G();
    }

    public final void y(int i2) {
        if (i2 == this.f2708y) {
            return;
        }
        if (this.f2677G == null) {
            if (i2 == 4 || i2 == 3 || i2 == 6 || (this.f2705v && i2 == 5)) {
                this.f2708y = i2;
                return;
            }
            return;
        }
        View view = (View) this.f2677G.get();
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = N.f4222a;
            if (A.b(view)) {
                view.post(new p006d0.a(this, view, i2));
                return;
            }
        }
        A(view, i2);
    }

    public final void z(int i2) {
        if (this.f2708y == i2) {
            return;
        }
        this.f2708y = i2;
        WeakReference weakReference = this.f2677G;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i2 == 3) {
            F(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            F(false);
        }
        E(i2);
        ArrayList arrayList = this.f2679I;
        if (arrayList.size() <= 0) {
            D();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i2;
        int i3 = 1;
        this.f2686a = 0;
        this.b = true;
        this.f2697n = null;
        this.f2702s = 0.5f;
        this.f2704u = -1.0f;
        this.f2707x = true;
        this.f2708y = 4;
        this.f2679I = new ArrayList();
        this.f2685O = new b(this);
        this.f2690g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f1367a);
        this.f2691h = typedArrayObtainStyledAttributes.hasValue(11);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(1);
        if (zHasValue) {
            t(context, attributeSet, zHasValue, AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 1));
        } else {
            t(context, attributeSet, zHasValue, null);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2698o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f2698o.addUpdateListener(new C0013n(this, i3));
        this.f2704u = typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(7);
        if (typedValuePeekValue != null && (i2 = typedValuePeekValue.data) == -1) {
            x(i2);
        } else {
            x(typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1));
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        if (this.f2705v != z2) {
            this.f2705v = z2;
            if (!z2 && this.f2708y == 5) {
                y(4);
            }
            D();
        }
        this.f2694k = typedArrayObtainStyledAttributes.getBoolean(10, false);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(4, true);
        if (this.b != z3) {
            this.b = z3;
            if (this.f2677G != null) {
                r();
            }
            z((this.b && this.f2708y == 6) ? 3 : this.f2708y);
            D();
        }
        this.f2706w = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f2707x = typedArrayObtainStyledAttributes.getBoolean(2, true);
        this.f2686a = typedArrayObtainStyledAttributes.getInt(8, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(5, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.f2702s = f;
            if (this.f2677G != null) {
                this.f2701r = (int) ((1.0f - f) * this.f2676F);
            }
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(3);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i4 = typedValuePeekValue2.data;
                if (i4 >= 0) {
                    this.f2699p = i4;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f2699p = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f2687c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
