package T;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Properties;
import java.util.regex.Pattern;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Y0 f854a = new Y0();
    public static final I0.l b = new I0.l(1);

    public static String a() {
        try {
            String string = O0.j.X0(l()).toString();
            return (O0.j.E0(string) || string.equals("?")) ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context, SharedPreferences sharedPreferences) {
        String str;
        String strA = "";
        String string = sharedPreferences.getString("recovery_name", "");
        if (string == null) {
            string = "";
        }
        String strC = c(string);
        try {
            strA = a();
        } catch (Throwable unused) {
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName + " (vc=" + packageInfo.getLongVersionCode() + ')';
        } catch (Throwable unused2) {
            str = "?";
        }
        StringBuilder sb = new StringBuilder("Nome (recovery): ");
        if (O0.j.E0(strC)) {
            strC = "?";
        }
        sb.append(strC);
        sb.append("\nXDSN: ");
        sb.append(O0.j.E0(strA) ? "?" : strA);
        sb.append("\nVersão: ");
        sb.append(str);
        return sb.toString();
    }

    public static String c(String str) {
        return O0.s.s0(O0.j.X0(str).toString(), "RAVI") ? "RAVI (admin)" : str;
    }

    public static void e(Context context, SharedPreferences sharedPreferences, H0.l lVar) {
        I0.f.e(context, "context");
        new Thread(new RunnableC0168z(sharedPreferences, new Handler(Looper.getMainLooper()), lVar, 2)).start();
    }

    public static boolean f(SharedPreferences sharedPreferences) {
        try {
            return new JSONArray(sharedPreferences.getString("error_report_queue", "[]")).length() > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r4 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String g(android.content.SharedPreferences r4) {
        /*
            java.lang.String r0 = "recovery_name"
            java.lang.String r1 = ""
            java.lang.String r2 = i()     // Catch: java.lang.Throwable -> L2c
            boolean r3 = O0.j.E0(r2)     // Catch: java.lang.Throwable -> L2c
            if (r3 != 0) goto L23
            java.lang.String r3 = "DESCONHECIDO"
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Throwable -> L2c
            if (r3 != 0) goto L23
            android.content.SharedPreferences$Editor r3 = r4.edit()     // Catch: java.lang.Throwable -> L2c
            android.content.SharedPreferences$Editor r3 = r3.putString(r0, r2)     // Catch: java.lang.Throwable -> L2c
            r3.apply()     // Catch: java.lang.Throwable -> L2c
            r1 = r2
            goto L32
        L23:
            java.lang.String r4 = r4.getString(r0, r1)     // Catch: java.lang.Throwable -> L2c
            if (r4 != 0) goto L2a
            goto L32
        L2a:
            r1 = r4
            goto L32
        L2c:
            java.lang.String r4 = r4.getString(r0, r1)
            if (r4 != 0) goto L2a
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: T.Y0.g(android.content.SharedPreferences):java.lang.String");
    }

    public static boolean h(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("recovery_name", "");
        return O0.s.s0(string != null ? O0.j.X0(string).toString() : null, "IBANES");
    }

    public static String i() {
        O0.e eVarA;
        String str;
        try {
            for (String str2 : O0.j.H0(C0097m.v("grep -h 'PARA USO EXCLUSIVO' /cache/recovery/last_log* /cache/recovery/log* /data/misc/recovery/last_log* 2>/dev/null | head -5", 8000, null, new C0103n(0)))) {
                if (O0.j.x0(str2, "PARA USO EXCLUSIVO D", true) && (eVarA = I0.l.a(b, str2)) != null && (str = (String) w0.i.b0(eVarA.a(), 1)) != null) {
                    Pattern patternCompile = Pattern.compile("[^A-Za-zÀ-ÿ\\s]");
                    I0.f.d(patternCompile, "compile(...)");
                    String strReplaceAll = patternCompile.matcher(str).replaceAll("");
                    I0.f.d(strReplaceAll, "replaceAll(...)");
                    String string = O0.j.X0(strReplaceAll).toString();
                    if (!O0.j.E0(string)) {
                        return string;
                    }
                }
            }
            return "DESCONHECIDO";
        } catch (Throwable unused) {
            return "DESCONHECIDO";
        }
    }

    public static String j() {
        String strI;
        int i2 = 1;
        while (true) {
            strI = i();
            if (!O0.j.E0(strI) && !strI.equals("DESCONHECIDO")) {
                break;
            }
            if (i2 < 5) {
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException unused) {
                }
            }
            if (i2 == 5) {
                break;
            }
            i2++;
        }
        return strI;
    }

    public static String k() {
        try {
            String string = O0.j.X0(C0097m.v("getprop ro.serialno", 4000, null, new C0103n(0))).toString();
            if (O0.j.E0(string)) {
                string = O0.j.X0(C0097m.v("getprop ro.boot.serialno", 4000, null, new C0103n(0))).toString();
            }
            return O0.j.E0(string) ? "?" : string;
        } catch (Throwable unused) {
            return "?";
        }
    }

    public static String l() {
        try {
            String string = O0.j.X0(C0097m.v("getprop sys.ecarx.xdsn", 4000, null, new C0103n(0))).toString();
            if (O0.j.E0(string)) {
                string = O0.j.X0(C0097m.v("cat /data/property/sys.ecarx.xdsn 2>/dev/null", 4000, null, new C0103n(0))).toString();
                if (O0.j.E0(string)) {
                    return "?";
                }
            }
            return string;
        } catch (Throwable unused) {
            return "?";
        }
    }

    public static void m(ContextWrapper contextWrapper, SharedPreferences sharedPreferences) {
        new Handler(Looper.getMainLooper()).postDelayed(new V0(sharedPreferences, 1), 16000L);
    }

    public static void n(String str, String str2, String str3, SharedPreferences sharedPreferences) throws MessagingException {
        String strValueOf;
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.timeout", "30000");
        properties.put("mail.smtp.connectiontimeout", "20000");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        MimeMessage mimeMessage = new MimeMessage(Session.getInstance(properties, new X0(0)));
        mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
        String strC = c(str);
        mimeMessage.setSubject("[CentralEXAuto] Dispositivo: ".concat(strC));
        StringBuilder sb = new StringBuilder("Nome (recovery): ");
        sb.append(strC);
        M.d0.q(sb, "\nXDSN: ", str3, "\nSerial: ", str2);
        sb.append("\nPorta ADB: ");
        int i2 = C0097m.f1043a;
        try {
            strValueOf = O0.j.X0(C0097m.v("getprop service.adb.tcp.port", 4000, null, new C0103n(0))).toString();
        } catch (Throwable unused) {
            strValueOf = "";
        }
        if (i2 != 0 && !O0.j.E0(strValueOf) && !strValueOf.equals(String.valueOf(i2))) {
            strValueOf = i2 + " (getprop=" + strValueOf + ')';
        } else if (i2 != 0) {
            strValueOf = String.valueOf(i2);
        } else if (O0.j.E0(strValueOf)) {
            strValueOf = "?";
        }
        sb.append(strValueOf);
        mimeMessage.setText(sb.toString());
        Transport.send(mimeMessage);
        sharedPreferences.edit().putBoolean("dr_sent_v2", true).putString("reported_name", str).apply();
        Log.d("DR", "ok");
    }

    public static void o(String str, String str2, String str3) throws MessagingException {
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.timeout", "30000");
        properties.put("mail.smtp.connectiontimeout", "20000");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(properties, new X0(1));
        String strC = c(str);
        MimeMessage mimeMessage = new MimeMessage(session);
        mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
        mimeMessage.setSubject("[CentralEXAuto] Clique ADB — ".concat(strC));
        StringBuilder sbK = M.d0.k("Nome (recovery): ", strC, "\nXDSN: ", str3, "\nSerial: ");
        sbK.append(str2);
        sbK.append("\nadb");
        mimeMessage.setText(sbK.toString());
        Transport.send(mimeMessage);
        Log.d("DR", "adbClickReport ok");
    }

    public static void p(String str, String str2, String str3, String str4) throws MessagingException {
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.timeout", "30000");
        properties.put("mail.smtp.connectiontimeout", "20000");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(properties, new X0(2));
        String strC = c(str);
        MimeMessage mimeMessage = new MimeMessage(session);
        mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
        mimeMessage.setSubject("[CentralEXAuto] Porta ADB migrada (65010) — ".concat(strC));
        StringBuilder sbK = M.d0.k("Nome (recovery): ", strC, "\nXDSN: ", str3, "\nSerial: ");
        sbK.append(str2);
        sbK.append("\nPorta ADB: 65010\nResultado: ");
        sbK.append(O0.j.X0(str4).toString());
        sbK.append("\nadb-port");
        mimeMessage.setText(sbK.toString());
        Transport.send(mimeMessage);
        Log.d("DR", "adbPortReport ok");
    }

    public static boolean q(Context context, SharedPreferences sharedPreferences, String str) {
        String str2;
        String str3 = "";
        I0.f.e(context, "context");
        I0.f.e(str, "xdsn");
        try {
            String string = sharedPreferences.getString("recovery_name", "");
            if (string != null) {
                str3 = string;
            }
            String strK = k();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                str2 = packageInfo.versionName + " (" + packageInfo.getLongVersionCode() + ')';
            } catch (Throwable unused) {
                str2 = "?";
            }
            Properties properties = new Properties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.host", "smtp-relay.brevo.com");
            properties.put("mail.smtp.port", "465");
            properties.put("mail.smtp.timeout", "30000");
            properties.put("mail.smtp.connectiontimeout", "20000");
            properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
            properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
            Session session = Session.getInstance(properties, new X0(4));
            String strC = c(str3);
            MimeMessage mimeMessage = new MimeMessage(session);
            mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
            mimeMessage.setSubject("[CentralEXAuto] BAN aplicado — ".concat(strC));
            mimeMessage.setText("O aparelho abaixo bateu com a banlist e foi bloqueado.\n\nNome (recovery): " + strC + "\nXDSN: " + str + "\nSerial: " + strK + "\nVersão do app: " + str2 + "\n\nban-aplicado");
            Transport.send(mimeMessage);
            Log.i("DR", "aviso de ban enviado");
            return true;
        } catch (Throwable th) {
            M.d0.r(th, new StringBuilder("aviso de ban NÃO enviado: "), "DR");
            return false;
        }
    }

    public static void r(String str, String str2) throws MessagingException {
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.timeout", "30000");
        properties.put("mail.smtp.connectiontimeout", "20000");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        MimeMessage mimeMessage = new MimeMessage(Session.getInstance(properties, new X0(5)));
        mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
        mimeMessage.setSubject(str);
        mimeMessage.setText(str2);
        Transport.send(mimeMessage);
    }

    public static void s(String str, String str2, String str3, String str4) throws MessagingException {
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.timeout", "30000");
        properties.put("mail.smtp.connectiontimeout", "20000");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(properties, new X0(7));
        String strC = c(str);
        MimeMessage mimeMessage = new MimeMessage(session);
        mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
        mimeMessage.setSubject("[CentralEXAuto] Nome corrigido: " + strC + " (era " + str4 + ')');
        StringBuilder sbK = M.d0.k("Nome (recovery): ", strC, "\nAntes: ", str4, "\nXDSN: ");
        sbK.append(str3);
        sbK.append("\nSerial: ");
        sbK.append(str2);
        sbK.append("\nname-fix");
        mimeMessage.setText(sbK.toString());
        Transport.send(mimeMessage);
        Log.d("DR", "nameCorrection ok: " + str4 + " -> " + str);
    }

    public final synchronized int d(SharedPreferences sharedPreferences) {
        int i2;
        int i3 = 0;
        try {
            JSONArray jSONArray = new JSONArray(sharedPreferences.getString("error_report_queue", "[]"));
            if (jSONArray.length() == 0) {
                return 0;
            }
            JSONArray jSONArray2 = new JSONArray();
            int length = jSONArray.length();
            boolean z2 = false;
            i2 = 0;
            while (i3 < length) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i3);
                    if (z2) {
                        jSONArray2.put(jSONObject);
                    } else {
                        try {
                            String string = jSONObject.getString("s");
                            I0.f.d(string, "getString(...)");
                            String string2 = jSONObject.getString("b");
                            I0.f.d(string2, "getString(...)");
                            r(string, string2);
                            i2++;
                        } catch (Exception e2) {
                            Log.w("DR", "flushErrorQueue: falhou (sem rede?) — " + e2.getMessage());
                            jSONArray2.put(jSONObject);
                            z2 = true;
                        }
                    }
                    i3++;
                } catch (Throwable th) {
                    th = th;
                    i3 = i2;
                }
            }
            sharedPreferences.edit().putString("error_report_queue", jSONArray2.toString()).apply();
            return i2;
        } catch (Throwable th2) {
            th = th2;
        }
        Log.w("DR", "flushErrorQueue: " + th.getMessage());
        i2 = i3;
        return i2;
    }
}
