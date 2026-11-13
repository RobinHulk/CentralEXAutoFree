package O0;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class f extends I0.g implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I0.l f423a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f424c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(I0.l lVar, String str, int i2) {
        super(0);
        this.f423a = lVar;
        this.b = str;
        this.f424c = i2;
    }

    @Override // H0.a
    public final Object a() {
        String str = this.b;
        I0.l lVar = this.f423a;
        lVar.getClass();
        Matcher matcher = ((Pattern) lVar.b).matcher(str);
        I0.f.d(matcher, "matcher(...)");
        return A.b.e(matcher, this.f424c, str);
    }
}
