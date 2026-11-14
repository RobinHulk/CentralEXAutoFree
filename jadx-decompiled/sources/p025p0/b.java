package p025p0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3922a;
    public final float b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f3922a;
            f += ((b) cVar).b;
        }
        this.f3922a = cVar;
        this.b = f;
    }

    @Override // p025p0.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f3922a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3922a.equals(bVar.f3922a) && this.b == bVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3922a, Float.valueOf(this.b)});
    }
}
