package kotlinx.coroutines.android;

import P0.d;
import P0.e;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import p003c.a;
import z0.i;

/* JADX INFO: loaded from: classes.dex */
@a
public final class AndroidExceptionPreHandler extends z0.a implements e {
    private volatile Object _preHandler;

    public AndroidExceptionPreHandler() {
        super(d.f434a);
        this._preHandler = this;
    }

    private final Method preHandler() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", null);
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                method = declaredMethod;
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // P0.e
    public void handleException(i iVar, Throwable th) {
    }
}
