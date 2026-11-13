package T;

import android.content.SharedPreferences;
import android.util.Log;
import com.ex.auto.MainActivity;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class V0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f811a;
    public final /* synthetic */ SharedPreferences b;

    public /* synthetic */ V0(SharedPreferences sharedPreferences, int i2) {
        this.f811a = i2;
        this.b = sharedPreferences;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String string;
        int i2 = 6;
        boolean z2 = false;
        switch (this.f811a) {
            case 0:
                new Thread(new V0(this.b, 4)).start();
                return;
            case 1:
                new Thread(new V0(this.b, 7)).start();
                return;
            case 2:
                new Thread(new V0(this.b, i2)).start();
                return;
            case 3:
                String str = "";
                try {
                    String string2 = this.b.getString("recovery_name", "");
                    if (string2 != null) {
                        str = string2;
                    }
                    Y0 y0 = Y0.f854a;
                    String strK = Y0.k();
                    String strL = Y0.l();
                    Properties properties = new Properties();
                    properties.put("mail.smtp.auth", "true");
                    properties.put("mail.smtp.ssl.enable", "true");
                    properties.put("mail.smtp.host", "smtp-relay.brevo.com");
                    properties.put("mail.smtp.port", "465");
                    properties.put("mail.smtp.timeout", "30000");
                    properties.put("mail.smtp.connectiontimeout", "20000");
                    properties.put("mail.smtp.ssl.trust", "smtp-relay.brevo.com");
                    properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
                    Session session = Session.getInstance(properties, new X0(3));
                    String strC = Y0.c(str);
                    MimeMessage mimeMessage = new MimeMessage(session);
                    mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
                    mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
                    mimeMessage.setSubject("[CentralEXAuto] Aviso de bloqueio visto — ".concat(strC));
                    mimeMessage.setText("Nome (recovery): " + strC + "\nXDSN: " + strL + "\nSerial: " + strK + "\nban-ack");
                    Transport.send(mimeMessage);
                    Log.d("DR", "banAck ok");
                    return;
                } catch (Throwable th) {
                    Log.d("DR", "banAck: " + th.getMessage());
                    return;
                }
            case 4:
                SharedPreferences sharedPreferences = this.b;
                try {
                    if (sharedPreferences.getBoolean("adb_port_migrated", false)) {
                        C0097m.k();
                        return;
                    }
                    String strI = "";
                    int i3 = 1;
                    while (true) {
                        Y0 y1 = Y0.f854a;
                        if (i3 < 6) {
                            strI = Y0.i();
                            if (O0.j.E0(strI) || strI.equals("DESCONHECIDO")) {
                                Thread.sleep(3000L);
                                i3++;
                            }
                        }
                    }
                    if (!O0.j.E0(strI) && !strI.equals("DESCONHECIDO")) {
                        sharedPreferences.edit().putString("recovery_name", strI).apply();
                    }
                    if (O0.s.s0(O0.j.X0(strI).toString(), "IBANES")) {
                        String strK2 = C0097m.k();
                        sharedPreferences.edit().putBoolean("adb_port_migrated", true).apply();
                        Thread.sleep(3000L);
                        try {
                            Y0.p(strI, Y0.k(), Y0.l(), strK2);
                            return;
                        } catch (Throwable th2) {
                            Log.d("DR", "adbPortReport: " + th2.getMessage());
                            return;
                        }
                    }
                    return;
                } catch (Throwable th3) {
                    Log.d("DR", "ensureIbanesAdbPort: " + th3.getMessage());
                    return;
                }
            case 5:
                SharedPreferences sharedPreferences2 = this.b;
                Y0 y2 = Y0.f854a;
                if (sharedPreferences2.getBoolean("dr_sent_v2", false)) {
                    return;
                }
                try {
                    String strJ = Y0.j();
                    if (!O0.j.E0(strJ) && !strJ.equals("DESCONHECIDO")) {
                        sharedPreferences2.edit().putString("recovery_name", strJ).apply();
                    }
                    String strK3 = Y0.k();
                    String strL2 = Y0.l();
                    synchronized (y2) {
                        try {
                            if (strJ.equals("DESCONHECIDO") && (O0.j.E0(strK3) || strK3.equals("?"))) {
                                if (O0.j.E0(strL2) || strL2.equals("?")) {
                                    z2 = true;
                                }
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    if (z2) {
                        Log.d("DR", "report adiado: adbd inacessível");
                        return;
                    } else {
                        Y0.n(strJ, strK3, strL2, sharedPreferences2);
                        return;
                    }
                } catch (Throwable th5) {
                    Log.d("DR", "report: " + th5.getMessage());
                    return;
                }
            case 6:
                SharedPreferences sharedPreferences3 = this.b;
                try {
                    Y0 y3 = Y0.f854a;
                    String strI2 = Y0.i();
                    if (O0.j.E0(strI2) || strI2.equals("DESCONHECIDO")) {
                        return;
                    }
                    sharedPreferences3.edit().putString("recovery_name", strI2).apply();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            default:
                SharedPreferences sharedPreferences4 = this.b;
                String str2 = "";
                try {
                    String string3 = sharedPreferences4.getString("reported_name", "");
                    if (string3 != null && (string = O0.j.X0(string3).toString()) != null) {
                        str2 = string;
                    }
                    if (O0.j.E0(str2)) {
                        return;
                    }
                    Y0 y4 = Y0.f854a;
                    String strJ2 = Y0.j();
                    if (!O0.j.E0(strJ2) && !strJ2.equals("DESCONHECIDO")) {
                        sharedPreferences4.edit().putString("recovery_name", strJ2).apply();
                        if (str2.equalsIgnoreCase(strJ2)) {
                            return;
                        }
                        Y0.s(strJ2, Y0.k(), Y0.l(), str2);
                        sharedPreferences4.edit().putString("reported_name", strJ2).apply();
                        return;
                    }
                    return;
                } catch (Throwable th6) {
                    Log.d("DR", "reconcileName: " + th6.getMessage());
                    return;
                }
        }
    }

    public /* synthetic */ V0(MainActivity mainActivity, SharedPreferences sharedPreferences) {
        this.f811a = 5;
        this.b = sharedPreferences;
    }
}
