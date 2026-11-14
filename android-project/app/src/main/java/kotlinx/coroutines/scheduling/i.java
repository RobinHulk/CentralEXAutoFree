package kotlinx.coroutines.scheduling;

import T.I1;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f3814a = A.b.f0("kotlinx.coroutines.scheduler.resolution.ns", 100000, 1, Long.MAX_VALUE);
    public static final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f3815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f3816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f3817e;
    public static final I1 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final I1 f3818g;

    static {
        int i2 = R0.h.f466a;
        if (i2 < 2) {
            i2 = 2;
        }
        b = A.b.g0(i2, 1, 0, 8, "kotlinx.coroutines.scheduler.core.pool.size");
        f3815c = A.b.g0(2097150, 0, 2097150, 4, "kotlinx.coroutines.scheduler.max.pool.size");
        f3816d = TimeUnit.SECONDS.toNanos(A.b.f0("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f3817e = f.f3811a;
        f = new I1(0);
        f3818g = new I1(1);
    }
}
