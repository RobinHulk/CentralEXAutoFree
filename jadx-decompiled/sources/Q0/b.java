package Q0;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private static volatile Choreographer choreographer;

    static {
        Object bVar;
        try {
            bVar = new a(a(Looper.getMainLooper()));
        } catch (Throwable th) {
            bVar = new v0.b(th);
        }
        if (bVar instanceof v0.b) {
            bVar = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        if (objInvoke != null) {
            return (Handler) objInvoke;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
    }
}
