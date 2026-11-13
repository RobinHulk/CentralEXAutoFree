package p016k;

import java.util.concurrent.Executors;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0201a {
    public static volatile a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f3739a;

    public static a T() {
        if (b != null) {
            return b;
        }
        synchronized (a.class) {
            try {
                if (b == null) {
                    a aVar = new a();
                    a aVar2 = new a();
                    aVar2.f3739a = new Object();
                    Executors.newFixedThreadPool(4, new b());
                    aVar.f3739a = aVar2;
                    b = aVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }
}
