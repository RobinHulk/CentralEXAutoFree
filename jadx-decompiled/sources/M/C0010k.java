package M;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: M.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0010k extends K {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f267s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f268g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f269h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f270i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f271j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f272k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f273l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f274m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f275n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f276o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f277p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList f278q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList f279r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((e0) arrayList.get(size)).f220a.animate().cancel();
        }
    }

    @Override // M.K
    public final boolean a(e0 e0Var, e0 e0Var2, J j2, J j3) {
        int i2;
        int i3;
        int i4 = j2.f148a;
        int i5 = j2.b;
        if (e0Var2.p()) {
            int i6 = j2.f148a;
            i3 = j2.b;
            i2 = i6;
        } else {
            i2 = j3.f148a;
            i3 = j3.b;
        }
        if (e0Var == e0Var2) {
            return g(e0Var, i4, i5, i2, i3);
        }
        View view = e0Var.f220a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(e0Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        l(e0Var2);
        float f = -((int) ((i2 - i4) - translationX));
        View view2 = e0Var2.f220a;
        view2.setTranslationX(f);
        view2.setTranslationY(-((int) ((i3 - i5) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.f272k;
        C0008i c0008i = new C0008i();
        c0008i.f253a = e0Var;
        c0008i.b = e0Var2;
        c0008i.f254c = i4;
        c0008i.f255d = i5;
        c0008i.f256e = i2;
        c0008i.f = i3;
        arrayList.add(c0008i);
        return true;
    }

    @Override // M.K
    public final void d(e0 e0Var) {
        View view = e0Var.f220a;
        view.animate().cancel();
        ArrayList arrayList = this.f271j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0009j) arrayList.get(size)).f258a == e0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(e0Var);
                arrayList.remove(size);
            }
        }
        j(this.f272k, e0Var);
        if (this.f269h.remove(e0Var)) {
            view.setAlpha(1.0f);
            c(e0Var);
        }
        if (this.f270i.remove(e0Var)) {
            view.setAlpha(1.0f);
            c(e0Var);
        }
        ArrayList arrayList2 = this.f275n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, e0Var);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f274m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            for (int size4 = arrayList5.size() - 1; size4 >= 0; size4--) {
                if (((C0009j) arrayList5.get(size4)).f258a == e0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(e0Var);
                    arrayList5.remove(size4);
                    if (!arrayList5.isEmpty()) {
                        break;
                    }
                    arrayList4.remove(size3);
                    break;
                }
            }
        }
        ArrayList arrayList6 = this.f273l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(e0Var)) {
                view.setAlpha(1.0f);
                c(e0Var);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f278q.remove(e0Var);
        this.f276o.remove(e0Var);
        this.f279r.remove(e0Var);
        this.f277p.remove(e0Var);
        i();
    }

    @Override // M.K
    public final void e() {
        ArrayList arrayList = this.f271j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0009j c0009j = (C0009j) arrayList.get(size);
            View view = c0009j.f258a.f220a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(c0009j.f258a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f269h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((e0) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f270i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            e0 e0Var = (e0) arrayList3.get(size3);
            e0Var.f220a.setAlpha(1.0f);
            c(e0Var);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f272k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C0008i c0008i = (C0008i) arrayList4.get(size4);
            e0 e0Var2 = c0008i.f253a;
            if (e0Var2 != null) {
                k(c0008i, e0Var2);
            }
            e0 e0Var3 = c0008i.b;
            if (e0Var3 != null) {
                k(c0008i, e0Var3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f274m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    C0009j c0009j2 = (C0009j) arrayList6.get(size6);
                    View view2 = c0009j2.f258a.f220a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(c0009j2.f258a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.f273l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    e0 e0Var4 = (e0) arrayList8.get(size8);
                    e0Var4.f220a.setAlpha(1.0f);
                    c(e0Var4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f275n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    C0008i c0008i2 = (C0008i) arrayList10.get(size10);
                    e0 e0Var5 = c0008i2.f253a;
                    if (e0Var5 != null) {
                        k(c0008i2, e0Var5);
                    }
                    e0 e0Var6 = c0008i2.b;
                    if (e0Var6 != null) {
                        k(c0008i2, e0Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.f278q);
            h(this.f277p);
            h(this.f276o);
            h(this.f279r);
            ArrayList arrayList11 = this.b;
            if (arrayList11.size() > 0) {
                arrayList11.get(0).getClass();
                throw new ClassCastException();
            }
            arrayList11.clear();
        }
    }

    @Override // M.K
    public final boolean f() {
        return (this.f270i.isEmpty() && this.f272k.isEmpty() && this.f271j.isEmpty() && this.f269h.isEmpty() && this.f277p.isEmpty() && this.f278q.isEmpty() && this.f276o.isEmpty() && this.f279r.isEmpty() && this.f274m.isEmpty() && this.f273l.isEmpty() && this.f275n.isEmpty()) ? false : true;
    }

    public final boolean g(e0 e0Var, int i2, int i3, int i4, int i5) {
        View view = e0Var.f220a;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) e0Var.f220a.getTranslationY());
        l(e0Var);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            c(e0Var);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        ArrayList arrayList = this.f271j;
        C0009j c0009j = new C0009j();
        c0009j.f258a = e0Var;
        c0009j.b = translationX;
        c0009j.f259c = translationY;
        c0009j.f260d = i4;
        c0009j.f261e = i5;
        arrayList.add(c0009j);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final void j(ArrayList arrayList, e0 e0Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0008i c0008i = (C0008i) arrayList.get(size);
            if (k(c0008i, e0Var) && c0008i.f253a == null && c0008i.b == null) {
                arrayList.remove(c0008i);
            }
        }
    }

    public final boolean k(C0008i c0008i, e0 e0Var) {
        if (c0008i.b == e0Var) {
            c0008i.b = null;
        } else {
            if (c0008i.f253a != e0Var) {
                return false;
            }
            c0008i.f253a = null;
        }
        e0Var.f220a.setAlpha(1.0f);
        View view = e0Var.f220a;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(e0Var);
        return true;
    }

    public final void l(e0 e0Var) {
        if (f267s == null) {
            f267s = new ValueAnimator().getInterpolator();
        }
        e0Var.f220a.animate().setInterpolator(f267s);
        d(e0Var);
    }
}
