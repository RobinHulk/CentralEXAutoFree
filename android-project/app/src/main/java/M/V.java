package M;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.C0267a;
import p034y.C0269c;

/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f177a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f180e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public U f181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f182h;

    public V(RecyclerView recyclerView) {
        this.f182h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f177a = arrayList;
        this.b = null;
        this.f178c = new ArrayList();
        this.f179d = Collections.unmodifiableList(arrayList);
        this.f180e = 2;
        this.f = 2;
    }

    public final void a(e0 e0Var, boolean z2) {
        RecyclerView.j(e0Var);
        RecyclerView recyclerView = this.f182h;
        g0 g0Var = recyclerView.f2049j0;
        if (g0Var != null) {
            f0 f0Var = g0Var.f247e;
            View view = e0Var.f220a;
            p034y.N.i(view, f0Var != null ? (C0269c) f0Var.f241e.remove(view) : null);
        }
        if (z2 && recyclerView.f2037c0 != null) {
            recyclerView.f.E(e0Var);
        }
        e0Var.f235r = null;
        U uC = c();
        uC.getClass();
        int i2 = e0Var.f;
        ArrayList arrayList = uC.a(i2).f173a;
        if (((T) uC.f176a.get(i2)).b <= arrayList.size()) {
            return;
        }
        e0Var.n();
        arrayList.add(e0Var);
    }

    public final int b(int i2) {
        RecyclerView recyclerView = this.f182h;
        if (i2 >= 0 && i2 < recyclerView.f2037c0.b()) {
            return !recyclerView.f2037c0.f195g ? i2 : recyclerView.f2038d.e(i2, 0);
        }
        StringBuilder sbH = d0.h("invalid position ", i2, ". State item count is ");
        sbH.append(recyclerView.f2037c0.b());
        sbH.append(recyclerView.y());
        throw new IndexOutOfBoundsException(sbH.toString());
    }

    public final U c() {
        if (this.f181g == null) {
            U u2 = new U();
            u2.f176a = new SparseArray();
            u2.b = 0;
            this.f181g = u2;
        }
        return this.f181g;
    }

    public final void d() {
        ArrayList arrayList = this.f178c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e(size);
        }
        arrayList.clear();
        int[] iArr = RecyclerView.f2011s0;
        C0016q c0016q = this.f182h.f2035b0;
        int[] iArr2 = (int[]) c0016q.f337d;
        if (iArr2 != null) {
            Arrays.fill(iArr2, -1);
        }
        c0016q.f336c = 0;
    }

    public final void e(int i2) {
        ArrayList arrayList = this.f178c;
        a((e0) arrayList.get(i2), true);
        arrayList.remove(i2);
    }

    public final void f(View view) {
        e0 e0VarI = RecyclerView.I(view);
        boolean zK = e0VarI.k();
        RecyclerView recyclerView = this.f182h;
        if (zK) {
            recyclerView.removeDetachedView(view, false);
        }
        if (e0VarI.j()) {
            e0VarI.f231n.j(e0VarI);
        } else if (e0VarI.q()) {
            e0VarI.f227j &= -33;
        }
        g(e0VarI);
        if (recyclerView.f2020H == null || e0VarI.h()) {
            return;
        }
        recyclerView.f2020H.d(e0VarI);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0030  */
    /* JADX WARN: Code duplicated, block: B:39:0x007a  */
    /* JADX WARN: Code duplicated, block: B:41:0x008a  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    /* JADX WARN: Code duplicated, block: B:46:0x009c A[LOOP:2: B:42:0x008f->B:46:0x009c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x009f A[EDGE_INSN: B:73:0x009f->B:47:0x009f BREAK  A[LOOP:1: B:38:0x0078->B:45:0x0099], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x009f A[EDGE_INSN: B:74:0x009f->B:47:0x009f BREAK  A[LOOP:1: B:38:0x0078->B:45:0x0099, LOOP_LABEL: LOOP:1: B:38:0x0078->B:45:0x0099], SYNTHETIC] */
    public final void g(e0 e0Var) {
        boolean z2;
        boolean z3;
        int i2;
        int i3;
        C0016q c0016q;
        int i4;
        int i5;
        boolean zJ = e0Var.j();
        boolean z4 = false;
        boolean z5 = true;
        RecyclerView recyclerView = this.f182h;
        View view = e0Var.f220a;
        if (zJ || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(e0Var.j());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.y());
            throw new IllegalArgumentException(sb.toString());
        }
        if (e0Var.k()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + e0Var + recyclerView.y());
        }
        if (e0Var.p()) {
            throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + recyclerView.y());
        }
        if ((e0Var.f227j & 16) == 0) {
            WeakHashMap weakHashMap = p034y.N.f4222a;
            if (AbstractC0290y.i(view)) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        F f = recyclerView.f2050k;
        if (e0Var.h()) {
            if (this.f <= 0 || e0Var.d(526)) {
                z3 = false;
            } else {
                ArrayList arrayList = this.f178c;
                int size = arrayList.size();
                if (size >= this.f && size > 0) {
                    e(0);
                    size--;
                }
                int[] iArr = RecyclerView.f2011s0;
                if (size > 0) {
                    C0016q c0016q2 = recyclerView.f2035b0;
                    int i6 = e0Var.f221c;
                    if (((int[]) c0016q2.f337d) != null) {
                        int i7 = c0016q2.f336c * 2;
                        int i8 = 0;
                        while (true) {
                            if (i8 >= i7) {
                                i2 = size - 1;
                                loop1: while (i2 >= 0) {
                                    i3 = ((e0) arrayList.get(i2)).f221c;
                                    c0016q = recyclerView.f2035b0;
                                    if (((int[]) c0016q.f337d) != null) {
                                        break;
                                    }
                                    i4 = c0016q.f336c * 2;
                                    i5 = 0;
                                    while (true) {
                                        if (i5 < i4) {
                                            break loop1;
                                        } else if (((int[]) c0016q.f337d)[i5] == i3) {
                                            break;
                                        } else {
                                            i5 += 2;
                                        }
                                    }
                                    i2--;
                                }
                                size = i2 + 1;
                            } else if (((int[]) c0016q2.f337d)[i8] != i6) {
                                i8 += 2;
                            }
                        }
                    } else {
                        i2 = size - 1;
                        loop1: while (i2 >= 0) {
                            i3 = ((e0) arrayList.get(i2)).f221c;
                            c0016q = recyclerView.f2035b0;
                            if (((int[]) c0016q.f337d) != null) {
                                break;
                                break;
                            }
                            i4 = c0016q.f336c * 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    break loop1;
                                    break loop1;
                                } else if (((int[]) c0016q.f337d)[i5] == i3) {
                                    break;
                                } else {
                                    i5 += 2;
                                }
                            }
                            i2--;
                        }
                        size = i2 + 1;
                    }
                }
                arrayList.add(size, e0Var);
                z3 = true;
            }
            if (z3) {
                z5 = false;
            } else {
                a(e0Var, true);
            }
            z4 = z3;
        } else {
            z5 = false;
        }
        recyclerView.f.E(e0Var);
        if (z4 || z5 || !z2) {
            return;
        }
        e0Var.f235r = null;
    }

    public final void h(View view) {
        K k2;
        e0 e0VarI = RecyclerView.I(view);
        boolean zD = e0VarI.d(12);
        RecyclerView recyclerView = this.f182h;
        if (!zD && e0VarI.l() && (k2 = recyclerView.f2020H) != null) {
            C0010k c0010k = (C0010k) k2;
            if (e0VarI.c().isEmpty() && c0010k.f268g && !e0VarI.g()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                e0VarI.f231n = this;
                e0VarI.f232o = true;
                this.b.add(e0VarI);
                return;
            }
        }
        if (e0VarI.g() && !e0VarI.i() && !recyclerView.f2050k.b) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + recyclerView.y());
        }
        e0VarI.f231n = this;
        e0VarI.f232o = false;
        this.f177a.add(e0VarI);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:111:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:176:0x030a A[EDGE_INSN: B:176:0x030a->B:177:0x030b BREAK  A[LOOP:6: B:171:0x02f1->B:175:0x0307]] */
    /* JADX WARN: Code duplicated, block: B:213:0x0393 A[PHI: r6 r11
  0x0393: PHI (r6v4 boolean) = (r6v3 boolean), (r6v7 boolean) binds: [B:128:0x022e, B:180:0x0313] A[DONT_GENERATE, DONT_INLINE]
  0x0393: PHI (r11v3 M.e0) = (r11v2 M.e0), (r11v6 M.e0) binds: [B:128:0x022e, B:180:0x0313] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:240:0x041d  */
    /* JADX WARN: Code duplicated, block: B:242:0x042f  */
    /* JADX WARN: Code duplicated, block: B:248:0x044b  */
    /* JADX WARN: Code duplicated, block: B:251:0x046a  */
    /* JADX WARN: Code duplicated, block: B:254:0x047b  */
    /* JADX WARN: Code duplicated, block: B:258:0x0497  */
    /* JADX WARN: Code duplicated, block: B:264:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:266:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:268:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:269:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:273:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:275:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:278:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:280:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:281:0x04da  */
    /* JADX WARN: Code duplicated, block: B:286:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:289:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:293:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:294:0x0504  */
    /* JADX WARN: Code duplicated, block: B:296:0x050a  */
    /* JADX WARN: Code duplicated, block: B:297:0x0514  */
    /* JADX WARN: Code duplicated, block: B:302:0x051f  */
    /* JADX WARN: Code duplicated, block: B:35:0x007d A[EDGE_INSN: B:35:0x007d->B:36:0x007e BREAK  A[LOOP:0: B:14:0x0027->B:20:0x0041]] */
    /* JADX WARN: Code duplicated, block: B:74:0x011c  */
    public final e0 i(int i2, long j2) {
        boolean z2;
        e0 e0VarD;
        C0269c c0269c;
        int iE;
        int i3;
        F f;
        ArrayList arrayList;
        ViewGroup.LayoutParams layoutParams;
        long nanoTime;
        long j3;
        AccessibilityManager accessibilityManager;
        boolean z3;
        boolean z4;
        boolean z5;
        g0 g0Var;
        f0 f0Var;
        View.AccessibilityDelegate accessibilityDelegateB;
        long j4;
        ViewGroup.LayoutParams layoutParams2;
        P p2;
        boolean z6;
        e0 e0Var;
        View view;
        int iB;
        F f2;
        boolean z7;
        int size;
        int iE2;
        RecyclerView recyclerView = this.f182h;
        if (i2 < 0 || i2 >= recyclerView.f2037c0.b()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i2 + "(" + i2 + "). Item count:" + recyclerView.f2037c0.b() + recyclerView.y());
        }
        a0 a0Var = recyclerView.f2037c0;
        if (a0Var.f195g) {
            ArrayList arrayList2 = this.b;
            if (arrayList2 != null && (size = arrayList2.size()) != 0) {
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        if (recyclerView.f2050k.b && (iE2 = recyclerView.f2038d.e(i2, 0)) > 0 && iE2 < recyclerView.f2050k.a()) {
                            long jB = recyclerView.f2050k.b(iE2);
                            int i5 = 0;
                            while (true) {
                                if (i5 >= size) {
                                    e0VarD = null;
                                    break;
                                }
                                e0 e0Var2 = (e0) this.b.get(i5);
                                if (!e0Var2.q() && e0Var2.f223e == jB) {
                                    e0Var2.a(32);
                                    e0VarD = e0Var2;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            e0VarD = null;
                            break;
                        }
                    } else {
                        e0VarD = (e0) this.b.get(i4);
                        if (!e0VarD.q() && e0VarD.b() == i2) {
                            e0VarD.a(32);
                            break;
                        }
                        i4++;
                    }
                }
            } else {
                e0VarD = null;
                break;
            }
            z2 = e0VarD != null;
        } else {
            z2 = false;
            e0VarD = null;
        }
        ArrayList arrayList3 = this.f178c;
        ArrayList arrayList4 = this.f177a;
        if (e0VarD == null) {
            int size2 = arrayList4.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size2) {
                    ArrayList arrayList5 = (ArrayList) recyclerView.f2040e.f216d;
                    int size3 = arrayList5.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size3) {
                            view = null;
                            break;
                        }
                        view = (View) arrayList5.get(i7);
                        e0 e0VarI = RecyclerView.I(view);
                        if (e0VarI.b() == i2 && !e0VarI.g() && !e0VarI.i()) {
                            break;
                        }
                        i7++;
                    }
                    if (view == null) {
                        int size4 = arrayList3.size();
                        int i8 = 0;
                        while (true) {
                            if (i8 >= size4) {
                                e0VarD = null;
                                break;
                            }
                            e0 e0Var3 = (e0) arrayList3.get(i8);
                            if (!e0Var3.g() && e0Var3.b() == i2 && !e0Var3.e()) {
                                arrayList3.remove(i8);
                                e0VarD = e0Var3;
                                break;
                            }
                            i8++;
                        }
                    } else {
                        e0 e0VarI2 = RecyclerView.I(view);
                        C0003d c0003d = recyclerView.f2040e;
                        int iIndexOfChild = ((E) c0003d.b).f146a.indexOfChild(view);
                        if (iIndexOfChild < 0) {
                            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                        }
                        C0002c c0002c = (C0002c) c0003d.f215c;
                        if (!c0002c.d(iIndexOfChild)) {
                            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                        }
                        c0002c.a(iIndexOfChild);
                        c0003d.x(view);
                        C0003d c0003d2 = recyclerView.f2040e;
                        int iIndexOfChild2 = ((E) c0003d2.b).f146a.indexOfChild(view);
                        if (iIndexOfChild2 == -1) {
                            iB = -1;
                        } else {
                            C0002c c0002c2 = (C0002c) c0003d2.f215c;
                            if (c0002c2.d(iIndexOfChild2)) {
                                iB = -1;
                            } else {
                                iB = iIndexOfChild2 - c0002c2.b(iIndexOfChild2);
                            }
                        }
                        if (iB == -1) {
                            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + e0VarI2 + recyclerView.y());
                        }
                        recyclerView.f2040e.d(iB);
                        h(view);
                        e0VarI2.a(8224);
                        e0VarD = e0VarI2;
                        break;
                    }
                } else {
                    e0 e0Var4 = (e0) arrayList4.get(i6);
                    if (!e0Var4.q() && e0Var4.b() == i2 && !e0Var4.g() && (a0Var.f195g || !e0Var4.i())) {
                        e0Var4.a(32);
                        e0VarD = e0Var4;
                        break;
                    }
                    i6++;
                }
            }
            if (e0VarD != null) {
                if (e0VarD.i()) {
                    z7 = a0Var.f195g;
                } else {
                    int i9 = e0VarD.f221c;
                    if (i9 < 0 || i9 >= recyclerView.f2050k.a()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + e0VarD + recyclerView.y());
                    }
                    if (a0Var.f195g) {
                        f2 = recyclerView.f2050k;
                        if (f2.b) {
                        }
                        z7 = true;
                    } else {
                        recyclerView.f2050k.getClass();
                        if (e0VarD.f != 0) {
                            z7 = false;
                        } else {
                            f2 = recyclerView.f2050k;
                            if (f2.b || e0VarD.f223e == f2.b(e0VarD.f221c)) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                        }
                    }
                }
                if (z7) {
                    z2 = true;
                } else {
                    e0VarD.a(4);
                    if (e0VarD.j()) {
                        recyclerView.removeDetachedView(e0VarD.f220a, false);
                        e0VarD.f231n.j(e0VarD);
                    } else if (e0VarD.q()) {
                        e0VarD.f227j &= -33;
                    }
                    g(e0VarD);
                    e0VarD = null;
                }
            }
        }
        if (e0VarD != null) {
            c0269c = null;
        } else {
            int iE3 = recyclerView.f2038d.e(i2, 0);
            if (iE3 < 0 || iE3 >= recyclerView.f2050k.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i2 + "(offset:" + iE3 + ").state:" + a0Var.b() + recyclerView.y());
            }
            recyclerView.f2050k.getClass();
            F f3 = recyclerView.f2050k;
            if (f3.b) {
                long jB2 = f3.b(iE3);
                int size5 = arrayList4.size() - 1;
                while (true) {
                    if (size5 < 0) {
                        int size6 = arrayList3.size() - 1;
                        while (true) {
                            if (size6 >= 0) {
                                e0 e0Var5 = (e0) arrayList3.get(size6);
                                if (e0Var5.f223e != jB2 || e0Var5.e()) {
                                    size6--;
                                } else {
                                    if (e0Var5.f == 0) {
                                        arrayList3.remove(size6);
                                        e0VarD = e0Var5;
                                        break;
                                    }
                                    e(size6);
                                }
                            }
                            e0VarD = null;
                            break;
                        }
                    }
                    e0 e0Var6 = (e0) arrayList4.get(size5);
                    if (e0Var6.f223e == jB2 && !e0Var6.q()) {
                        if (e0Var6.f == 0) {
                            e0Var6.a(32);
                            if (e0Var6.i() && !a0Var.f195g) {
                                e0Var6.f227j = (e0Var6.f227j & (-15)) | 2;
                            }
                            e0VarD = e0Var6;
                            break;
                        }
                        arrayList4.remove(size5);
                        View view2 = e0Var6.f220a;
                        recyclerView.removeDetachedView(view2, false);
                        e0 e0VarI3 = RecyclerView.I(view2);
                        e0VarI3.f231n = null;
                        e0VarI3.f232o = false;
                        e0VarI3.f227j &= -33;
                        g(e0VarI3);
                    }
                    size5--;
                }
                if (e0VarD != null) {
                    e0VarD.f221c = iE3;
                    z2 = true;
                }
            }
            if (e0VarD == null) {
                T t2 = (T) c().f176a.get(0);
                if (t2 == null) {
                    e0Var = null;
                    break;
                }
                ArrayList arrayList6 = t2.f173a;
                if (!arrayList6.isEmpty()) {
                    int size7 = arrayList6.size() - 1;
                    while (true) {
                        if (size7 < 0) {
                            e0Var = null;
                            break;
                        }
                        if (!((e0) arrayList6.get(size7)).e()) {
                            e0Var = (e0) arrayList6.remove(size7);
                            break;
                        }
                        size7--;
                    }
                } else {
                    e0Var = null;
                    break;
                }
                if (e0Var != null) {
                    e0Var.n();
                    int[] iArr = RecyclerView.f2011s0;
                }
                e0VarD = e0Var;
            }
            if (e0VarD == null) {
                long nanoTime2 = recyclerView.getNanoTime();
                if (j2 != Long.MAX_VALUE) {
                    long j5 = this.f181g.a(0).f174c;
                    if (!(j5 == 0 || j5 + nanoTime2 < j2)) {
                        return null;
                    }
                }
                c0269c = null;
                F f4 = recyclerView.f2050k;
                f4.getClass();
                try {
                    int i10 = p031u.h.f4139a;
                    p031u.g.a("RV CreateView");
                    e0VarD = f4.d(recyclerView);
                    View view3 = e0VarD.f220a;
                    if (view3.getParent() != null) {
                        throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                    }
                    e0VarD.f = 0;
                    p031u.g.b();
                    int[] iArr2 = RecyclerView.f2011s0;
                    RecyclerView recyclerViewD = RecyclerView.D(view3);
                    if (recyclerViewD != null) {
                        e0VarD.b = new WeakReference(recyclerViewD);
                    }
                    long nanoTime3 = recyclerView.getNanoTime() - nanoTime2;
                    T tA = this.f181g.a(0);
                    long j6 = tA.f174c;
                    if (j6 != 0) {
                        nanoTime3 = (nanoTime3 / 4) + ((j6 / 4) * 3);
                    }
                    tA.f174c = nanoTime3;
                } catch (Throwable th) {
                    int i11 = p031u.h.f4139a;
                    p031u.g.b();
                    throw th;
                }
            } else {
                c0269c = null;
            }
        }
        if (z2 && !a0Var.f195g && e0VarD.d(8192)) {
            e0VarD.f227j &= -8193;
            if (a0Var.f198j) {
                K.b(e0VarD);
                K k2 = recyclerView.f2020H;
                e0VarD.c();
                k2.getClass();
                J j7 = new J();
                j7.a(e0VarD);
                recyclerView.T(e0VarD, j7);
            }
        }
        boolean z8 = a0Var.f195g;
        View view4 = e0VarD.f220a;
        if (!z8 || !e0VarD.f()) {
            if (e0VarD.f()) {
                if (((e0VarD.f227j & 2) != 0) || e0VarD.g()) {
                    iE = recyclerView.f2038d.e(i2, 0);
                    e0VarD.f235r = recyclerView;
                    i3 = e0VarD.f;
                    long nanoTime4 = recyclerView.getNanoTime();
                    if (j2 != Long.MAX_VALUE) {
                        j4 = this.f181g.a(i3).f175d;
                        if (j4 != 0) {
                        }
                    }
                    f = recyclerView.f2050k;
                    f.getClass();
                    e0VarD.f221c = iE;
                    if (f.b) {
                        e0VarD.f223e = f.b(iE);
                    }
                    e0VarD.f227j = (e0VarD.f227j & (-520)) | 1;
                    int i12 = p031u.h.f4139a;
                    p031u.g.a("RV OnBindView");
                    e0VarD.c();
                    f.c(e0VarD, iE);
                    arrayList = e0VarD.f228k;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    e0VarD.f227j &= -1025;
                    layoutParams = view4.getLayoutParams();
                    if (layoutParams instanceof P) {
                        ((P) layoutParams).f171c = true;
                    }
                    p031u.g.b();
                    nanoTime = recyclerView.getNanoTime() - nanoTime4;
                    T tA2 = this.f181g.a(e0VarD.f);
                    j3 = tA2.f175d;
                    if (j3 != 0) {
                        nanoTime = (nanoTime / 4) + ((j3 / 4) * 3);
                    }
                    tA2.f175d = nanoTime;
                    accessibilityManager = recyclerView.f2070x;
                    if (accessibilityManager == null) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        WeakHashMap weakHashMap = p034y.N.f4222a;
                        if (AbstractC0290y.c(view4) == 0) {
                            z4 = true;
                            AbstractC0290y.s(view4, 1);
                        } else {
                            z4 = true;
                        }
                        g0Var = recyclerView.f2049j0;
                        if (g0Var != null) {
                            f0Var = g0Var.f247e;
                            if (f0Var != null) {
                                accessibilityDelegateB = p034y.N.b(view4);
                                if (accessibilityDelegateB != null) {
                                    if (accessibilityDelegateB instanceof C0267a) {
                                        c0269c = ((C0267a) accessibilityDelegateB).f4237a;
                                    } else {
                                        c0269c = new C0269c(accessibilityDelegateB);
                                    }
                                }
                                if (c0269c != null) {
                                    f0Var.f241e.put(view4, c0269c);
                                }
                            }
                            p034y.N.i(view4, f0Var);
                        }
                    } else {
                        z4 = true;
                    }
                    if (a0Var.f195g) {
                        e0VarD.f224g = i2;
                    }
                    z5 = z4;
                }
            } else {
                iE = recyclerView.f2038d.e(i2, 0);
                e0VarD.f235r = recyclerView;
                i3 = e0VarD.f;
                long nanoTime5 = recyclerView.getNanoTime();
                if (j2 != Long.MAX_VALUE) {
                    j4 = this.f181g.a(i3).f175d;
                    if (j4 != 0 || j4 + nanoTime5 < j2) {
                    }
                }
                f = recyclerView.f2050k;
                f.getClass();
                e0VarD.f221c = iE;
                if (f.b) {
                    e0VarD.f223e = f.b(iE);
                }
                e0VarD.f227j = (e0VarD.f227j & (-520)) | 1;
                int i13 = p031u.h.f4139a;
                p031u.g.a("RV OnBindView");
                e0VarD.c();
                f.c(e0VarD, iE);
                arrayList = e0VarD.f228k;
                if (arrayList != null) {
                    arrayList.clear();
                }
                e0VarD.f227j &= -1025;
                layoutParams = view4.getLayoutParams();
                if (layoutParams instanceof P) {
                    ((P) layoutParams).f171c = true;
                }
                p031u.g.b();
                nanoTime = recyclerView.getNanoTime() - nanoTime5;
                T tA3 = this.f181g.a(e0VarD.f);
                j3 = tA3.f175d;
                if (j3 != 0) {
                    nanoTime = (nanoTime / 4) + ((j3 / 4) * 3);
                }
                tA3.f175d = nanoTime;
                accessibilityManager = recyclerView.f2070x;
                if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    WeakHashMap weakHashMap2 = p034y.N.f4222a;
                    if (AbstractC0290y.c(view4) == 0) {
                        z4 = true;
                        AbstractC0290y.s(view4, 1);
                    } else {
                        z4 = true;
                    }
                    g0Var = recyclerView.f2049j0;
                    if (g0Var != null) {
                        f0Var = g0Var.f247e;
                        if (f0Var != null) {
                            accessibilityDelegateB = p034y.N.b(view4);
                            if (accessibilityDelegateB != null) {
                                if (accessibilityDelegateB instanceof C0267a) {
                                    c0269c = ((C0267a) accessibilityDelegateB).f4237a;
                                } else {
                                    c0269c = new C0269c(accessibilityDelegateB);
                                }
                            }
                            if (c0269c != null && c0269c != f0Var) {
                                f0Var.f241e.put(view4, c0269c);
                            }
                        }
                        p034y.N.i(view4, f0Var);
                    }
                } else {
                    z4 = true;
                }
                if (a0Var.f195g) {
                    e0VarD.f224g = i2;
                }
                z5 = z4;
            }
            layoutParams2 = view4.getLayoutParams();
            if (layoutParams2 == null) {
                p2 = (P) recyclerView.generateDefaultLayoutParams();
                view4.setLayoutParams(p2);
            } else if (recyclerView.checkLayoutParams(layoutParams2)) {
                p2 = (P) layoutParams2;
            } else {
                p2 = (P) recyclerView.generateLayoutParams(layoutParams2);
                view4.setLayoutParams(p2);
            }
            p2.f170a = e0VarD;
            if (z2 || !z5) {
                z6 = false;
            } else {
                z6 = z4;
            }
            p2.f172d = z6;
            return e0VarD;
        }
        e0VarD.f224g = i2;
        z5 = false;
        z4 = true;
        layoutParams2 = view4.getLayoutParams();
        if (layoutParams2 == null) {
            p2 = (P) recyclerView.generateDefaultLayoutParams();
            view4.setLayoutParams(p2);
        } else if (recyclerView.checkLayoutParams(layoutParams2)) {
            p2 = (P) recyclerView.generateLayoutParams(layoutParams2);
            view4.setLayoutParams(p2);
        } else {
            p2 = (P) layoutParams2;
        }
        p2.f170a = e0VarD;
        if (z2) {
            z6 = false;
        } else {
            z6 = false;
        }
        p2.f172d = z6;
        return e0VarD;
    }

    public final void j(e0 e0Var) {
        if (e0Var.f232o) {
            this.b.remove(e0Var);
        } else {
            this.f177a.remove(e0Var);
        }
        e0Var.f231n = null;
        e0Var.f232o = false;
        e0Var.f227j &= -33;
    }

    public final void k() {
        O o2 = this.f182h.f2052l;
        this.f = this.f180e + (o2 != null ? o2.f164j : 0);
        ArrayList arrayList = this.f178c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            e(size);
        }
    }
}
