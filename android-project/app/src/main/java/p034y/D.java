package p034y;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import com.ex.auto.R;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class D {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static j0 b(View view, j0 j0Var, Rect rect) {
        WindowInsets windowInsetsF = j0Var.f();
        if (windowInsetsF != null) {
            return j0.g(view.computeSystemWindowInsets(windowInsetsF, rect), view);
        }
        rect.setEmpty();
        return j0Var;
    }

    public static boolean c(View view, float f, float f2, boolean z2) {
        return view.dispatchNestedFling(f, f2, z2);
    }

    public static boolean d(View view, float f, float f2) {
        return view.dispatchNestedPreFling(f, f2);
    }

    public static boolean e(View view, int i2, int i3, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i2, i3, iArr, iArr2);
    }

    public static boolean f(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        return view.dispatchNestedScroll(i2, i3, i4, i5, iArr);
    }

    public static ColorStateList g(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode h(View view) {
        return view.getBackgroundTintMode();
    }

    public static float i(View view) {
        return view.getElevation();
    }

    public static j0 j(View view) {
        b0 z2;
        if (!X.f4231d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = X.f4229a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) X.b.get(obj);
            Rect rect2 = (Rect) X.f4230c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                z2 = new a0();
            } else {
                z2 = i2 >= 29 ? new Z() : new Y();
            }
            z2.c(c.a(rect.left, rect.top, rect.right, rect.bottom));
            z2.d(c.a(rect2.left, rect2.top, rect2.right, rect2.bottom));
            j0 j0VarB = z2.b();
            j0VarB.f4257a.m(j0VarB);
            j0VarB.f4257a.d(view.getRootView());
            return j0VarB;
        } catch (IllegalAccessException e2) {
            Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e2.getMessage(), e2);
            return null;
        }
    }

    public static String k(View view) {
        return view.getTransitionName();
    }

    public static float l(View view) {
        return view.getTranslationZ();
    }

    public static float m(View view) {
        return view.getZ();
    }

    public static boolean n(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean o(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean p(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void q(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void r(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void s(View view, float f) {
        view.setElevation(f);
    }

    public static void t(View view, boolean z2) {
        view.setNestedScrollingEnabled(z2);
    }

    public static void u(View view, InterfaceC0283q interfaceC0283q) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, interfaceC0283q);
        }
        if (interfaceC0283q == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new C(view, interfaceC0283q));
        }
    }

    public static void v(View view, String str) {
        view.setTransitionName(str);
    }

    public static void w(View view, float f) {
        view.setTranslationZ(f);
    }

    public static void x(View view, float f) {
        view.setZ(f);
    }

    public static boolean y(View view, int i2) {
        return view.startNestedScroll(i2);
    }

    public static void z(View view) {
        view.stopNestedScroll();
    }
}
