package M;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f146a;

    public /* synthetic */ E(RecyclerView recyclerView) {
        this.f146a = recyclerView;
    }

    public void a(C0000a c0000a) {
        int i2 = c0000a.f189a;
        RecyclerView recyclerView = this.f146a;
        if (i2 == 1) {
            recyclerView.f2052l.R(c0000a.b, c0000a.f190c);
            return;
        }
        if (i2 == 2) {
            recyclerView.f2052l.U(c0000a.b, c0000a.f190c);
        } else if (i2 == 4) {
            recyclerView.f2052l.V(c0000a.b, c0000a.f190c);
        } else {
            if (i2 != 8) {
                return;
            }
            recyclerView.f2052l.T(c0000a.b, c0000a.f190c);
        }
    }

    public e0 b(int i2) {
        RecyclerView recyclerView = this.f146a;
        int iR = recyclerView.f2040e.r();
        e0 e0Var = null;
        for (int i3 = 0; i3 < iR; i3++) {
            e0 e0VarI = RecyclerView.I(recyclerView.f2040e.q(i3));
            if (e0VarI != null && !e0VarI.i() && e0VarI.f221c == i2) {
                if (!((ArrayList) recyclerView.f2040e.f216d).contains(e0VarI.f220a)) {
                    e0Var = e0VarI;
                    break;
                }
                e0Var = e0VarI;
            }
        }
        if (e0Var == null || ((ArrayList) recyclerView.f2040e.f216d).contains(e0Var.f220a)) {
            return null;
        }
        return e0Var;
    }

    public void c(int i2, int i3) {
        int i4;
        int i5;
        RecyclerView recyclerView = this.f146a;
        int iR = recyclerView.f2040e.r();
        int i6 = i3 + i2;
        for (int i7 = 0; i7 < iR; i7++) {
            View viewQ = recyclerView.f2040e.q(i7);
            e0 e0VarI = RecyclerView.I(viewQ);
            if (e0VarI != null && !e0VarI.p() && (i5 = e0VarI.f221c) >= i2 && i5 < i6) {
                e0VarI.a(2);
                e0VarI.a(1024);
                ((P) viewQ.getLayoutParams()).f171c = true;
            }
        }
        V v2 = recyclerView.b;
        ArrayList arrayList = v2.f178c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e0 e0Var = (e0) arrayList.get(size);
            if (e0Var != null && (i4 = e0Var.f221c) >= i2 && i4 < i6) {
                e0Var.a(2);
                v2.e(size);
            }
        }
        recyclerView.f2044g0 = true;
    }

    public void d(int i2, int i3) {
        RecyclerView recyclerView = this.f146a;
        int iR = recyclerView.f2040e.r();
        for (int i4 = 0; i4 < iR; i4++) {
            e0 e0VarI = RecyclerView.I(recyclerView.f2040e.q(i4));
            if (e0VarI != null && !e0VarI.p() && e0VarI.f221c >= i2) {
                e0VarI.m(i3, false);
                recyclerView.f2037c0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.b.f178c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            e0 e0Var = (e0) arrayList.get(i5);
            if (e0Var != null && e0Var.f221c >= i2) {
                e0Var.m(i3, true);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f2042f0 = true;
    }

    public void e(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        RecyclerView recyclerView = this.f146a;
        int iR = recyclerView.f2040e.r();
        int i11 = -1;
        if (i2 < i3) {
            i5 = i2;
            i4 = i3;
            i6 = -1;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i12 = 0; i12 < iR; i12++) {
            e0 e0VarI = RecyclerView.I(recyclerView.f2040e.q(i12));
            if (e0VarI != null && (i10 = e0VarI.f221c) >= i5 && i10 <= i4) {
                if (i10 == i2) {
                    e0VarI.m(i3 - i2, false);
                } else {
                    e0VarI.m(i6, false);
                }
                recyclerView.f2037c0.f = true;
            }
        }
        V v2 = recyclerView.b;
        v2.getClass();
        if (i2 < i3) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
            i11 = 1;
        }
        ArrayList arrayList = v2.f178c;
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            e0 e0Var = (e0) arrayList.get(i13);
            if (e0Var != null && (i9 = e0Var.f221c) >= i8 && i9 <= i7) {
                if (i9 == i2) {
                    e0Var.m(i3 - i2, false);
                } else {
                    e0Var.m(i11, false);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.f2042f0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0029  */
    public void f(e0 e0Var, J j2, J j3) {
        boolean zG;
        RecyclerView recyclerView = this.f146a;
        recyclerView.getClass();
        e0Var.o(false);
        C0010k c0010k = (C0010k) recyclerView.f2020H;
        if (j2 != null) {
            c0010k.getClass();
            int i2 = j2.f148a;
            int i3 = j3.f148a;
            if (i2 == i3 && j2.b == j3.b) {
                c0010k.l(e0Var);
                e0Var.f220a.setAlpha(0.0f);
                c0010k.f270i.add(e0Var);
                zG = true;
            } else {
                zG = c0010k.g(e0Var, i2, j2.b, i3, j3.b);
            }
        } else {
            c0010k.l(e0Var);
            e0Var.f220a.setAlpha(0.0f);
            c0010k.f270i.add(e0Var);
            zG = true;
        }
        if (zG) {
            recyclerView.S();
        }
    }

    public void g(e0 e0Var, J j2, J j3) {
        boolean zG;
        RecyclerView recyclerView = this.f146a;
        recyclerView.b.j(e0Var);
        recyclerView.f(e0Var);
        e0Var.o(false);
        C0010k c0010k = (C0010k) recyclerView.f2020H;
        c0010k.getClass();
        int i2 = j2.f148a;
        int i3 = j2.b;
        View view = e0Var.f220a;
        int left = j3 == null ? view.getLeft() : j3.f148a;
        int top = j3 == null ? view.getTop() : j3.b;
        if (e0Var.i() || (i2 == left && i3 == top)) {
            c0010k.l(e0Var);
            c0010k.f269h.add(e0Var);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = c0010k.g(e0Var, i2, i3, left, top);
        }
        if (zG) {
            recyclerView.S();
        }
    }

    public void h(int i2) {
        RecyclerView recyclerView = this.f146a;
        View childAt = recyclerView.getChildAt(i2);
        if (childAt != null) {
            RecyclerView.I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i2);
    }
}
