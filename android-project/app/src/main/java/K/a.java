package K;

import androidx.lifecycle.G;
import p020m.l;

/* JADX INFO: loaded from: classes.dex */
public class a extends G {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f131c = new l();

    @Override // androidx.lifecycle.G
    public final void a() {
        l lVar = this.f131c;
        int i2 = lVar.f3874c;
        if (i2 > 0) {
            lVar.b[0].getClass();
            throw new ClassCastException();
        }
        Object[] objArr = lVar.b;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        lVar.f3874c = 0;
    }
}
