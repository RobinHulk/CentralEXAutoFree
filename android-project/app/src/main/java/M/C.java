package M;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f144a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f145c;

    public C(O o2) {
        this.f144a = Integer.MIN_VALUE;
        this.f145c = new Rect();
        this.b = o2;
    }

    public static C a(O o2, int i2) {
        if (i2 == 0) {
            return new B(o2, 0);
        }
        if (i2 == 1) {
            return new B(o2, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public int m() {
        if (Integer.MIN_VALUE == this.f144a) {
            return 0;
        }
        return l() - this.f144a;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i2);

    public C(androidx.emoji2.text.h hVar) {
        this.f144a = 0;
        this.f145c = new androidx.emoji2.text.c();
        this.b = hVar;
    }
}
