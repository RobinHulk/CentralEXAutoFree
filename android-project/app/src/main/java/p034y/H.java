package p034y;

import android.view.View;
import com.ex.auto.R;
import java.util.Objects;
import p020m.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class H {
    public static void a(View view, M m2) {
        k kVar = (k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (kVar == null) {
            kVar = new k();
            view.setTag(R.id.tag_unhandled_key_listeners, kVar);
        }
        Objects.requireNonNull(m2);
        View.OnUnhandledKeyEventListener g2 = new G();
        kVar.put(m2, g2);
        view.addOnUnhandledKeyEventListener(g2);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, M m2) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        k kVar = (k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (kVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) kVar.getOrDefault(m2, null)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i2) {
        return (T) view.requireViewById(i2);
    }

    public static void g(View view, boolean z2) {
        view.setAccessibilityHeading(z2);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, boolean z2) {
        view.setScreenReaderFocusable(z2);
    }
}
