package E;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f64a;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        switch (this.f64a) {
            case 0:
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            default:
                float f3 = f - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }
}
