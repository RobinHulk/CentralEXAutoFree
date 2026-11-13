package M;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p034y.AbstractC0291z;

/* JADX INFO: renamed from: M.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0014o extends L {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f299C = {R.attr.state_pressed};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f300D = new int[0];

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f301A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final B.b f302B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f303a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f306e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final StateListDrawable f307g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f311k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f312l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f313m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f314n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f315o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f316p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f319s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f326z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f317q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f318r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f320t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f321u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f322v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f323w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f324x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f325y = new int[2];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public C0014o(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f326z = valueAnimatorOfFloat;
        this.f301A = 0;
        B.b bVar = new B.b(this, 2);
        this.f302B = bVar;
        C0011l c0011l = new C0011l(this);
        this.f304c = stateListDrawable;
        this.f305d = drawable;
        this.f307g = stateListDrawable2;
        this.f308h = drawable2;
        this.f306e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f309i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f310j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f303a = i3;
        this.b = i4;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new C0012m(this));
        valueAnimatorOfFloat.addUpdateListener(new C0013n(this, 0 == true ? 1 : 0));
        RecyclerView recyclerView2 = this.f319s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            O o2 = recyclerView2.f2052l;
            if (o2 != null) {
                o2.c("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList arrayList = recyclerView2.f2054m;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.N();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f319s;
            recyclerView3.f2056n.remove(this);
            if (recyclerView3.f2057o == this) {
                recyclerView3.f2057o = null;
            }
            ArrayList arrayList2 = this.f319s.f2041e0;
            if (arrayList2 != null) {
                arrayList2.remove(c0011l);
            }
            this.f319s.removeCallbacks(bVar);
        }
        this.f319s = recyclerView;
        if (recyclerView != null) {
            recyclerView.g(this);
            this.f319s.f2056n.add(this);
            this.f319s.h(c0011l);
        }
    }

    public static int e(float f, float f2, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f2 - f) / i5) * i6);
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    @Override // M.L
    public final void b(Canvas canvas) {
        int i2 = this.f317q;
        RecyclerView recyclerView = this.f319s;
        if (i2 != recyclerView.getWidth() || this.f318r != recyclerView.getHeight()) {
            this.f317q = recyclerView.getWidth();
            this.f318r = recyclerView.getHeight();
            f(0);
            return;
        }
        if (this.f301A != 0) {
            if (this.f320t) {
                int i3 = this.f317q;
                int i4 = this.f306e;
                int i5 = i3 - i4;
                int i6 = this.f312l;
                int i7 = this.f311k;
                int i8 = i6 - (i7 / 2);
                StateListDrawable stateListDrawable = this.f304c;
                stateListDrawable.setBounds(0, 0, i4, i7);
                int i9 = this.f318r;
                int i10 = this.f;
                Drawable drawable = this.f305d;
                drawable.setBounds(0, 0, i10, i9);
                WeakHashMap weakHashMap = p034y.N.f4222a;
                if (AbstractC0291z.d(recyclerView) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i4, i8);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(1.0f, 1.0f);
                    canvas.translate(-i4, -i8);
                } else {
                    canvas.translate(i5, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i8);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i5, -i8);
                }
            }
            if (this.f321u) {
                int i11 = this.f318r;
                int i12 = this.f309i;
                int i13 = i11 - i12;
                int i14 = this.f315o;
                int i15 = this.f314n;
                int i16 = i14 - (i15 / 2);
                StateListDrawable stateListDrawable2 = this.f307g;
                stateListDrawable2.setBounds(0, 0, i15, i12);
                int i17 = this.f317q;
                int i18 = this.f310j;
                Drawable drawable2 = this.f308h;
                drawable2.setBounds(0, 0, i17, i18);
                canvas.translate(0.0f, i13);
                drawable2.draw(canvas);
                canvas.translate(i16, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i16, -i13);
            }
        }
    }

    public final boolean c(float f, float f2) {
        if (f2 >= this.f318r - this.f309i) {
            int i2 = this.f315o;
            int i3 = this.f314n;
            if (f >= i2 - (i3 / 2) && f <= (i3 / 2) + i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(float f, float f2) {
        RecyclerView recyclerView = this.f319s;
        WeakHashMap weakHashMap = p034y.N.f4222a;
        boolean z2 = AbstractC0291z.d(recyclerView) == 1;
        int i2 = this.f306e;
        if (z2) {
            if (f > i2 / 2) {
                return false;
            }
        } else if (f < this.f317q - i2) {
            return false;
        }
        int i3 = this.f312l;
        int i4 = this.f311k / 2;
        return f2 >= ((float) (i3 - i4)) && f2 <= ((float) (i4 + i3));
    }

    public final void f(int i2) {
        B.b bVar = this.f302B;
        StateListDrawable stateListDrawable = this.f304c;
        if (i2 == 2 && this.f322v != 2) {
            stateListDrawable.setState(f299C);
            this.f319s.removeCallbacks(bVar);
        }
        if (i2 == 0) {
            this.f319s.invalidate();
        } else {
            g();
        }
        if (this.f322v == 2 && i2 != 2) {
            stateListDrawable.setState(f300D);
            this.f319s.removeCallbacks(bVar);
            this.f319s.postDelayed(bVar, 1200);
        } else if (i2 == 1) {
            this.f319s.removeCallbacks(bVar);
            this.f319s.postDelayed(bVar, 1500);
        }
        this.f322v = i2;
    }

    public final void g() {
        int i2 = this.f301A;
        ValueAnimator valueAnimator = this.f326z;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f301A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
