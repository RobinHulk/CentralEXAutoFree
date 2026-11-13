package p012i;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3401a;
    public final l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f3404e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3405g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public x f3406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public t f3407i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public u f3408j;
    public int f = 8388611;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u f3409k = new u(this);

    public w(int i2, Context context, View view, l lVar, boolean z2) {
        this.f3401a = context;
        this.b = lVar;
        this.f3404e = view;
        this.f3402c = z2;
        this.f3403d = i2;
    }

    public final t a() {
        t d2;
        if (this.f3407i == null) {
            Context context = this.f3401a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            v.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                d2 = new f(context, this.f3404e, this.f3403d, this.f3402c);
            } else {
                View view = this.f3404e;
                Context context2 = this.f3401a;
                boolean z2 = this.f3402c;
                d2 = new D(this.f3403d, context2, view, this.b, z2);
            }
            d2.l(this.b);
            d2.r(this.f3409k);
            d2.n(this.f3404e);
            d2.g(this.f3406h);
            d2.o(this.f3405g);
            d2.p(this.f);
            this.f3407i = d2;
        }
        return this.f3407i;
    }

    public final boolean b() {
        t tVar = this.f3407i;
        return tVar != null && tVar.b();
    }

    public void c() {
        this.f3407i = null;
        u uVar = this.f3408j;
        if (uVar != null) {
            uVar.onDismiss();
        }
    }

    public final void d(int i2, int i3, boolean z2, boolean z3) {
        t tVarA = a();
        tVarA.s(z3);
        if (z2) {
            int i4 = this.f;
            View view = this.f3404e;
            WeakHashMap weakHashMap = N.f4222a;
            if ((Gravity.getAbsoluteGravity(i4, AbstractC0291z.d(view)) & 7) == 5) {
                i2 -= this.f3404e.getWidth();
            }
            tVarA.q(i2);
            tVarA.t(i3);
            int i5 = (int) ((this.f3401a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            tVarA.f3399a = new Rect(i2 - i5, i3 - i5, i2 + i5, i3 + i5);
        }
        tVarA.f();
    }
}
