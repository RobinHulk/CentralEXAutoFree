package com.sun.mail.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ASCIIUtility {
    private ASCIIUtility() {
    }

    public static byte[] getBytes(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) charArray[i2];
        }
        return bArr;
    }

    public static int parseInt(byte[] bArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        boolean z2;
        if (bArr == null) {
            throw new NumberFormatException("null");
        }
        if (i3 <= i2) {
            throw new NumberFormatException("illegal number");
        }
        int i7 = 0;
        if (bArr[i2] == 45) {
            i6 = i2 + 1;
            i5 = Integer.MIN_VALUE;
            z2 = true;
        } else {
            i5 = -2147483647;
            i6 = i2;
            z2 = false;
        }
        int i8 = i5 / i4;
        if (i6 < i3) {
            int i9 = i6 + 1;
            int iDigit = Character.digit((char) bArr[i6], i4);
            if (iDigit < 0) {
                throw new NumberFormatException("illegal number: " + toString(bArr, i2, i3));
            }
            i7 = -iDigit;
            i6 = i9;
        }
        while (i6 < i3) {
            int i10 = i6 + 1;
            int iDigit2 = Character.digit((char) bArr[i6], i4);
            if (iDigit2 < 0) {
                throw new NumberFormatException("illegal number");
            }
            if (i7 < i8) {
                throw new NumberFormatException("illegal number");
            }
            int i11 = i7 * i4;
            if (i11 < i5 + iDigit2) {
                throw new NumberFormatException("illegal number");
            }
            i7 = i11 - iDigit2;
            i6 = i10;
        }
        if (!z2) {
            return -i7;
        }
        if (i6 > i2 + 1) {
            return i7;
        }
        throw new NumberFormatException("illegal number");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0060  */
    /* JADX WARN: Code duplicated, block: B:26:0x0068  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0068 -> B:15:0x0033). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static long parseLong(byte[] r18, int r19, int r20, int r21) {
        /*
            r0 = r19
            r1 = r20
            r2 = r21
            if (r18 == 0) goto L94
            java.lang.String r3 = "illegal number"
            if (r1 <= r0) goto L8e
            r4 = r18[r0]
            r5 = 45
            r6 = 1
            if (r4 != r5) goto L19
            int r4 = r0 + 1
            r7 = -9223372036854775808
            r5 = r6
            goto L21
        L19:
            r4 = 0
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r4
            r4 = r0
        L21:
            long r9 = (long) r2
            long r11 = r7 / r9
            if (r4 >= r1) goto L4d
            int r13 = r4 + 1
            r4 = r18[r4]
            char r4 = (char) r4
            int r4 = java.lang.Character.digit(r4, r2)
            if (r4 < 0) goto L35
            int r4 = -r4
            long r14 = (long) r4
        L33:
            r4 = r13
            goto L4f
        L35:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "illegal number: "
            r3.<init>(r4)
            java.lang.String r0 = toString(r18, r19, r20)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        L4d:
            r14 = 0
        L4f:
            if (r4 >= r1) goto L80
            int r13 = r4 + 1
            r4 = r18[r4]
            char r4 = (char) r4
            int r4 = java.lang.Character.digit(r4, r2)
            if (r4 < 0) goto L7a
            int r16 = (r14 > r11 ? 1 : (r14 == r11 ? 0 : -1))
            if (r16 < 0) goto L74
            long r14 = r14 * r9
            long r1 = (long) r4
            long r16 = r7 + r1
            int r4 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r4 < 0) goto L6e
            long r14 = r14 - r1
            r1 = r20
            r2 = r21
            goto L33
        L6e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>(r3)
            throw r0
        L74:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>(r3)
            throw r0
        L7a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>(r3)
            throw r0
        L80:
            if (r5 == 0) goto L8c
            int r0 = r0 + r6
            if (r4 <= r0) goto L86
            return r14
        L86:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>(r3)
            throw r0
        L8c:
            long r0 = -r14
            return r0
        L8e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>(r3)
            throw r0
        L94:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "null"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.ASCIIUtility.parseLong(byte[], int, int, int):long");
    }

    public static String toString(byte[] bArr, int i2, int i3) {
        int i4 = i3 - i2;
        char[] cArr = new char[i4];
        int i5 = 0;
        while (i5 < i4) {
            cArr[i5] = (char) (bArr[i2] & 255);
            i5++;
            i2++;
        }
        return new String(cArr);
    }

    public static String toString(byte[] bArr) {
        return toString(bArr, 0, bArr.length);
    }

    public static byte[] getBytes(InputStream inputStream) throws IOException {
        if (inputStream instanceof ByteArrayInputStream) {
            int iAvailable = inputStream.available();
            byte[] bArr = new byte[iAvailable];
            inputStream.read(bArr, 0, iAvailable);
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr2, 0, 1024);
            if (i2 != -1) {
                byteArrayOutputStream.write(bArr2, 0, i2);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static String toString(ByteArrayInputStream byteArrayInputStream) {
        int iAvailable = byteArrayInputStream.available();
        char[] cArr = new char[iAvailable];
        byte[] bArr = new byte[iAvailable];
        byteArrayInputStream.read(bArr, 0, iAvailable);
        for (int i2 = 0; i2 < iAvailable; i2++) {
            cArr[i2] = (char) (bArr[i2] & 255);
        }
        return new String(cArr);
    }

    public static int parseInt(byte[] bArr, int i2, int i3) {
        return parseInt(bArr, i2, i3, 10);
    }

    public static long parseLong(byte[] bArr, int i2, int i3) {
        return parseLong(bArr, i2, i3, 10);
    }
}
