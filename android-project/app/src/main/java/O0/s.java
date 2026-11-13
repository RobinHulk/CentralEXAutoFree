package O0;

/* JADX INFO: loaded from: classes.dex */
public abstract class s extends r {
    public static boolean r0(String str, String str2, boolean z2) {
        I0.f.e(str, "<this>");
        return !z2 ? str.endsWith(str2) : t0(str.length() - str2.length(), 0, str2.length(), str, str2, true);
    }

    public static boolean s0(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static final boolean t0(int i2, int i3, int i4, String str, String str2, boolean z2) {
        I0.f.e(str, "<this>");
        I0.f.e(str2, "other");
        return !z2 ? str.regionMatches(i2, str2, i3, i4) : str.regionMatches(z2, i2, str2, i3, i4);
    }

    public static String u0(String str, char c2) {
        String strReplace = str.replace(c2, '_');
        I0.f.d(strReplace, "replace(...)");
        return strReplace;
    }

    public static String v0(String str, String str2, String str3) {
        I0.f.e(str, "<this>");
        int iA0 = j.A0(str, str2, 0, false);
        if (iA0 < 0) {
            return str;
        }
        int length = str2.length();
        int i2 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i3 = 0;
        do {
            sb.append((CharSequence) str, i3, iA0);
            sb.append(str3);
            i3 = iA0 + length;
            if (iA0 >= str.length()) {
                break;
            }
            iA0 = j.A0(str, str2, iA0 + i2, false);
        } while (iA0 > 0);
        sb.append((CharSequence) str, i3, str.length());
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        return string;
    }

    public static boolean w0(String str, String str2) {
        I0.f.e(str, "<this>");
        I0.f.e(str2, "prefix");
        return str.startsWith(str2);
    }
}
