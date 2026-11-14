package O0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends A.b {
    public static String m0(String str, String str2) {
        I0.f.e(str, "<this>");
        return N0.h.m0(new N0.c(j.G0(str), new k(str2, 0), 3), "\n");
    }

    public static String n0(String str) {
        int length;
        Comparable comparable;
        String strSubstring;
        I0.f.e(str, "<this>");
        List listH0 = j.H0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listH0) {
            if (!j.E0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(w0.k.V(arrayList));
        Iterator it = arrayList.iterator();
        while (true) {
            length = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length2 = str2.length();
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (!A.b.I(str2.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str2.length();
            }
            arrayList2.add(Integer.valueOf(length));
        }
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listH0.size();
        int size = listH0.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listH0) {
            int i2 = length + 1;
            if (length < 0) {
                w0.j.U();
                throw null;
            }
            String str3 = (String) obj2;
            if ((length == 0 || length == size) && j.E0(str3)) {
                strSubstring = null;
            } else {
                I0.f.e(str3, "<this>");
                if (iIntValue < 0) {
                    throw new IllegalArgumentException(("Requested character count " + iIntValue + " is less than zero.").toString());
                }
                int length4 = str3.length();
                if (iIntValue <= length4) {
                    length4 = iIntValue;
                }
                strSubstring = str3.substring(length4);
                I0.f.d(strSubstring, "substring(...)");
            }
            if (strSubstring != null) {
                arrayList3.add(strSubstring);
            }
            length = i2;
        }
        StringBuilder sb = new StringBuilder(length3);
        w0.i.c0(arrayList3, sb, "\n", "", "", -1, "...", null);
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        return string;
    }
}
