package p017k0;

import android.view.View;
import java.util.WeakHashMap;
import p034y.B;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class j implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        WeakHashMap weakHashMap = N.f4222a;
        B.c(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
