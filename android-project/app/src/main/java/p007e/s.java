package p007e;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.h;
import androidx.activity.j;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, x xVar) {
        Objects.requireNonNull(xVar);
        j jVar = new j(xVar, 1);
        h.e(obj).registerOnBackInvokedCallback(1000000, jVar);
        return jVar;
    }

    public static void c(Object obj, Object obj2) {
        h.e(obj).unregisterOnBackInvokedCallback(h.b(obj2));
    }
}
