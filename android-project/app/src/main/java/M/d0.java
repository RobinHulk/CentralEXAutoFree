package M;

import T.C0103n;
import T.L3;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.sun.mail.util.PropUtil;
import java.util.List;
import java.util.Properties;
import javax.mail.internet.InternetHeaders;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d0 {
    public static float a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static int b(int i2, int i3, String str) {
        return (str.hashCode() + i2) * i3;
    }

    public static Object c(StringBuilder sb, String str, String str2, C0103n c0103n, String str3) {
        sb.append(str);
        sb.append(str2);
        return c0103n.b(str3);
    }

    public static String d(int i2, int i3, String str, String str2) {
        return str + i2 + str2 + i3;
    }

    public static String e(String str, String str2) {
        return str + str2;
    }

    public static String f(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String g(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder h(String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder i(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder j(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder k(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void l(MainActivity mainActivity, int i2, MainActivity mainActivity2, int i3) {
        Toast.makeText(mainActivity2, mainActivity.getString(i2), i3).show();
    }

    public static void m(MainActivity mainActivity, String str, boolean z2) {
        mainActivity.B0().edit().putBoolean(str, z2).apply();
    }

    public static void n(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        Log.w(str, sb.toString());
    }

    public static void o(String str, String str2, String str3, L3 l3, String str4) {
        l3.b(str4, str + str2 + str3);
    }

    public static void p(String str, String str2, List list) {
        list.add(new InternetHeaders.InternetHeader(str, str2));
    }

    public static void q(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void r(Throwable th, StringBuilder sb, String str) {
        sb.append(th.getMessage());
        Log.w(str, sb.toString());
    }

    public static boolean s(String str, String str2, String str3, Properties properties, boolean z2) {
        return PropUtil.getBooleanProperty(properties, str + str2 + str3, z2);
    }
}
