package p034y;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 extends i0 {
    public static boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Method f4240g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Class f4241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Field f4242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Field f4243j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsets f4244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f4245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f4246e;

    public c0(j0 j0Var, WindowInsets windowInsets) {
        super(j0Var);
        this.f4245d = null;
        this.f4244c = windowInsets;
    }

    private c o(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f) {
            p();
        }
        Method method = f4240g;
        if (method != null && f4241h != null && f4242i != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f4242i.get(f4243j.get(objInvoke));
                if (rect != null) {
                    return c.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e2) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void p() {
        try {
            f4240g = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f4241h = cls;
            f4242i = cls.getDeclaredField("mVisibleInsets");
            f4243j = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f4242i.setAccessible(true);
            f4243j.setAccessible(true);
        } catch (ReflectiveOperationException e2) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
        }
        f = true;
    }

    @Override // p034y.i0
    public void d(View view) {
        c cVarO = o(view);
        if (cVarO == null) {
            cVarO = c.f4041e;
        }
        q(cVarO);
    }

    @Override // p034y.i0
    public final c h() {
        if (this.f4245d == null) {
            WindowInsets windowInsets = this.f4244c;
            this.f4245d = c.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f4245d;
    }

    @Override // p034y.i0
    public j0 i(int i2, int i3, int i4, int i5) {
        b0 z2;
        j0 j0VarG = j0.g(this.f4244c, null);
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            z2 = new a0(j0VarG);
        } else {
            z2 = i6 >= 29 ? new Z(j0VarG) : new Y(j0VarG);
        }
        z2.d(j0.e(h(), i2, i3, i4, i5));
        z2.c(j0.e(g(), i2, i3, i4, i5));
        return z2.b();
    }

    @Override // p034y.i0
    public boolean k() {
        return this.f4244c.isRound();
    }

    @Override // p034y.i0
    public void l(c[] cVarArr) {
    }

    @Override // p034y.i0
    public void m(j0 j0Var) {
    }

    public void q(c cVar) {
        this.f4246e = cVar;
    }
}
