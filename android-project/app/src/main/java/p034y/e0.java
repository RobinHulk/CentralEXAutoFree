package p034y;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class e0 extends d0 {
    public e0(j0 j0Var, WindowInsets windowInsets) {
        super(j0Var, windowInsets);
    }

    @Override // p034y.i0
    public j0 a() {
        return j0.g(this.f4244c.consumeDisplayCutout(), null);
    }

    @Override // p034y.i0
    public C0275i e() {
        DisplayCutout displayCutout = this.f4244c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0275i(displayCutout);
    }

    @Override // p034y.i0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return Objects.equals(this.f4244c, e0Var.f4244c) && Objects.equals(this.f4246e, e0Var.f4246e);
    }

    @Override // p034y.i0
    public int hashCode() {
        return this.f4244c.hashCode();
    }
}
