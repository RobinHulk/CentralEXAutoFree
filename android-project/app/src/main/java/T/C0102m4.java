package T;

import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: T.m4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0102m4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1056a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f1057c;

    public C0102m4(String str, String str2, Drawable drawable) {
        I0.f.e(str, "pkg");
        I0.f.e(str2, "label");
        this.f1056a = str;
        this.b = str2;
        this.f1057c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0102m4)) {
            return false;
        }
        C0102m4 c0102m4 = (C0102m4) obj;
        return I0.f.a(this.f1056a, c0102m4.f1056a) && I0.f.a(this.b, c0102m4.b) && I0.f.a(this.f1057c, c0102m4.f1057c);
    }

    public final int hashCode() {
        return this.f1057c.hashCode() + M.d0.b(this.f1056a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "Fav(pkg=" + this.f1056a + ", label=" + this.b + ", icon=" + this.f1057c + ')';
    }
}
