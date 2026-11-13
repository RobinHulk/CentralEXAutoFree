package w0;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends AbstractC0201a {
    public static List T(Object[] objArr) {
        I0.f.e(objArr, "<this>");
        List listAsList = Arrays.asList(objArr);
        I0.f.d(listAsList, "asList(...)");
        return listAsList;
    }

    public static void U(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        I0.f.e(objArr, "<this>");
        I0.f.e(objArr2, "destination");
        System.arraycopy(objArr, i3, objArr2, i2, i4 - i3);
    }

    public static final void V(Object[] objArr, int i2, int i3) {
        I0.f.e(objArr, "<this>");
        Arrays.fill(objArr, i2, i3, (Object) null);
    }

    public static Object W(int i2, Object[] objArr) {
        I0.f.e(objArr, "<this>");
        if (i2 < 0 || i2 >= objArr.length) {
            return null;
        }
        return objArr[i2];
    }

    public static String X(byte[] bArr, H0.l lVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i2 = 0;
        for (byte b : bArr) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) "");
            }
            sb.append((CharSequence) lVar.b(Byte.valueOf(b)));
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        return string;
    }

    public static long Y(long[] jArr) {
        I0.f.e(jArr, "<this>");
        if (jArr.length != 0) {
            return jArr[jArr.length - 1];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static List Z(Object[] objArr, Comparator comparator) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, objArr.length);
            I0.f.d(objArr, "copyOf(...)");
            if (objArr.length > 1) {
                Arrays.sort(objArr, comparator);
            }
        }
        return T(objArr);
    }
}
