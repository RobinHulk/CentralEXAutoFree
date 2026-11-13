package M;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends C0024z {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ A f257q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(A a2, Context context) {
        super(context);
        this.f257q = a2;
    }

    @Override // M.C0024z
    public final float b(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // M.C0024z
    public final void f(View view, Y y2) {
        A a2 = this.f257q;
        RecyclerView recyclerView = a2.f139a;
        if (recyclerView == null) {
            return;
        }
        int[] iArrA = a2.a(recyclerView.getLayoutManager(), view);
        int i2 = iArrA[0];
        int i3 = iArrA[1];
        int iCeil = (int) Math.ceil(((double) c(Math.max(Math.abs(i2), Math.abs(i3)))) / 0.3356d);
        if (iCeil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.f380j;
            y2.f184a = i2;
            y2.b = i3;
            y2.f185c = iCeil;
            y2.f187e = decelerateInterpolator;
            y2.f = true;
        }
    }
}
