package t0;

import java.util.NoSuchElementException;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4120a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Vector f4122d;

    public final boolean a() {
        if (this.f4122d.size() > 0) {
            return true;
        }
        while (true) {
            int i2 = this.f4120a;
            if (i2 >= this.b || !Character.isWhitespace(this.f4121c.charAt(i2))) {
                break;
            }
            this.f4120a++;
        }
        return this.f4120a < this.b;
    }

    public final String b() {
        Vector vector = this.f4122d;
        int size = vector.size();
        if (size > 0) {
            int i2 = size - 1;
            String str = (String) vector.elementAt(i2);
            vector.removeElementAt(i2);
            return str;
        }
        while (true) {
            int i3 = this.f4120a;
            if (i3 >= this.b || !Character.isWhitespace(this.f4121c.charAt(i3))) {
                break;
            }
            this.f4120a++;
        }
        int i4 = this.f4120a;
        int i5 = this.b;
        if (i4 >= i5) {
            throw new NoSuchElementException();
        }
        String str2 = this.f4121c;
        char cCharAt = str2.charAt(i4);
        if (cCharAt == '\"') {
            this.f4120a++;
            boolean z2 = false;
            while (true) {
                int i6 = this.f4120a;
                if (i6 >= i5) {
                    break;
                }
                this.f4120a = i6 + 1;
                char cCharAt2 = str2.charAt(i6);
                if (cCharAt2 == '\\') {
                    this.f4120a++;
                    z2 = true;
                } else if (cCharAt2 == '\"') {
                    if (!z2) {
                        return str2.substring(i4 + 1, this.f4120a - 1);
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    for (int i7 = i4 + 1; i7 < this.f4120a - 1; i7++) {
                        char cCharAt3 = str2.charAt(i7);
                        if (cCharAt3 != '\\') {
                            stringBuffer.append(cCharAt3);
                        }
                    }
                    return stringBuffer.toString();
                }
            }
        } else if ("=".indexOf(cCharAt) >= 0) {
            this.f4120a++;
        } else {
            while (true) {
                int i8 = this.f4120a;
                if (i8 >= i5 || "=".indexOf(str2.charAt(i8)) >= 0 || Character.isWhitespace(str2.charAt(this.f4120a))) {
                    break;
                }
                this.f4120a++;
            }
        }
        return str2.substring(i4, this.f4120a);
    }
}
