package androidx.emoji2.text;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final class j extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ A.b f1702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f1703d;

    public j(A.b bVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f1702c = bVar;
        this.f1703d = threadPoolExecutor;
    }

    @Override // A.b
    public final void M(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f1703d;
        try {
            this.f1702c.M(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // A.b
    public final void P(q qVar) {
        ThreadPoolExecutor threadPoolExecutor = this.f1703d;
        try {
            this.f1702c.P(qVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
