package p014j;

/* JADX INFO: loaded from: classes.dex */
public final class O0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3473a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3476e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3478h;

    public final void a(int i2, int i3) {
        this.f3474c = i2;
        this.f3475d = i3;
        this.f3478h = true;
        if (this.f3477g) {
            if (i3 != Integer.MIN_VALUE) {
                this.f3473a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3473a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.b = i3;
        }
    }
}
