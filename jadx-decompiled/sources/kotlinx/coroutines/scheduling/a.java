package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3795h = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f3796a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f3798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3799e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ b f3800g;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    volatile /* synthetic */ int workerCtl;

    public a(b bVar, int i2) {
        this.f3800g = bVar;
        setDaemon(true);
        this.f3796a = new k();
        this.b = 4;
        this.workerCtl = 0;
        this.nextParkedWorker = b.f3804j;
        J0.e.f130a.getClass();
        this.f3799e = J0.e.b.a().nextInt();
        f(i2);
    }

    public final h a(boolean z2) {
        h hVarE;
        h hVarE2;
        long j2;
        h hVarC;
        if (this.b != 1) {
            b bVar = this.f3800g;
            do {
                j2 = bVar.controlState;
                if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                    if (z2) {
                        k kVar = this.f3796a;
                        kVar.getClass();
                        hVarC = (h) k.b.getAndSet(kVar, null);
                        if (hVarC == null) {
                            hVarC = kVar.c();
                        }
                        if (hVarC == null) {
                            hVarC = (h) this.f3800g.f3808e.d();
                        }
                    } else {
                        hVarC = (h) this.f3800g.f3808e.d();
                    }
                    return hVarC == null ? i(true) : hVarC;
                }
            } while (!b.f3802h.compareAndSet(bVar, j2, j2 - 4398046511104L));
            this.b = 1;
        }
        if (z2) {
            boolean z3 = d(this.f3800g.f3805a * 2) == 0;
            if (z3 && (hVarE2 = e()) != null) {
                return hVarE2;
            }
            k kVar2 = this.f3796a;
            kVar2.getClass();
            h hVar = (h) k.b.getAndSet(kVar2, null);
            h hVarC2 = hVar == null ? kVar2.c() : hVar;
            if (hVarC2 != null) {
                return hVarC2;
            }
            if (!z3 && (hVarE = e()) != null) {
                return hVarE;
            }
        } else {
            h hVarE3 = e();
            if (hVarE3 != null) {
                return hVarE3;
            }
        }
        return i(false);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i2) {
        int i3 = this.f3799e;
        int i4 = i3 ^ (i3 << 13);
        int i5 = i4 ^ (i4 >> 17);
        int i6 = i5 ^ (i5 << 5);
        this.f3799e = i6;
        int i7 = i2 - 1;
        return (i7 & i2) == 0 ? i6 & i7 : (i6 & Integer.MAX_VALUE) % i2;
    }

    public final h e() {
        int iD = d(2);
        b bVar = this.f3800g;
        if (iD == 0) {
            h hVar = (h) bVar.f3807d.d();
            return hVar == null ? (h) bVar.f3808e.d() : hVar;
        }
        h hVar2 = (h) bVar.f3808e.d();
        return hVar2 == null ? (h) bVar.f3807d.d() : hVar2;
    }

    public final void f(int i2) {
        StringBuilder sb = new StringBuilder("DefaultDispatcher-worker-");
        this.f3800g.getClass();
        sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
        setName(sb.toString());
        this.indexInArray = i2;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i2) {
        int i3 = this.b;
        boolean z2 = i3 == 1;
        if (z2) {
            b.f3802h.addAndGet(this.f3800g, 4398046511104L);
        }
        if (i3 != i2) {
            this.b = i2;
        }
        return z2;
    }

    public final h i(boolean z2) {
        long jE;
        int i2 = (int) (this.f3800g.controlState & 2097151);
        if (i2 < 2) {
            return null;
        }
        int iD = d(i2);
        b bVar = this.f3800g;
        int i3 = 0;
        long jMin = Long.MAX_VALUE;
        while (i3 < i2) {
            i3++;
            iD++;
            if (iD > i2) {
                iD = 1;
            }
            a aVar = (a) bVar.f.b(iD);
            if (aVar != null && aVar != this) {
                if (z2) {
                    jE = this.f3796a.d(aVar.f3796a);
                } else {
                    k kVar = this.f3796a;
                    k kVar2 = aVar.f3796a;
                    kVar.getClass();
                    h hVarC = kVar2.c();
                    if (hVarC != null) {
                        h hVar = (h) k.b.getAndSet(kVar, hVarC);
                        if (hVar != null) {
                            kVar.a(hVar);
                        }
                        jE = -1;
                    } else {
                        jE = kVar.e(kVar2, false);
                    }
                }
                if (jE == -1) {
                    k kVar3 = this.f3796a;
                    kVar3.getClass();
                    h hVar2 = (h) k.b.getAndSet(kVar3, null);
                    return hVar2 == null ? kVar3.c() : hVar2;
                }
                if (jE > 0) {
                    jMin = Math.min(jMin, jE);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f3798d = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                if (this.f3800g.c() || this.b == 5) {
                    break loop0;
                }
                h hVarA = a(this.f);
                if (hVarA != null) {
                    this.f3798d = 0L;
                    int i2 = hVarA.b.f624a;
                    this.f3797c = 0L;
                    if (this.b == 3) {
                        this.b = 2;
                    }
                    b bVar = this.f3800g;
                    if (i2 != 0 && h(2) && !bVar.g() && !bVar.f(bVar.controlState)) {
                        bVar.g();
                    }
                    bVar.getClass();
                    try {
                        hVarA.run();
                    } catch (Throwable th) {
                        Thread threadCurrentThread = Thread.currentThread();
                        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                    }
                    if (i2 != 0) {
                        b.f3802h.addAndGet(bVar, -2097152L);
                        if (this.b == 5) {
                            break;
                        }
                        this.b = 4;
                        break;
                    }
                    break;
                }
                this.f = false;
                if (this.f3798d != 0) {
                    if (z2) {
                        h(3);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f3798d);
                        this.f3798d = 0L;
                        break;
                    }
                    z2 = true;
                } else if (this.nextParkedWorker != b.f3804j) {
                    this.workerCtl = -1;
                    while (this.nextParkedWorker != b.f3804j && this.workerCtl == -1 && !this.f3800g.c() && this.b != 5) {
                        h(3);
                        Thread.interrupted();
                        if (this.f3797c == 0) {
                            this.f3797c = System.nanoTime() + this.f3800g.f3806c;
                        }
                        LockSupport.parkNanos(this.f3800g.f3806c);
                        if (System.nanoTime() - this.f3797c >= 0) {
                            this.f3797c = 0L;
                            b bVar2 = this.f3800g;
                            synchronized (bVar2.f) {
                                try {
                                    if (!bVar2.c()) {
                                        if (((int) (bVar2.controlState & 2097151)) > bVar2.f3805a) {
                                            if (f3795h.compareAndSet(this, -1, 1)) {
                                                int i3 = this.indexInArray;
                                                f(0);
                                                bVar2.e(this, i3, 0);
                                                int andDecrement = (int) (b.f3802h.getAndDecrement(bVar2) & 2097151);
                                                if (andDecrement != i3) {
                                                    Object objB = bVar2.f.b(andDecrement);
                                                    I0.f.b(objB);
                                                    a aVar = (a) objB;
                                                    bVar2.f.c(i3, aVar);
                                                    aVar.f(i3);
                                                    bVar2.e(aVar, andDecrement, i3);
                                                }
                                                bVar2.f.c(andDecrement, null);
                                                this.b = 5;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    }
                } else {
                    this.f3800g.d(this);
                }
            }
        }
        h(5);
    }
}
