package p014j;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f3699a;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f3699a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
        }
    }

    public static boolean a(View view) {
        WeakHashMap weakHashMap = N.f4222a;
        return AbstractC0291z.d(view) == 1;
    }
}
