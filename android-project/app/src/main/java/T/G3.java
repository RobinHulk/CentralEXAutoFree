package T;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class G3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final G3 f592a = new G3();
    public static final long[] b = {16, 50, 100, 200, 500, 1000, 2000, 5000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final F3 f593c = new F3("toque→quadro");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final F3 f594d = new F3("leitura carro");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final F3 f595e = new F3("shell adbd");
    public static final HashMap f = new HashMap();

    public static String a(F3 f3) {
        String str;
        long j2 = f3.b;
        String str2 = f3.f564a;
        if (j2 == 0) {
            return str2.concat(": 0");
        }
        StringBuilder sbI = M.d0.i(str2, ": n=");
        sbI.append(f3.b);
        sbI.append(" média=");
        sbI.append(f3.f565c / f3.b);
        sbI.append("ms p50");
        sbI.append(b(f3, 0.5d));
        sbI.append(" p95");
        sbI.append(b(f3, 0.95d));
        sbI.append(" máx=");
        sbI.append(f3.f566d);
        sbI.append("ms");
        if (f3.f567e > 0) {
            str = " estouros=" + f3.f567e;
        } else {
            str = "";
        }
        sbI.append(str);
        return sbI.toString();
    }

    public static String b(F3 f3, double d2) {
        StringBuilder sb;
        long jY;
        long j2 = f3.b;
        long j3 = 0;
        if (j2 == 0) {
            return "-";
        }
        long jCeil = (long) Math.ceil(j2 * d2);
        long[] jArr = f3.f;
        int length = jArr.length;
        int i2 = 0;
        while (true) {
            long[] jArr2 = b;
            if (i2 >= length) {
                return ">" + w0.h.Y(jArr2) + "ms";
            }
            j3 += jArr[i2];
            if (j3 >= jCeil) {
                if (i2 < 8) {
                    sb = new StringBuilder("≤");
                    jY = jArr2[i2];
                } else {
                    sb = new StringBuilder(">");
                    jY = w0.h.Y(jArr2);
                }
                sb.append(jY);
                sb.append("ms");
                return sb.toString();
            }
            i2++;
        }
    }

    public final synchronized void c(F3 f3, long j2, boolean z2) {
        try {
            I0.f.e(f3, "s");
            f3.b++;
            f3.f565c += j2;
            if (j2 > f3.f566d) {
                f3.f566d = j2;
            }
            if (z2) {
                f3.f567e++;
            }
            int i2 = 0;
            while (true) {
                long[] jArr = b;
                if (i2 >= 8 || j2 <= jArr[i2]) {
                    break;
                } else {
                    i2++;
                }
            }
            long[] jArr2 = f3.f;
            jArr2[i2] = jArr2[i2] + 1;
        } catch (Throwable th) {
            throw th;
        }
    }
}
