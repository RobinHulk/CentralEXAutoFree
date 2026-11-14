package p031u;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Locale[] f4136a = {new Locale("en", "XA"), new Locale("ar", "XB")};

    public static Locale a(String str) {
        return Locale.forLanguageTag(str);
    }

    public static boolean b(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return true;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage())) {
            return false;
        }
        Locale[] localeArr = f4136a;
        for (Locale locale3 : localeArr) {
            if (locale3.equals(locale)) {
                return false;
            }
        }
        for (Locale locale4 : localeArr) {
            if (locale4.equals(locale2)) {
                return false;
            }
        }
        String strC = p032w.c.c(p032w.c.a(p032w.c.b(locale)));
        if (!strC.isEmpty()) {
            return strC.equals(p032w.c.c(p032w.c.a(p032w.c.b(locale2))));
        }
        String country = locale.getCountry();
        return country.isEmpty() || country.equals(locale2.getCountry());
    }
}
