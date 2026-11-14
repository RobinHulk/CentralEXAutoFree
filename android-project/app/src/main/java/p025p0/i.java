package p025p0;

import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class i extends AbstractC0201a {
    @Override // p007e.AbstractC0201a
    public final void z(t tVar, float f, float f2) {
        tVar.d(f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        p pVar = new p(0.0f, 0.0f, f3, f3);
        pVar.f = 180.0f;
        pVar.f3995g = 90.0f;
        tVar.f.add(pVar);
        n nVar = new n(pVar);
        tVar.a(180.0f);
        tVar.f4003g.add(nVar);
        tVar.f4001d = 270.0f;
        float f4 = (0.0f + f3) * 0.5f;
        float f5 = (f3 - 0.0f) / 2.0f;
        double d2 = 270.0f;
        tVar.b = (((float) Math.cos(Math.toRadians(d2))) * f5) + f4;
        tVar.f4000c = (f5 * ((float) Math.sin(Math.toRadians(d2)))) + f4;
    }
}
