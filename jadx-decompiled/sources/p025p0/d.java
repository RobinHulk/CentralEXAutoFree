package p025p0;

import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AbstractC0201a {
    @Override // p007e.AbstractC0201a
    public final void z(t tVar, float f, float f2) {
        tVar.d(f2 * f, 180.0f, 90.0f);
        double d2 = f2;
        double d3 = f;
        tVar.c((float) (Math.sin(Math.toRadians(90.0f)) * d2 * d3), (float) (Math.sin(Math.toRadians(0.0f)) * d2 * d3));
    }
}
