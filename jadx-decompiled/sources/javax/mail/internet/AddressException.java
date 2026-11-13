package javax.mail.internet;

import M.d0;

/* JADX INFO: loaded from: classes.dex */
public class AddressException extends ParseException {
    private static final long serialVersionUID = 9134583443539323120L;
    protected int pos;
    protected String ref;

    public AddressException() {
        this.ref = null;
        this.pos = -1;
    }

    public int getPos() {
        return this.pos;
    }

    public String getRef() {
        return this.ref;
    }

    @Override // javax.mail.MessagingException, java.lang.Throwable
    public String toString() {
        String string = super.toString();
        if (this.ref == null) {
            return string;
        }
        String strG = d0.g(d0.i(string, " in string ``"), this.ref, "''");
        if (this.pos < 0) {
            return strG;
        }
        StringBuilder sbI = d0.i(strG, " at position ");
        sbI.append(this.pos);
        return sbI.toString();
    }

    public AddressException(String str) {
        super(str);
        this.ref = null;
        this.pos = -1;
    }

    public AddressException(String str, String str2) {
        super(str);
        this.pos = -1;
        this.ref = str2;
    }

    public AddressException(String str, String str2, int i2) {
        super(str);
        this.ref = str2;
        this.pos = i2;
    }
}
