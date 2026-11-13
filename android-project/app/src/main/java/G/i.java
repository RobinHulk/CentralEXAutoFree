package G;

import android.widget.EditText;
import java.lang.ref.WeakReference;
import p014j.d1;

/* JADX INFO: loaded from: classes.dex */
public final class i extends androidx.emoji2.text.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f104a = 0;
    public final WeakReference b;

    public i(EditText editText) {
        this.b = new WeakReference(editText);
    }

    @Override // androidx.emoji2.text.f
    public void a() {
        switch (this.f104a) {
            case 1:
                d1 d1Var = (d1) this.b.get();
                if (d1Var != null) {
                    d1Var.c();
                }
                break;
        }
    }

    @Override // androidx.emoji2.text.f
    public final void b() {
        switch (this.f104a) {
            case 0:
                j.a((EditText) this.b.get(), 1);
                break;
            default:
                d1 d1Var = (d1) this.b.get();
                if (d1Var != null) {
                    d1Var.c();
                }
                break;
        }
    }

    public i(d1 d1Var) {
        this.b = new WeakReference(d1Var);
    }
}
