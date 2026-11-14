package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes.dex */
public final class d extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f3810c;

    static {
        int i2 = i.b;
        int i3 = i.f3815c;
        long j2 = i.f3816d;
        d dVar = new d();
        dVar.b = new b(i2, i3, j2);
        f3810c = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // P0.c
    public final String toString() {
        return "Dispatchers.Default";
    }
}
