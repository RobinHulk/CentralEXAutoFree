package androidx.fragment.app;

import M.d0;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    public static final p020m.k b = new p020m.k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E f1932a;

    public y(E e2) {
        this.f1932a = e2;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        p020m.k kVar = b;
        p020m.k kVar2 = (p020m.k) kVar.getOrDefault(classLoader, null);
        if (kVar2 == null) {
            kVar2 = new p020m.k();
            kVar.put(classLoader, kVar2);
        }
        Class cls = (Class) kVar2.getOrDefault(str, null);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        kVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e2) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e2);
        } catch (ClassNotFoundException e3) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": make sure class name exists"), e3);
        }
    }

    public final AbstractComponentCallbacksC0187o a(String str) {
        try {
            return (AbstractComponentCallbacksC0187o) c(this.f1932a.f1748n.f1916d.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e2) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (InstantiationException e3) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new O.c(d0.f("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }
}
