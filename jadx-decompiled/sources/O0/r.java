package O0;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends q {
    public static Integer p0(String str) {
        byte b;
        boolean z2;
        int i2;
        I0.f.e(str, "<this>");
        A.b.i(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        int i4 = 1;
        if (cCharAt < '0') {
            b = -1;
        } else {
            b = cCharAt == '0' ? (byte) 0 : (byte) 1;
        }
        int i5 = -2147483647;
        if (b >= 0) {
            z2 = false;
            i4 = 0;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i5 = Integer.MIN_VALUE;
                z2 = true;
            }
        }
        int i6 = -59652323;
        while (i4 < length) {
            int iDigit = Character.digit((int) str.charAt(i4), 10);
            if (iDigit < 0) {
                return null;
            }
            if ((i3 < i6 && (i6 != -59652323 || i3 < (i6 = i5 / 10))) || (i2 = i3 * 10) < i5 + iDigit) {
                return null;
            }
            i3 = i2 - iDigit;
            i4++;
        }
        return z2 ? Integer.valueOf(i3) : Integer.valueOf(-i3);
    }

    public static Long q0(String str) {
        byte b;
        I0.f.e(str, "<this>");
        A.b.i(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        boolean z2 = true;
        if (cCharAt < '0') {
            b = -1;
        } else {
            b = cCharAt == '0' ? (byte) 0 : (byte) 1;
        }
        long j2 = -9223372036854775807L;
        if (b >= 0) {
            z2 = false;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
                i2 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j2 = Long.MIN_VALUE;
                i2 = 1;
            }
        }
        long j3 = -256204778801521550L;
        long j4 = 0;
        long j5 = -256204778801521550L;
        while (i2 < length) {
            int iDigit = Character.digit((int) str.charAt(i2), 10);
            if (iDigit < 0) {
                return null;
            }
            if (j4 < j5) {
                if (j5 != j3) {
                    return null;
                }
                j5 = j2 / ((long) 10);
                if (j4 < j5) {
                    return null;
                }
            }
            long j6 = j4 * ((long) 10);
            long j7 = iDigit;
            if (j6 < j2 + j7) {
                return null;
            }
            j4 = j6 - j7;
            i2++;
            j3 = -256204778801521550L;
        }
        return z2 ? Long.valueOf(j4) : Long.valueOf(-j4);
    }
}
