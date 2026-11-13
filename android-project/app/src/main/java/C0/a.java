package C0;

import I0.f;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f44a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        f.b(methods);
        int length = methods.length;
        int i2 = 0;
        while (true) {
            method = null;
            if (i2 >= length) {
                break;
            }
            Method method2 = methods[i2];
            if (f.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                f.d(parameterTypes, "getParameterTypes(...)");
                if (f.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i2++;
        }
        f44a = method;
        int length2 = methods.length;
        for (int i3 = 0; i3 < length2 && !f.a(methods[i3].getName(), "getSuppressed"); i3++) {
        }
    }
}
