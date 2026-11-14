package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: androidx.lifecycle.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0193c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0193c f1953c = new C0193c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1954a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap map, C0192b c0192b, k kVar, Class cls) {
        k kVar2 = (k) map.get(c0192b);
        if (kVar2 == null || kVar == kVar2) {
            if (kVar2 == null) {
                map.put(c0192b, kVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0192b.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + kVar2 + ", new value " + kVar);
    }

    public final C0191a a(Class cls, Method[] methodArr) {
        int i2;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.f1954a;
        if (superclass != null) {
            C0191a c0191aA = (C0191a) map2.get(superclass);
            if (c0191aA == null) {
                c0191aA = a(superclass, null);
            }
            map.putAll(c0191aA.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0191a c0191aA2 = (C0191a) map2.get(cls2);
            if (c0191aA2 == null) {
                c0191aA2 = a(cls2, null);
            }
            for (Map.Entry entry : c0191aA2.b.entrySet()) {
                b(map, (C0192b) entry.getKey(), (k) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e2) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
            }
        }
        boolean z2 = false;
        for (Method method : methodArr) {
            x xVar = (x) method.getAnnotation(x.class);
            if (xVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(q.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i2 = 1;
                }
                k kVarValue = xVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(k.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (kVarValue != k.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i2 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(map, new C0192b(i2, method), kVarValue, cls);
                z2 = true;
            }
        }
        C0191a c0191a = new C0191a(map);
        map2.put(cls, c0191a);
        this.b.put(cls, Boolean.valueOf(z2));
        return c0191a;
    }
}
