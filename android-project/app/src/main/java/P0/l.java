package P0;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends m implements i {
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_queue");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    static {
        AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_delayed");
    }

    public final boolean a() {
        if (this._delayed != null) {
            throw new ClassCastException();
        }
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        if (obj instanceof R0.d) {
            return ((R0.d) obj).d();
        }
        return obj == n.f441a;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0066  */
    public final long b() {
        A.e eVar;
        Runnable runnable;
        if (this._delayed != null) {
            throw new ClassCastException();
        }
        loop0: while (true) {
            Object obj = this._queue;
            eVar = n.f441a;
            runnable = null;
            if (obj == null) {
                break;
            }
            if (obj instanceof R0.d) {
                R0.d dVar = (R0.d) obj;
                Object objF = dVar.f();
                if (objF != R0.d.f461g) {
                    runnable = (Runnable) objF;
                    break;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
                R0.d dVarE = dVar.e();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, dVarE) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else {
                if (obj == eVar) {
                    break;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, null)) {
                        runnable = (Runnable) obj;
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj);
            }
        }
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        Object obj2 = this._queue;
        if (obj2 != null) {
            if (obj2 instanceof R0.d) {
                if (!((R0.d) obj2).d()) {
                    return 0L;
                }
                if (this._delayed != null) {
                    throw new ClassCastException();
                }
            } else if (obj2 != eVar) {
                return 0L;
            }
        } else if (this._delayed != null) {
            throw new ClassCastException();
        }
        return Long.MAX_VALUE;
    }

    public final void c() {
        this._queue = null;
        this._delayed = null;
    }
}
