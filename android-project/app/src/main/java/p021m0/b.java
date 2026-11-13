package p021m0;

import android.graphics.Typeface;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class b extends p026q.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AbstractC0201a f3877h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f3878i;

    public b(d dVar, AbstractC0201a abstractC0201a) {
        this.f3878i = dVar;
        this.f3877h = abstractC0201a;
    }

    @Override // p026q.b
    public final void d(int i2) {
        this.f3878i.f3889k = true;
        this.f3877h.J(i2);
    }

    @Override // p026q.b
    public final void e(Typeface typeface) {
        d dVar = this.f3878i;
        dVar.f3890l = Typeface.create(typeface, dVar.f3882c);
        dVar.f3889k = true;
        this.f3877h.K(dVar.f3890l, false);
    }
}
