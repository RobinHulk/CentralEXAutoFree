package p012i;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.J;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p014j.C0252s0;
import p014j.K0;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class D extends t implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f3270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f3271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3272e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final K0 f3274h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public u f3277k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f3278l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f3279m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public x f3280n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ViewTreeObserver f3281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3283q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3284r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3286t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC0214d f3275i = new ViewTreeObserverOnGlobalLayoutListenerC0214d(this, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final J f3276j = new J(this, 2);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3285s = 0;

    public D(int i2, Context context, View view, l lVar, boolean z2) {
        this.b = context;
        this.f3270c = lVar;
        this.f3272e = z2;
        this.f3271d = new i(lVar, LayoutInflater.from(context), z2, R.layout.abc_popup_menu_item_layout);
        this.f3273g = i2;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f3278l = view;
        this.f3274h = new K0(context, null, i2);
        lVar.b(this, context);
    }

    @Override // p012i.y
    public final void a(l lVar, boolean z2) {
        if (lVar != this.f3270c) {
            return;
        }
        dismiss();
        x xVar = this.f3280n;
        if (xVar != null) {
            xVar.a(lVar, z2);
        }
    }

    @Override // p012i.C
    public final boolean b() {
        return !this.f3282p && this.f3274h.f3446y.isShowing();
    }

    @Override // p012i.y
    public final boolean d() {
        return false;
    }

    @Override // p012i.C
    public final void dismiss() {
        if (b()) {
            this.f3274h.dismiss();
        }
    }

    @Override // p012i.C
    public final void f() {
        View view;
        if (b()) {
            return;
        }
        if (this.f3282p || (view = this.f3278l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f3279m = view;
        K0 k1 = this.f3274h;
        k1.f3446y.setOnDismissListener(this);
        k1.f3437p = this;
        k1.f3445x = true;
        k1.f3446y.setFocusable(true);
        View view2 = this.f3279m;
        boolean z2 = this.f3281o == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f3281o = viewTreeObserver;
        if (z2) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f3275i);
        }
        view2.addOnAttachStateChangeListener(this.f3276j);
        k1.f3436o = view2;
        k1.f3433l = this.f3285s;
        boolean z3 = this.f3283q;
        Context context = this.b;
        i iVar = this.f3271d;
        if (!z3) {
            this.f3284r = t.m(iVar, context, this.f);
            this.f3283q = true;
        }
        k1.r(this.f3284r);
        k1.f3446y.setInputMethodMode(2);
        Rect rect = this.f3399a;
        k1.f3444w = rect != null ? new Rect(rect) : null;
        k1.f();
        C0252s0 c0252s0 = k1.f3425c;
        c0252s0.setOnKeyListener(this);
        if (this.f3286t) {
            l lVar = this.f3270c;
            if (lVar.f3351m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0252s0, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(lVar.f3351m);
                }
                frameLayout.setEnabled(false);
                c0252s0.addHeaderView(frameLayout, null, false);
            }
        }
        k1.o(iVar);
        k1.f();
    }

    @Override // p012i.y
    public final void g(x xVar) {
        this.f3280n = xVar;
    }

    @Override // p012i.y
    public final void i() {
        this.f3283q = false;
        i iVar = this.f3271d;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    @Override // p012i.y
    public final boolean j(E e2) {
        if (e2.hasVisibleItems()) {
            View view = this.f3279m;
            w wVar = new w(this.f3273g, this.b, view, e2, this.f3272e);
            x xVar = this.f3280n;
            wVar.f3406h = xVar;
            t tVar = wVar.f3407i;
            if (tVar != null) {
                tVar.g(xVar);
            }
            boolean zU = t.u(e2);
            wVar.f3405g = zU;
            t tVar2 = wVar.f3407i;
            if (tVar2 != null) {
                tVar2.o(zU);
            }
            wVar.f3408j = this.f3277k;
            this.f3277k = null;
            this.f3270c.c(false);
            K0 k1 = this.f3274h;
            int width = k1.f;
            int iG = k1.g();
            int i2 = this.f3285s;
            View view2 = this.f3278l;
            WeakHashMap weakHashMap = N.f4222a;
            if ((Gravity.getAbsoluteGravity(i2, AbstractC0291z.d(view2)) & 7) == 5) {
                width += this.f3278l.getWidth();
            }
            if (!wVar.b()) {
                if (wVar.f3404e != null) {
                    wVar.d(width, iG, true, true);
                }
            }
            x xVar2 = this.f3280n;
            if (xVar2 != null) {
                xVar2.f(e2);
            }
            return true;
        }
        return false;
    }

    @Override // p012i.C
    public final C0252s0 k() {
        return this.f3274h.f3425c;
    }

    @Override // p012i.t
    public final void l(l lVar) {
    }

    @Override // p012i.t
    public final void n(View view) {
        this.f3278l = view;
    }

    @Override // p012i.t
    public final void o(boolean z2) {
        this.f3271d.f3337c = z2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f3282p = true;
        this.f3270c.c(true);
        ViewTreeObserver viewTreeObserver = this.f3281o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f3281o = this.f3279m.getViewTreeObserver();
            }
            this.f3281o.removeGlobalOnLayoutListener(this.f3275i);
            this.f3281o = null;
        }
        this.f3279m.removeOnAttachStateChangeListener(this.f3276j);
        u uVar = this.f3277k;
        if (uVar != null) {
            uVar.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p012i.t
    public final void p(int i2) {
        this.f3285s = i2;
    }

    @Override // p012i.t
    public final void q(int i2) {
        this.f3274h.f = i2;
    }

    @Override // p012i.t
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f3277k = (u) onDismissListener;
    }

    @Override // p012i.t
    public final void s(boolean z2) {
        this.f3286t = z2;
    }

    @Override // p012i.t
    public final void t(int i2) {
        this.f3274h.n(i2);
    }
}
