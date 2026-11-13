package kotlinx.coroutines.scheduling;

import M.d0;
import T.I1;
import androidx.fragment.app.Q;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3805a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3806c;
    volatile /* synthetic */ long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f3808e;
    public final R0.g f;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final A.e f3804j = new A.e("NOT_IN_STACK", 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f3801g = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f3802h = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3803i = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");

    public b(int i2, int i3, long j2) {
        this.f3805a = i2;
        this.b = i3;
        this.f3806c = j2;
        if (i2 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(d0.d(i3, i2, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i3 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f3807d = new e();
        this.f3808e = new e();
        this.parkedWorkersStack = 0L;
        this.f = new R0.g(i2 + 1);
        this.controlState = ((long) i2) << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j2 = this.controlState;
            int i2 = (int) (j2 & 2097151);
            int i3 = i2 - ((int) ((j2 & 4398044413952L) >> 21));
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 >= this.f3805a) {
                return 0;
            }
            if (i2 >= this.b) {
                return 0;
            }
            int i4 = ((int) (this.controlState & 2097151)) + 1;
            if (i4 <= 0 || this.f.b(i4) != null) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            a aVar = new a(this, i4);
            this.f.c(i4, aVar);
            if (i4 != ((int) (2097151 & f3802h.incrementAndGet(this)))) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            aVar.start();
            return i3 + 1;
        }
    }

    public final void b(Runnable runnable, I1 i1, boolean z2) {
        h hVar;
        int i2;
        i.f3817e.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof h) {
            hVar = (h) runnable;
            hVar.f3812a = jNanoTime;
            hVar.b = i1;
        } else {
            hVar = new h(runnable, jNanoTime, i1);
        }
        Thread threadCurrentThread = Thread.currentThread();
        h hVarA = null;
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !I0.f.a(aVar.f3800g, this)) {
            aVar = null;
        }
        if (aVar == null || (i2 = aVar.b) == 5 || (hVar.b.f624a == 0 && i2 == 2)) {
            hVarA = hVar;
        } else {
            aVar.f = true;
            k kVar = aVar.f3796a;
            if (z2) {
                hVarA = kVar.a(hVar);
            } else {
                kVar.getClass();
                h hVar2 = (h) k.b.getAndSet(kVar, hVar);
                if (hVar2 != null) {
                    hVarA = kVar.a(hVar2);
                }
            }
        }
        if (hVarA != null) {
            if (!(hVarA.b.f624a == 1 ? this.f3808e.a(hVarA) : this.f3807d.a(hVarA))) {
                throw new RejectedExecutionException(I0.f.g(" was terminated", "DefaultDispatcher"));
            }
        }
        boolean z3 = z2 && aVar != null;
        if (hVar.b.f624a == 0) {
            if (z3 || g() || f(this.controlState)) {
                return;
            }
            g();
            return;
        }
        long jAddAndGet = f3802h.addAndGet(this, 2097152L);
        if (z3 || g() || f(jAddAndGet)) {
            return;
        }
        g();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean c() {
        return this._isTerminated;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i2;
        if (f3803i.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
            if (aVar == null || !I0.f.a(aVar.f3800g, this)) {
                aVar = null;
            }
            synchronized (this.f) {
                i2 = (int) (this.controlState & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    int i4 = i3 + 1;
                    Object objB = this.f.b(i3);
                    I0.f.b(objB);
                    a aVar2 = (a) objB;
                    if (aVar2 != aVar) {
                        while (aVar2.isAlive()) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(10000L);
                        }
                        k kVar = aVar2.f3796a;
                        e eVar = this.f3808e;
                        kVar.getClass();
                        h hVar = (h) k.b.getAndSet(kVar, null);
                        if (hVar != null) {
                            eVar.a(hVar);
                        }
                        while (true) {
                            h hVarC = kVar.c();
                            if (hVarC == null) {
                                break;
                            } else {
                                eVar.a(hVarC);
                            }
                        }
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3 = i4;
                    }
                }
            }
            this.f3808e.b();
            this.f3807d.b();
            while (true) {
                h hVarA = aVar == null ? null : aVar.a(true);
                if (hVarA == null && (hVarA = (h) this.f3807d.d()) == null && (hVarA = (h) this.f3808e.d()) == null) {
                    break;
                }
                try {
                    hVarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (aVar != null) {
                aVar.h(5);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void d(a aVar) {
        long j2;
        int iB;
        if (aVar.c() != f3804j) {
            return;
        }
        do {
            j2 = this.parkedWorkersStack;
            iB = aVar.b();
            aVar.g(this.f.b((int) (2097151 & j2)));
        } while (!f3801g.compareAndSet(this, j2, ((long) iB) | ((2097152 + j2) & (-2097152))));
    }

    public final void e(a aVar, int i2, int i3) {
        while (true) {
            long j2 = this.parkedWorkersStack;
            int i4 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i4 == i2) {
                if (i3 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f3804j) {
                            i4 = -1;
                            break;
                        }
                        if (objC == null) {
                            i4 = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        int iB = aVar2.b();
                        if (iB != 0) {
                            i4 = iB;
                            break;
                        }
                        objC = aVar2.c();
                    }
                } else {
                    i4 = i3;
                }
            }
            if (i4 >= 0 && f3801g.compareAndSet(this, j2, j3 | ((long) i4))) {
                return;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, i.f, false);
    }

    public final boolean f(long j2) {
        int i2 = ((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21));
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.f3805a;
        if (i2 < i3) {
            int iA = a();
            if (iA == 1 && i3 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        A.e eVar;
        int iB;
        while (true) {
            long j2 = this.parkedWorkersStack;
            a aVar = (a) this.f.b((int) (2097151 & j2));
            if (aVar == null) {
                aVar = null;
            } else {
                long j3 = (2097152 + j2) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    eVar = f3804j;
                    if (objC == eVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0 && f3801g.compareAndSet(this, j2, ((long) iB) | j3)) {
                    aVar.g(eVar);
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f3795h.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1;
        while (i7 < iA) {
            int i8 = i7 + 1;
            a aVar = (a) this.f.b(i7);
            if (aVar != null) {
                int iB = aVar.f3796a.b();
                int iE = Q.e(aVar.b);
                if (iE == 0) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iB);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iE == 1) {
                    i3++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iB);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iE == 2) {
                    i4++;
                } else if (iE == 3) {
                    i5++;
                    if (iB > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iB);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iE == 4) {
                    i6++;
                }
            }
            i7 = i8;
        }
        long j2 = this.controlState;
        return "DefaultDispatcher@" + Integer.toHexString(System.identityHashCode(this)) + "[Pool Size {core = " + this.f3805a + ", max = " + this.b + "}, Worker States {CPU = " + i2 + ", blocking = " + i3 + ", parked = " + i4 + ", dormant = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f3807d.c() + ", global blocking queue size = " + this.f3808e.c() + ", Control State {created workers= " + ((int) (2097151 & j2)) + ", blocking tasks = " + ((int) ((4398044413952L & j2) >> 21)) + ", CPUs acquired = " + (this.f3805a - ((int) ((9223367638808264704L & j2) >> 42))) + "}]";
    }
}
