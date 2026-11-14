package R0;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f462a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f464d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final A.e f461g = new A.e("REMOVE_FROZEN", 5);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f460e = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_next");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(d.class, "_state");

    public d(int i2, boolean z2) {
        this.f462a = i2;
        this.b = z2;
        int i3 = i2 - 1;
        this.f463c = i3;
        this.f464d = new AtomicReferenceArray(i2);
        if (i3 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i2 & i3) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int a(Object obj) {
        while (true) {
            long j2 = this._state;
            if ((3458764513820540928L & j2) != 0) {
                return (j2 & 2305843009213693952L) != 0 ? 2 : 1;
            }
            int i2 = (int) (1073741823 & j2);
            int i3 = (int) ((1152921503533105152L & j2) >> 30);
            int i4 = this.f463c;
            if (((i3 + 2) & i4) == (i2 & i4)) {
                return 1;
            }
            if (!this.b && this.f464d.get(i3 & i4) != null) {
                int i5 = this.f462a;
                if (i5 < 1024 || ((i3 - i2) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            } else if (f.compareAndSet(this, j2, ((-1152921503533105153L) & j2) | (((long) ((i3 + 1) & 1073741823)) << 30))) {
                this.f464d.set(i3 & i4, obj);
                d dVarE = this;
                while ((dVarE._state & 1152921504606846976L) != 0) {
                    dVarE = dVarE.e();
                    AtomicReferenceArray atomicReferenceArray = dVarE.f464d;
                    int i6 = dVarE.f463c & i3;
                    Object obj2 = atomicReferenceArray.get(i6);
                    if ((obj2 instanceof c) && ((c) obj2).f459a == i3) {
                        atomicReferenceArray.set(i6, obj);
                    } else {
                        dVarE = null;
                    }
                    if (dVarE == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
    }

    public final boolean b() {
        long j2;
        do {
            j2 = this._state;
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
        } while (!f.compareAndSet(this, j2, j2 | 2305843009213693952L));
        return true;
    }

    public final int c() {
        long j2 = this._state;
        return (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j2))) & 1073741823;
    }

    public final boolean d() {
        long j2 = this._state;
        return ((int) (1073741823 & j2)) == ((int) ((j2 & 1152921503533105152L) >> 30));
    }

    public final d e() {
        long j2;
        while (true) {
            j2 = this._state;
            if ((j2 & 1152921504606846976L) != 0) {
                break;
            }
            long j3 = j2 | 1152921504606846976L;
            if (f.compareAndSet(this, j2, j3)) {
                j2 = j3;
                break;
            }
        }
        while (true) {
            d dVar = (d) this._next;
            if (dVar != null) {
                return dVar;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f460e;
            d dVar2 = new d(this.f462a * 2, this.b);
            int i2 = (int) (1073741823 & j2);
            int i3 = (int) ((1152921503533105152L & j2) >> 30);
            while (true) {
                int i4 = this.f463c;
                int i5 = i2 & i4;
                if (i5 == (i4 & i3)) {
                    break;
                }
                Object cVar = this.f464d.get(i5);
                if (cVar == null) {
                    cVar = new c(i2);
                }
                dVar2.f464d.set(dVar2.f463c & i2, cVar);
                i2++;
            }
            dVar2._state = (-1152921504606846977L) & j2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, dVar2) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object f() {
        while (true) {
            long j2 = this._state;
            if ((j2 & 1152921504606846976L) != 0) {
                return f461g;
            }
            int i2 = (int) (j2 & 1073741823);
            int i3 = this.f463c;
            int i4 = ((int) ((1152921503533105152L & j2) >> 30)) & i3;
            int i5 = i3 & i2;
            if (i4 == i5) {
                return null;
            }
            Object obj = this.f464d.get(i5);
            if (obj == null) {
                if (this.b) {
                    return null;
                }
            } else {
                if (obj instanceof c) {
                    return null;
                }
                long j3 = (i2 + 1) & 1073741823;
                if (f.compareAndSet(this, j2, (j2 & (-1073741824)) | j3)) {
                    this.f464d.set(this.f463c & i2, null);
                    return obj;
                }
                if (this.b) {
                    d dVarE = this;
                    while (true) {
                        long j4 = dVarE._state;
                        int i6 = (int) (j4 & 1073741823);
                        if ((j4 & 1152921504606846976L) != 0) {
                            dVarE = dVarE.e();
                        } else {
                            if (f.compareAndSet(dVarE, j4, (j4 & (-1073741824)) | j3)) {
                                dVarE.f464d.set(dVarE.f463c & i6, null);
                                dVarE = null;
                            } else {
                                continue;
                            }
                        }
                        if (dVarE == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
