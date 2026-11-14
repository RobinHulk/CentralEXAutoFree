package O0;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f412a;
    public static final Charset b;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        I0.f.d(charsetForName, "forName(...)");
        f412a = charsetForName;
        I0.f.d(Charset.forName("UTF-16"), "forName(...)");
        I0.f.d(Charset.forName("UTF-16BE"), "forName(...)");
        I0.f.d(Charset.forName("UTF-16LE"), "forName(...)");
        Charset charsetForName2 = Charset.forName("US-ASCII");
        I0.f.d(charsetForName2, "forName(...)");
        b = charsetForName2;
        I0.f.d(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
