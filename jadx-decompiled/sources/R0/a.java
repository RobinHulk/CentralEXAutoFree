package R0;

import P0.i;
import kotlinx.coroutines.scheduling.j;

/* JADX INFO: loaded from: classes.dex */
public final class a extends P0.c implements Runnable, i {
    public final j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f457e;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public a(j jVar, int i2) {
        this.b = jVar;
        this.f455c = i2;
        if ((jVar instanceof i ? (i) jVar : null) == null) {
            int i3 = P0.h.f438a;
        }
        this.f456d = new b();
        this.f457e = new Object();
    }

    public final void a(z0.i iVar, Runnable runnable) {
        this.f456d.a(runnable);
        if (this.runningWorkers >= this.f455c) {
            return;
        }
        synchronized (this.f457e) {
            if (this.runningWorkers >= this.f455c) {
                return;
            }
            this.runningWorkers++;
            this.b.a(this, this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            int i2 = 0;
            while (true) {
                Runnable runnable = (Runnable) this.f456d.d();
                if (runnable != null) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        P0.f.a(th);
                    }
                    i2++;
                    if (i2 >= 16) {
                        this.b.getClass();
                        this.b.a(this, this);
                        return;
                    }
                }
            }
            synchronized (this.f457e) {
                this.runningWorkers--;
                if (this.f456d.c() == 0) {
                    return;
                } else {
                    this.runningWorkers++;
                }
            }
        }
    }
}
