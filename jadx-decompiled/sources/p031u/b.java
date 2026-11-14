package p031u;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4134a;
    public a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4135c;

    public final void a(a aVar) {
        synchronized (this) {
            while (this.f4135c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.b == aVar) {
                return;
            }
            this.b = aVar;
            if (this.f4134a) {
                aVar.p();
            }
        }
    }
}
