package T;

import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: T.l4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0096l4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1041a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f1042c;

    public C0096l4(int i2, String str, Drawable drawable) {
        this.f1041a = i2;
        this.b = str;
        this.f1042c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0096l4)) {
            return false;
        }
        C0096l4 c0096l4 = (C0096l4) obj;
        return this.f1041a == c0096l4.f1041a && I0.f.a(this.b, c0096l4.b) && I0.f.a(this.f1042c, c0096l4.f1042c);
    }

    public final int hashCode() {
        int iB = M.d0.b(Integer.hashCode(this.f1041a) * 31, 31, this.b);
        Drawable drawable = this.f1042c;
        return iB + (drawable == null ? 0 : drawable.hashCode());
    }

    public final String toString() {
        return "Recent(taskId=" + this.f1041a + ", label=" + this.b + ", icon=" + this.f1042c + ')';
    }
}
