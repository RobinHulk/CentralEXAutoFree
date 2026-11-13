package p025p0;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public final class q extends r {
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3996c;

    @Override // p025p0.r
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f3997a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.b, this.f3996c);
        path.transform(matrix);
    }
}
