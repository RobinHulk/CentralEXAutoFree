package androidx.appcompat.widget;

import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import p007e.AbstractC0201a;
import p011h.i;
import p012i.l;
import p012i.n;
import p014j.C0219b0;
import p014j.C0234j;
import p014j.C0259w;
import p014j.C0263y;
import p014j.InterfaceC0235j0;
import p014j.O0;
import p014j.i1;
import p014j.j1;
import p014j.k1;
import p014j.l1;
import p014j.m1;
import p014j.n1;
import p014j.o1;
import p014j.p1;
import p014j.q1;
import p014j.r1;
import p014j.u1;
import p034y.A;
import p034y.AbstractC0278l;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ColorStateList f1578A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f1579B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f1580C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final ArrayList f1581D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final ArrayList f1582E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int[] f1583F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final G.a f1584G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ArrayList f1585H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final j1 f1586I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public q1 f1587J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C0234j f1588K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public l1 f1589L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f1590M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public OnBackInvokedCallback f1591N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public OnBackInvokedDispatcher f1592O;
    public boolean P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final B.b f1593Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActionMenuView f1594a;
    public C0219b0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0219b0 f1595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0259w f1596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0263y f1597e;
    public final Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CharSequence f1598g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0259w f1599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f1600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f1601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1604m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f1605n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1606o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1607p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1608q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1610s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public O0 f1611t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1612u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1613v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f1614w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f1615x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f1616y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ColorStateList f1617z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i2 = 0; i2 < menu.size(); i2++) {
            arrayList.add(menu.getItem(i2));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new i(getContext());
    }

    public static m1 h() {
        m1 m1Var = new m1(-2, -2);
        m1Var.b = 0;
        m1Var.f3643a = 8388627;
        return m1Var;
    }

    public static m1 i(ViewGroup.LayoutParams layoutParams) {
        boolean z2 = layoutParams instanceof m1;
        if (z2) {
            m1 m1Var = (m1) layoutParams;
            m1 m1Var2 = new m1(m1Var);
            m1Var2.b = 0;
            m1Var2.b = m1Var.b;
            return m1Var2;
        }
        if (z2) {
            m1 m1Var3 = new m1((m1) layoutParams);
            m1Var3.b = 0;
            return m1Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            m1 m1Var4 = new m1(layoutParams);
            m1Var4.b = 0;
            return m1Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        m1 m1Var5 = new m1(marginLayoutParams);
        m1Var5.b = 0;
        ((ViewGroup.MarginLayoutParams) m1Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) m1Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) m1Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) m1Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return m1Var5;
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return AbstractC0278l.b(marginLayoutParams) + AbstractC0278l.c(marginLayoutParams);
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i2) {
        WeakHashMap weakHashMap = N.f4222a;
        boolean z2 = AbstractC0291z.d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, AbstractC0291z.d(this));
        arrayList.clear();
        if (!z2) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                m1 m1Var = (m1) childAt.getLayoutParams();
                if (m1Var.b == 0 && t(childAt) && j(m1Var.f3643a) == absoluteGravity) {
                    arrayList.add(childAt);
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            m1 m1Var2 = (m1) childAt2.getLayoutParams();
            if (m1Var2.b == 0 && t(childAt2) && j(m1Var2.f3643a) == absoluteGravity) {
                arrayList.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z2) {
        m1 m1VarI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            m1VarI = h();
        } else {
            m1VarI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (m1) layoutParams;
        }
        m1VarI.b = 1;
        if (!z2 || this.f1600i == null) {
            addView(view, m1VarI);
        } else {
            view.setLayoutParams(m1VarI);
            this.f1582E.add(view);
        }
    }

    public final void c() {
        if (this.f1599h == null) {
            C0259w c0259w = new C0259w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f1599h = c0259w;
            c0259w.setImageDrawable(this.f);
            this.f1599h.setContentDescription(this.f1598g);
            m1 m1VarH = h();
            m1VarH.f3643a = (this.f1605n & 112) | 8388611;
            m1VarH.b = 2;
            this.f1599h.setLayoutParams(m1VarH);
            this.f1599h.setOnClickListener(new j(this, 4));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof m1);
    }

    public final void d() {
        if (this.f1611t == null) {
            O0 o1 = new O0();
            o1.f3473a = 0;
            o1.b = 0;
            o1.f3474c = Integer.MIN_VALUE;
            o1.f3475d = Integer.MIN_VALUE;
            o1.f3476e = 0;
            o1.f = 0;
            o1.f3477g = false;
            o1.f3478h = false;
            this.f1611t = o1;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f1594a;
        if (actionMenuView.f1517p == null) {
            l lVar = (l) actionMenuView.getMenu();
            if (this.f1589L == null) {
                this.f1589L = new l1(this);
            }
            this.f1594a.setExpandedActionViewsExclusive(true);
            lVar.b(this.f1589L, this.f1601j);
            u();
        }
    }

    public final void f() {
        if (this.f1594a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f1594a = actionMenuView;
            actionMenuView.setPopupTheme(this.f1602k);
            this.f1594a.setOnMenuItemClickListener(this.f1586I);
            ActionMenuView actionMenuView2 = this.f1594a;
            j1 j1Var = new j1(this);
            actionMenuView2.getClass();
            actionMenuView2.f1522u = j1Var;
            m1 m1VarH = h();
            m1VarH.f3643a = (this.f1605n & 112) | 8388613;
            this.f1594a.setLayoutParams(m1VarH);
            b(this.f1594a, false);
        }
    }

    public final void g() {
        if (this.f1596d == null) {
            this.f1596d = new C0259w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            m1 m1VarH = h();
            m1VarH.f3643a = (this.f1605n & 112) | 8388611;
            this.f1596d.setLayoutParams(m1VarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        C0259w c0259w = this.f1599h;
        if (c0259w != null) {
            return c0259w.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        C0259w c0259w = this.f1599h;
        if (c0259w != null) {
            return c0259w.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        O0 o1 = this.f1611t;
        if (o1 != null) {
            return o1.f3477g ? o1.f3473a : o1.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.f1613v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        O0 o1 = this.f1611t;
        if (o1 != null) {
            return o1.f3473a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        O0 o1 = this.f1611t;
        if (o1 != null) {
            return o1.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        O0 o1 = this.f1611t;
        if (o1 != null) {
            return o1.f3477g ? o1.b : o1.f3473a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.f1612u;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        l lVar;
        ActionMenuView actionMenuView = this.f1594a;
        return (actionMenuView == null || (lVar = actionMenuView.f1517p) == null || !lVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f1613v, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = N.f4222a;
        return AbstractC0291z.d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = N.f4222a;
        return AbstractC0291z.d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1612u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        C0263y c0263y = this.f1597e;
        if (c0263y != null) {
            return c0263y.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        C0263y c0263y = this.f1597e;
        if (c0263y != null) {
            return c0263y.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f1594a.getMenu();
    }

    public View getNavButtonView() {
        return this.f1596d;
    }

    public CharSequence getNavigationContentDescription() {
        C0259w c0259w = this.f1596d;
        if (c0259w != null) {
            return c0259w.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C0259w c0259w = this.f1596d;
        if (c0259w != null) {
            return c0259w.getDrawable();
        }
        return null;
    }

    public C0234j getOuterActionMenuPresenter() {
        return this.f1588K;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f1594a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f1601j;
    }

    public int getPopupTheme() {
        return this.f1602k;
    }

    public CharSequence getSubtitle() {
        return this.f1616y;
    }

    public final TextView getSubtitleTextView() {
        return this.f1595c;
    }

    public CharSequence getTitle() {
        return this.f1615x;
    }

    public int getTitleMarginBottom() {
        return this.f1610s;
    }

    public int getTitleMarginEnd() {
        return this.f1608q;
    }

    public int getTitleMarginStart() {
        return this.f1607p;
    }

    public int getTitleMarginTop() {
        return this.f1609r;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    public InterfaceC0235j0 getWrapper() {
        Drawable drawable;
        if (this.f1587J == null) {
            q1 q1Var = new q1();
            q1Var.f3673n = 0;
            q1Var.f3662a = this;
            q1Var.f3667h = getTitle();
            q1Var.f3668i = getSubtitle();
            q1Var.f3666g = q1Var.f3667h != null;
            q1Var.f = getNavigationIcon();
            C0003d c0003dV = C0003d.v(getContext(), null, p005d.a.f2906a, R.attr.actionBarStyle);
            q1Var.f3674o = c0003dV.k(15);
            TypedArray typedArray = (TypedArray) c0003dV.f215c;
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                q1Var.f3666g = true;
                q1Var.f3667h = text;
                if ((q1Var.b & 8) != 0) {
                    Toolbar toolbar = q1Var.f3662a;
                    toolbar.setTitle(text);
                    if (q1Var.f3666g) {
                        N.j(toolbar.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                q1Var.f3668i = text2;
                if ((q1Var.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable drawableK = c0003dV.k(20);
            if (drawableK != null) {
                q1Var.f3665e = drawableK;
                q1Var.c();
            }
            Drawable drawableK2 = c0003dV.k(17);
            if (drawableK2 != null) {
                q1Var.f3664d = drawableK2;
                q1Var.c();
            }
            if (q1Var.f == null && (drawable = q1Var.f3674o) != null) {
                q1Var.f = drawable;
                int i2 = q1Var.b & 4;
                Toolbar toolbar2 = q1Var.f3662a;
                if (i2 != 0) {
                    toolbar2.setNavigationIcon(drawable);
                } else {
                    toolbar2.setNavigationIcon((Drawable) null);
                }
            }
            q1Var.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = q1Var.f3663c;
                if (view != null && (q1Var.b & 16) != 0) {
                    removeView(view);
                }
                q1Var.f3663c = viewInflate;
                if (viewInflate != null && (q1Var.b & 16) != 0) {
                    addView(viewInflate);
                }
                q1Var.a(q1Var.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.f1611t.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.f1603l = resourceId2;
                C0219b0 c0219b0 = this.b;
                if (c0219b0 != null) {
                    c0219b0.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.f1604m = resourceId3;
                C0219b0 c0219b1 = this.f1595c;
                if (c0219b1 != null) {
                    c0219b1.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            c0003dV.w();
            if (R.string.abc_action_bar_up_description != q1Var.f3673n) {
                q1Var.f3673n = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i3 = q1Var.f3673n;
                    q1Var.f3669j = i3 != 0 ? getContext().getString(i3) : null;
                    q1Var.b();
                }
            }
            q1Var.f3669j = getNavigationContentDescription();
            setNavigationOnClickListener(new p1(q1Var));
            this.f1587J = q1Var;
        }
        return this.f1587J;
    }

    public final int j(int i2) {
        WeakHashMap weakHashMap = N.f4222a;
        int iD = AbstractC0291z.d(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, iD) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return iD == 1 ? 5 : 3;
    }

    public final int k(View view, int i2) {
        m1 m1Var = (m1) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i4 = m1Var.f3643a & 112;
        if (i4 != 16 && i4 != 48 && i4 != 80) {
            i4 = this.f1614w & 112;
        }
        if (i4 == 48) {
            return getPaddingTop() - i3;
        }
        if (i4 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) m1Var).bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) m1Var).topMargin;
        if (iMax < i5) {
            iMax = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) m1Var).bottomMargin;
            if (i6 < i7) {
                iMax = Math.max(0, iMax - (i7 - i6));
            }
        }
        return paddingTop + iMax;
    }

    public final void n() {
        Iterator it = this.f1585H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.f1584G.f93c).iterator();
        if (it2.hasNext()) {
            it2.next().getClass();
            throw new ClassCastException();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f1585H = currentMenuItems2;
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.f1582E.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1593Q);
        u();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1580C = false;
        }
        if (!this.f1580C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1580C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1580C = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0262  */
    /* JADX WARN: Code duplicated, block: B:101:0x0284  */
    /* JADX WARN: Code duplicated, block: B:103:0x0287  */
    /* JADX WARN: Code duplicated, block: B:104:0x028c  */
    /* JADX WARN: Code duplicated, block: B:107:0x029b A[LOOP:0: B:106:0x0299->B:107:0x029b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x02b8 A[LOOP:1: B:109:0x02b6->B:110:0x02b8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x02d6 A[LOOP:2: B:112:0x02d4->B:113:0x02d6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:117:0x0317 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x0319  */
    /* JADX WARN: Code duplicated, block: B:119:0x031d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0325 A[LOOP:3: B:121:0x0323->B:122:0x0325, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0062 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:40:0x0101  */
    /* JADX WARN: Code duplicated, block: B:42:0x0106  */
    /* JADX WARN: Code duplicated, block: B:43:0x011e  */
    /* JADX WARN: Code duplicated, block: B:48:0x012b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x012d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0130  */
    /* JADX WARN: Code duplicated, block: B:52:0x0134  */
    /* JADX WARN: Code duplicated, block: B:53:0x0137  */
    /* JADX WARN: Code duplicated, block: B:56:0x0147  */
    /* JADX WARN: Code duplicated, block: B:58:0x014f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:65:0x016a  */
    /* JADX WARN: Code duplicated, block: B:67:0x016e  */
    /* JADX WARN: Code duplicated, block: B:69:0x017d  */
    /* JADX WARN: Code duplicated, block: B:70:0x017f  */
    /* JADX WARN: Code duplicated, block: B:72:0x018a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0196  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:83:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:87:0x0216  */
    /* JADX WARN: Code duplicated, block: B:89:0x0219  */
    /* JADX WARN: Code duplicated, block: B:91:0x0222 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0224  */
    /* JADX WARN: Code duplicated, block: B:94:0x0228  */
    /* JADX WARN: Code duplicated, block: B:97:0x023c  */
    /* JADX WARN: Code duplicated, block: B:98:0x025f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int iP;
        int iQ;
        int iMax;
        int iMin;
        boolean zT;
        boolean zT2;
        int measuredHeight;
        C0219b0 c0219b0;
        C0219b0 c0219b1;
        m1 m1Var;
        m1 m1Var2;
        boolean z3;
        int i6;
        int i7;
        int paddingTop;
        int i8;
        int iMax2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int iMax3;
        int i14;
        int i15;
        int i16;
        int i17;
        ArrayList arrayList;
        int size;
        int iP2;
        int i18;
        int i19;
        int size2;
        int i20;
        int size3;
        int i21;
        int i22;
        int i23;
        int measuredWidth;
        int i24;
        int i25;
        int size4;
        int i26;
        WeakHashMap weakHashMap = N.f4222a;
        boolean z4 = AbstractC0291z.d(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i27 = width - paddingRight;
        int[] iArr = this.f1583F;
        iArr[1] = 0;
        iArr[0] = 0;
        int iD = AbstractC0290y.d(this);
        int iMin2 = iD >= 0 ? Math.min(iD, i5 - i3) : 0;
        if (t(this.f1596d)) {
            if (z4) {
                iQ = q(this.f1596d, i27, iMin2, iArr);
                iP = paddingLeft;
            } else {
                iP = p(this.f1596d, paddingLeft, iMin2, iArr);
            }
            if (t(this.f1599h)) {
                if (z4) {
                    iQ = q(this.f1599h, iQ, iMin2, iArr);
                } else {
                    iP = p(this.f1599h, iP, iMin2, iArr);
                }
            }
            if (t(this.f1594a)) {
                if (z4) {
                    iP = p(this.f1594a, iP, iMin2, iArr);
                } else {
                    iQ = q(this.f1594a, iQ, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iP);
            iArr[1] = Math.max(0, currentContentInsetRight - (i27 - iQ));
            iMax = Math.max(iP, currentContentInsetLeft);
            iMin = Math.min(iQ, i27 - currentContentInsetRight);
            if (t(this.f1600i)) {
                if (z4) {
                    iMin = q(this.f1600i, iMin, iMin2, iArr);
                } else {
                    iMax = p(this.f1600i, iMax, iMin2, iArr);
                }
            }
            if (t(this.f1597e)) {
                if (z4) {
                    iMin = q(this.f1597e, iMin, iMin2, iArr);
                } else {
                    iMax = p(this.f1597e, iMax, iMin2, iArr);
                }
            }
            zT = t(this.b);
            zT2 = t(this.f1595c);
            if (zT) {
                m1 m1Var3 = (m1) this.b.getLayoutParams();
                measuredHeight = ((ViewGroup.MarginLayoutParams) m1Var3).bottomMargin + this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) m1Var3).topMargin;
            } else {
                measuredHeight = 0;
            }
            if (zT2) {
                m1 m1Var4 = (m1) this.f1595c.getLayoutParams();
                measuredHeight += this.f1595c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) m1Var4).topMargin + ((ViewGroup.MarginLayoutParams) m1Var4).bottomMargin;
            }
            if (!zT || zT2) {
                if (zT) {
                    c0219b0 = this.b;
                } else {
                    c0219b0 = this.f1595c;
                }
                if (zT2) {
                    c0219b1 = this.f1595c;
                } else {
                    c0219b1 = this.b;
                }
                m1Var = (m1) c0219b0.getLayoutParams();
                m1Var2 = (m1) c0219b1.getLayoutParams();
                z3 = (!zT && this.b.getMeasuredWidth() > 0) || (zT2 && this.f1595c.getMeasuredWidth() > 0);
                i6 = this.f1614w & 112;
                i7 = iMin2;
                if (i6 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
                } else if (i6 != 80) {
                    iMax3 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i14 = ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
                    if (iMax3 < i14) {
                        iMax3 = i14;
                    } else {
                        i15 = (((height - paddingBottom) - measuredHeight) - iMax3) - paddingTop2;
                        i16 = ((ViewGroup.MarginLayoutParams) m1Var).bottomMargin;
                        i17 = this.f1610s;
                        if (i15 < i16 + i17) {
                            iMax3 = Math.max(0, iMax3 - ((((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin + i17) - i15));
                        }
                    }
                    paddingTop = paddingTop2 + iMax3;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin) - this.f1610s) - measuredHeight;
                }
                if (z4) {
                    if (z3) {
                        i11 = this.f1607p;
                    } else {
                        i11 = 0;
                    }
                    int i28 = i11 - iArr[1];
                    iMin -= Math.max(0, i28);
                    iArr[1] = Math.max(0, -i28);
                    if (zT) {
                        m1 m1Var5 = (m1) this.b.getLayoutParams();
                        int measuredWidth2 = iMin - this.b.getMeasuredWidth();
                        int measuredHeight2 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i12 = measuredWidth2 - this.f1608q;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) m1Var5).bottomMargin;
                    } else {
                        i12 = iMin;
                    }
                    if (zT2) {
                        int i29 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                        this.f1595c.layout(iMin - this.f1595c.getMeasuredWidth(), i29, iMin, this.f1595c.getMeasuredHeight() + i29);
                        i13 = iMin - this.f1608q;
                    } else {
                        i13 = iMin;
                    }
                    if (z3) {
                        iMin = Math.min(i12, i13);
                    }
                    iMax = iMax;
                } else {
                    if (z3) {
                        i8 = this.f1607p;
                    } else {
                        i8 = 0;
                    }
                    int i30 = i8 - iArr[0];
                    iMax2 = Math.max(0, i30) + iMax;
                    iArr[0] = Math.max(0, -i30);
                    if (zT) {
                        m1 m1Var6 = (m1) this.b.getLayoutParams();
                        int measuredWidth3 = this.b.getMeasuredWidth() + iMax2;
                        int measuredHeight3 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(iMax2, paddingTop, measuredWidth3, measuredHeight3);
                        i9 = measuredWidth3 + this.f1608q;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) m1Var6).bottomMargin;
                    } else {
                        i9 = iMax2;
                    }
                    if (zT2) {
                        int i31 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.f1595c.getMeasuredWidth() + iMax2;
                        this.f1595c.layout(iMax2, i31, measuredWidth4, this.f1595c.getMeasuredHeight() + i31);
                        i10 = measuredWidth4 + this.f1608q;
                    } else {
                        i10 = iMax2;
                    }
                    if (z3) {
                        iMax = Math.max(i9, i10);
                    } else {
                        iMax = iMax2;
                    }
                }
            } else {
                paddingLeft = paddingLeft;
                i7 = iMin2;
            }
            arrayList = this.f1581D;
            a(arrayList, 3);
            size = arrayList.size();
            iP2 = iMax;
            for (i18 = 0; i18 < size; i18++) {
                iP2 = p((View) arrayList.get(i18), iP2, i7, iArr);
            }
            i19 = i7;
            a(arrayList, 5);
            size2 = arrayList.size();
            for (i20 = 0; i20 < size2; i20++) {
                iMin = q((View) arrayList.get(i20), iMin, i19, iArr);
            }
            a(arrayList, 1);
            int i32 = iArr[0];
            int i33 = iArr[1];
            size3 = arrayList.size();
            i21 = i33;
            i22 = i32;
            i23 = 0;
            measuredWidth = 0;
            while (i23 < size3) {
                View view = (View) arrayList.get(i23);
                m1 m1Var7 = (m1) view.getLayoutParams();
                int i34 = ((ViewGroup.MarginLayoutParams) m1Var7).leftMargin - i22;
                int i35 = ((ViewGroup.MarginLayoutParams) m1Var7).rightMargin - i21;
                int iMax4 = Math.max(0, i34);
                int iMax5 = Math.max(0, i35);
                int iMax6 = Math.max(0, -i34);
                int iMax7 = Math.max(0, -i35);
                measuredWidth += view.getMeasuredWidth() + iMax4 + iMax5;
                i23++;
                i21 = iMax7;
                i22 = iMax6;
            }
            i24 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
            i25 = measuredWidth + i24;
            if (i24 >= iP2) {
                if (i25 > iMin) {
                    iP2 = i24 - (i25 - iMin);
                } else {
                    iP2 = i24;
                }
            }
            size4 = arrayList.size();
            for (i26 = 0; i26 < size4; i26++) {
                iP2 = p((View) arrayList.get(i26), iP2, i19, iArr);
            }
            arrayList.clear();
        }
        iP = paddingLeft;
        iQ = i27;
        if (t(this.f1599h)) {
            if (z4) {
                iQ = q(this.f1599h, iQ, iMin2, iArr);
            } else {
                iP = p(this.f1599h, iP, iMin2, iArr);
            }
        }
        if (t(this.f1594a)) {
            if (z4) {
                iP = p(this.f1594a, iP, iMin2, iArr);
            } else {
                iQ = q(this.f1594a, iQ, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iP);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i27 - iQ));
        iMax = Math.max(iP, currentContentInsetLeft2);
        iMin = Math.min(iQ, i27 - currentContentInsetRight2);
        if (t(this.f1600i)) {
            if (z4) {
                iMin = q(this.f1600i, iMin, iMin2, iArr);
            } else {
                iMax = p(this.f1600i, iMax, iMin2, iArr);
            }
        }
        if (t(this.f1597e)) {
            if (z4) {
                iMin = q(this.f1597e, iMin, iMin2, iArr);
            } else {
                iMax = p(this.f1597e, iMax, iMin2, iArr);
            }
        }
        zT = t(this.b);
        zT2 = t(this.f1595c);
        if (zT) {
            m1 m1Var8 = (m1) this.b.getLayoutParams();
            measuredHeight = ((ViewGroup.MarginLayoutParams) m1Var8).bottomMargin + this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) m1Var8).topMargin;
        } else {
            measuredHeight = 0;
        }
        if (zT2) {
            m1 m1Var9 = (m1) this.f1595c.getLayoutParams();
            measuredHeight += this.f1595c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) m1Var9).topMargin + ((ViewGroup.MarginLayoutParams) m1Var9).bottomMargin;
        }
        if (zT) {
            if (zT) {
                c0219b0 = this.b;
            } else {
                c0219b0 = this.f1595c;
            }
            if (zT2) {
                c0219b1 = this.f1595c;
            } else {
                c0219b1 = this.b;
            }
            m1Var = (m1) c0219b0.getLayoutParams();
            m1Var2 = (m1) c0219b1.getLayoutParams();
            if (zT) {
            }
            i6 = this.f1614w & 112;
            i7 = iMin2;
            if (i6 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
            } else if (i6 != 80) {
                iMax3 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i14 = ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
                if (iMax3 < i14) {
                    iMax3 = i14;
                } else {
                    i15 = (((height - paddingBottom) - measuredHeight) - iMax3) - paddingTop2;
                    i16 = ((ViewGroup.MarginLayoutParams) m1Var).bottomMargin;
                    i17 = this.f1610s;
                    if (i15 < i16 + i17) {
                        iMax3 = Math.max(0, iMax3 - ((((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin + i17) - i15));
                    }
                }
                paddingTop = paddingTop2 + iMax3;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin) - this.f1610s) - measuredHeight;
            }
            if (z4) {
                if (z3) {
                    i11 = this.f1607p;
                } else {
                    i11 = 0;
                }
                int i210 = i11 - iArr[1];
                iMin -= Math.max(0, i210);
                iArr[1] = Math.max(0, -i210);
                if (zT) {
                    m1 m1Var10 = (m1) this.b.getLayoutParams();
                    int measuredWidth5 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight4 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i12 = measuredWidth5 - this.f1608q;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) m1Var10).bottomMargin;
                } else {
                    i12 = iMin;
                }
                if (zT2) {
                    int i211 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                    this.f1595c.layout(iMin - this.f1595c.getMeasuredWidth(), i211, iMin, this.f1595c.getMeasuredHeight() + i211);
                    i13 = iMin - this.f1608q;
                } else {
                    i13 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i12, i13);
                }
                iMax = iMax;
            } else {
                if (z3) {
                    i8 = this.f1607p;
                } else {
                    i8 = 0;
                }
                int i36 = i8 - iArr[0];
                iMax2 = Math.max(0, i36) + iMax;
                iArr[0] = Math.max(0, -i36);
                if (zT) {
                    m1 m1Var11 = (m1) this.b.getLayoutParams();
                    int measuredWidth6 = this.b.getMeasuredWidth() + iMax2;
                    int measuredHeight5 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax2, paddingTop, measuredWidth6, measuredHeight5);
                    i9 = measuredWidth6 + this.f1608q;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) m1Var11).bottomMargin;
                } else {
                    i9 = iMax2;
                }
                if (zT2) {
                    int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.f1595c.getMeasuredWidth() + iMax2;
                    this.f1595c.layout(iMax2, i37, measuredWidth7, this.f1595c.getMeasuredHeight() + i37);
                    i10 = measuredWidth7 + this.f1608q;
                } else {
                    i10 = iMax2;
                }
                if (z3) {
                    iMax = Math.max(i9, i10);
                } else {
                    iMax = iMax2;
                }
            }
        } else {
            if (zT) {
                c0219b0 = this.b;
            } else {
                c0219b0 = this.f1595c;
            }
            if (zT2) {
                c0219b1 = this.f1595c;
            } else {
                c0219b1 = this.b;
            }
            m1Var = (m1) c0219b0.getLayoutParams();
            m1Var2 = (m1) c0219b1.getLayoutParams();
            if (zT) {
            }
            i6 = this.f1614w & 112;
            i7 = iMin2;
            if (i6 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
            } else if (i6 != 80) {
                iMax3 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i14 = ((ViewGroup.MarginLayoutParams) m1Var).topMargin + this.f1609r;
                if (iMax3 < i14) {
                    iMax3 = i14;
                } else {
                    i15 = (((height - paddingBottom) - measuredHeight) - iMax3) - paddingTop2;
                    i16 = ((ViewGroup.MarginLayoutParams) m1Var).bottomMargin;
                    i17 = this.f1610s;
                    if (i15 < i16 + i17) {
                        iMax3 = Math.max(0, iMax3 - ((((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin + i17) - i15));
                    }
                }
                paddingTop = paddingTop2 + iMax3;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) m1Var2).bottomMargin) - this.f1610s) - measuredHeight;
            }
            if (z4) {
                if (z3) {
                    i11 = this.f1607p;
                } else {
                    i11 = 0;
                }
                int i212 = i11 - iArr[1];
                iMin -= Math.max(0, i212);
                iArr[1] = Math.max(0, -i212);
                if (zT) {
                    m1 m1Var12 = (m1) this.b.getLayoutParams();
                    int measuredWidth8 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight6 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i12 = measuredWidth8 - this.f1608q;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) m1Var12).bottomMargin;
                } else {
                    i12 = iMin;
                }
                if (zT2) {
                    int i213 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                    this.f1595c.layout(iMin - this.f1595c.getMeasuredWidth(), i213, iMin, this.f1595c.getMeasuredHeight() + i213);
                    i13 = iMin - this.f1608q;
                } else {
                    i13 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i12, i13);
                }
                iMax = iMax;
            } else {
                if (z3) {
                    i8 = this.f1607p;
                } else {
                    i8 = 0;
                }
                int i38 = i8 - iArr[0];
                iMax2 = Math.max(0, i38) + iMax;
                iArr[0] = Math.max(0, -i38);
                if (zT) {
                    m1 m1Var13 = (m1) this.b.getLayoutParams();
                    int measuredWidth9 = this.b.getMeasuredWidth() + iMax2;
                    int measuredHeight7 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax2, paddingTop, measuredWidth9, measuredHeight7);
                    i9 = measuredWidth9 + this.f1608q;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) m1Var13).bottomMargin;
                } else {
                    i9 = iMax2;
                }
                if (zT2) {
                    int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((m1) this.f1595c.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.f1595c.getMeasuredWidth() + iMax2;
                    this.f1595c.layout(iMax2, i39, measuredWidth10, this.f1595c.getMeasuredHeight() + i39);
                    i10 = measuredWidth10 + this.f1608q;
                } else {
                    i10 = iMax2;
                }
                if (z3) {
                    iMax = Math.max(i9, i10);
                } else {
                    iMax = iMax2;
                }
            }
        }
        arrayList = this.f1581D;
        a(arrayList, 3);
        size = arrayList.size();
        iP2 = iMax;
        while (i18 < size) {
            iP2 = p((View) arrayList.get(i18), iP2, i7, iArr);
        }
        i19 = i7;
        a(arrayList, 5);
        size2 = arrayList.size();
        while (i20 < size2) {
            iMin = q((View) arrayList.get(i20), iMin, i19, iArr);
        }
        a(arrayList, 1);
        int i310 = iArr[0];
        int i311 = iArr[1];
        size3 = arrayList.size();
        i21 = i311;
        i22 = i310;
        i23 = 0;
        measuredWidth = 0;
        while (i23 < size3) {
            View view2 = (View) arrayList.get(i23);
            m1 m1Var14 = (m1) view2.getLayoutParams();
            int i312 = ((ViewGroup.MarginLayoutParams) m1Var14).leftMargin - i22;
            int i313 = ((ViewGroup.MarginLayoutParams) m1Var14).rightMargin - i21;
            int iMax8 = Math.max(0, i312);
            int iMax9 = Math.max(0, i313);
            int iMax10 = Math.max(0, -i312);
            int iMax11 = Math.max(0, -i313);
            measuredWidth += view2.getMeasuredWidth() + iMax8 + iMax9;
            i23++;
            i21 = iMax11;
            i22 = iMax10;
        }
        i24 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        i25 = measuredWidth + i24;
        if (i24 >= iP2) {
            if (i25 > iMin) {
                iP2 = i24 - (i25 - iMin);
            } else {
                iP2 = i24;
            }
        }
        size4 = arrayList.size();
        while (i26 < size4) {
            iP2 = p((View) arrayList.get(i26), iP2, i19, iArr);
        }
        arrayList.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iM;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean zA = u1.a(this);
        int i4 = !zA ? 1 : 0;
        int i5 = 0;
        if (t(this.f1596d)) {
            s(this.f1596d, i2, 0, i3, this.f1606o);
            iL = l(this.f1596d) + this.f1596d.getMeasuredWidth();
            iMax = Math.max(0, m(this.f1596d) + this.f1596d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1596d.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (t(this.f1599h)) {
            s(this.f1599h, i2, 0, i3, this.f1606o);
            iL = l(this.f1599h) + this.f1599h.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f1599h) + this.f1599h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1599h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iL);
        int iMax4 = Math.max(0, currentContentInsetStart - iL);
        int[] iArr = this.f1583F;
        iArr[zA ? 1 : 0] = iMax4;
        if (t(this.f1594a)) {
            s(this.f1594a, i2, iMax3, i3, this.f1606o);
            iL2 = l(this.f1594a) + this.f1594a.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f1594a) + this.f1594a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1594a.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iL2);
        iArr[i4] = Math.max(0, currentContentInsetEnd - iL2);
        if (t(this.f1600i)) {
            iMax5 += r(this.f1600i, i2, iMax5, i3, 0, iArr);
            iMax = Math.max(iMax, m(this.f1600i) + this.f1600i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1600i.getMeasuredState());
        }
        if (t(this.f1597e)) {
            iMax5 += r(this.f1597e, i2, iMax5, i3, 0, iArr);
            iMax = Math.max(iMax, m(this.f1597e) + this.f1597e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1597e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (((m1) childAt.getLayoutParams()).b == 0 && t(childAt)) {
                iMax5 += r(childAt, i2, iMax5, i3, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i7 = this.f1609r + this.f1610s;
        int i8 = this.f1607p + this.f1608q;
        if (t(this.b)) {
            r(this.b, i2, iMax5 + i8, i3, i7, iArr);
            int iL3 = l(this.b) + this.b.getMeasuredWidth();
            iM = m(this.b) + this.b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.b.getMeasuredState());
            iMax2 = iL3;
        } else {
            iM = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (t(this.f1595c)) {
            iMax2 = Math.max(iMax2, r(this.f1595c, i2, iMax5 + i8, i3, iM + i7, iArr));
            iM += m(this.f1595c) + this.f1595c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f1595c.getMeasuredState());
        }
        int iMax6 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax6;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax5 + iMax2, getSuggestedMinimumWidth()), i2, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16);
        if (!this.f1590M) {
            i5 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            View childAt2 = getChildAt(i9);
            if (t(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i5 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i5);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof o1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o1 o1Var = (o1) parcelable;
        super.onRestoreInstanceState(o1Var.f46a);
        ActionMenuView actionMenuView = this.f1594a;
        l lVar = actionMenuView != null ? actionMenuView.f1517p : null;
        int i2 = o1Var.f3652c;
        if (i2 != 0 && this.f1589L != null && lVar != null && (menuItemFindItem = lVar.findItem(i2)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (o1Var.f3653d) {
            B.b bVar = this.f1593Q;
            removeCallbacks(bVar);
            post(bVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        d();
        O0 o1 = this.f1611t;
        boolean z2 = i2 == 1;
        if (z2 == o1.f3477g) {
            return;
        }
        o1.f3477g = z2;
        if (!o1.f3478h) {
            o1.f3473a = o1.f3476e;
            o1.b = o1.f;
            return;
        }
        if (z2) {
            int i3 = o1.f3475d;
            if (i3 == Integer.MIN_VALUE) {
                i3 = o1.f3476e;
            }
            o1.f3473a = i3;
            int i4 = o1.f3474c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = o1.f;
            }
            o1.b = i4;
            return;
        }
        int i5 = o1.f3474c;
        if (i5 == Integer.MIN_VALUE) {
            i5 = o1.f3476e;
        }
        o1.f3473a = i5;
        int i6 = o1.f3475d;
        if (i6 == Integer.MIN_VALUE) {
            i6 = o1.f;
        }
        o1.b = i6;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0234j c0234j;
        n nVar;
        o1 o1Var = new o1(super.onSaveInstanceState());
        l1 l1Var = this.f1589L;
        if (l1Var != null && (nVar = l1Var.b) != null) {
            o1Var.f3652c = nVar.f3368a;
        }
        ActionMenuView actionMenuView = this.f1594a;
        o1Var.f3653d = (actionMenuView == null || (c0234j = actionMenuView.f1521t) == null || !c0234j.k()) ? false : true;
        return o1Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1579B = false;
        }
        if (!this.f1579B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1579B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1579B = false;
        }
        return true;
    }

    public final int p(View view, int i2, int i3, int[] iArr) {
        m1 m1Var = (m1) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) m1Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i4) + i2;
        iArr[0] = Math.max(0, -i4);
        int iK = k(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) m1Var).rightMargin + iMax;
    }

    public final int q(View view, int i2, int i3, int[] iArr) {
        m1 m1Var = (m1) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) m1Var).rightMargin - iArr[1];
        int iMax = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int iK = k(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) m1Var).leftMargin);
    }

    public final int r(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i7) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + iMax + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void s(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setBackInvokedCallbackEnabled(boolean z2) {
        if (this.P != z2) {
            this.P = z2;
            u();
        }
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(AbstractC0201a.A(getContext(), i2));
    }

    public void setCollapsible(boolean z2) {
        this.f1590M = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1613v) {
            this.f1613v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1612u) {
            this.f1612u = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i2) {
        setLogo(AbstractC0201a.A(getContext(), i2));
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(AbstractC0201a.A(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f1596d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(n1 n1Var) {
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f1594a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.f1602k != i2) {
            this.f1602k = i2;
            if (i2 == 0) {
                this.f1601j = getContext();
            } else {
                this.f1601j = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMarginBottom(int i2) {
        this.f1610s = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.f1608q = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.f1607p = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.f1609r = i2;
        requestLayout();
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public final boolean t(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    public final void u() {
        boolean z2;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        int i2 = 0;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = k1.a(this);
            l1 l1Var = this.f1589L;
            if (l1Var == null || l1Var.b == null || onBackInvokedDispatcherA == null) {
                z2 = false;
            } else {
                WeakHashMap weakHashMap = N.f4222a;
                if (A.b(this) && this.P) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (z2 && this.f1592O == null) {
                if (this.f1591N == null) {
                    this.f1591N = k1.b(new i1(this, i2));
                }
                k1.c(onBackInvokedDispatcherA, this.f1591N);
                this.f1592O = onBackInvokedDispatcherA;
                return;
            }
            if (z2 || (onBackInvokedDispatcher = this.f1592O) == null) {
                return;
            }
            k1.d(onBackInvokedDispatcher, this.f1591N);
            this.f1592O = null;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f1614w = 8388627;
        this.f1581D = new ArrayList();
        this.f1582E = new ArrayList();
        this.f1583F = new int[2];
        this.f1584G = new G.a(new i1(this, 1));
        this.f1585H = new ArrayList();
        this.f1586I = new j1(this);
        this.f1593Q = new B.b(this, 19);
        Context context2 = getContext();
        int[] iArr = p005d.a.f2928y;
        C0003d c0003dV = C0003d.v(context2, attributeSet, iArr, R.attr.toolbarStyle);
        N.h(this, context, iArr, attributeSet, (TypedArray) c0003dV.f215c, R.attr.toolbarStyle);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        this.f1603l = typedArray.getResourceId(28, 0);
        this.f1604m = typedArray.getResourceId(19, 0);
        this.f1614w = typedArray.getInteger(0, 8388627);
        this.f1605n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f1610s = dimensionPixelOffset;
        this.f1609r = dimensionPixelOffset;
        this.f1608q = dimensionPixelOffset;
        this.f1607p = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f1607p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f1608q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f1609r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f1610s = dimensionPixelOffset5;
        }
        this.f1606o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        O0 o1 = this.f1611t;
        o1.f3478h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            o1.f3476e = dimensionPixelSize;
            o1.f3473a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            o1.f = dimensionPixelSize2;
            o1.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            o1.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f1612u = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f1613v = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f = c0003dV.k(4);
        this.f1598g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f1601j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableK = c0003dV.k(16);
        if (drawableK != null) {
            setNavigationIcon(drawableK);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableK2 = c0003dV.k(11);
        if (drawableK2 != null) {
            setLogo(drawableK2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(c0003dV.j(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(c0003dV.j(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        c0003dV.w();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        m1 m1Var = new m1(context, attributeSet);
        m1Var.f3643a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p005d.a.b);
        m1Var.f3643a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        m1Var.b = 0;
        return m1Var;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        C0259w c0259w = this.f1599h;
        if (c0259w != null) {
            c0259w.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f1599h.setImageDrawable(drawable);
        } else {
            C0259w c0259w = this.f1599h;
            if (c0259w != null) {
                c0259w.setImageDrawable(this.f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f1597e == null) {
                this.f1597e = new C0263y(getContext(), null, 0);
            }
            if (!o(this.f1597e)) {
                b(this.f1597e, true);
            }
        } else {
            C0263y c0263y = this.f1597e;
            if (c0263y != null && o(c0263y)) {
                removeView(this.f1597e);
                this.f1582E.remove(this.f1597e);
            }
        }
        C0263y c0263y2 = this.f1597e;
        if (c0263y2 != null) {
            c0263y2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f1597e == null) {
            this.f1597e = new C0263y(getContext(), null, 0);
        }
        C0263y c0263y = this.f1597e;
        if (c0263y != null) {
            c0263y.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        C0259w c0259w = this.f1596d;
        if (c0259w != null) {
            c0259w.setContentDescription(charSequence);
            r1.a(this.f1596d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.f1596d)) {
                b(this.f1596d, true);
            }
        } else {
            C0259w c0259w = this.f1596d;
            if (c0259w != null && o(c0259w)) {
                removeView(this.f1596d);
                this.f1582E.remove(this.f1596d);
            }
        }
        C0259w c0259w2 = this.f1596d;
        if (c0259w2 != null) {
            c0259w2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C0219b0 c0219b0 = this.f1595c;
            if (c0219b0 != null && o(c0219b0)) {
                removeView(this.f1595c);
                this.f1582E.remove(this.f1595c);
            }
        } else {
            if (this.f1595c == null) {
                Context context = getContext();
                C0219b0 c0219b1 = new C0219b0(context, null);
                this.f1595c = c0219b1;
                c0219b1.setSingleLine();
                this.f1595c.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.f1604m;
                if (i2 != 0) {
                    this.f1595c.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.f1578A;
                if (colorStateList != null) {
                    this.f1595c.setTextColor(colorStateList);
                }
            }
            if (!o(this.f1595c)) {
                b(this.f1595c, true);
            }
        }
        C0219b0 c0219b2 = this.f1595c;
        if (c0219b2 != null) {
            c0219b2.setText(charSequence);
        }
        this.f1616y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f1578A = colorStateList;
        C0219b0 c0219b0 = this.f1595c;
        if (c0219b0 != null) {
            c0219b0.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C0219b0 c0219b0 = this.b;
            if (c0219b0 != null && o(c0219b0)) {
                removeView(this.b);
                this.f1582E.remove(this.b);
            }
        } else {
            if (this.b == null) {
                Context context = getContext();
                C0219b0 c0219b1 = new C0219b0(context, null);
                this.b = c0219b1;
                c0219b1.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.f1603l;
                if (i2 != 0) {
                    this.b.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.f1617z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!o(this.b)) {
                b(this.b, true);
            }
        }
        C0219b0 c0219b2 = this.b;
        if (c0219b2 != null) {
            c0219b2.setText(charSequence);
        }
        this.f1615x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f1617z = colorStateList;
        C0219b0 c0219b0 = this.b;
        if (c0219b0 != null) {
            c0219b0.setTextColor(colorStateList);
        }
    }
}
