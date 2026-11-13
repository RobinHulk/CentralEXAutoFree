package M;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class B extends C {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f143d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B(O o2, int i2) {
        super(o2);
        this.f143d = i2;
    }

    @Override // M.C
    public final int b(View view) {
        switch (this.f143d) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                return view.getRight() + ((P) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) p2).rightMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                return view.getBottom() + ((P) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) p3).bottomMargin;
        }
    }

    @Override // M.C
    public final int c(View view) {
        switch (this.f143d) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                Rect rect = ((P) view.getLayoutParams()).b;
                return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) p2).leftMargin + ((ViewGroup.MarginLayoutParams) p2).rightMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                Rect rect2 = ((P) view.getLayoutParams()).b;
                return view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) p3).topMargin + ((ViewGroup.MarginLayoutParams) p3).bottomMargin;
        }
    }

    @Override // M.C
    public final int d(View view) {
        switch (this.f143d) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                Rect rect = ((P) view.getLayoutParams()).b;
                return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) p2).topMargin + ((ViewGroup.MarginLayoutParams) p2).bottomMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                Rect rect2 = ((P) view.getLayoutParams()).b;
                return view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) p3).leftMargin + ((ViewGroup.MarginLayoutParams) p3).rightMargin;
        }
    }

    @Override // M.C
    public final int e(View view) {
        switch (this.f143d) {
            case 0:
                P p2 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                return (view.getLeft() - ((P) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) p2).leftMargin;
            default:
                P p3 = (P) view.getLayoutParams();
                ((O) this.b).getClass();
                return (view.getTop() - ((P) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) p3).topMargin;
        }
    }

    @Override // M.C
    public final int f() {
        switch (this.f143d) {
            case 0:
                return ((O) this.b).f168n;
            default:
                return ((O) this.b).f169o;
        }
    }

    @Override // M.C
    public final int g() {
        switch (this.f143d) {
            case 0:
                O o2 = (O) this.b;
                return o2.f168n - o2.B();
            default:
                O o3 = (O) this.b;
                return o3.f169o - o3.z();
        }
    }

    @Override // M.C
    public final int h() {
        switch (this.f143d) {
            case 0:
                return ((O) this.b).B();
            default:
                return ((O) this.b).z();
        }
    }

    @Override // M.C
    public final int i() {
        switch (this.f143d) {
            case 0:
                return ((O) this.b).f166l;
            default:
                return ((O) this.b).f167m;
        }
    }

    @Override // M.C
    public final int j() {
        switch (this.f143d) {
            case 0:
                return ((O) this.b).f167m;
            default:
                return ((O) this.b).f166l;
        }
    }

    @Override // M.C
    public final int k() {
        switch (this.f143d) {
            case 0:
                return ((O) this.b).A();
            default:
                return ((O) this.b).C();
        }
    }

    @Override // M.C
    public final int l() {
        switch (this.f143d) {
            case 0:
                O o2 = (O) this.b;
                return (o2.f168n - o2.A()) - o2.B();
            default:
                O o3 = (O) this.b;
                return (o3.f169o - o3.C()) - o3.z();
        }
    }

    @Override // M.C
    public final int n(View view) {
        switch (this.f143d) {
            case 0:
                O o2 = (O) this.b;
                Rect rect = (Rect) this.f145c;
                o2.G(view, rect);
                return rect.right;
            default:
                O o3 = (O) this.b;
                Rect rect2 = (Rect) this.f145c;
                o3.G(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // M.C
    public final int o(View view) {
        switch (this.f143d) {
            case 0:
                O o2 = (O) this.b;
                Rect rect = (Rect) this.f145c;
                o2.G(view, rect);
                return rect.left;
            default:
                O o3 = (O) this.b;
                Rect rect2 = (Rect) this.f145c;
                o3.G(view, rect2);
                return rect2.top;
        }
    }

    @Override // M.C
    public final void p(int i2) {
        switch (this.f143d) {
            case 0:
                ((O) this.b).K(i2);
                break;
            default:
                ((O) this.b).L(i2);
                break;
        }
    }
}
