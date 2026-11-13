package androidx.emoji2.text;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f1718a;
    public l b;

    public p(int i2) {
        this.f1718a = new SparseArray(i2);
    }

    public final void a(l lVar, int i2, int i3) {
        int iA = lVar.a(i2);
        SparseArray sparseArray = this.f1718a;
        p pVar = sparseArray == null ? null : (p) sparseArray.get(iA);
        if (pVar == null) {
            pVar = new p(1);
            sparseArray.put(lVar.a(i2), pVar);
        }
        if (i3 > i2) {
            pVar.a(lVar, i2 + 1, i3);
        } else {
            pVar.b = lVar;
        }
    }
}
