package O0;

import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matcher f421a;
    public final CharSequence b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f422c;

    public e(Matcher matcher, CharSequence charSequence) {
        I0.f.e(charSequence, "input");
        this.f421a = matcher;
        this.b = charSequence;
    }

    public final List a() {
        if (this.f422c == null) {
            this.f422c = new d(this);
        }
        d dVar = this.f422c;
        I0.f.b(dVar);
        return dVar;
    }
}
