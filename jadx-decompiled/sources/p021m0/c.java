package p021m0;

import android.graphics.Typeface;
import android.text.TextPaint;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class c extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextPaint f3879a;
    public final /* synthetic */ AbstractC0201a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f3880c;

    public c(d dVar, TextPaint textPaint, AbstractC0201a abstractC0201a) {
        this.f3880c = dVar;
        this.f3879a = textPaint;
        this.b = abstractC0201a;
    }

    @Override // p007e.AbstractC0201a
    public final void J(int i2) {
        this.b.J(i2);
    }

    @Override // p007e.AbstractC0201a
    public final void K(Typeface typeface, boolean z2) {
        this.f3880c.d(this.f3879a, typeface);
        this.b.K(typeface, z2);
    }
}
