package com.sun.mail.auth;

import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import com.sun.mail.util.MailLogger;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Locale;
import java.util.Random;
import java.util.logging.Level;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class Ntlm {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final byte HIRESPONSERVERSION = 1;
    private static final int NTLMSSP_NEGOTIATE_128 = 536870912;
    private static final int NTLMSSP_NEGOTIATE_56 = Integer.MIN_VALUE;
    private static final int NTLMSSP_NEGOTIATE_ALWAYS_SIGN = 32768;
    private static final int NTLMSSP_NEGOTIATE_DATAGRAM = 64;
    private static final int NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY = 524288;
    private static final int NTLMSSP_NEGOTIATE_IDENTIFY = 1048576;
    private static final int NTLMSSP_NEGOTIATE_KEY_EXCH = 1073741824;
    private static final int NTLMSSP_NEGOTIATE_LM_KEY = 128;
    private static final int NTLMSSP_NEGOTIATE_NTLM = 512;
    private static final int NTLMSSP_NEGOTIATE_OEM = 2;
    private static final int NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED = 4096;
    private static final int NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED = 8192;
    private static final int NTLMSSP_NEGOTIATE_SEAL = 32;
    private static final int NTLMSSP_NEGOTIATE_SIGN = 16;
    private static final int NTLMSSP_NEGOTIATE_TARGET_INFO = 8388608;
    private static final int NTLMSSP_NEGOTIATE_UNICODE = 1;
    private static final int NTLMSSP_NEGOTIATE_VERSION = 33554432;
    private static final int NTLMSSP_REQUEST_NON_NT_SESSION_KEY = 4194304;
    private static final int NTLMSSP_REQUEST_TARGET = 4;
    private static final int NTLMSSP_TARGET_TYPE_DOMAIN = 65536;
    private static final int NTLMSSP_TARGET_TYPE_SERVER = 131072;
    private static final byte RESPONSERVERSION = 1;
    private Cipher cipher;
    private SecretKeyFactory fac;
    private Mac hmac;
    private String hostname;
    private MailLogger logger;
    private MD4 md4;
    private String ntdomain;
    private String password;
    private byte[] type1;
    private byte[] type3;
    private String username;
    private static final byte[] Z6 = {0, 0, 0, 0, 0, 0};
    private static final byte[] Z4 = {0, 0, 0, 0};
    private static char[] hex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public Ntlm(String str, String str2, String str3, String str4, MailLogger mailLogger) {
        int iIndexOf = str2.indexOf(46);
        str2 = iIndexOf != -1 ? str2.substring(0, iIndexOf) : str2;
        int iIndexOf2 = str3.indexOf(92);
        if (iIndexOf2 != -1) {
            str = str3.substring(0, iIndexOf2).toUpperCase(Locale.ENGLISH);
            str3 = str3.substring(iIndexOf2 + 1);
        } else if (str == null) {
            str = "";
        }
        this.ntdomain = str;
        this.hostname = str2;
        this.username = str3;
        this.password = str4;
        this.logger = mailLogger.getLogger(getClass(), "DEBUG NTLM");
        init0();
    }

    private byte[] calcLMHash() throws BadPaddingException, InvalidKeySpecException, IllegalBlockSizeException, InvalidKeyException {
        byte[] bytes;
        byte[] bArr = {75, 71, 83, 33, 64, 35, 36, 37};
        try {
            bytes = this.password.toUpperCase(Locale.ENGLISH).getBytes("iso-8859-1");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        byte[] bArr2 = new byte[14];
        int length = this.password.length();
        System.arraycopy(bytes, 0, bArr2, 0, length <= 14 ? length : 14);
        DESKeySpec dESKeySpec = new DESKeySpec(makeDesKey(bArr2, 0));
        DESKeySpec dESKeySpec2 = new DESKeySpec(makeDesKey(bArr2, 7));
        SecretKey secretKeyGenerateSecret = this.fac.generateSecret(dESKeySpec);
        SecretKey secretKeyGenerateSecret2 = this.fac.generateSecret(dESKeySpec2);
        this.cipher.init(1, secretKeyGenerateSecret);
        byte[] bArrDoFinal = this.cipher.doFinal(bArr, 0, 8);
        this.cipher.init(1, secretKeyGenerateSecret2);
        byte[] bArrDoFinal2 = this.cipher.doFinal(bArr, 0, 8);
        byte[] bArr3 = new byte[21];
        System.arraycopy(bArrDoFinal, 0, bArr3, 0, 8);
        System.arraycopy(bArrDoFinal2, 0, bArr3, 8, 8);
        return bArr3;
    }

    private byte[] calcNTHash() {
        byte[] bytes;
        try {
            bytes = this.password.getBytes("UnicodeLittleUnmarked");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        byte[] bArr = new byte[21];
        System.arraycopy(this.md4.digest(bytes), 0, bArr, 0, 16);
        return bArr;
    }

    private byte[] calcResponse(byte[] bArr, byte[] bArr2) throws BadPaddingException, InvalidKeySpecException, IllegalBlockSizeException, InvalidKeyException {
        DESKeySpec dESKeySpec = new DESKeySpec(makeDesKey(bArr, 0));
        DESKeySpec dESKeySpec2 = new DESKeySpec(makeDesKey(bArr, 7));
        DESKeySpec dESKeySpec3 = new DESKeySpec(makeDesKey(bArr, 14));
        SecretKey secretKeyGenerateSecret = this.fac.generateSecret(dESKeySpec);
        SecretKey secretKeyGenerateSecret2 = this.fac.generateSecret(dESKeySpec2);
        SecretKey secretKeyGenerateSecret3 = this.fac.generateSecret(dESKeySpec3);
        this.cipher.init(1, secretKeyGenerateSecret);
        byte[] bArrDoFinal = this.cipher.doFinal(bArr2, 0, 8);
        this.cipher.init(1, secretKeyGenerateSecret2);
        byte[] bArrDoFinal2 = this.cipher.doFinal(bArr2, 0, 8);
        this.cipher.init(1, secretKeyGenerateSecret3);
        byte[] bArrDoFinal3 = this.cipher.doFinal(bArr2, 0, 8);
        byte[] bArr3 = new byte[24];
        System.arraycopy(bArrDoFinal, 0, bArr3, 0, 8);
        System.arraycopy(bArrDoFinal2, 0, bArr3, 8, 8);
        System.arraycopy(bArrDoFinal3, 0, bArr3, 16, 8);
        return bArr3;
    }

    private byte[] calcV2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bytes;
        try {
            bytes = (this.username.toUpperCase(Locale.ENGLISH) + this.ntdomain).getBytes("UnicodeLittleUnmarked");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        byte[] bArrHmacMD5 = hmacMD5(bArr, bytes);
        byte[] bArr4 = new byte[bArr2.length + 8];
        System.arraycopy(bArr3, 0, bArr4, 0, 8);
        System.arraycopy(bArr2, 0, bArr4, 8, bArr2.length);
        byte[] bArr5 = new byte[bArr2.length + 16];
        System.arraycopy(hmacMD5(bArrHmacMD5, bArr4), 0, bArr5, 0, 16);
        System.arraycopy(bArr2, 0, bArr5, 16, bArr2.length);
        return bArr5;
    }

    private void copybytes(byte[] bArr, int i2, String str, String str2) {
        try {
            byte[] bytes = str.getBytes(str2);
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
        } catch (UnsupportedEncodingException unused) {
        }
    }

    private byte[] hmacMD5(byte[] bArr, byte[] bArr2) {
        try {
            if (this.hmac == null) {
                this.hmac = Mac.getInstance("HmacMD5");
            }
            int length = 16;
            try {
                byte[] bArr3 = new byte[16];
                if (bArr.length <= 16) {
                    length = bArr.length;
                }
                System.arraycopy(bArr, 0, bArr3, 0, length);
                this.hmac.init(new SecretKeySpec(bArr3, "HmacMD5"));
                return this.hmac.doFinal(bArr2);
            } catch (RuntimeException | InvalidKeyException unused) {
                return null;
            }
        } catch (NoSuchAlgorithmException unused2) {
            throw new AssertionError();
        }
    }

    private void init0() {
        byte[] bArr = new byte[256];
        this.type1 = bArr;
        this.type3 = new byte[NTLMSSP_NEGOTIATE_NTLM];
        System.arraycopy(new byte[]{78, 84, 76, 77, 83, 83, 80, 0, 1}, 0, bArr, 0, 9);
        System.arraycopy(new byte[]{78, 84, 76, 77, 83, 83, 80, 0, 3}, 0, this.type3, 0, 9);
        try {
            this.fac = SecretKeyFactory.getInstance("DES");
            this.cipher = Cipher.getInstance("DES/ECB/NoPadding");
            this.md4 = new MD4();
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 1231. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private byte[] makeDesKey(byte[] r18, int r19) {
        /*
            r17 = this;
            r0 = r18
            r1 = 7
            r2 = 6
            r3 = 4
            r4 = 3
            r5 = 5
            r6 = 2
            r7 = 1
            int r8 = r0.length
            int[] r9 = new int[r8]
            r10 = 0
            r11 = r10
        Le:
            if (r11 >= r8) goto L1a
            r12 = r0[r11]
            if (r12 >= 0) goto L16
            int r12 = r12 + 256
        L16:
            r9[r11] = r12
            int r11 = r11 + r7
            goto Le
        L1a:
            r0 = r9[r19]
            byte r8 = (byte) r0
            int r0 = r0 << r1
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r11 = r19 + 1
            r11 = r9[r11]
            int r12 = r11 >> 1
            r0 = r0 | r12
            byte r0 = (byte) r0
            int r11 = r11 << r2
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r12 = r19 + 2
            r12 = r9[r12]
            int r13 = r12 >> 2
            r11 = r11 | r13
            byte r11 = (byte) r11
            int r12 = r12 << r5
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r13 = r19 + 3
            r13 = r9[r13]
            int r14 = r13 >> 3
            r12 = r12 | r14
            byte r12 = (byte) r12
            int r13 = r13 << r3
            r13 = r13 & 255(0xff, float:3.57E-43)
            int r14 = r19 + 4
            r14 = r9[r14]
            int r15 = r14 >> 4
            r13 = r13 | r15
            byte r13 = (byte) r13
            int r14 = r14 << r4
            r14 = r14 & 255(0xff, float:3.57E-43)
            int r15 = r19 + 5
            r15 = r9[r15]
            int r16 = r15 >> 5
            r14 = r14 | r16
            byte r14 = (byte) r14
            int r15 = r15 << r6
            r15 = r15 & 255(0xff, float:3.57E-43)
            int r16 = r19 + 6
            r9 = r9[r16]
            int r16 = r9 >> 6
            r15 = r15 | r16
            byte r15 = (byte) r15
            int r9 = r9 << r7
            r9 = r9 & 255(0xff, float:3.57E-43)
            byte r9 = (byte) r9
            r1 = 8
            byte[] r1 = new byte[r1]
            r1[r10] = r8
            r1[r7] = r0
            r1[r6] = r11
            r1[r4] = r12
            r1[r3] = r13
            r1[r5] = r14
            r1[r2] = r15
            r0 = 7
            r1[r0] = r9
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.auth.Ntlm.makeDesKey(byte[], int):byte[]");
    }

    private static int readInt(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private static int readShort(byte[] bArr, int i2) {
        return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
    }

    private static String toHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 3);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            sb.append(hex[(bArr[i2] >> 4) & 15]);
            sb.append(hex[bArr[i2] & 15]);
            sb.append(' ');
        }
        return sb.toString();
    }

    private void writeInt(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 & 255);
        bArr[i2 + 1] = (byte) ((i3 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i3 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i3 >> 24) & 255);
    }

    private void writeShort(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 & 255);
        bArr[i2 + 1] = (byte) ((i3 >> 8) & 255);
    }

    public String generateType1Msg(int i2) {
        return generateType1Msg(i2, $assertionsDisabled);
    }

    public String generateType3Msg(String str) {
        byte[] bArrDecode;
        byte[] bArrCalcResponse;
        byte[] bArrCalcResponse2;
        int i2;
        try {
            try {
                bArrDecode = BASE64DecoderStream.decode(str.getBytes("us-ascii"));
            } catch (GeneralSecurityException e2) {
                this.logger.log(Level.FINE, "GeneralSecurityException", (Throwable) e2);
                return "";
            }
        } catch (UnsupportedEncodingException unused) {
            bArrDecode = null;
        }
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("type 2 message: " + toHex(bArrDecode));
        }
        byte[] bArr = new byte[8];
        int i3 = 0;
        System.arraycopy(bArrDecode, 24, bArr, 0, 8);
        int length = this.username.length() * 2;
        writeShort(this.type3, 36, length);
        writeShort(this.type3, 38, length);
        int length2 = this.ntdomain.length() * 2;
        writeShort(this.type3, 28, length2);
        writeShort(this.type3, 30, length2);
        int length3 = this.hostname.length() * 2;
        writeShort(this.type3, 44, length3);
        writeShort(this.type3, 46, length3);
        copybytes(this.type3, NTLMSSP_NEGOTIATE_DATAGRAM, this.ntdomain, "UnicodeLittleUnmarked");
        writeInt(this.type3, 32, NTLMSSP_NEGOTIATE_DATAGRAM);
        int i4 = length2 + NTLMSSP_NEGOTIATE_DATAGRAM;
        copybytes(this.type3, i4, this.username, "UnicodeLittleUnmarked");
        writeInt(this.type3, 40, i4);
        int i5 = i4 + length;
        copybytes(this.type3, i5, this.hostname, "UnicodeLittleUnmarked");
        writeInt(this.type3, 48, i5);
        int i6 = i5 + length3;
        int i7 = readInt(bArrDecode, 20);
        if ((NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY & i7) != 0) {
            this.logger.fine("Using NTLMv2");
            byte[] bArr2 = new byte[8];
            new Random().nextBytes(bArr2);
            byte[] bArrCalcNTHash = calcNTHash();
            bArrCalcResponse = calcV2Response(bArrCalcNTHash, bArr2, bArr);
            byte[] bArr3 = new byte[0];
            if ((i7 & NTLMSSP_NEGOTIATE_TARGET_INFO) != 0) {
                int i8 = readShort(bArrDecode, 40);
                byte[] bArr4 = new byte[i8];
                System.arraycopy(bArrDecode, readInt(bArrDecode, 44), bArr4, 0, i8);
                bArr3 = bArr4;
            }
            byte[] bArr5 = new byte[bArr3.length + 32];
            bArr5[0] = 1;
            bArr5[1] = 1;
            System.arraycopy(Z6, 0, bArr5, 2, 6);
            long jCurrentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
            int i9 = 0;
            while (i9 < 8) {
                bArr5[i9 + 8] = (byte) (jCurrentTimeMillis & 255);
                jCurrentTimeMillis >>= 8;
                i9++;
                i3 = 0;
            }
            int i10 = i3;
            System.arraycopy(bArr2, i10, bArr5, 16, 8);
            byte[] bArr6 = Z4;
            System.arraycopy(bArr6, i10, bArr5, 24, 4);
            System.arraycopy(bArr3, i10, bArr5, 28, bArr3.length);
            System.arraycopy(bArr6, i10, bArr5, bArr3.length + 28, 4);
            bArrCalcResponse2 = calcV2Response(bArrCalcNTHash, bArr5, bArr);
            i2 = 557569;
        } else {
            bArrCalcResponse = calcResponse(calcLMHash(), bArr);
            bArrCalcResponse2 = calcResponse(calcNTHash(), bArr);
            i2 = 33281;
        }
        byte[] bArr7 = bArrCalcResponse;
        System.arraycopy(bArr7, 0, this.type3, i6, bArr7.length);
        writeShort(this.type3, 12, bArr7.length);
        writeShort(this.type3, 14, bArr7.length);
        writeInt(this.type3, 16, i6);
        int i11 = i6 + 24;
        System.arraycopy(bArrCalcResponse2, 0, this.type3, i11, bArrCalcResponse2.length);
        writeShort(this.type3, 20, bArrCalcResponse2.length);
        writeShort(this.type3, 22, bArrCalcResponse2.length);
        writeInt(this.type3, 24, i11);
        int length4 = i11 + bArrCalcResponse2.length;
        writeShort(this.type3, 56, length4);
        byte[] bArr8 = new byte[length4];
        System.arraycopy(this.type3, 0, bArr8, 0, length4);
        writeInt(this.type3, 60, i2);
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("type 3 message: " + toHex(bArr8));
        }
        try {
            return new String(BASE64EncoderStream.encode(bArr8), "iso-8859-1");
        } catch (UnsupportedEncodingException unused2) {
            return null;
        }
    }

    public String generateType1Msg(int i2, boolean z2) {
        int length = this.ntdomain.length();
        int i3 = 41475 | i2;
        if (length != 0) {
            i3 = 45571 | i2;
        }
        if (z2) {
            i3 |= NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY;
        }
        writeInt(this.type1, 12, i3);
        byte[] bArr = this.type1;
        bArr[28] = 32;
        writeShort(bArr, 16, length);
        writeShort(this.type1, 18, length);
        int length2 = this.hostname.length();
        writeShort(this.type1, 24, length2);
        writeShort(this.type1, 26, length2);
        copybytes(this.type1, 32, this.hostname, "iso-8859-1");
        int i4 = length2 + 32;
        copybytes(this.type1, i4, this.ntdomain, "iso-8859-1");
        writeInt(this.type1, 20, i4);
        int i5 = i4 + length;
        byte[] bArr2 = new byte[i5];
        System.arraycopy(this.type1, 0, bArr2, 0, i5);
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("type 1 message: " + toHex(bArr2));
        }
        try {
            return new String(BASE64EncoderStream.encode(bArr2), "iso-8859-1");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }
}
