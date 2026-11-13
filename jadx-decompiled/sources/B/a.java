package B;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f7c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f8d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9e;
    public long f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f10g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12i;

    public final float a(long j2) {
        long j3 = this.f9e;
        if (j2 < j3) {
            return 0.0f;
        }
        long j4 = this.f10g;
        if (j4 < 0 || j2 < j4) {
            return h.b((j2 - j3) / this.f6a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.f11h;
        return (h.b((j2 - j4) / this.f12i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
