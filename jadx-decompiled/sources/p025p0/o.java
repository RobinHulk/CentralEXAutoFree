package p025p0;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import p024o0.a;

/* JADX INFO: loaded from: classes.dex */
public final class o extends s {
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3990d;

    public o(q qVar, float f, float f2) {
        this.b = qVar;
        this.f3989c = f;
        this.f3990d = f2;
    }

    @Override // p025p0.s
    public final void a(Matrix matrix, a aVar, int i2, Canvas canvas) {
        q qVar = this.b;
        float f = qVar.f3996c;
        float f2 = this.f3990d;
        float f3 = qVar.b;
        float f4 = this.f3989c;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preTranslate(f4, f2);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i2;
        rectF.offset(0.0f, -i2);
        int[] iArr = a.f3909i;
        iArr[0] = aVar.f;
        iArr[1] = aVar.f3916e;
        iArr[2] = aVar.f3915d;
        Paint paint = aVar.f3914c;
        float f5 = rectF.left;
        paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, a.f3910j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        q qVar = this.b;
        return (float) Math.toDegrees(Math.atan((qVar.f3996c - this.f3990d) / (qVar.b - this.f3989c)));
    }
}
