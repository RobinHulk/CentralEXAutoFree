package p029r0;

import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4115a;
    public final /* synthetic */ TextInputLayout b;

    public /* synthetic */ q(TextInputLayout textInputLayout, int i2) {
        this.f4115a = i2;
        this.b = textInputLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4115a) {
            case 0:
                TextInputLayout textInputLayout = this.b;
                textInputLayout.f2864e0.performClick();
                textInputLayout.f2864e0.jumpDrawablesToCurrentState();
                break;
            default:
                this.b.f2863e.requestLayout();
                break;
        }
    }
}
