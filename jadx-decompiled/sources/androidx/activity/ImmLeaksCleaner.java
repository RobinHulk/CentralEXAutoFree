package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.o;
import androidx.lifecycle.q;

/* JADX INFO: loaded from: classes.dex */
final class ImmLeaksCleaner implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1405a;

    @Override // androidx.lifecycle.o
    public final void b(q qVar, androidx.lifecycle.k kVar) {
        if (kVar != androidx.lifecycle.k.ON_DESTROY) {
            return;
        }
        if (f1405a == 0) {
            try {
                f1405a = 2;
                InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                f1405a = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f1405a == 1) {
            throw null;
        }
    }
}
