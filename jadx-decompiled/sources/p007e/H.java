package p007e;

import G.a;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;
import p034y.B;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2955a;
    public final /* synthetic */ J b;

    public /* synthetic */ H(J j2, int i2) {
        this.f2955a = i2;
        this.b = j2;
    }

    @Override // p034y.W
    public final void a() {
        View view;
        J j2 = this.b;
        switch (this.f2955a) {
            case 0:
                if (j2.f2975q && (view = j2.f2967i) != null) {
                    view.setTranslationY(0.0f);
                    j2.f.setTranslationY(0.0f);
                }
                j2.f.setVisibility(8);
                j2.f.setTransitioning(false);
                j2.f2979u = null;
                a aVar = j2.f2971m;
                if (aVar != null) {
                    aVar.z(j2.f2970l);
                    j2.f2970l = null;
                    j2.f2971m = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = j2.f2964e;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = N.f4222a;
                    B.c(actionBarOverlayLayout);
                }
                break;
            default:
                j2.f2979u = null;
                j2.f.requestLayout();
                break;
        }
    }
}
