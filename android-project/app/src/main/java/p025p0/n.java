package p025p0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import p024o0.a;

/* JADX INFO: loaded from: classes.dex */
public final class n extends s {
    public final p b;

    public n(p pVar) {
        this.b = pVar;
    }

    @Override // p025p0.s
    public final void a(Matrix matrix, a aVar, int i2, Canvas canvas) {
        p pVar = this.b;
        float f = pVar.f;
        float f2 = pVar.f3995g;
        RectF rectF = new RectF(pVar.b, pVar.f3992c, pVar.f3993d, pVar.f3994e);
        aVar.getClass();
        boolean z2 = f2 < 0.0f;
        Path path = aVar.f3917g;
        int[] iArr = a.f3911k;
        if (z2) {
            iArr[0] = 0;
            iArr[1] = aVar.f;
            iArr[2] = aVar.f3916e;
            iArr[3] = aVar.f3915d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i2;
            rectF.inset(f3, f3);
            iArr[0] = 0;
            iArr[1] = aVar.f3915d;
            iArr[2] = aVar.f3916e;
            iArr[3] = aVar.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i2 / fWidth);
        float[] fArr = a.f3912l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        Paint paint = aVar.b;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z2) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f3918h);
        }
        canvas.drawArc(rectF, f, f2, true, paint);
        canvas.restore();
    }
}
