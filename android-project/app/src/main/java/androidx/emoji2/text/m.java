package androidx.emoji2.text;

import android.util.SparseArray;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1707a = 1;
    public final p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p f1708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p f1709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1710e;
    public int f;

    public m(p pVar) {
        this.b = pVar;
        this.f1708c = pVar;
    }

    public final int a(int i2) {
        SparseArray sparseArray = this.f1708c.f1718a;
        p pVar = sparseArray == null ? null : (p) sparseArray.get(i2);
        int i3 = 1;
        int i4 = 2;
        if (this.f1707a == 2) {
            if (pVar != null) {
                this.f1708c = pVar;
                this.f++;
            } else if (i2 == 65038) {
                b();
            } else if (i2 != 65039) {
                p pVar2 = this.f1708c;
                if (pVar2.b != null) {
                    i4 = 3;
                    if (this.f != 1) {
                        this.f1709d = pVar2;
                        b();
                    } else if (c()) {
                        this.f1709d = this.f1708c;
                        b();
                    } else {
                        b();
                    }
                } else {
                    b();
                }
            }
            i3 = i4;
        } else if (pVar == null) {
            b();
        } else {
            this.f1707a = 2;
            this.f1708c = pVar;
            this.f = 1;
            i3 = i4;
        }
        this.f1710e = i2;
        return i3;
    }

    public final void b() {
        this.f1707a = 1;
        this.f1708c = this.b;
        this.f = 0;
    }

    public final boolean c() {
        F.a aVarC = this.f1708c.b.c();
        int iA = aVarC.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarC.f88d).get(iA + aVarC.f86a) == 0) || this.f1710e == 65039;
    }
}
