package p026q;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o f4027k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4028a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f4029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f4030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f4031e;
    public final float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f4032g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f4033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f4034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f4035j;

    static {
        float[] fArr = b.f4009c;
        float fI = (float) ((((double) b.i()) * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f4008a;
        float f = fArr[0];
        float[] fArr3 = fArr2[0];
        float f2 = fArr3[0] * f;
        float f3 = fArr[1];
        float f4 = (fArr3[1] * f3) + f2;
        float f5 = fArr[2];
        float f6 = (fArr3[2] * f5) + f4;
        float[] fArr4 = fArr2[1];
        float f7 = (fArr4[2] * f5) + (fArr4[1] * f3) + (fArr4[0] * f);
        float[] fArr5 = fArr2[2];
        float f8 = (f5 * fArr5[2]) + (f3 * fArr5[1]) + (f * fArr5[0]);
        float f9 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-fI) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d2 = fExp;
        if (d2 > 1.0d) {
            fExp = 1.0f;
        } else if (d2 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f6) * fExp) + 1.0f) - fExp, (((100.0f / f7) * fExp) + 1.0f) - fExp, (((100.0f / f8) * fExp) + 1.0f) - fExp};
        float f10 = 1.0f / ((5.0f * fI) + 1.0f);
        float f11 = f10 * f10 * f10 * f10;
        float f12 = 1.0f - f11;
        float fCbrt = (0.1f * f12 * f12 * ((float) Math.cbrt(((double) fI) * 5.0d))) + (f11 * fI);
        float fI2 = b.i() / fArr[1];
        double d3 = fI2;
        float fSqrt = ((float) Math.sqrt(d3)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d3, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f6)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f7)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f8)) / 100.0d, 0.42d)};
        float f13 = fArr7[0];
        float f14 = (f13 * 400.0f) / (f13 + 27.13f);
        float f15 = fArr7[1];
        float f16 = (f15 * 400.0f) / (f15 + 27.13f);
        float f17 = fArr7[2];
        float[] fArr8 = {f14, f16, (400.0f * f17) / (f17 + 27.13f)};
        f4027k = new o(fI2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f9, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public o(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f = f;
        this.f4028a = f2;
        this.b = f3;
        this.f4029c = f4;
        this.f4030d = f5;
        this.f4031e = f6;
        this.f4032g = fArr;
        this.f4033h = f7;
        this.f4034i = f8;
        this.f4035j = f9;
    }
}
