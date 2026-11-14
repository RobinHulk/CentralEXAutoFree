package p025p0;

import A.e;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t[] f3980a = new t[4];
    public final Matrix[] b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix[] f3981c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PointF f3982d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Path f3983e = new Path();
    public final Path f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final t f3984g = new t();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f3985h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f3986i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f3987j = true;

    public l() {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f3980a[i2] = new t();
            this.b[i2] = new Matrix();
            this.f3981c[i2] = new Matrix();
        }
    }

    public final void a(k kVar, float f, RectF rectF, e eVar, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        t[] tVarArr;
        int i2;
        float[] fArr;
        e eVar2;
        c cVar;
        AbstractC0201a abstractC0201a;
        l lVar = this;
        path.rewind();
        Path path2 = lVar.f3983e;
        path2.rewind();
        Path path3 = lVar.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = lVar.f3981c;
            matrixArr2 = lVar.b;
            tVarArr = lVar.f3980a;
            i2 = 4;
            fArr = lVar.f3985h;
            if (i3 >= 4) {
                break;
            }
            if (i3 == 1) {
                cVar = kVar.f3974g;
            } else if (i3 != 2) {
                cVar = i3 != 3 ? kVar.f : kVar.f3973e;
            } else {
                cVar = kVar.f3975h;
            }
            if (i3 == 1) {
                abstractC0201a = kVar.f3971c;
            } else if (i3 != 2) {
                abstractC0201a = i3 != 3 ? kVar.b : kVar.f3970a;
            } else {
                abstractC0201a = kVar.f3972d;
            }
            t tVar = tVarArr[i3];
            abstractC0201a.getClass();
            abstractC0201a.z(tVar, f, cVar.a(rectF));
            int i4 = i3 + 1;
            float f2 = i4 * 90;
            matrixArr2[i3].reset();
            PointF pointF = lVar.f3982d;
            if (i3 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i3 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i3 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i3].setTranslate(pointF.x, pointF.y);
            matrixArr2[i3].preRotate(f2);
            t tVar2 = tVarArr[i3];
            fArr[0] = tVar2.b;
            fArr[1] = tVar2.f4000c;
            matrixArr2[i3].mapPoints(fArr);
            matrixArr[i3].reset();
            matrixArr[i3].setTranslate(fArr[0], fArr[1]);
            matrixArr[i3].preRotate(f2);
            i3 = i4;
        }
        int i5 = 0;
        while (i5 < i2) {
            t tVar3 = tVarArr[i5];
            tVar3.getClass();
            fArr[0] = 0.0f;
            fArr[1] = tVar3.f3999a;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            tVarArr[i5].b(matrixArr2[i5], path);
            if (eVar != null) {
                t tVar4 = tVarArr[i5];
                Matrix matrix = matrixArr2[i5];
                g gVar = (g) eVar.b;
                BitSet bitSet = gVar.f3941d;
                tVar4.getClass();
                bitSet.set(i5, false);
                tVar4.a(tVar4.f4002e);
                gVar.b[i5] = new m(new ArrayList(tVar4.f4003g), matrix);
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            t tVar5 = tVarArr[i5];
            fArr[0] = tVar5.b;
            fArr[1] = tVar5.f4000c;
            matrixArr2[i5].mapPoints(fArr);
            t tVar6 = tVarArr[i7];
            tVar6.getClass();
            float[] fArr2 = lVar.f3986i;
            fArr2[0] = 0.0f;
            fArr2[1] = tVar6.f3999a;
            matrixArr2[i7].mapPoints(fArr2);
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            t tVar7 = tVarArr[i5];
            fArr[0] = tVar7.b;
            fArr[1] = tVar7.f4000c;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 == 1 || i5 == 3) {
                Math.abs(rectF.centerX() - fArr[0]);
            } else {
                Math.abs(rectF.centerY() - fArr[1]);
            }
            t tVar8 = lVar.f3984g;
            tVar8.d(0.0f, 270.0f, 0.0f);
            if (i5 == 1) {
                eVar2 = kVar.f3978k;
            } else if (i5 != 2) {
                eVar2 = i5 != 3 ? kVar.f3977j : kVar.f3976i;
            } else {
                eVar2 = kVar.f3979l;
            }
            eVar2.getClass();
            tVar8.c(fMax, 0.0f);
            Path path4 = new Path();
            tVar8.b(matrixArr[i5], path4);
            if (lVar.f3987j && (lVar.b(path4, i5) || lVar.b(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = 0.0f;
                fArr[1] = tVar8.f3999a;
                matrixArr[i5].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                tVar8.b(matrixArr[i5], path2);
            } else {
                tVar8.b(matrixArr[i5], path);
            }
            if (eVar != null) {
                Matrix matrix2 = matrixArr[i5];
                g gVar2 = (g) eVar.b;
                gVar2.f3941d.set(i5 + 4, false);
                tVar8.a(tVar8.f4002e);
                gVar2.f3940c[i5] = new m(new ArrayList(tVar8.f4003g), matrix2);
            }
            i2 = 4;
            lVar = this;
            i5 = i6;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean b(Path path, int i2) {
        Path path2 = new Path();
        this.f3980a[i2].b(this.b[i2], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
