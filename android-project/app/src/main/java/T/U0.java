package T;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class U0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f805a;
    public static final ConcurrentHashMap.KeySetView b;

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new Q(1));
        I0.f.d(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
        f805a = executorServiceNewCachedThreadPool;
        b = ConcurrentHashMap.newKeySet();
    }

    public static void a(H0.a aVar) {
        try {
            f805a.execute(new T0(aVar, 0));
        } catch (Throwable unused) {
        }
    }

    public static void b(String str, H0.a aVar) {
        ConcurrentHashMap.KeySetView keySetView = b;
        if (keySetView.add(str)) {
            try {
                f805a.execute(new H(aVar, 4, str));
            } catch (Throwable unused) {
                keySetView.remove(str);
            }
        }
    }
}
