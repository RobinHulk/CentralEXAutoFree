package M;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: M.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0017s implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f342e = new ThreadLocal();
    public static final C0015p f = new C0015p(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f343a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f345d;

    public static e0 c(RecyclerView recyclerView, int i2, long j2) {
        int iR = recyclerView.f2040e.r();
        for (int i3 = 0; i3 < iR; i3++) {
            e0 e0VarI = RecyclerView.I(recyclerView.f2040e.q(i3));
            if (e0VarI.f221c == i2 && !e0VarI.g()) {
                return null;
            }
        }
        V v2 = recyclerView.b;
        try {
            recyclerView.P();
            e0 e0VarI2 = v2.i(i2, j2);
            if (e0VarI2 != null) {
                if (!e0VarI2.f() || e0VarI2.g()) {
                    v2.a(e0VarI2, false);
                } else {
                    v2.f(e0VarI2.f220a);
                }
            }
            return e0VarI2;
        } finally {
            recyclerView.Q(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.f2059p && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        C0016q c0016q = recyclerView.f2035b0;
        c0016q.f335a = i2;
        c0016q.b = i3;
    }

    /* JADX WARN: Code duplicated, block: B:70:0x013a  */
    public final void b(long j2) {
        r rVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        r rVar2;
        ArrayList arrayList = this.f343a;
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i3);
            if (recyclerView3.getWindowVisibility() == 0) {
                C0016q c0016q = recyclerView3.f2035b0;
                c0016q.b(recyclerView3, false);
                i2 += c0016q.f336c;
            }
        }
        ArrayList arrayList2 = this.f345d;
        arrayList2.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i5);
            if (recyclerView4.getWindowVisibility() == 0) {
                C0016q c0016q2 = recyclerView4.f2035b0;
                int iAbs = Math.abs(c0016q2.b) + Math.abs(c0016q2.f335a);
                for (int i6 = 0; i6 < c0016q2.f336c * 2; i6 += 2) {
                    if (i4 >= arrayList2.size()) {
                        rVar2 = new r();
                        arrayList2.add(rVar2);
                    } else {
                        rVar2 = (r) arrayList2.get(i4);
                    }
                    int[] iArr = (int[]) c0016q2.f337d;
                    int i7 = iArr[i6 + 1];
                    rVar2.f338a = i7 <= iAbs;
                    rVar2.b = iAbs;
                    rVar2.f339c = i7;
                    rVar2.f340d = recyclerView4;
                    rVar2.f341e = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(arrayList2, f);
        for (int i8 = 0; i8 < arrayList2.size() && (recyclerView = (rVar = (r) arrayList2.get(i8)).f340d) != null; i8++) {
            e0 e0VarC = c(recyclerView, rVar.f341e, rVar.f338a ? Long.MAX_VALUE : j2);
            if (e0VarC != null && e0VarC.b != null && e0VarC.f() && !e0VarC.g() && (recyclerView2 = (RecyclerView) e0VarC.b.get()) != null) {
                if (recyclerView2.f2071y && recyclerView2.f2040e.r() != 0) {
                    K k2 = recyclerView2.f2020H;
                    if (k2 != null) {
                        k2.e();
                    }
                    O o2 = recyclerView2.f2052l;
                    V v2 = recyclerView2.b;
                    if (o2 != null) {
                        o2.b0(v2);
                        recyclerView2.f2052l.c0(v2);
                    }
                    v2.f177a.clear();
                    v2.d();
                }
                C0016q c0016q3 = recyclerView2.f2035b0;
                c0016q3.b(recyclerView2, true);
                if (c0016q3.f336c != 0) {
                    try {
                        int i9 = p031u.h.f4139a;
                        p031u.g.a("RV Nested Prefetch");
                        a0 a0Var = recyclerView2.f2037c0;
                        F f2 = recyclerView2.f2050k;
                        a0Var.f193d = 1;
                        a0Var.f194e = f2.a();
                        a0Var.f195g = false;
                        a0Var.f196h = false;
                        a0Var.f197i = false;
                        for (int i10 = 0; i10 < c0016q3.f336c * 2; i10 += 2) {
                            c(recyclerView2, ((int[]) c0016q3.f337d)[i10], j2);
                        }
                        p031u.g.b();
                    } catch (Throwable th) {
                        int i11 = p031u.h.f4139a;
                        p031u.g.b();
                        throw th;
                    }
                }
            }
            rVar.f338a = false;
            rVar.b = 0;
            rVar.f339c = 0;
            rVar.f340d = null;
            rVar.f341e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i2 = p031u.h.f4139a;
            p031u.g.a("RV Prefetch");
            ArrayList arrayList = this.f343a;
            if (arrayList.isEmpty()) {
                this.b = 0L;
                return;
            }
            int size = arrayList.size();
            long jMax = 0;
            for (int i3 = 0; i3 < size; i3++) {
                RecyclerView recyclerView = (RecyclerView) arrayList.get(i3);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.b = 0L;
            } else {
                b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f344c);
                this.b = 0L;
            }
        } finally {
            this.b = 0L;
            int i4 = p031u.h.f4139a;
            p031u.g.b();
        }
    }
}
