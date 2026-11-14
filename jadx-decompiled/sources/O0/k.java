package O0;

import androidx.fragment.app.Q;

/* JADX INFO: loaded from: classes.dex */
public final class k extends I0.g implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f428a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(Object obj, int i2) {
        super(1);
        this.f428a = i2;
        this.b = obj;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        switch (this.f428a) {
            case 0:
                String str = (String) obj;
                I0.f.e(str, "it");
                boolean zE0 = j.E0(str);
                String str2 = (String) this.b;
                if (zE0) {
                    return str.length() < str2.length() ? str2 : str;
                }
                return Q.d(str2, str);
            case 1:
                L0.c cVar = (L0.c) obj;
                I0.f.e(cVar, "it");
                return j.P0((CharSequence) this.b, cVar);
            default:
                return obj == ((w0.e) this.b) ? "(this Collection)" : String.valueOf(obj);
        }
    }
}
