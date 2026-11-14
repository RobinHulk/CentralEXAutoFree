package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1947a = new HashMap();

    public final void a() {
        for (G g2 : this.f1947a.values()) {
            HashMap map = g2.f1945a;
            if (map != null) {
                synchronized (map) {
                    try {
                        for (Object obj : g2.f1945a.values()) {
                            if (obj instanceof Closeable) {
                                try {
                                    ((Closeable) obj).close();
                                } catch (IOException e2) {
                                    throw new RuntimeException(e2);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            LinkedHashSet linkedHashSet = g2.b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        for (Closeable closeable : g2.b) {
                            if (closeable != null) {
                                try {
                                    closeable.close();
                                } catch (IOException e3) {
                                    throw new RuntimeException(e3);
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            g2.a();
        }
        this.f1947a.clear();
    }
}
