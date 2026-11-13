package T;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/* JADX INFO: loaded from: classes.dex */
public final class X0 extends Authenticator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f841a;

    @Override // javax.mail.Authenticator
    public final PasswordAuthentication getPasswordAuthentication() {
        switch (this.f841a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
        }
        return new PasswordAuthentication("aa3afa001@smtp-brevo.com", "REDACTED_NOT_A_VALID_CREDENTIAL");
    }
}

