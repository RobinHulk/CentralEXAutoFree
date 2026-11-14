package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: androidx.lifecycle.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0191a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1951a = new HashMap();
    public final HashMap b;

    public C0191a(HashMap map) {
        this.b = map;
        for (Map.Entry entry : map.entrySet()) {
            k kVar = (k) entry.getValue();
            List arrayList = (List) this.f1951a.get(kVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f1951a.put(kVar, arrayList);
            }
            arrayList.add((C0192b) entry.getKey());
        }
    }

    public static void a(List list, q qVar, k kVar, p pVar) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0192b c0192b = (C0192b) list.get(size);
                c0192b.getClass();
                try {
                    int i2 = c0192b.f1952a;
                    Method method = c0192b.b;
                    if (i2 == 0) {
                        method.invoke(pVar, null);
                    } else if (i2 == 1) {
                        method.invoke(pVar, qVar);
                    } else if (i2 == 2) {
                        method.invoke(pVar, qVar, kVar);
                    }
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException("Failed to call observer method", e3.getCause());
                }
            }
        }
    }
}
