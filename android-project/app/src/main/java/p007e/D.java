package p007e;

import T.P4;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class D implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2948a = new Object();
    public final ArrayDeque b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f2949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2950d;

    public D(E e2) {
        this.f2949c = e2;
    }

    public final void a() {
        synchronized (this.f2948a) {
            try {
                Runnable runnable = (Runnable) this.b.poll();
                this.f2950d = runnable;
                if (runnable != null) {
                    this.f2949c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f2948a) {
            try {
                this.b.add(new P4(this, 3, runnable));
                if (this.f2950d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
