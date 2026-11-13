package p029r0;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f4085a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CheckableImageButton f4086c;

    public l(TextInputLayout textInputLayout) {
        this.f4085a = textInputLayout;
        this.b = textInputLayout.getContext();
        this.f4086c = textInputLayout.getEndIconView();
    }

    public abstract void a();

    public boolean b(int i2) {
        return true;
    }

    public void c(boolean z2) {
    }
}
