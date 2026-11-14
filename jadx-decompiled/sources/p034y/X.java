package p034y;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f4229a;
    public static final Field b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f4230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f4231d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f4229a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f4230c = declaredField3;
            declaredField3.setAccessible(true);
            f4231d = true;
        } catch (ReflectiveOperationException e2) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e2.getMessage(), e2);
        }
    }
}
