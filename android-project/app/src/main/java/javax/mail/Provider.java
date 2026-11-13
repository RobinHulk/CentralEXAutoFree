package javax.mail;

import M.d0;
import androidx.fragment.app.Q;

/* JADX INFO: loaded from: classes.dex */
public class Provider {
    private String className;
    private String protocol;
    private Type type;
    private String vendor;
    private String version;

    public static class Type {
        public static final Type STORE = new Type("STORE");
        public static final Type TRANSPORT = new Type("TRANSPORT");
        private String type;

        private Type(String str) {
            this.type = str;
        }

        public String toString() {
            return this.type;
        }
    }

    public Provider(Type type, String str, String str2, String str3, String str4) {
        this.type = type;
        this.protocol = str;
        this.className = str2;
        this.vendor = str3;
        this.version = str4;
    }

    public String getClassName() {
        return this.className;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public Type getType() {
        return this.type;
    }

    public String getVendor() {
        return this.vendor;
    }

    public String getVersion() {
        return this.version;
    }

    public String toString() {
        String string = "javax.mail.Provider[" + this.type + "," + this.protocol + "," + this.className;
        if (this.vendor != null) {
            StringBuilder sbI = d0.i(string, ",");
            sbI.append(this.vendor);
            string = sbI.toString();
        }
        if (this.version != null) {
            StringBuilder sbI2 = d0.i(string, ",");
            sbI2.append(this.version);
            string = sbI2.toString();
        }
        return Q.d(string, "]");
    }
}
