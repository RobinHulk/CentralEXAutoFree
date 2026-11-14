package p021m0;

import A.e;
import android.graphics.Typeface;
import p007e.AbstractC0201a;
import p017k0.b;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Typeface f3875a;
    public final e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3876c;

    public a(e eVar, Typeface typeface) {
        this.f3875a = typeface;
        this.b = eVar;
    }

    @Override // p007e.AbstractC0201a
    public final void J(int i2) {
        if (this.f3876c) {
            return;
        }
        b bVar = (b) this.b.b;
        a aVar = bVar.f3775v;
        if (aVar != null) {
            aVar.f3876c = true;
        }
        Typeface typeface = bVar.f3772s;
        Typeface typeface2 = this.f3875a;
        if (typeface != typeface2) {
            bVar.f3772s = typeface2;
            bVar.g();
        }
    }

    @Override // p007e.AbstractC0201a
    public final void K(Typeface typeface, boolean z2) {
        if (this.f3876c) {
            return;
        }
        b bVar = (b) this.b.b;
        a aVar = bVar.f3775v;
        if (aVar != null) {
            aVar.f3876c = true;
        }
        if (bVar.f3772s != typeface) {
            bVar.f3772s = typeface;
            bVar.g();
        }
    }
}
