package p031u;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e b = new e(new f(d.a(new Locale[0])));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4137a;

    public e(f fVar) {
        this.f4137a = fVar;
    }

    public static e a(String str) {
        if (str == null || str.isEmpty()) {
            return b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i2 = 0; i2 < length; i2++) {
            localeArr[i2] = c.a(strArrSplit[i2]);
        }
        return new e(new f(d.a(localeArr)));
    }

    public final boolean b() {
        return this.f4137a.f4138a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            if (this.f4137a.equals(((e) obj).f4137a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4137a.f4138a.hashCode();
    }

    public final String toString() {
        return this.f4137a.f4138a.toString();
    }
}
