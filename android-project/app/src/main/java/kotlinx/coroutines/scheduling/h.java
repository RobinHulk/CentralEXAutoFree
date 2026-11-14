package kotlinx.coroutines.scheduling;

import T.I1;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f3812a;
    public I1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f3813c;

    public h(Runnable runnable, long j2, I1 i1) {
        this.f3812a = j2;
        this.b = i1;
        this.f3813c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3813c.run();
        } finally {
            this.b.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f3813c;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(runnable)));
        sb.append(", ");
        sb.append(this.f3812a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(']');
        return sb.toString();
    }
}
