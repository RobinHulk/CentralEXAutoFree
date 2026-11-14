package p025p0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3921a;

    public a(float f) {
        this.f3921a = f;
    }

    @Override // p025p0.c
    public final float a(RectF rectF) {
        return this.f3921a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f3921a == ((a) obj).f3921a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3921a)});
    }
}
