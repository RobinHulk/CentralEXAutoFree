package p014j;

import A.e;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.ex.auto.R;
import java.util.ArrayList;
import p012i.A;
import p012i.E;
import p012i.l;
import p012i.n;
import p012i.o;
import p012i.t;
import p012i.x;
import p012i.y;
import p012i.z;

/* JADX INFO: renamed from: j.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0234j implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3609a;
    public Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f3610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LayoutInflater f3611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public x f3612e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public A f3614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C0232i f3615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f3616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3617k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3618l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3619m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3620n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3621o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3622p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3623q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C0226f f3625s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C0226f f3626t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public RunnableC0230h f3627u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public C0228g f3628v;
    public final int f = R.layout.abc_action_menu_layout;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3613g = R.layout.abc_action_menu_item_layout;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final SparseBooleanArray f3624r = new SparseBooleanArray();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final e f3629w = new e(this, 18);

    public C0234j(Context context) {
        this.f3609a = context;
        this.f3611d = LayoutInflater.from(context);
    }

    @Override // p012i.y
    public final void a(l lVar, boolean z2) {
        f();
        C0226f c0226f = this.f3626t;
        if (c0226f != null && c0226f.b()) {
            c0226f.f3407i.dismiss();
        }
        x xVar = this.f3612e;
        if (xVar != null) {
            xVar.a(lVar, z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View b(n nVar, View view, ViewGroup viewGroup) {
        z zVar;
        View actionView = nVar.getActionView();
        if (actionView == null || nVar.e()) {
            if (view instanceof z) {
                zVar = (z) view;
            } else {
                zVar = (z) this.f3611d.inflate(this.f3613g, viewGroup, false);
            }
            zVar.e(nVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) zVar;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f3614h);
            if (this.f3628v == null) {
                this.f3628v = new C0228g(this);
            }
            actionMenuItemView.setPopupCallback(this.f3628v);
            actionView = (View) zVar;
        }
        actionView.setVisibility(nVar.f3367C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C0238l)) {
            actionView.setLayoutParams(ActionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // p012i.y
    public final boolean c(n nVar) {
        return false;
    }

    @Override // p012i.y
    public final boolean d() {
        int size;
        ArrayList arrayListL;
        int i2;
        boolean z2;
        l lVar = this.f3610c;
        if (lVar != null) {
            arrayListL = lVar.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i3 = this.f3622p;
        int i4 = this.f3621o;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f3614h;
        int i5 = 0;
        boolean z3 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z2 = true;
            if (i5 >= size) {
                break;
            }
            n nVar = (n) arrayListL.get(i5);
            int i8 = nVar.f3390y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z3 = true;
            }
            if (this.f3623q && nVar.f3367C) {
                i3 = 0;
            }
            i5++;
        }
        if (this.f3618l && (z3 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = this.f3624r;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            n nVar2 = (n) arrayListL.get(i10);
            int i12 = nVar2.f3390y;
            boolean z4 = (i12 & 2) == i2 ? z2 : false;
            int i13 = nVar2.b;
            if (z4) {
                View viewB = b(nVar2, null, viewGroup);
                viewB.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewB.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z2);
                }
                nVar2.g(z2);
            } else {
                if ((i12 & 1) == z2) {
                    boolean z5 = sparseBooleanArray.get(i13);
                    boolean z6 = ((i9 > 0 || z5) && i4 > 0) ? z2 : false;
                    if (z6) {
                        View viewB2 = b(nVar2, null, viewGroup);
                        viewB2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewB2.getMeasuredWidth();
                        i4 -= measuredWidth2;
                        if (i11 == 0) {
                            i11 = measuredWidth2;
                        }
                        z6 &= i4 + i11 > 0;
                    }
                    if (z6 && i13 != 0) {
                        sparseBooleanArray.put(i13, true);
                    } else if (z5) {
                        sparseBooleanArray.put(i13, false);
                        for (int i14 = 0; i14 < i10; i14++) {
                            n nVar3 = (n) arrayListL.get(i14);
                            if (nVar3.b == i13) {
                                if (nVar3.f()) {
                                    i9++;
                                }
                                nVar3.g(false);
                            }
                        }
                    }
                    if (z6) {
                        i9--;
                    }
                    nVar2.g(z6);
                } else {
                    nVar2.g(false);
                }
                i10++;
                i2 = 2;
                z2 = true;
            }
            i10++;
            i2 = 2;
            z2 = true;
        }
        return z2;
    }

    @Override // p012i.y
    public final void e(Context context, l lVar) {
        this.b = context;
        LayoutInflater.from(context);
        this.f3610c = lVar;
        Resources resources = context.getResources();
        if (!this.f3619m) {
            this.f3618l = true;
        }
        int i2 = 2;
        this.f3620n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i3 = configuration.screenWidthDp;
        int i4 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i3 > 600 || ((i3 > 960 && i4 > 720) || (i3 > 720 && i4 > 960))) {
            i2 = 5;
        } else if (i3 >= 500 || ((i3 > 640 && i4 > 480) || (i3 > 480 && i4 > 640))) {
            i2 = 4;
        } else if (i3 >= 360) {
            i2 = 3;
        }
        this.f3622p = i2;
        int measuredWidth = this.f3620n;
        if (this.f3618l) {
            if (this.f3615i == null) {
                C0232i c0232i = new C0232i(this, this.f3609a);
                this.f3615i = c0232i;
                if (this.f3617k) {
                    c0232i.setImageDrawable(this.f3616j);
                    this.f3616j = null;
                    this.f3617k = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f3615i.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f3615i.getMeasuredWidth();
        } else {
            this.f3615i = null;
        }
        this.f3621o = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    public final boolean f() {
        Object obj;
        RunnableC0230h runnableC0230h = this.f3627u;
        if (runnableC0230h != null && (obj = this.f3614h) != null) {
            ((View) obj).removeCallbacks(runnableC0230h);
            this.f3627u = null;
            return true;
        }
        C0226f c0226f = this.f3625s;
        if (c0226f == null) {
            return false;
        }
        if (c0226f.b()) {
            c0226f.f3407i.dismiss();
        }
        return true;
    }

    @Override // p012i.y
    public final void g(x xVar) {
        throw null;
    }

    @Override // p012i.y
    public final boolean h(n nVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p012i.y
    public final void i() {
        int i2;
        ViewGroup viewGroup = (ViewGroup) this.f3614h;
        ArrayList arrayList = null;
        boolean z2 = false;
        if (viewGroup != null) {
            l lVar = this.f3610c;
            if (lVar != null) {
                lVar.i();
                ArrayList arrayListL = this.f3610c.l();
                int size = arrayListL.size();
                i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    n nVar = (n) arrayListL.get(i3);
                    if (nVar.f()) {
                        View childAt = viewGroup.getChildAt(i2);
                        n itemData = childAt instanceof z ? ((z) childAt).getItemData() : null;
                        View viewB = b(nVar, childAt, viewGroup);
                        if (nVar != itemData) {
                            viewB.setPressed(false);
                            viewB.jumpDrawablesToCurrentState();
                        }
                        if (viewB != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewB.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewB);
                            }
                            ((ViewGroup) this.f3614h).addView(viewB, i2);
                        }
                        i2++;
                    }
                }
            } else {
                i2 = 0;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i2) == this.f3615i) {
                    i2++;
                } else {
                    viewGroup.removeViewAt(i2);
                }
            }
        }
        ((View) this.f3614h).requestLayout();
        l lVar2 = this.f3610c;
        if (lVar2 != null) {
            lVar2.i();
            ArrayList arrayList2 = lVar2.f3347i;
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                o oVar = ((n) arrayList2.get(i4)).f3365A;
            }
        }
        l lVar3 = this.f3610c;
        if (lVar3 != null) {
            lVar3.i();
            arrayList = lVar3.f3348j;
        }
        if (this.f3618l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z2 = !((n) arrayList.get(0)).f3367C;
            } else if (size3 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.f3615i == null) {
                this.f3615i = new C0232i(this, this.f3609a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f3615i.getParent();
            if (viewGroup3 != this.f3614h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f3615i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f3614h;
                C0232i c0232i = this.f3615i;
                actionMenuView.getClass();
                C0238l c0238lL = ActionMenuView.l();
                c0238lL.f3635a = true;
                actionMenuView.addView(c0232i, c0238lL);
            }
        } else {
            C0232i c0232i2 = this.f3615i;
            if (c0232i2 != null) {
                Object parent = c0232i2.getParent();
                Object obj = this.f3614h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f3615i);
                }
            }
        }
        ((ActionMenuView) this.f3614h).setOverflowReserved(this.f3618l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p012i.y
    public final boolean j(E e2) {
        boolean z2;
        if (!e2.hasVisibleItems()) {
            return false;
        }
        E e3 = e2;
        while (true) {
            l lVar = e3.f3288z;
            if (lVar == this.f3610c) {
                break;
            }
            e3 = (E) lVar;
        }
        ViewGroup viewGroup = (ViewGroup) this.f3614h;
        View view = null;
        view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if ((childAt instanceof z) && ((z) childAt).getItemData() == e3.f3287A) {
                    view = childAt;
                    break;
                }
            }
        }
        if (view == null) {
            return false;
        }
        e2.f3287A.getClass();
        int size = e2.f.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                z2 = false;
                break;
            }
            MenuItem item = e2.getItem(i3);
            if (item.isVisible() && item.getIcon() != null) {
                z2 = true;
                break;
            }
            i3++;
        }
        C0226f c0226f = new C0226f(this, this.b, e2, view);
        this.f3626t = c0226f;
        c0226f.f3405g = z2;
        t tVar = c0226f.f3407i;
        if (tVar != null) {
            tVar.o(z2);
        }
        C0226f c0226f2 = this.f3626t;
        if (!c0226f2.b()) {
            if (c0226f2.f3404e == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            c0226f2.d(0, 0, false, false);
        }
        x xVar = this.f3612e;
        if (xVar != null) {
            xVar.f(e2);
        }
        return true;
    }

    public final boolean k() {
        C0226f c0226f = this.f3625s;
        return c0226f != null && c0226f.b();
    }

    public final boolean l() {
        l lVar;
        if (!this.f3618l || k() || (lVar = this.f3610c) == null || this.f3614h == null || this.f3627u != null) {
            return false;
        }
        lVar.i();
        if (lVar.f3348j.isEmpty()) {
            return false;
        }
        RunnableC0230h runnableC0230h = new RunnableC0230h(this, new C0226f(this, this.b, this.f3610c, this.f3615i));
        this.f3627u = runnableC0230h;
        ((View) this.f3614h).post(runnableC0230h);
        return true;
    }
}
