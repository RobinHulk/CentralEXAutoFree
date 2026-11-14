package p025p0;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3999a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f4001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4002e;
    public final ArrayList f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f4003g = new ArrayList();

    public t() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.f4001d;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.b;
        float f5 = this.f4000c;
        p pVar = new p(f4, f5, f4, f5);
        pVar.f = this.f4001d;
        pVar.f3995g = f3;
        this.f4003g.add(new n(pVar));
        this.f4001d = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((r) arrayList.get(i2)).a(matrix, path);
        }
    }

    public final void c(float f, float f2) {
        q qVar = new q();
        qVar.b = f;
        qVar.f3996c = f2;
        this.f.add(qVar);
        o oVar = new o(qVar, this.b, this.f4000c);
        float fB = oVar.b() + 270.0f;
        float fB2 = oVar.b() + 270.0f;
        a(fB);
        this.f4003g.add(oVar);
        this.f4001d = fB2;
        this.b = f;
        this.f4000c = f2;
    }

    public final void d(float f, float f2, float f3) {
        this.f3999a = f;
        this.b = 0.0f;
        this.f4000c = f;
        this.f4001d = f2;
        this.f4002e = (f2 + f3) % 360.0f;
        this.f.clear();
        this.f4003g.clear();
    }
}
