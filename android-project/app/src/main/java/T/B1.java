package T;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class B1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f480a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f483e;

    public B1(String str, String str2, Drawable drawable, float f, boolean z2) {
        I0.f.e(str2, "label");
        this.f480a = str;
        this.b = str2;
        this.f481c = drawable;
        this.f482d = f;
        this.f483e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B1)) {
            return false;
        }
        B1 b1 = (B1) obj;
        return I0.f.a(this.f480a, b1.f480a) && I0.f.a(this.b, b1.b) && I0.f.a(this.f481c, b1.f481c) && Float.compare(this.f482d, b1.f482d) == 0 && this.f483e == b1.f483e;
    }

    public final int hashCode() {
        int iB = M.d0.b(this.f480a.hashCode() * 31, 31, this.b);
        Drawable drawable = this.f481c;
        return Boolean.hashCode(this.f483e) + ((Float.hashCode(this.f482d) + ((iB + (drawable == null ? 0 : drawable.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        return "AppCpu(pkg=" + this.f480a + ", label=" + this.b + ", icon=" + this.f481c + ", pct=" + this.f482d + ", isSystem=" + this.f483e + ')';
    }
}
