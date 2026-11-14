package O0;

import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g extends I0.d implements H0.l {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g f425h = new g(1, e.class, "next", "next()Lkotlin/text/MatchResult;");

    @Override // H0.l
    public final Object b(Object obj) {
        e eVar = (e) obj;
        I0.f.e(eVar, "p0");
        Matcher matcher = eVar.f421a;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        CharSequence charSequence = eVar.b;
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        I0.f.d(matcher2, "matcher(...)");
        return A.b.e(matcher2, iEnd, charSequence);
    }
}
