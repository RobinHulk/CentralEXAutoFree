package p012i;

import A.e;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.J;
import com.ex.auto.R;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p014j.A;
import p014j.C0252s0;
import p014j.G0;
import p014j.H0;
import p014j.K0;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class f extends t implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3310e;
    public final Handler f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f3318n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f3319o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3320p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3321q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3322r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3323s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3324t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3326v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public x f3327w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewTreeObserver f3328x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public u f3329y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3330z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3311g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f3312h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC0214d f3313i = new ViewTreeObserverOnGlobalLayoutListenerC0214d(this, 0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final J f3314j = new J(this, 1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final e f3315k = new e(this, 16);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3316l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3317m = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3325u = false;

    public f(Context context, View view, int i2, boolean z2) {
        this.b = context;
        this.f3318n = view;
        this.f3309d = i2;
        this.f3310e = z2;
        WeakHashMap weakHashMap = N.f4222a;
        this.f3320p = AbstractC0291z.d(view) == 1 ? 0 : 1;
        Resources resources = context.getResources();
        this.f3308c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f = new Handler();
    }

    @Override // p012i.y
    public final void a(l lVar, boolean z2) {
        ArrayList arrayList = this.f3312h;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (lVar == ((C0215e) arrayList.get(i2)).b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            return;
        }
        int i3 = i2 + 1;
        if (i3 < arrayList.size()) {
            ((C0215e) arrayList.get(i3)).b.c(false);
        }
        C0215e c0215e = (C0215e) arrayList.remove(i2);
        c0215e.b.r(this);
        boolean z3 = this.f3330z;
        K0 k1 = c0215e.f3306a;
        if (z3) {
            G0.b(k1.f3446y, null);
            k1.f3446y.setAnimationStyle(0);
        }
        k1.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f3320p = ((C0215e) arrayList.get(size2 - 1)).f3307c;
        } else {
            View view = this.f3318n;
            WeakHashMap weakHashMap = N.f4222a;
            this.f3320p = AbstractC0291z.d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z2) {
                ((C0215e) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        x xVar = this.f3327w;
        if (xVar != null) {
            xVar.a(lVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f3328x;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f3328x.removeGlobalOnLayoutListener(this.f3313i);
            }
            this.f3328x = null;
        }
        this.f3319o.removeOnAttachStateChangeListener(this.f3314j);
        this.f3329y.onDismiss();
    }

    @Override // p012i.C
    public final boolean b() {
        ArrayList arrayList = this.f3312h;
        return arrayList.size() > 0 && ((C0215e) arrayList.get(0)).f3306a.f3446y.isShowing();
    }

    @Override // p012i.y
    public final boolean d() {
        return false;
    }

    @Override // p012i.C
    public final void dismiss() {
        ArrayList arrayList = this.f3312h;
        int size = arrayList.size();
        if (size > 0) {
            C0215e[] c0215eArr = (C0215e[]) arrayList.toArray(new C0215e[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                C0215e c0215e = c0215eArr[i2];
                if (c0215e.f3306a.f3446y.isShowing()) {
                    c0215e.f3306a.dismiss();
                }
            }
        }
    }

    @Override // p012i.C
    public final void f() {
        if (b()) {
            return;
        }
        ArrayList arrayList = this.f3311g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v((l) it.next());
        }
        arrayList.clear();
        View view = this.f3318n;
        this.f3319o = view;
        if (view != null) {
            boolean z2 = this.f3328x == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f3328x = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f3313i);
            }
            this.f3319o.addOnAttachStateChangeListener(this.f3314j);
        }
    }

    @Override // p012i.y
    public final void g(x xVar) {
        this.f3327w = xVar;
    }

    @Override // p012i.y
    public final void i() {
        Iterator it = this.f3312h.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((C0215e) it.next()).f3306a.f3425c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((i) adapter).notifyDataSetChanged();
        }
    }

    @Override // p012i.y
    public final boolean j(E e2) {
        for (C0215e c0215e : this.f3312h) {
            if (e2 == c0215e.b) {
                c0215e.f3306a.f3425c.requestFocus();
                return true;
            }
        }
        if (!e2.hasVisibleItems()) {
            return false;
        }
        l(e2);
        x xVar = this.f3327w;
        if (xVar != null) {
            xVar.f(e2);
        }
        return true;
    }

    @Override // p012i.C
    public final C0252s0 k() {
        ArrayList arrayList = this.f3312h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C0215e) arrayList.get(arrayList.size() - 1)).f3306a.f3425c;
    }

    @Override // p012i.t
    public final void l(l lVar) {
        lVar.b(this, this.b);
        if (b()) {
            v(lVar);
        } else {
            this.f3311g.add(lVar);
        }
    }

    @Override // p012i.t
    public final void n(View view) {
        if (this.f3318n != view) {
            this.f3318n = view;
            int i2 = this.f3316l;
            WeakHashMap weakHashMap = N.f4222a;
            this.f3317m = Gravity.getAbsoluteGravity(i2, AbstractC0291z.d(view));
        }
    }

    @Override // p012i.t
    public final void o(boolean z2) {
        this.f3325u = z2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0215e c0215e;
        ArrayList arrayList = this.f3312h;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                c0215e = null;
                break;
            }
            c0215e = (C0215e) arrayList.get(i2);
            if (!c0215e.f3306a.f3446y.isShowing()) {
                break;
            } else {
                i2++;
            }
        }
        if (c0215e != null) {
            c0215e.b.c(false);
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
        if (this.f3316l != i2) {
            this.f3316l = i2;
            View view = this.f3318n;
            WeakHashMap weakHashMap = N.f4222a;
            this.f3317m = Gravity.getAbsoluteGravity(i2, AbstractC0291z.d(view));
        }
    }

    @Override // p012i.t
    public final void q(int i2) {
        this.f3321q = true;
        this.f3323s = i2;
    }

    @Override // p012i.t
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f3329y = (u) onDismissListener;
    }

    @Override // p012i.t
    public final void s(boolean z2) {
        this.f3326v = z2;
    }

    @Override // p012i.t
    public final void t(int i2) {
        this.f3322r = true;
        this.f3324t = i2;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:53:0x0107  */
    /* JADX WARN: Code duplicated, block: B:56:0x0135  */
    /* JADX WARN: Code duplicated, block: B:58:0x0141  */
    /* JADX WARN: Code duplicated, block: B:59:0x0144  */
    /* JADX WARN: Code duplicated, block: B:60:0x0147  */
    /* JADX WARN: Code duplicated, block: B:64:0x014f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0151  */
    /* JADX WARN: Code duplicated, block: B:68:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x015f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0168  */
    /* JADX WARN: Code duplicated, block: B:73:0x016d  */
    /* JADX WARN: Code duplicated, block: B:75:0x017a  */
    /* JADX WARN: Code duplicated, block: B:77:0x017e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0186  */
    /* JADX WARN: Code duplicated, block: B:83:0x018f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0195  */
    /* JADX WARN: Code duplicated, block: B:94:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void v(l lVar) {
        C0215e c0215e;
        View childAt;
        Rect rect;
        Rect rect2;
        int i2;
        A a2;
        C0252s0 c0252s0;
        int[] iArr;
        Rect rect3;
        int i3;
        int i4;
        boolean z2;
        Method method;
        MenuItem item;
        i iVar;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.b;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        i iVar2 = new i(lVar, layoutInflaterFrom, this.f3310e, R.layout.abc_cascading_menu_item_layout);
        if (!b() && this.f3325u) {
            iVar2.f3337c = true;
        } else if (b()) {
            iVar2.f3337c = t.u(lVar);
        }
        int iM = t.m(iVar2, context, this.f3308c);
        K0 k1 = new K0(context, null, this.f3309d);
        k1.f3460B = this.f3315k;
        k1.f3437p = this;
        k1.f3446y.setOnDismissListener(this);
        k1.f3436o = this.f3318n;
        k1.f3433l = this.f3317m;
        k1.f3445x = true;
        k1.f3446y.setFocusable(true);
        k1.f3446y.setInputMethodMode(2);
        k1.o(iVar2);
        k1.r(iM);
        k1.f3433l = this.f3317m;
        ArrayList arrayList = this.f3312h;
        if (arrayList.size() > 0) {
            c0215e = (C0215e) arrayList.get(arrayList.size() - 1);
            l lVar2 = c0215e.b;
            int size = lVar2.f.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    item = null;
                    break;
                }
                item = lVar2.getItem(i5);
                if (item.hasSubMenu() && lVar == item.getSubMenu()) {
                    break;
                } else {
                    i5++;
                }
            }
            if (item == null) {
                childAt = null;
            } else {
                C0252s0 c0252s1 = c0215e.f3306a.f3425c;
                ListAdapter adapter = c0252s1.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    iVar = (i) headerViewListAdapter.getWrappedAdapter();
                } else {
                    iVar = (i) adapter;
                    headersCount = 0;
                }
                int count = iVar.getCount();
                int i6 = 0;
                while (true) {
                    if (i6 >= count) {
                        i6 = -1;
                        break;
                    } else if (item == iVar.getItem(i6)) {
                        break;
                    } else {
                        i6++;
                    }
                }
                if (i6 != -1 && (firstVisiblePosition = (i6 + headersCount) - c0252s1.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < c0252s1.getChildCount()) {
                    childAt = c0252s1.getChildAt(firstVisiblePosition);
                }
            }
            if (childAt != null) {
                i2 = Build.VERSION.SDK_INT;
                a2 = k1.f3446y;
                if (i2 <= 28) {
                    method = K0.f3459C;
                    if (method != null) {
                        try {
                            method.invoke(a2, Boolean.FALSE);
                        } catch (Exception unused) {
                            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                        }
                    }
                } else {
                    H0.a(a2, false);
                }
                G0.a(k1.f3446y, null);
                c0252s0 = ((C0215e) arrayList.get(arrayList.size() - 1)).f3306a.f3425c;
                iArr = new int[2];
                c0252s0.getLocationOnScreen(iArr);
                rect3 = new Rect();
                this.f3319o.getWindowVisibleDisplayFrame(rect3);
                if (this.f3320p == 1) {
                    if (c0252s0.getWidth() + iArr[0] + iM > rect3.right) {
                        i4 = 0;
                        i3 = 1;
                    } else {
                        i3 = 1;
                        i4 = 1;
                    }
                } else if (iArr[0] - iM < 0) {
                    i3 = 1;
                    i4 = 1;
                } else {
                    i4 = 0;
                    i3 = 1;
                }
                if (i4 == i3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.f3320p = i4;
                k1.f3436o = childAt;
                if ((this.f3317m & 5) == 5) {
                    if (!z2) {
                        iM = 0 - childAt.getWidth();
                    }
                } else if (z2) {
                    iM = childAt.getWidth();
                } else {
                    iM = 0 - iM;
                }
                k1.f = iM;
                k1.f3432k = true;
                k1.f3431j = true;
                k1.n(0);
            } else {
                if (this.f3321q) {
                    k1.f = this.f3323s;
                }
                if (this.f3322r) {
                    k1.n(this.f3324t);
                }
                rect = this.f3399a;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                k1.f3444w = rect2;
            }
            arrayList.add(new C0215e(k1, lVar, this.f3320p));
            k1.f();
            C0252s0 c0252s2 = k1.f3425c;
            c0252s2.setOnKeyListener(this);
            if (c0215e == null || !this.f3326v || lVar.f3351m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0252s2, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(lVar.f3351m);
            c0252s2.addHeaderView(frameLayout, null, false);
            k1.f();
            return;
        }
        c0215e = null;
        childAt = null;
        if (childAt != null) {
            i2 = Build.VERSION.SDK_INT;
            a2 = k1.f3446y;
            if (i2 <= 28) {
                method = K0.f3459C;
                if (method != null) {
                    method.invoke(a2, Boolean.FALSE);
                }
            } else {
                H0.a(a2, false);
            }
            G0.a(k1.f3446y, null);
            c0252s0 = ((C0215e) arrayList.get(arrayList.size() - 1)).f3306a.f3425c;
            iArr = new int[2];
            c0252s0.getLocationOnScreen(iArr);
            rect3 = new Rect();
            this.f3319o.getWindowVisibleDisplayFrame(rect3);
            if (this.f3320p == 1) {
                if (c0252s0.getWidth() + iArr[0] + iM > rect3.right) {
                    i4 = 0;
                    i3 = 1;
                } else {
                    i3 = 1;
                    i4 = 1;
                }
            } else if (iArr[0] - iM < 0) {
                i3 = 1;
                i4 = 1;
            } else {
                i4 = 0;
                i3 = 1;
            }
            if (i4 == i3) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.f3320p = i4;
            k1.f3436o = childAt;
            if ((this.f3317m & 5) == 5) {
                if (!z2) {
                    iM = 0 - childAt.getWidth();
                }
            } else if (z2) {
                iM = childAt.getWidth();
            } else {
                iM = 0 - iM;
            }
            k1.f = iM;
            k1.f3432k = true;
            k1.f3431j = true;
            k1.n(0);
        } else {
            if (this.f3321q) {
                k1.f = this.f3323s;
            }
            if (this.f3322r) {
                k1.n(this.f3324t);
            }
            rect = this.f3399a;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            k1.f3444w = rect2;
        }
        arrayList.add(new C0215e(k1, lVar, this.f3320p));
        k1.f();
        C0252s0 c0252s3 = k1.f3425c;
        c0252s3.setOnKeyListener(this);
        if (c0215e == null) {
        }
    }
}
