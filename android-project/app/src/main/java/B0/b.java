package B0;

import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Method f33a;
    public Method b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Method f34c;

    public b(Method method, Method method2, Method method3) {
        this.f33a = method;
        this.b = method2;
        this.f34c = method3;
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }
}
