package p014j;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: j.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0237k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f3631a;
    public static final Method b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f3632c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Field f3633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Field f3634e;
    public static final Field f;

    /* JADX WARN: Code duplicated, block: B:25:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    static {
        Method method;
        Field field;
        Field field2;
        Field field3;
        Field field4;
        boolean z2;
        try {
            Class<?> cls = Class.forName("android.graphics.Insets");
            method = Drawable.class.getMethod("getOpticalInsets", null);
            try {
                field = cls.getField("left");
                try {
                    field2 = cls.getField("top");
                    try {
                        field3 = cls.getField("right");
                        try {
                            field4 = cls.getField("bottom");
                            z2 = true;
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                            field4 = null;
                            z2 = false;
                        }
                    } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                        field3 = null;
                    }
                } catch (ClassNotFoundException unused3) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f3632c = field;
                        f3633d = field2;
                        f3634e = field3;
                        f = field4;
                        f3631a = true;
                        return;
                    }
                    b = null;
                    f3632c = null;
                    f3633d = null;
                    f3634e = null;
                    f = null;
                    f3631a = false;
                } catch (NoSuchFieldException unused4) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f3632c = field;
                        f3633d = field2;
                        f3634e = field3;
                        f = field4;
                        f3631a = true;
                        return;
                    }
                    b = null;
                    f3632c = null;
                    f3633d = null;
                    f3634e = null;
                    f = null;
                    f3631a = false;
                } catch (NoSuchMethodException unused5) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f3632c = field;
                        f3633d = field2;
                        f3634e = field3;
                        f = field4;
                        f3631a = true;
                        return;
                    }
                    b = null;
                    f3632c = null;
                    f3633d = null;
                    f3634e = null;
                    f = null;
                    f3631a = false;
                }
            } catch (ClassNotFoundException unused6) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f3632c = field;
                    f3633d = field2;
                    f3634e = field3;
                    f = field4;
                    f3631a = true;
                    return;
                }
                b = null;
                f3632c = null;
                f3633d = null;
                f3634e = null;
                f = null;
                f3631a = false;
            } catch (NoSuchFieldException unused7) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f3632c = field;
                    f3633d = field2;
                    f3634e = field3;
                    f = field4;
                    f3631a = true;
                    return;
                }
                b = null;
                f3632c = null;
                f3633d = null;
                f3634e = null;
                f = null;
                f3631a = false;
            } catch (NoSuchMethodException unused8) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f3632c = field;
                    f3633d = field2;
                    f3634e = field3;
                    f = field4;
                    f3631a = true;
                    return;
                }
                b = null;
                f3632c = null;
                f3633d = null;
                f3634e = null;
                f = null;
                f3631a = false;
            }
        } catch (ClassNotFoundException unused9) {
            method = null;
            field = null;
        } catch (NoSuchFieldException unused10) {
            method = null;
            field = null;
        } catch (NoSuchMethodException unused11) {
            method = null;
            field = null;
        }
        if (z2) {
            b = method;
            f3632c = field;
            f3633d = field2;
            f3634e = field3;
            f = field4;
            f3631a = true;
            return;
        }
        b = null;
        f3632c = null;
        f3633d = null;
        f3634e = null;
        f = null;
        f3631a = false;
    }
}
