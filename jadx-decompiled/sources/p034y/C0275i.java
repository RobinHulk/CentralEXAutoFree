package p034y;

import android.view.DisplayCutout;
import p033x.b;

/* JADX INFO: renamed from: y.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0275i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayCutout f4255a;

    public C0275i(DisplayCutout displayCutout) {
        this.f4255a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0275i.class != obj.getClass()) {
            return false;
        }
        return b.a(this.f4255a, ((C0275i) obj).f4255a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f4255a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f4255a + "}";
    }
}
