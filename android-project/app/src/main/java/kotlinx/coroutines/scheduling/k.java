package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3819c = AtomicIntegerFieldUpdater.newUpdater(k.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3820d = AtomicIntegerFieldUpdater.newUpdater(k.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3821e = AtomicIntegerFieldUpdater.newUpdater(k.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f3822a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public final h a(h hVar) {
        if (hVar.b.f624a == 1) {
            f3821e.incrementAndGet(this);
        }
        if (this.producerIndex - this.consumerIndex == 127) {
            return hVar;
        }
        int i2 = this.producerIndex & 127;
        while (this.f3822a.get(i2) != null) {
            Thread.yield();
        }
        this.f3822a.lazySet(i2, hVar);
        f3819c.incrementAndGet(this);
        return null;
    }

    public final int b() {
        return this.lastScheduledTask != null ? (this.producerIndex - this.consumerIndex) + 1 : this.producerIndex - this.consumerIndex;
    }

    public final h c() {
        h hVar;
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                return null;
            }
            int i3 = i2 & 127;
            if (f3820d.compareAndSet(this, i2, i2 + 1) && (hVar = (h) this.f3822a.getAndSet(i3, null)) != null) {
                if (hVar.b.f624a == 1) {
                    f3821e.decrementAndGet(this);
                }
                return hVar;
            }
        }
    }

    public final long d(k kVar) {
        int i2 = kVar.producerIndex;
        AtomicReferenceArray atomicReferenceArray = kVar.f3822a;
        for (int i3 = kVar.consumerIndex; i3 != i2; i3++) {
            int i4 = i3 & 127;
            if (kVar.blockingTasksInBuffer == 0) {
                break;
            }
            h hVar = (h) atomicReferenceArray.get(i4);
            if (hVar != null && hVar.b.f624a == 1) {
                do {
                    if (atomicReferenceArray.compareAndSet(i4, hVar, null)) {
                        f3821e.decrementAndGet(kVar);
                        h hVar2 = (h) b.getAndSet(this, hVar);
                        if (hVar2 == null) {
                            return -1L;
                        }
                        a(hVar2);
                        return -1L;
                    }
                } while (atomicReferenceArray.get(i4) == hVar);
            }
        }
        return e(kVar, true);
    }

    public final long e(k kVar, boolean z2) {
        while (true) {
            h hVar = (h) kVar.lastScheduledTask;
            if (hVar == null) {
                return -2L;
            }
            if (z2 && hVar.b.f624a != 1) {
                return -2L;
            }
            i.f3817e.getClass();
            long jNanoTime = System.nanoTime() - hVar.f3812a;
            long j2 = i.f3814a;
            if (jNanoTime < j2) {
                return j2 - jNanoTime;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(kVar, hVar, null)) {
                    h hVar2 = (h) b.getAndSet(this, hVar);
                    if (hVar2 == null) {
                        return -1L;
                    }
                    a(hVar2);
                    return -1L;
                }
            } while (atomicReferenceFieldUpdater.get(kVar) == hVar);
        }
    }
}
