package p025p0;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public final class p extends r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final RectF f3991h = new RectF();
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3994e;
    public float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f3995g;

    public p(float f, float f2, float f3, float f4) {
        this.b = f;
        this.f3992c = f2;
        this.f3993d = f3;
        this.f3994e = f4;
    }

    @Override // p025p0.r
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f3997a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f3991h;
        rectF.set(this.b, this.f3992c, this.f3993d, this.f3994e);
        path.arcTo(rectF, this.f, this.f3995g, false);
        path.transform(matrix);
    }
}
