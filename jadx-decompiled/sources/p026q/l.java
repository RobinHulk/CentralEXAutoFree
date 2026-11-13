package p026q;

import android.content.res.Resources;
import p033x.b;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f4024a;
    public final Resources.Theme b;

    public l(Resources resources, Resources.Theme theme) {
        this.f4024a = resources;
        this.b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f4024a.equals(lVar.f4024a) && b.a(this.b, lVar.b);
    }

    public final int hashCode() {
        return b.b(this.f4024a, this.b);
    }
}
