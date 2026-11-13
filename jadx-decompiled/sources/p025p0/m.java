package p025p0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;
import p024o0.a;

/* JADX INFO: loaded from: classes.dex */
public final class m extends s {
    public final /* synthetic */ ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Matrix f3988c;

    public m(ArrayList arrayList, Matrix matrix) {
        this.b = arrayList;
        this.f3988c = matrix;
    }

    @Override // p025p0.s
    public final void a(Matrix matrix, a aVar, int i2, Canvas canvas) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((s) it.next()).a(this.f3988c, aVar, i2, canvas);
        }
    }
}
