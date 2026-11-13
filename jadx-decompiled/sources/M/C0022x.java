package M;

import android.view.View;
import java.util.List;

/* JADX INFO: renamed from: M.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0022x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f361a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f364e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f366h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f367i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f368j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f369k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f370l;

    public final void a(View view) {
        int iB;
        int size = this.f369k.size();
        View view2 = null;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < size; i3++) {
            View view3 = ((e0) this.f369k.get(i3)).f220a;
            P p2 = (P) view3.getLayoutParams();
            if (view3 != view && !p2.f170a.i() && (iB = (p2.f170a.b() - this.f363d) * this.f364e) >= 0 && iB < i2) {
                view2 = view3;
                if (iB == 0) {
                    break;
                } else {
                    i2 = iB;
                }
            }
        }
        if (view2 == null) {
            this.f363d = -1;
        } else {
            this.f363d = ((P) view2.getLayoutParams()).f170a.b();
        }
    }

    public final View b(V v2) {
        List list = this.f369k;
        if (list == null) {
            View view = v2.i(this.f363d, Long.MAX_VALUE).f220a;
            this.f363d += this.f364e;
            return view;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = ((e0) this.f369k.get(i2)).f220a;
            P p2 = (P) view2.getLayoutParams();
            if (!p2.f170a.i() && this.f363d == p2.f170a.b()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
