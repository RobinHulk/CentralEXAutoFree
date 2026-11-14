package T;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Arrays;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: T.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0045d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BigInteger f925a;
    public static final BigInteger b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BigInteger f926c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final BigInteger f927d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f928e;
    public static final BigInteger f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final BigInteger f929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BigInteger f930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BigInteger f931i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final v0.c f932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final C0039c1 f933k;

    static {
        BigInteger bigInteger = BigInteger.ZERO;
        I0.f.d(bigInteger, "ZERO");
        f925a = bigInteger;
        BigInteger bigInteger2 = BigInteger.ONE;
        I0.f.d(bigInteger2, "ONE");
        b = bigInteger2;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        I0.f.d(bigIntegerValueOf, "valueOf(...)");
        f926c = bigIntegerValueOf;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(8L);
        I0.f.d(bigIntegerValueOf2, "valueOf(...)");
        f927d = bigIntegerValueOf2;
        BigInteger bigIntegerPow = bigIntegerValueOf.pow(255);
        I0.f.d(bigIntegerPow, "pow(...)");
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(19L);
        I0.f.d(bigIntegerValueOf3, "valueOf(...)");
        BigInteger bigIntegerSubtract = bigIntegerPow.subtract(bigIntegerValueOf3);
        I0.f.d(bigIntegerSubtract, "subtract(...)");
        f928e = bigIntegerSubtract;
        BigInteger bigIntegerPow2 = bigIntegerValueOf.pow(252);
        I0.f.d(bigIntegerPow2, "pow(...)");
        BigInteger bigIntegerAdd = bigIntegerPow2.add(new BigInteger("27742317777372353535851937790883648493"));
        I0.f.d(bigIntegerAdd, "add(...)");
        f = bigIntegerAdd;
        BigInteger bigIntegerValueOf4 = BigInteger.valueOf(-121665L);
        I0.f.d(bigIntegerValueOf4, "valueOf(...)");
        BigInteger bigIntegerModInverse = BigInteger.valueOf(121666L).modInverse(bigIntegerSubtract);
        I0.f.d(bigIntegerModInverse, "modInverse(...)");
        BigInteger bigIntegerMultiply = bigIntegerValueOf4.multiply(bigIntegerModInverse);
        I0.f.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigIntegerSubtract);
        I0.f.d(bigIntegerMod, "mod(...)");
        f929g = bigIntegerMod;
        BigInteger bigIntegerSubtract2 = bigIntegerSubtract.subtract(bigInteger2);
        I0.f.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerValueOf5 = BigInteger.valueOf(4L);
        I0.f.d(bigIntegerValueOf5, "valueOf(...)");
        BigInteger bigIntegerDivide = bigIntegerSubtract2.divide(bigIntegerValueOf5);
        I0.f.d(bigIntegerDivide, "divide(...)");
        BigInteger bigIntegerModPow = bigIntegerValueOf.modPow(bigIntegerDivide, bigIntegerSubtract);
        I0.f.d(bigIntegerModPow, "modPow(...)");
        f930h = bigIntegerModPow;
        BigInteger bigIntegerValueOf6 = BigInteger.valueOf(4L);
        I0.f.d(bigIntegerValueOf6, "valueOf(...)");
        BigInteger bigIntegerModInverse2 = BigInteger.valueOf(5L).modInverse(bigIntegerSubtract);
        I0.f.d(bigIntegerModInverse2, "modInverse(...)");
        BigInteger bigIntegerMultiply2 = bigIntegerValueOf6.multiply(bigIntegerModInverse2);
        I0.f.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerMod2 = bigIntegerMultiply2.mod(bigIntegerSubtract);
        I0.f.d(bigIntegerMod2, "mod(...)");
        f931i = bigIntegerMod2;
        f932j = new v0.c(new C0033b1(0));
        f933k = new C0039c1(bigInteger, bigInteger2, bigInteger2, bigInteger);
    }

    public static C0039c1 a(C0039c1 c0039c1, C0039c1 c0039c2) {
        BigInteger bigInteger = c0039c1.b;
        BigInteger bigInteger2 = c0039c1.f914a;
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
        I0.f.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigInteger3 = c0039c2.b;
        BigInteger bigInteger4 = c0039c2.f914a;
        BigInteger bigIntegerSubtract2 = bigInteger3.subtract(bigInteger4);
        I0.f.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerMultiply = bigIntegerSubtract.multiply(bigIntegerSubtract2);
        I0.f.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigInteger5 = f928e;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger5);
        BigInteger bigIntegerAdd = c0039c1.b.add(bigInteger2);
        I0.f.d(bigIntegerAdd, "add(...)");
        BigInteger bigIntegerAdd2 = c0039c2.b.add(bigInteger4);
        I0.f.d(bigIntegerAdd2, "add(...)");
        BigInteger bigIntegerMultiply2 = bigIntegerAdd.multiply(bigIntegerAdd2);
        I0.f.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerMod2 = bigIntegerMultiply2.mod(bigInteger5);
        BigInteger bigInteger6 = c0039c1.f916d;
        BigInteger bigInteger7 = f926c;
        BigInteger bigIntegerMultiply3 = bigInteger6.multiply(bigInteger7);
        I0.f.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerMultiply4 = bigIntegerMultiply3.multiply(f929g);
        I0.f.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerMultiply5 = bigIntegerMultiply4.multiply(c0039c2.f916d);
        I0.f.d(bigIntegerMultiply5, "multiply(...)");
        BigInteger bigIntegerMod3 = bigIntegerMultiply5.mod(bigInteger5);
        BigInteger bigIntegerMultiply6 = c0039c1.f915c.multiply(bigInteger7);
        I0.f.d(bigIntegerMultiply6, "multiply(...)");
        BigInteger bigIntegerMultiply7 = bigIntegerMultiply6.multiply(c0039c2.f915c);
        I0.f.d(bigIntegerMultiply7, "multiply(...)");
        BigInteger bigIntegerMod4 = bigIntegerMultiply7.mod(bigInteger5);
        I0.f.b(bigIntegerMod2);
        I0.f.b(bigIntegerMod);
        BigInteger bigIntegerSubtract3 = bigIntegerMod2.subtract(bigIntegerMod);
        I0.f.d(bigIntegerSubtract3, "subtract(...)");
        BigInteger bigIntegerMod5 = bigIntegerSubtract3.mod(bigInteger5);
        I0.f.b(bigIntegerMod4);
        I0.f.b(bigIntegerMod3);
        BigInteger bigIntegerSubtract4 = bigIntegerMod4.subtract(bigIntegerMod3);
        I0.f.d(bigIntegerSubtract4, "subtract(...)");
        BigInteger bigIntegerMod6 = bigIntegerSubtract4.mod(bigInteger5);
        BigInteger bigIntegerAdd3 = bigIntegerMod4.add(bigIntegerMod3);
        I0.f.d(bigIntegerAdd3, "add(...)");
        BigInteger bigIntegerMod7 = bigIntegerAdd3.mod(bigInteger5);
        BigInteger bigIntegerAdd4 = bigIntegerMod2.add(bigIntegerMod);
        I0.f.d(bigIntegerAdd4, "add(...)");
        BigInteger bigIntegerMod8 = bigIntegerAdd4.mod(bigInteger5);
        I0.f.b(bigIntegerMod5);
        I0.f.b(bigIntegerMod6);
        BigInteger bigIntegerMultiply8 = bigIntegerMod5.multiply(bigIntegerMod6);
        I0.f.d(bigIntegerMultiply8, "multiply(...)");
        BigInteger bigIntegerMod9 = bigIntegerMultiply8.mod(bigInteger5);
        I0.f.d(bigIntegerMod9, "mod(...)");
        I0.f.b(bigIntegerMod7);
        I0.f.b(bigIntegerMod8);
        BigInteger bigIntegerMultiply9 = bigIntegerMod7.multiply(bigIntegerMod8);
        I0.f.d(bigIntegerMultiply9, "multiply(...)");
        BigInteger bigIntegerMod10 = bigIntegerMultiply9.mod(bigInteger5);
        I0.f.d(bigIntegerMod10, "mod(...)");
        BigInteger bigIntegerMultiply10 = bigIntegerMod6.multiply(bigIntegerMod7);
        I0.f.d(bigIntegerMultiply10, "multiply(...)");
        BigInteger bigIntegerMod11 = bigIntegerMultiply10.mod(bigInteger5);
        I0.f.d(bigIntegerMod11, "mod(...)");
        BigInteger bigIntegerMultiply11 = bigIntegerMod5.multiply(bigIntegerMod8);
        I0.f.d(bigIntegerMultiply11, "multiply(...)");
        BigInteger bigIntegerMod12 = bigIntegerMultiply11.mod(bigInteger5);
        I0.f.d(bigIntegerMod12, "mod(...)");
        return new C0039c1(bigIntegerMod9, bigIntegerMod10, bigIntegerMod11, bigIntegerMod12);
    }

    public static boolean b(C0039c1 c0039c1, C0039c1 c0039c2) {
        BigInteger bigInteger = c0039c1.f914a;
        BigInteger bigInteger2 = c0039c2.f915c;
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger2);
        I0.f.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigInteger3 = c0039c2.f914a;
        BigInteger bigInteger4 = c0039c1.f915c;
        BigInteger bigIntegerMultiply2 = bigInteger3.multiply(bigInteger4);
        I0.f.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerSubtract = bigIntegerMultiply.subtract(bigIntegerMultiply2);
        I0.f.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigInteger5 = f928e;
        BigInteger bigIntegerMod = bigIntegerSubtract.mod(bigInteger5);
        BigInteger bigInteger6 = f925a;
        if (!I0.f.a(bigIntegerMod, bigInteger6)) {
            return false;
        }
        BigInteger bigIntegerMultiply3 = c0039c1.b.multiply(bigInteger2);
        I0.f.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerMultiply4 = c0039c2.b.multiply(bigInteger4);
        I0.f.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerSubtract2 = bigIntegerMultiply3.subtract(bigIntegerMultiply4);
        I0.f.d(bigIntegerSubtract2, "subtract(...)");
        return I0.f.a(bigIntegerSubtract2.mod(bigInteger5), bigInteger6);
    }

    public static C0039c1 c(byte[] bArr) {
        if (bArr.length != 32) {
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        I0.f.d(bArrCopyOf, "copyOf(...)");
        byte b2 = bArrCopyOf[31];
        boolean z2 = (b2 & 128) != 0;
        bArrCopyOf[31] = (byte) (b2 & 127);
        BigInteger bigIntegerD = d(bArrCopyOf);
        if (bigIntegerD.compareTo(f928e) >= 0) {
            return null;
        }
        return f(bigIntegerD, z2);
    }

    public static BigInteger d(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 1];
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[bArr.length - i2] = bArr[i2];
        }
        return new BigInteger(bArr2);
    }

    public static C0039c1 e(C0039c1 c0039c1, BigInteger bigInteger) {
        C0039c1 c0039c1A = f933k;
        while (bigInteger.signum() > 0) {
            if (bigInteger.testBit(0)) {
                c0039c1A = a(c0039c1A, c0039c1);
            }
            c0039c1 = a(c0039c1, c0039c1);
            bigInteger = bigInteger.shiftRight(1);
        }
        return c0039c1A;
    }

    public static C0039c1 f(BigInteger bigInteger, boolean z2) {
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger);
        BigInteger bigInteger2 = f928e;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger2);
        I0.f.b(bigIntegerMod);
        BigInteger bigInteger3 = b;
        BigInteger bigIntegerSubtract = bigIntegerMod.subtract(bigInteger3);
        I0.f.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigIntegerMod2 = bigIntegerSubtract.mod(bigInteger2);
        BigInteger bigIntegerMultiply2 = f929g.multiply(bigIntegerMod);
        I0.f.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerAdd = bigIntegerMultiply2.add(bigInteger3);
        I0.f.d(bigIntegerAdd, "add(...)");
        BigInteger bigIntegerMod3 = bigIntegerAdd.mod(bigInteger2);
        BigInteger bigIntegerModPow = bigIntegerMod3.modPow(BigInteger.valueOf(3L), bigInteger2);
        BigInteger bigIntegerModPow2 = bigIntegerMod3.modPow(BigInteger.valueOf(7L), bigInteger2);
        I0.f.b(bigIntegerMod2);
        I0.f.b(bigIntegerModPow);
        BigInteger bigIntegerMultiply3 = bigIntegerMod2.multiply(bigIntegerModPow);
        I0.f.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerRemainder = bigIntegerMultiply3.remainder(bigInteger2);
        I0.f.d(bigIntegerRemainder, "remainder(...)");
        I0.f.b(bigIntegerModPow2);
        BigInteger bigIntegerMultiply4 = bigIntegerMod2.multiply(bigIntegerModPow2);
        I0.f.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerValueOf = BigInteger.valueOf(5L);
        I0.f.d(bigIntegerValueOf, "valueOf(...)");
        BigInteger bigIntegerSubtract2 = bigInteger2.subtract(bigIntegerValueOf);
        I0.f.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerDivide = bigIntegerSubtract2.divide(f927d);
        I0.f.d(bigIntegerDivide, "divide(...)");
        BigInteger bigIntegerModPow3 = bigIntegerMultiply4.modPow(bigIntegerDivide, bigInteger2);
        I0.f.d(bigIntegerModPow3, "modPow(...)");
        BigInteger bigIntegerMultiply5 = bigIntegerRemainder.multiply(bigIntegerModPow3);
        I0.f.d(bigIntegerMultiply5, "multiply(...)");
        BigInteger bigIntegerMod4 = bigIntegerMultiply5.mod(bigInteger2);
        BigInteger bigIntegerMultiply6 = bigIntegerMod4.multiply(bigIntegerMod4);
        I0.f.d(bigIntegerMultiply6, "multiply(...)");
        BigInteger bigIntegerMultiply7 = bigIntegerMod3.multiply(bigIntegerMultiply6);
        I0.f.d(bigIntegerMultiply7, "multiply(...)");
        BigInteger bigIntegerMod5 = bigIntegerMultiply7.mod(bigInteger2);
        if (!I0.f.a(bigIntegerMod5, bigIntegerMod2.mod(bigInteger2))) {
            BigInteger bigIntegerNegate = bigIntegerMod2.negate();
            I0.f.d(bigIntegerNegate, "negate(...)");
            if (!I0.f.a(bigIntegerMod5, bigIntegerNegate.mod(bigInteger2))) {
                return null;
            }
            BigInteger bigIntegerMultiply8 = bigIntegerMod4.multiply(f930h);
            I0.f.d(bigIntegerMultiply8, "multiply(...)");
            bigIntegerMod4 = bigIntegerMultiply8.mod(bigInteger2);
        }
        if (bigIntegerMod4.signum() == 0 && z2) {
            return null;
        }
        if (bigIntegerMod4.testBit(0) != z2) {
            BigInteger bigIntegerSubtract3 = bigInteger2.subtract(bigIntegerMod4);
            I0.f.d(bigIntegerSubtract3, "subtract(...)");
            bigIntegerMod4 = bigIntegerSubtract3.mod(bigInteger2);
        }
        I0.f.b(bigIntegerMod4);
        BigInteger bigIntegerMultiply9 = bigIntegerMod4.multiply(bigInteger);
        I0.f.d(bigIntegerMultiply9, "multiply(...)");
        BigInteger bigIntegerMod6 = bigIntegerMultiply9.mod(bigInteger2);
        I0.f.d(bigIntegerMod6, "mod(...)");
        return new C0039c1(bigIntegerMod4, bigInteger, bigInteger3, bigIntegerMod6);
    }

    public static boolean g(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        I0.f.e(bArr, "publicKey");
        try {
            if (bArr.length == 32 && bArr3.length == 64) {
                AbstractC0201a.n(32, bArr3.length);
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr3, 0, 32);
                I0.f.d(bArrCopyOfRange, "copyOfRange(...)");
                AbstractC0201a.n(64, bArr3.length);
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr3, 32, 64);
                I0.f.d(bArrCopyOfRange2, "copyOfRange(...)");
                BigInteger bigIntegerD = d(bArrCopyOfRange2);
                C0039c1 c0039c1C = c(bArr);
                C0039c1 c0039c1C2 = c(bArrCopyOfRange);
                if (c0039c1C == null || c0039c1C2 == null) {
                    return false;
                }
                BigInteger bigInteger = f;
                if (bigIntegerD.compareTo(bigInteger) >= 0) {
                    return false;
                }
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
                messageDigest.update(bArrCopyOfRange);
                messageDigest.update(bArr);
                messageDigest.update(bArr2);
                byte[] bArrDigest = messageDigest.digest();
                I0.f.b(bArrDigest);
                BigInteger bigIntegerMod = d(bArrDigest).mod(bigInteger);
                C0039c1 c0039c1E = e((C0039c1) f932j.a(), bigIntegerD);
                I0.f.b(bigIntegerMod);
                return b(c0039c1E, a(c0039c1C2, e(c0039c1C, bigIntegerMod)));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
