package p028r;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p007e.AbstractC0201a;
import p026q.f;
import v.h;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AbstractC0201a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Class f4047h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Constructor f4048i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Method f4049j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Method f4050k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f4051l = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f4052a;
    public final Constructor b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f4053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f4054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f4055e;
    public final Method f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Method f4056g;

    public g() throws NoSuchMethodException {
        Method methodC0;
        Constructor<?> constructor;
        Method methodB0;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodB0 = b0(cls2);
            Class cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodC0 = c0(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e2.getClass().getName()), e2);
            methodC0 = null;
            constructor = null;
            methodB0 = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f4052a = cls;
        this.b = constructor;
        this.f4053c = methodB0;
        this.f4054d = method;
        this.f4055e = method2;
        this.f = method3;
        this.f4056g = methodC0;
    }

    public static boolean V(Object obj, String str, int i2, boolean z2) throws NoSuchMethodException {
        Y();
        try {
            return ((Boolean) f4049j.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z2))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void Y() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f4051l) {
            return;
        }
        f4051l = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        f4048i = constructor;
        f4047h = cls;
        f4049j = method2;
        f4050k = method;
    }

    public static Method b0(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void T(Object obj) {
        try {
            this.f.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean U(Context context, Object obj, String str, int i2, int i3, int i4, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f4053c.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final Typeface W(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f4052a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f4056g.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final boolean X(Object obj) {
        try {
            return ((Boolean) this.f4055e.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean Z() {
        Method method = this.f4053c;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    public final Object a0() {
        try {
            return this.b.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public final Method c0(Class cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance((Class<?>) cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // p007e.AbstractC0201a
    public final Typeface r(Context context, f fVar, Resources resources, int i2) throws NoSuchMethodException {
        if (Z()) {
            Object objA0 = a0();
            if (objA0 == null) {
                return null;
            }
            for (p026q.g gVar : fVar.f4014a) {
                if (!U(context, objA0, gVar.f4015a, gVar.f4018e, gVar.b, gVar.f4016c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f4017d))) {
                    T(objA0);
                    return null;
                }
            }
            if (X(objA0)) {
                return W(objA0);
            }
            return null;
        }
        Y();
        try {
            Object objNewInstance = f4048i.newInstance(null);
            for (p026q.g gVar2 : fVar.f4014a) {
                File fileC = AbstractC0201a.C(context);
                if (fileC == null) {
                    return null;
                }
                try {
                    if (!AbstractC0201a.o(fileC, resources, gVar2.f) || !V(objNewInstance, fileC.getPath(), gVar2.b, gVar2.f4016c)) {
                        return null;
                    }
                    fileC.delete();
                } catch (RuntimeException unused) {
                } finally {
                    fileC.delete();
                }
            }
            Y();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f4047h, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f4050k.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // p007e.AbstractC0201a
    public final Typeface s(Context context, h[] hVarArr, int i2) {
        Typeface typefaceW;
        boolean zBooleanValue;
        if (hVarArr.length < 1) {
            return null;
        }
        if (!Z()) {
            h hVarU = u(hVarArr, i2);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(hVarU.f4150a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(hVarU.f4151c).setItalic(hVarU.f4152d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (h hVar : hVarArr) {
            if (hVar.f4153e == 0) {
                Uri uri = hVar.f4150a;
                if (!map.containsKey(uri)) {
                    map.put(uri, AbstractC0201a.H(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objA0 = a0();
        if (objA0 == null) {
            return null;
        }
        int length = hVarArr.length;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < length) {
            h hVar2 = hVarArr[i3];
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(hVar2.f4150a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.f4054d.invoke(objA0, byteBuffer, Integer.valueOf(hVar2.b), null, Integer.valueOf(hVar2.f4151c), Integer.valueOf(hVar2.f4152d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    T(objA0);
                    return null;
                }
                z2 = true;
            }
            i3++;
            z2 = z2;
        }
        if (!z2) {
            T(objA0);
            return null;
        }
        if (X(objA0) && (typefaceW = W(objA0)) != null) {
            return Typeface.create(typefaceW, i2);
        }
        return null;
    }

    @Override // p007e.AbstractC0201a
    public final Typeface t(Context context, Resources resources, int i2, String str, int i3) {
        if (!Z()) {
            return super.t(context, resources, i2, str, i3);
        }
        Object objA0 = a0();
        if (objA0 == null) {
            return null;
        }
        if (!U(context, objA0, str, 0, -1, -1, null)) {
            T(objA0);
            return null;
        }
        if (X(objA0)) {
            return W(objA0);
        }
        return null;
    }
}
