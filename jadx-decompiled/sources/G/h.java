package G;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class h extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f103c;

    public h(TextView textView) {
        this.f103c = new g(textView);
    }

    @Override // A.b
    public final boolean G() {
        return this.f103c.f102e;
    }

    @Override // A.b
    public final void c0(boolean z2) {
        if (androidx.emoji2.text.i.f1695j != null) {
            this.f103c.c0(z2);
        }
    }

    @Override // A.b
    public final void d0(boolean z2) {
        boolean z3 = androidx.emoji2.text.i.f1695j != null;
        g gVar = this.f103c;
        if (z3) {
            gVar.d0(z2);
        } else {
            gVar.f102e = z2;
        }
    }

    @Override // A.b
    public final TransformationMethod j0(TransformationMethod transformationMethod) {
        return !(androidx.emoji2.text.i.f1695j != null) ? transformationMethod : this.f103c.j0(transformationMethod);
    }

    @Override // A.b
    public final InputFilter[] y(InputFilter[] inputFilterArr) {
        return !(androidx.emoji2.text.i.f1695j != null) ? inputFilterArr : this.f103c.y(inputFilterArr);
    }
}
