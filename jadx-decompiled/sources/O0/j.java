package O0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends s {
    public static final int A0(CharSequence charSequence, String str, int i2, boolean z2) {
        I0.f.e(charSequence, "<this>");
        I0.f.e(str, "string");
        if (!z2 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i2);
        }
        int length = charSequence.length();
        if (i2 < 0) {
            i2 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        L0.c cVar = new L0.c(i2, length, 1);
        boolean z3 = charSequence instanceof String;
        int i3 = cVar.b;
        if (!z3) {
            if (i2 <= i3) {
                while (!J0(str, charSequence, i2, str.length(), z2)) {
                    if (i2 != i3) {
                        i2++;
                    }
                }
                return i2;
            }
            return -1;
        }
        if (i2 <= i3) {
            while (!s.t0(0, i, str.length(), str, (String) charSequence, z2)) {
                if (i2 != i3) {
                    i2++;
                }
            }
            return i2;
        }
        return -1;
    }

    public static /* synthetic */ int B0(CharSequence charSequence, String str, int i2, boolean z2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return A0(charSequence, str, i2, z2);
    }

    public static int C0(String str, char c2, int i2, boolean z2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        I0.f.e(str, "<this>");
        return !z2 ? str.indexOf(c2, i2) : D0(str, new char[]{c2}, i2, z2);
    }

    public static final int D0(CharSequence charSequence, char[] cArr, int i2, boolean z2) {
        I0.f.e(charSequence, "<this>");
        if (!z2 && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length != 1) {
                throw new IllegalArgumentException("Array has more than one element.");
            }
            return ((String) charSequence).indexOf(cArr[0], i2);
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iZ0 = z0(charSequence);
        if (i2 > iZ0) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i2);
            for (char c2 : cArr) {
                if (A.b.v(c2, cCharAt, z2)) {
                    return i2;
                }
            }
            if (i2 == iZ0) {
                return -1;
            }
            i2++;
        }
    }

    public static boolean E0(CharSequence charSequence) {
        I0.f.e(charSequence, "<this>");
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (!A.b.I(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static int F0(String str, char c2) {
        int iZ0 = z0(str);
        I0.f.e(str, "<this>");
        return str.lastIndexOf(c2, iZ0);
    }

    public static N0.c G0(CharSequence charSequence) {
        I0.f.e(charSequence, "<this>");
        return new N0.c(I0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0), new k(charSequence, 1), 3);
    }

    public static List H0(String str) {
        I0.f.e(str, "<this>");
        return N0.h.n0(G0(str));
    }

    public static c I0(CharSequence charSequence, String[] strArr, boolean z2, int i2) {
        L0(i2);
        return new c(charSequence, 0, i2, new t(w0.h.T(strArr), z2, 1));
    }

    public static final boolean J0(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z2) {
        I0.f.e(charSequence, "<this>");
        I0.f.e(charSequence2, "other");
        if (i2 < 0 || charSequence.length() - i3 < 0 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!A.b.v(charSequence.charAt(i4), charSequence2.charAt(i2 + i4), z2)) {
                return false;
            }
        }
        return true;
    }

    public static String K0(String str, String str2) {
        I0.f.e(str, "<this>");
        if (!s.w0(str, str2)) {
            return str;
        }
        String strSubstring = str.substring(str2.length());
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void L0(int i2) {
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2).toString());
    }

    public static final List M0(int i2, String str, String str2, boolean z2) {
        L0(i2);
        int length = 0;
        int iA0 = A0(str, str2, 0, z2);
        if (iA0 == -1 || i2 == 1) {
            return AbstractC0201a.G(str.toString());
        }
        boolean z3 = i2 > 0;
        int i3 = 10;
        if (z3 && i2 <= 10) {
            i3 = i2;
        }
        ArrayList arrayList = new ArrayList(i3);
        do {
            arrayList.add(str.subSequence(length, iA0).toString());
            length = str2.length() + iA0;
            if (z3 && arrayList.size() == i2 - 1) {
                break;
            }
            iA0 = A0(str, str2, length, z2);
        } while (iA0 != -1);
        arrayList.add(str.subSequence(length, str.length()).toString());
        return arrayList;
    }

    public static List N0(String str, char[] cArr) {
        I0.f.e(str, "<this>");
        boolean z2 = false;
        if (cArr.length == 1) {
            return M0(0, str, String.valueOf(cArr[0]), false);
        }
        L0(0);
        N0.j jVar = new N0.j(new c(str, 0, 0, new t(cArr, z2, 0)), 0);
        ArrayList arrayList = new ArrayList(w0.k.V(jVar));
        Iterator it = jVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(P0(str, (L0.c) bVar.next()));
        }
    }

    public static List O0(String str, String[] strArr) {
        I0.f.e(str, "<this>");
        if (strArr.length == 1) {
            String str2 = strArr[0];
            if (str2.length() != 0) {
                return M0(0, str, str2, false);
            }
        }
        N0.j jVar = new N0.j(I0(str, strArr, false, 0), 0);
        ArrayList arrayList = new ArrayList(w0.k.V(jVar));
        Iterator it = jVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(P0(str, (L0.c) bVar.next()));
        }
    }

    public static final String P0(CharSequence charSequence, L0.c cVar) {
        I0.f.e(charSequence, "<this>");
        I0.f.e(cVar, "range");
        return charSequence.subSequence(cVar.f133a, cVar.b + 1).toString();
    }

    public static String Q0(String str, char c2, String str2) {
        I0.f.e(str2, "missingDelimiterValue");
        int iC0 = C0(str, c2, 0, false, 6);
        if (iC0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(iC0 + 1, str.length());
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String R0(String str, String str2) {
        I0.f.e(str, "<this>");
        I0.f.e(str, "missingDelimiterValue");
        int iB0 = B0(str, str2, 0, false, 6);
        if (iB0 == -1) {
            return str;
        }
        String strSubstring = str.substring(str2.length() + iB0, str.length());
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String S0(String str, char c2) {
        I0.f.e(str, "<this>");
        I0.f.e(str, "missingDelimiterValue");
        int iF0 = F0(str, c2);
        if (iF0 == -1) {
            return str;
        }
        String strSubstring = str.substring(iF0 + 1, str.length());
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String T0(String str, String str2) {
        I0.f.e(str, "<this>");
        I0.f.e(str, "missingDelimiterValue");
        int iB0 = B0(str, str2, 0, false, 6);
        if (iB0 == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iB0);
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String U0(String str) {
        int iF0 = F0(str, '/');
        if (iF0 == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iF0);
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String V0(int i2, String str) {
        I0.f.e(str, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Requested character count " + i2 + " is less than zero.").toString());
        }
        int length = str.length();
        if (i2 > length) {
            i2 = length;
        }
        String strSubstring = str.substring(0, i2);
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String W0(int i2, String str) {
        I0.f.e(str, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Requested character count " + i2 + " is less than zero.").toString());
        }
        int length = str.length();
        if (i2 > length) {
            i2 = length;
        }
        String strSubstring = str.substring(length - i2);
        I0.f.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence X0(CharSequence charSequence) {
        I0.f.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z2 = false;
        while (i2 <= length) {
            boolean zI = A.b.I(charSequence.charAt(!z2 ? i2 : length));
            if (z2) {
                if (!zI) {
                    break;
                }
                length--;
            } else if (zI) {
                i2++;
            } else {
                z2 = true;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static CharSequence Y0(String str) {
        I0.f.e(str, "<this>");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i2 = length - 1;
                if (!A.b.I(str.charAt(length))) {
                    return str.subSequence(0, length + 1);
                }
                if (i2 >= 0) {
                    length = i2;
                }
            }
        }
        return "";
    }

    public static String Z0(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        int length = str.length() - 1;
        if (length < 0) {
            charSequenceSubSequence = "";
            break;
        }
        while (true) {
            int i2 = length - 1;
            char cCharAt = str.charAt(length);
            int length2 = cArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    i3 = -1;
                    break;
                }
                if (cCharAt == cArr[i3]) {
                    break;
                }
                i3++;
            }
            if (i3 < 0) {
                charSequenceSubSequence = str.subSequence(0, length + 1);
                break;
            }
            if (i2 < 0) {
                charSequenceSubSequence = "";
                break;
            }
            length = i2;
        }
        return charSequenceSubSequence.toString();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0067 A[EDGE_INSN: B:29:0x0067->B:30:0x0068 BREAK  A[LOOP:1: B:24:0x0057->B:28:0x0064]] */
    public static boolean x0(CharSequence charSequence, CharSequence charSequence2, boolean z2) {
        int i2;
        I0.f.e(charSequence, "<this>");
        I0.f.e(charSequence2, "other");
        boolean z3 = charSequence2 instanceof String;
        if (!z3) {
            int length = charSequence.length();
            int length2 = charSequence.length();
            if (length > length2) {
                length = length2;
            }
            L0.c cVar = new L0.c(0, length, 1);
            boolean z4 = charSequence instanceof String;
            int i3 = cVar.b;
            if (!z4 || !z3) {
                if (i3 >= 0) {
                    i2 = 0;
                    while (!J0(charSequence2, charSequence, i2, charSequence2.length(), z2)) {
                        if (i2 == i3) {
                            i2 = -1;
                            break;
                        }
                        i2++;
                    }
                } else {
                    i2 = -1;
                    break;
                }
            } else if (i3 >= 0) {
                i2 = 0;
                while (!s.t0(0, i2, ((String) charSequence2).length(), (String) charSequence2, (String) charSequence, z2)) {
                    if (i2 == i3) {
                        i2 = -1;
                        break;
                    }
                    i2++;
                }
            } else {
                i2 = -1;
                break;
            }
            if (i2 < 0) {
                return false;
            }
        } else if (B0(charSequence, (String) charSequence2, 0, z2, 2) < 0) {
            return false;
        }
        return true;
    }

    public static boolean y0(String str) {
        I0.f.e(str, "<this>");
        return C0(str, '?', 0, false, 2) >= 0;
    }

    public static final int z0(CharSequence charSequence) {
        I0.f.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }
}
