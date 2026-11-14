package p034y;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import p028r.c;

/* JADX INFO: loaded from: classes.dex */
public final class Y extends b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f4232c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f4233d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Constructor f4234e = null;
    public static boolean f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowInsets f4235a;
    public c b;

    public Y() {
        this.f4235a = e();
    }

    private static WindowInsets e() {
        if (!f4233d) {
            try {
                f4232c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e2) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
            }
            f4233d = true;
        }
        Field field = f4232c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e3) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
            }
        }
        if (!f) {
            try {
                f4234e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
            }
            f = true;
        }
        Constructor constructor = f4234e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e5) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
            }
        }
        return null;
    }

    @Override // p034y.b0
    public j0 b() {
        a();
        j0 j0VarG = j0.g(this.f4235a, null);
        i0 i0Var = j0VarG.f4257a;
        i0Var.l(null);
        i0Var.n(this.b);
        return j0VarG;
    }

    @Override // p034y.b0
    public void c(c cVar) {
        this.b = cVar;
    }

    @Override // p034y.b0
    public void d(c cVar) {
        WindowInsets windowInsets = this.f4235a;
        if (windowInsets != null) {
            this.f4235a = windowInsets.replaceSystemWindowInsets(cVar.f4042a, cVar.b, cVar.f4043c, cVar.f4044d);
        }
    }

    public Y(j0 j0Var) {
        super(j0Var);
        this.f4235a = j0Var.f();
    }
}
