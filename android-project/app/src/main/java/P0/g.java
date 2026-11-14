package P0;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class g extends l implements Runnable {
    private static volatile Thread _thread;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f437d = 0;
    private static volatile int debugStatus;

    static {
        Long l2;
        new g();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        f436c = timeUnit.toNanos(l2.longValue());
    }

    public final synchronized void d() {
        int i2 = debugStatus;
        if (i2 == 2 || i2 == 3) {
            debugStatus = 3;
            c();
            notifyAll();
        }
    }

    public final Thread e() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q.f442a.set(this);
        try {
            synchronized (this) {
                int i2 = debugStatus;
                if (i2 == 2 || i2 == 3) {
                    _thread = null;
                    d();
                    if (a()) {
                        return;
                    }
                    e();
                    return;
                }
                debugStatus = 1;
                notifyAll();
                long j2 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jB = b();
                    if (jB == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j2 == Long.MAX_VALUE) {
                            j2 = f436c + jNanoTime;
                        }
                        long j3 = j2 - jNanoTime;
                        if (j3 <= 0) {
                            _thread = null;
                            d();
                            if (a()) {
                                return;
                            }
                            e();
                            return;
                        }
                        if (jB > j3) {
                            jB = j3;
                        }
                    } else {
                        j2 = Long.MAX_VALUE;
                    }
                    if (jB > 0) {
                        int i3 = debugStatus;
                        if (i3 == 2 || i3 == 3) {
                            _thread = null;
                            d();
                            if (a()) {
                                return;
                            }
                            e();
                            return;
                        }
                        LockSupport.parkNanos(this, jB);
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            d();
            if (!a()) {
                e();
            }
            throw th;
        }
    }
}
