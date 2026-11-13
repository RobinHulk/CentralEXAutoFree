package p020m;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f3854a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3857e;

    public f(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f3855c = i2;
        this.f3854a = new LinkedHashMap(0, 0.75f, true);
    }

    public final Object a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                Object obj2 = this.f3854a.get(obj);
                if (obj2 != null) {
                    this.f3856d++;
                    return obj2;
                }
                this.f3857e++;
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object b(Object obj, Object obj2) {
        Object objPut;
        if (obj == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.b++;
                objPut = this.f3854a.put(obj, obj2);
                if (objPut != null) {
                    this.b--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i2 = this.f3855c;
        while (true) {
            synchronized (this) {
                try {
                    if (this.b < 0 || (this.f3854a.isEmpty() && this.b != 0)) {
                        break;
                    }
                    if (this.b > i2 && !this.f3854a.isEmpty()) {
                        Map.Entry entry = (Map.Entry) this.f3854a.entrySet().iterator().next();
                        Object key = entry.getKey();
                        entry.getValue();
                        this.f3854a.remove(key);
                        this.b--;
                    }
                    return objPut;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        int i4;
        try {
            i2 = this.f3856d;
            i3 = this.f3857e;
            int i5 = i2 + i3;
            i4 = i5 != 0 ? (i2 * 100) / i5 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=" + this.f3855c + ",hits=" + i2 + ",misses=" + i3 + ",hitRate=" + i4 + "%]";
    }
}
