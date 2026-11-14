package p014j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* JADX INFO: renamed from: j.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0251s {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static C0251s f3680c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public M0 f3681a;

    public static synchronized C0251s a() {
        try {
            if (f3680c == null) {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3680c;
    }

    public static synchronized PorterDuffColorFilter c(int i2, PorterDuff.Mode mode) {
        return M0.e(i2, mode);
    }

    public static synchronized void d() {
        if (f3680c == null) {
            C0251s c0251s = new C0251s();
            f3680c = c0251s;
            c0251s.f3681a = M0.b();
            M0 m1 = f3680c.f3681a;
            r rVar = new r();
            synchronized (m1) {
                m1.f3470e = rVar;
            }
        }
    }

    public static void e(Drawable drawable, g1 g1Var, int[] iArr) {
        PorterDuff.Mode mode = M0.f;
        int[] state = drawable.getState();
        int[] iArr2 = AbstractC0241m0.f3641a;
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z2 = g1Var.f3605d;
        if (!z2 && !g1Var.f3604c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterE = null;
        ColorStateList colorStateList = z2 ? g1Var.f3603a : null;
        PorterDuff.Mode mode2 = g1Var.f3604c ? g1Var.b : M0.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterE = M0.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterE);
    }

    public final synchronized Drawable b(Context context, int i2) {
        return this.f3681a.c(context, i2);
    }
}
