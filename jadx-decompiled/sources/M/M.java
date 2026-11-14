package M;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f153a;
    public final /* synthetic */ O b;

    public /* synthetic */ M(O o2, int i2) {
        this.f153a = i2;
        this.b = o2;
    }

    public final int a(View view) {
        switch (this.f153a) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                this.b.getClass();
                return view.getRight() + ((P) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) p2).rightMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                this.b.getClass();
                return view.getBottom() + ((P) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) p3).bottomMargin;
        }
    }

    public final int b(View view) {
        switch (this.f153a) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                this.b.getClass();
                return (view.getLeft() - ((P) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) p2).leftMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                this.b.getClass();
                return (view.getTop() - ((P) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) p3).topMargin;
        }
    }

    public final int c() {
        switch (this.f153a) {
            case 0:
                O o2 = this.b;
                return o2.f168n - o2.B();
            default:
                O o3 = this.b;
                return o3.f169o - o3.z();
        }
    }

    public final int d() {
        switch (this.f153a) {
            case 0:
                return this.b.A();
            default:
                return this.b.C();
        }
    }
}
