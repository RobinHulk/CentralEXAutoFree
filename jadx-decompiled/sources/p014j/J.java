package p014j;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class J {
    public static int a(View view) {
        return view.getTextAlignment();
    }

    public static int b(View view) {
        return view.getTextDirection();
    }

    public static void c(View view, int i2) {
        view.setTextAlignment(i2);
    }

    public static void d(View view, int i2) {
        view.setTextDirection(i2);
    }
}
