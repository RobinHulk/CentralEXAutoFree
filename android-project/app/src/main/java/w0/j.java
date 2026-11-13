package w0;

import java.util.List;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends AbstractC0201a {
    public static List T(Object... objArr) {
        return objArr.length > 0 ? h.T(objArr) : q.f4190a;
    }

    public static void U() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
