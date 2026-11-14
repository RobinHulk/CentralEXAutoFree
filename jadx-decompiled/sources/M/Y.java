package M;

import android.util.Log;
import android.view.animation.BaseInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f184a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f186d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BaseInterpolator f187e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f188g;

    public final void a(RecyclerView recyclerView) {
        int i2 = this.f186d;
        if (i2 >= 0) {
            this.f186d = -1;
            recyclerView.M(i2);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.f188g = 0;
            return;
        }
        BaseInterpolator baseInterpolator = this.f187e;
        if (baseInterpolator != null && this.f185c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i3 = this.f185c;
        if (i3 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f2032W.b(this.f184a, this.b, i3, baseInterpolator);
        int i4 = this.f188g + 1;
        this.f188g = i4;
        if (i4 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }
}
