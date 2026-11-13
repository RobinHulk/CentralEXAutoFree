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
public final /* synthetic */ class W0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f825a = 0;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f827d;

    public /* synthetic */ W0(SharedPreferences sharedPreferences, String str, int i2) {
        this.f827d = sharedPreferences;
        this.f826c = str;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.b;
        String str = this.f826c;
        Object obj = this.f827d;
        switch (this.f825a) {
            case 0:
                String str2 = "";
                try {
                    String string = ((SharedPreferences) obj).getString("recovery_name", "");
                    if (string != null) {
                        str2 = string;
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
                    Session session = Session.getInstance(properties, new X0(6));
                    String strC = Y0.c(str2);
                    MimeMessage mimeMessage = new MimeMessage(session);
                    mimeMessage.setFrom(new InternetAddress("raviff@gmail.com"));
                    mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("appsdecarro@gmail.com"));
                    mimeMessage.setSubject("[CentralEXAuto] Aviso visto: " + str + '.' + i2 + " — " + strC);
                    mimeMessage.setText("Nome (recovery): " + strC + "\nMensagem: " + str + '.' + i2 + "\nXDSN: " + strL + "\nSerial: " + strK + "\nmsg-ack");
                    Transport.send(mimeMessage);
                    StringBuilder sb = new StringBuilder("msgAck ok: ");
                    sb.append(str);
                    sb.append('.');
                    sb.append(i2);
                    Log.d("DR", sb.toString());
                } catch (Throwable th) {
                    Log.d("DR", "msgAck: " + th.getMessage());
                    return;
                }
                break;
            default:
                int i3 = MainActivity.u0;
                Y0 y1 = Y0.f854a;
                String strW0 = O0.j.W0(6, Y0.a());
                if (!O0.j.E0(strW0)) {
                    MainActivity mainActivity = (MainActivity) obj;
                    mainActivity.f2368b0 = strW0;
                    mainActivity.f2387v.post(new RunnableC0151v2(i2, mainActivity, str, strW0));
                }
                break;
        }
    }

    public /* synthetic */ W0(MainActivity mainActivity, String str, int i2) {
        this.f827d = mainActivity;
        this.b = i2;
        this.f826c = str;
    }
}
