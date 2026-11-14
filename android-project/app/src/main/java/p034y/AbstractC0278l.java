package p034y;

import android.view.ViewGroup;

/* JADX INFO: renamed from: y.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0278l {
    public static int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.getLayoutDirection();
    }

    public static int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.getMarginEnd();
    }

    public static int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.getMarginStart();
    }

    public static boolean d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.isMarginRelative();
    }

    public static void e(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.resolveLayoutDirection(i2);
    }

    public static void f(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.setLayoutDirection(i2);
    }

    public static void g(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.setMarginEnd(i2);
    }

    public static void h(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.setMarginStart(i2);
    }
}
