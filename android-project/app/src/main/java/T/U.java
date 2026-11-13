package T;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f804a = Executors.newCachedThreadPool(new Q(0));

    public static Boolean a(CarPropertyManager carPropertyManager, int i2, int i3) {
        I0.f.e(carPropertyManager, "cpm");
        return (Boolean) f(800L, new S(carPropertyManager, i2, i3, 3));
    }

    public static Float b(CarPropertyManager carPropertyManager, int i2, int i3) {
        I0.f.e(carPropertyManager, "cpm");
        return (Float) f(800L, new S(carPropertyManager, i2, i3, 0));
    }

    public static Integer c(CarPropertyManager carPropertyManager, int i2, int i3) {
        I0.f.e(carPropertyManager, "cpm");
        return (Integer) f(800L, new S(carPropertyManager, i2, i3, 1));
    }

    public static CarPropertyValue d(CarPropertyManager carPropertyManager, int i2, int i3) {
        I0.f.e(carPropertyManager, "cpm");
        return (CarPropertyValue) f(800L, new S(carPropertyManager, i2, i3, 4));
    }

    public static Object e(CarPropertyManager carPropertyManager, int i2, int i3) {
        I0.f.e(carPropertyManager, "cpm");
        return f(800L, new S(carPropertyManager, i2, i3, 2));
    }

    public static Object f(long j2, final H0.a aVar) {
        try {
            Future futureSubmit = f804a.submit(new Callable() { // from class: T.T
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return aVar.a();
                }
            });
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                Object obj = futureSubmit.get(j2, TimeUnit.MILLISECONDS);
                G3.f592a.c(G3.f594d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
                return obj;
            } catch (TimeoutException unused) {
                Log.w("CarProps", "leitura estourou " + j2 + "ms — devolvendo null (binder possivelmente preso)");
                futureSubmit.cancel(true);
                G3.f592a.c(G3.f594d, SystemClock.elapsedRealtime() - jElapsedRealtime, true);
                return null;
            } catch (Throwable unused2) {
                G3.f592a.c(G3.f594d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
                return null;
            }
        } catch (Throwable unused3) {
            return null;
        }
    }
}
