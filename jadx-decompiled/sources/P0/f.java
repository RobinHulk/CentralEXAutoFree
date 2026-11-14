package P0;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlinx.coroutines.android.AndroidExceptionPreHandler;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f435a;

    static {
        try {
            Iterator it = Arrays.asList(new AndroidExceptionPreHandler()).iterator();
            I0.f.e(it, "<this>");
            f435a = N0.h.n0(new N0.a(new F0.b(it, 2)));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static final void a(Throwable th) {
        Throwable runtimeException;
        z0.j jVar = z0.j.f4284a;
        Iterator it = f435a.iterator();
        while (it.hasNext()) {
            try {
                ((e) it.next()).handleException(jVar, th);
            } catch (Throwable th2) {
                Thread threadCurrentThread = Thread.currentThread();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    AbstractC0201a.g(runtimeException, th);
                }
                uncaughtExceptionHandler.uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            AbstractC0201a.g(th, new j());
        } catch (Throwable unused) {
        }
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
