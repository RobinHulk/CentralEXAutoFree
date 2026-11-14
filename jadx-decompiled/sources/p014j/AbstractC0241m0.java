package p014j;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.sun.mail.iap.Response;
import java.lang.reflect.InvocationTargetException;
import s.e;
import s.f;

/* JADX INFO: renamed from: j.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0241m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f3641a = {R.attr.state_checked};
    public static final int[] b = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Rect f3642c = new Rect();

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 29 || i2 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f3641a);
        } else {
            drawable.setState(b);
        }
        drawable.setState(state);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rect b(Drawable drawable) {
        Object obj;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            Insets insetsA = AbstractC0239l0.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        if (drawable instanceof e) {
            obj = drawable;
            ((f) ((e) drawable)).getClass();
            obj = null;
        }
        if (i2 >= 29) {
            boolean z2 = AbstractC0237k0.f3631a;
        } else if (AbstractC0237k0.f3631a) {
            try {
                Object objInvoke = AbstractC0237k0.b.invoke(obj, null);
                if (objInvoke != null) {
                    return new Rect(AbstractC0237k0.f3632c.getInt(objInvoke), AbstractC0237k0.f3633d.getInt(objInvoke), AbstractC0237k0.f3634e.getInt(objInvoke), AbstractC0237k0.f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f3642c;
    }

    public static PorterDuff.Mode c(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case Response.BYE /* 16 */:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
