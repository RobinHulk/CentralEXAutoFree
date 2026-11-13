package kotlinx.coroutines.scheduling;

import P0.o;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class c extends o implements Executor {
    public static final c b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final R0.a f3809c;

    static {
        j jVar = j.b;
        int i2 = R0.h.f466a;
        if (64 >= i2) {
            i2 = 64;
        }
        int iG0 = A.b.g0(i2, 0, 0, 12, "kotlinx.coroutines.io.parallelism");
        jVar.getClass();
        if (iG0 < 1) {
            throw new IllegalArgumentException(I0.f.g(Integer.valueOf(iG0), "Expected positive parallelism level, but got ").toString());
        }
        f3809c = new R0.a(jVar, iG0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f3809c.a(z0.j.f4284a, runnable);
    }

    @Override // P0.c
    public final String toString() {
        return "Dispatchers.IO";
    }
}
