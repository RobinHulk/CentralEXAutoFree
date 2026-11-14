package O0;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class q extends p {
    public static Float o0(String str) {
        I0.f.e(str, "<this>");
        try {
            I0.l lVar = i.f427a;
            lVar.getClass();
            if (((Pattern) lVar.b).matcher(str).matches()) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
