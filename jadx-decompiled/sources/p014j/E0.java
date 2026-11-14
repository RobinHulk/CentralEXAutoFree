package p014j;

import B.o;
import B.p;
import C.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p005d.a;
import p007e.AbstractC0201a;
import p012i.C;
import p034y.A;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class E0 implements C {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final Method f3422A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Method f3423z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3424a;
    public ListAdapter b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0252s0 f3425c;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3428g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3430i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3431j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3432k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public b f3435n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f3436o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AdapterView.OnItemClickListener f3437p;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Handler f3442u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Rect f3444w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3445x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final A f3446y;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3426d = -2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3427e = -2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3429h = 1002;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3433l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3434m = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final B0 f3438q = new B0(this, 1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final D0 f3439r = new D0(this);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final C0 f3440s = new C0(this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final B0 f3441t = new B0(this, 0);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Rect f3443v = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f3423z = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f3422A = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public E0(Context context, AttributeSet attributeSet, int i2) {
        int resourceId;
        this.f3424a = context;
        this.f3442u = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f2918o, i2, 0);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f3428g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f3430i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        A a2 = new A(context, attributeSet, i2, 0);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.f2922s, i2, 0);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            p.c(a2, typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        a2.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : AbstractC0201a.A(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.f3446y = a2;
        a2.setInputMethodMode(1);
    }

    public final void a(int i2) {
        this.f = i2;
    }

    @Override // p012i.C
    public final boolean b() {
        return this.f3446y.isShowing();
    }

    public final int c() {
        return this.f;
    }

    @Override // p012i.C
    public final void dismiss() {
        A a2 = this.f3446y;
        a2.dismiss();
        a2.setContentView(null);
        this.f3425c = null;
        this.f3442u.removeCallbacks(this.f3438q);
    }

    @Override // p012i.C
    public final void f() {
        int i2;
        int iMakeMeasureSpec;
        int paddingBottom;
        C0252s0 c0252s0;
        C0252s0 c0252s1 = this.f3425c;
        A a2 = this.f3446y;
        Context context = this.f3424a;
        if (c0252s1 == null) {
            C0252s0 c0252s0Q = q(context, !this.f3445x);
            this.f3425c = c0252s0Q;
            c0252s0Q.setAdapter(this.b);
            this.f3425c.setOnItemClickListener(this.f3437p);
            this.f3425c.setFocusable(true);
            this.f3425c.setFocusableInTouchMode(true);
            this.f3425c.setOnItemSelectedListener(new C0264y0(this, 0));
            this.f3425c.setOnScrollListener(this.f3440s);
            a2.setContentView(this.f3425c);
        }
        Drawable background = a2.getBackground();
        Rect rect = this.f3443v;
        if (background != null) {
            background.getPadding(rect);
            int i3 = rect.top;
            i2 = rect.bottom + i3;
            if (!this.f3430i) {
                this.f3428g = -i3;
            }
        } else {
            rect.setEmpty();
            i2 = 0;
        }
        int iA = AbstractC0266z0.a(a2, this.f3436o, this.f3428g, a2.getInputMethodMode() == 2);
        int i4 = this.f3426d;
        if (i4 == -1) {
            paddingBottom = iA + i2;
        } else {
            int i5 = this.f3427e;
            if (i5 != -2) {
                iMakeMeasureSpec = i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int iA2 = this.f3425c.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f3425c.getPaddingBottom() + this.f3425c.getPaddingTop() + i2 : 0);
        }
        boolean z2 = this.f3446y.getInputMethodMode() == 2;
        p.d(a2, this.f3429h);
        if (a2.isShowing()) {
            View view = this.f3436o;
            WeakHashMap weakHashMap = N.f4222a;
            if (A.b(view)) {
                int width = this.f3427e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f3436o.getWidth();
                }
                if (i4 == -1) {
                    i4 = z2 ? paddingBottom : -1;
                    if (z2) {
                        a2.setWidth(this.f3427e == -1 ? -1 : 0);
                        a2.setHeight(0);
                    } else {
                        a2.setWidth(this.f3427e == -1 ? -1 : 0);
                        a2.setHeight(-1);
                    }
                } else if (i4 == -2) {
                    i4 = paddingBottom;
                }
                a2.setOutsideTouchable(true);
                a2.update(this.f3436o, this.f, this.f3428g, width < 0 ? -1 : width, i4 < 0 ? -1 : i4);
                return;
            }
            return;
        }
        int width2 = this.f3427e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f3436o.getWidth();
        }
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = paddingBottom;
        }
        a2.setWidth(width2);
        a2.setHeight(i4);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f3423z;
            if (method != null) {
                try {
                    method.invoke(a2, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            A0.b(a2, true);
        }
        a2.setOutsideTouchable(true);
        a2.setTouchInterceptor(this.f3439r);
        if (this.f3432k) {
            p.c(a2, this.f3431j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f3422A;
            if (method2 != null) {
                try {
                    method2.invoke(a2, this.f3444w);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            A0.a(a2, this.f3444w);
        }
        o.a(a2, this.f3436o, this.f, this.f3428g, this.f3433l);
        this.f3425c.setSelection(-1);
        if ((!this.f3445x || this.f3425c.isInTouchMode()) && (c0252s0 = this.f3425c) != null) {
            c0252s0.setListSelectionHidden(true);
            c0252s0.requestLayout();
        }
        if (this.f3445x) {
            return;
        }
        this.f3442u.post(this.f3441t);
    }

    public final int g() {
        if (this.f3430i) {
            return this.f3428g;
        }
        return 0;
    }

    public final Drawable i() {
        return this.f3446y.getBackground();
    }

    @Override // p012i.C
    public final C0252s0 k() {
        return this.f3425c;
    }

    public final void m(Drawable drawable) {
        this.f3446y.setBackgroundDrawable(drawable);
    }

    public final void n(int i2) {
        this.f3428g = i2;
        this.f3430i = true;
    }

    public void o(ListAdapter listAdapter) {
        b bVar = this.f3435n;
        if (bVar == null) {
            this.f3435n = new b(this, 1);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(bVar);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f3435n);
        }
        C0252s0 c0252s0 = this.f3425c;
        if (c0252s0 != null) {
            c0252s0.setAdapter(this.b);
        }
    }

    public C0252s0 q(Context context, boolean z2) {
        return new C0252s0(context, z2);
    }

    public final void r(int i2) {
        Drawable background = this.f3446y.getBackground();
        if (background == null) {
            this.f3427e = i2;
            return;
        }
        Rect rect = this.f3443v;
        background.getPadding(rect);
        this.f3427e = rect.left + rect.right + i2;
    }
}
