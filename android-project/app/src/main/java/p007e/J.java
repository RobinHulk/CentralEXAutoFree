package p007e;

import A.b;
import A.e;
import G.a;
import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p007e.J;
import p011h.j;
import p011h.k;
import p014j.InterfaceC0222d;
import p014j.InterfaceC0235j0;
import p014j.q1;
import p034y.A;
import p034y.B;
import p034y.D;
import p034y.N;
import p034y.U;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class J extends b implements InterfaceC0222d {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final AccelerateInterpolator f2960A = new AccelerateInterpolator();

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final DecelerateInterpolator f2961B = new DecelerateInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f2962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f2963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarOverlayLayout f2964e;
    public ActionBarContainer f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC0235j0 f2965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ActionBarContextView f2966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f2967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public I f2969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public I f2970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a f2971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2972n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ArrayList f2973o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2974p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2975q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2976r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2977s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2978t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public k f2979u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2980v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2981w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final H f2982x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final H f2983y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final e f2984z;

    public J(Activity activity, boolean z2) {
        new ArrayList();
        this.f2973o = new ArrayList();
        this.f2974p = 0;
        this.f2975q = true;
        this.f2978t = true;
        this.f2982x = new H(this, 0);
        this.f2983y = new H(this, 1);
        this.f2984z = new e(this, 15);
        View decorView = activity.getWindow().getDecorView();
        o0(decorView);
        if (z2) {
            return;
        }
        this.f2967i = decorView.findViewById(R.id.content);
    }

    public final void m0(boolean z2) {
        V vI;
        V vI2;
        if (z2) {
            if (!this.f2977s) {
                this.f2977s = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f2964e;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                r0(false);
            }
        } else if (this.f2977s) {
            this.f2977s = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f2964e;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            r0(false);
        }
        ActionBarContainer actionBarContainer = this.f;
        WeakHashMap weakHashMap = N.f4222a;
        if (!A.c(actionBarContainer)) {
            if (z2) {
                ((q1) this.f2965g).f3662a.setVisibility(4);
                this.f2966h.setVisibility(0);
                return;
            } else {
                ((q1) this.f2965g).f3662a.setVisibility(0);
                this.f2966h.setVisibility(8);
                return;
            }
        }
        if (z2) {
            q1 q1Var = (q1) this.f2965g;
            vI = N.a(q1Var.f3662a);
            vI.a(0.0f);
            vI.c(100L);
            vI.d(new j(q1Var, 4));
            vI2 = this.f2966h.i(0, 200L);
        } else {
            q1 q1Var2 = (q1) this.f2965g;
            V vA = N.a(q1Var2.f3662a);
            vA.a(1.0f);
            vA.c(200L);
            vA.d(new j(q1Var2, 0));
            vI = this.f2966h.i(8, 100L);
            vI2 = vA;
        }
        k kVar = new k();
        ArrayList arrayList = kVar.f3265a;
        arrayList.add(vI);
        View view = (View) vI.f4228a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) vI2.f4228a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(vI2);
        kVar.b();
    }

    public final Context n0() {
        if (this.f2963d == null) {
            TypedValue typedValue = new TypedValue();
            this.f2962c.getTheme().resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f2963d = new ContextThemeWrapper(this.f2962c, i2);
            } else {
                this.f2963d = this.f2962c;
            }
        }
        return this.f2963d;
    }

    public final void o0(View view) {
        InterfaceC0235j0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.ex.auto.R.id.decor_content_parent);
        this.f2964e = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.ex.auto.R.id.action_bar);
        if (callbackFindViewById instanceof InterfaceC0235j0) {
            wrapper = (InterfaceC0235j0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f2965g = wrapper;
        this.f2966h = (ActionBarContextView) view.findViewById(com.ex.auto.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.ex.auto.R.id.action_bar_container);
        this.f = actionBarContainer;
        InterfaceC0235j0 interfaceC0235j0 = this.f2965g;
        if (interfaceC0235j0 == null || this.f2966h == null || actionBarContainer == null) {
            throw new IllegalStateException(J.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((q1) interfaceC0235j0).f3662a.getContext();
        this.f2962c = context;
        if ((((q1) this.f2965g).b & 4) != 0) {
            this.f2968j = true;
        }
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.f2965g.getClass();
        q0(context.getResources().getBoolean(com.ex.auto.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f2962c.obtainStyledAttributes(null, p005d.a.f2906a, com.ex.auto.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f2964e;
            if (!actionBarOverlayLayout2.f1498h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f2981w = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f;
            WeakHashMap weakHashMap = N.f4222a;
            D.s(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void p0(boolean z2) {
        if (this.f2968j) {
            return;
        }
        int i2 = z2 ? 4 : 0;
        q1 q1Var = (q1) this.f2965g;
        int i3 = q1Var.b;
        this.f2968j = true;
        q1Var.a((i2 & 4) | (i3 & (-5)));
    }

    public final void q0(boolean z2) {
        if (z2) {
            this.f.setTabContainer(null);
            ((q1) this.f2965g).getClass();
        } else {
            ((q1) this.f2965g).getClass();
            this.f.setTabContainer(null);
        }
        this.f2965g.getClass();
        ((q1) this.f2965g).f3662a.setCollapsible(false);
        this.f2964e.setHasNonEmbeddedTabs(false);
    }

    public final void r0(boolean z2) {
        boolean z3 = this.f2977s || !this.f2976r;
        View view = this.f2967i;
        final e eVar = this.f2984z;
        if (!z3) {
            if (this.f2978t) {
                this.f2978t = false;
                k kVar = this.f2979u;
                if (kVar != null) {
                    kVar.a();
                }
                int i2 = this.f2974p;
                H h2 = this.f2982x;
                if (i2 != 0 || (!this.f2980v && !z2)) {
                    h2.a();
                    return;
                }
                this.f.setAlpha(1.0f);
                this.f.setTransitioning(true);
                k kVar2 = new k();
                float f = -this.f.getHeight();
                if (z2) {
                    int[] iArr = {0, 0};
                    this.f.getLocationInWindow(iArr);
                    f -= iArr[1];
                }
                V vA = N.a(this.f);
                vA.e(f);
                final View view2 = (View) vA.f4228a.get();
                if (view2 != null) {
                    U.a(view2.animate(), eVar != null ? new ValueAnimator.AnimatorUpdateListener(view2) { // from class: y.S
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((J) this.f4226a.b).f.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z4 = kVar2.f3268e;
                ArrayList arrayList = kVar2.f3265a;
                if (!z4) {
                    arrayList.add(vA);
                }
                if (this.f2975q && view != null) {
                    V vA2 = N.a(view);
                    vA2.e(f);
                    if (!kVar2.f3268e) {
                        arrayList.add(vA2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = f2960A;
                boolean z5 = kVar2.f3268e;
                if (!z5) {
                    kVar2.f3266c = accelerateInterpolator;
                }
                if (!z5) {
                    kVar2.b = 250L;
                }
                if (!z5) {
                    kVar2.f3267d = h2;
                }
                this.f2979u = kVar2;
                kVar2.b();
                return;
            }
            return;
        }
        if (this.f2978t) {
            return;
        }
        this.f2978t = true;
        k kVar3 = this.f2979u;
        if (kVar3 != null) {
            kVar3.a();
        }
        this.f.setVisibility(0);
        int i3 = this.f2974p;
        H h3 = this.f2983y;
        if (i3 == 0 && (this.f2980v || z2)) {
            this.f.setTranslationY(0.0f);
            float f2 = -this.f.getHeight();
            if (z2) {
                int[] iArr2 = {0, 0};
                this.f.getLocationInWindow(iArr2);
                f2 -= iArr2[1];
            }
            this.f.setTranslationY(f2);
            k kVar4 = new k();
            V vA3 = N.a(this.f);
            vA3.e(0.0f);
            final View view3 = (View) vA3.f4228a.get();
            if (view3 != null) {
                U.a(view3.animate(), eVar != null ? new ValueAnimator.AnimatorUpdateListener(view3) { // from class: y.S
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((J) this.f4226a.b).f.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z6 = kVar4.f3268e;
            ArrayList arrayList2 = kVar4.f3265a;
            if (!z6) {
                arrayList2.add(vA3);
            }
            if (this.f2975q && view != null) {
                view.setTranslationY(f2);
                V vA4 = N.a(view);
                vA4.e(0.0f);
                if (!kVar4.f3268e) {
                    arrayList2.add(vA4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = f2961B;
            boolean z7 = kVar4.f3268e;
            if (!z7) {
                kVar4.f3266c = decelerateInterpolator;
            }
            if (!z7) {
                kVar4.b = 250L;
            }
            if (!z7) {
                kVar4.f3267d = h3;
            }
            this.f2979u = kVar4;
            kVar4.b();
        } else {
            this.f.setAlpha(1.0f);
            this.f.setTranslationY(0.0f);
            if (this.f2975q && view != null) {
                view.setTranslationY(0.0f);
            }
            h3.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2964e;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = N.f4222a;
            B.c(actionBarOverlayLayout);
        }
    }

    public J(Dialog dialog) {
        new ArrayList();
        this.f2973o = new ArrayList();
        this.f2974p = 0;
        this.f2975q = true;
        this.f2978t = true;
        this.f2982x = new H(this, 0);
        this.f2983y = new H(this, 1);
        this.f2984z = new e(this, 15);
        o0(dialog.getWindow().getDecorView());
    }
}
