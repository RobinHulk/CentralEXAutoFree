package p034y;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class J {
    public static CharSequence a(View view) {
        return view.getStateDescription();
    }

    public static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }
}
