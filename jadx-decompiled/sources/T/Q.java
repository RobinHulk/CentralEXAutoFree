package T;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Q implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f760a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f760a) {
            case 0:
                Thread thread = new Thread(runnable, "CarPropsRead");
                thread.setDaemon(true);
                return thread;
            default:
                Thread thread2 = new Thread(runnable, "ciclo");
                thread2.setDaemon(true);
                return thread2;
        }
    }
}
