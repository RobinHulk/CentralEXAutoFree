package I0;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f125a;
    public Object b;

    public l(String str) {
        this.f125a = 1;
        Pattern patternCompile = Pattern.compile(str);
        f.d(patternCompile, "compile(...)");
        this.b = patternCompile;
    }

    public static O0.e a(l lVar, String str) {
        lVar.getClass();
        f.e(str, "input");
        Matcher matcher = ((Pattern) lVar.b).matcher(str);
        f.d(matcher, "matcher(...)");
        return A.b.e(matcher, 0, str);
    }

    public final String toString() {
        switch (this.f125a) {
            case 0:
                return String.valueOf(this.b);
            default:
                String string = ((Pattern) this.b).toString();
                f.d(string, "toString(...)");
                return string;
        }
    }

    public l(int i2) {
        this.f125a = i2;
        switch (i2) {
            case 1:
                Pattern patternCompile = Pattern.compile("EXCLUSIVO\\s+D[OE]\\s+(.+)", 66);
                f.d(patternCompile, "compile(...)");
                this.b = patternCompile;
                break;
        }
    }
}
