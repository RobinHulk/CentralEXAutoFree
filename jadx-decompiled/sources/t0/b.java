package t0;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f4123a;
    public static final Logger b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Level f4124c = Level.FINE;

    static {
        try {
            f4123a = Boolean.getBoolean("javax.activation.debug");
        } catch (Throwable unused) {
        }
        b = Logger.getLogger("javax.activation");
    }

    public static boolean a() {
        return f4123a || b.isLoggable(f4124c);
    }

    public static void b(String str) {
        if (f4123a) {
            System.out.println(str);
        }
        b.log(f4124c, str);
    }

    public static void c(String str, Exception exc) {
        if (f4123a) {
            System.out.println(str + "; Exception: " + exc);
        }
        b.log(f4124c, str, (Throwable) exc);
    }
}
