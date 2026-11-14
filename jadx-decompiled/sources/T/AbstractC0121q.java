package T;

import android.content.SharedPreferences;
import java.util.List;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: T.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0121q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1100a;
    public static final int[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f1101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f1102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List f1103e;
    public static final int[] f;

    static {
        AbstractC0201a.G("com.wstxda.viper4android");
        f1100a = new int[]{0, 1};
        b = new int[]{16, 64, 256, 1024};
        f1101c = w0.u.V(new v0.a(1, 16), new v0.a(4, 64), new v0.a(16, 256), new v0.a(64, 1024));
        f1102d = w0.u.V(new v0.a(16, 64), new v0.a(64, 16), new v0.a(256, 1024), new v0.a(1024, 256));
        f1103e = w0.j.T(new C0115p("1111", 116650, "c474b4bb1a2244d5bd1d3119d6fb0bfc", "2c019dfb1d38ee6e5c3b20a876ae73fb"), new C0115p("1114", 116641, "de34e468ad334b7062038c5de46f1c52", "3c1c4d714d1810373b0b0728b68ec648"));
        f = new int[]{1, 5, 49, 0};
    }

    public static boolean a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("connadaptor_modo", "ambos");
        return d(string != null ? string : "ambos");
    }

    public static String b(String str, String str2) {
        I0.f.e(str2, "versao");
        StringBuilder sb = new StringBuilder("/data/local/tmp/fixes/ca_fix_");
        sb.append(str2);
        sb.append('_');
        return M.d0.g(sb, str, ".apk");
    }

    public static String c(String str, String str2) {
        I0.f.e(str, "modo");
        I0.f.e(str2, "versao");
        if (str.equals("aa")) {
            return str2.equals("1114") ? "0c280b07f92a3538bcda1aae2e8b0746" : "d49ab03b18a5c5e21928c59c465394d7";
        }
        if (str.equals("carplay")) {
            return "4b37f46239a938fa164d4a0bdc65a399";
        }
        return str2.equals("1114") ? "4b0e1de041032ee63ef0c223926d7889" : "260459e68360a4ff5c3720d84a2acddd";
    }

    public static boolean d(String str) {
        return str.equals("carplay") || str.equals("ambos");
    }
}
