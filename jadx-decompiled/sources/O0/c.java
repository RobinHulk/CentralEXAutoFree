package O0;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class c implements N0.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f417a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final I0.g f419d;

    /* JADX WARN: Multi-variable type inference failed */
    public c(CharSequence charSequence, int i2, int i3, H0.p pVar) {
        I0.f.e(charSequence, "input");
        this.f417a = charSequence;
        this.b = i2;
        this.f418c = i3;
        this.f419d = (I0.g) pVar;
    }

    @Override // N0.f
    public final Iterator iterator() {
        return new b(this);
    }
}
