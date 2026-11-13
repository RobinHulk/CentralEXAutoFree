package p007e;

import G.a;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;
import p034y.B;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class q extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3060a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q(Object obj, int i2) {
        this.f3060a = i2;
        this.b = obj;
    }

    @Override // p034y.W
    public final void a() {
        Object obj = this.b;
        switch (this.f3060a) {
            case 0:
                o oVar = (o) obj;
                oVar.b.f3128v.setAlpha(1.0f);
                x xVar = oVar.b;
                xVar.f3131y.d(null);
                xVar.f3131y = null;
                break;
            case 1:
                x xVar2 = (x) obj;
                xVar2.f3128v.setAlpha(1.0f);
                xVar2.f3131y.d(null);
                xVar2.f3131y = null;
                break;
            default:
                a aVar = (a) obj;
                ((x) aVar.f93c).f3128v.setVisibility(8);
                x xVar3 = (x) aVar.f93c;
                PopupWindow popupWindow = xVar3.f3129w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (xVar3.f3128v.getParent() instanceof View) {
                    View view = (View) xVar3.f3128v.getParent();
                    WeakHashMap weakHashMap = N.f4222a;
                    B.c(view);
                }
                xVar3.f3128v.e();
                xVar3.f3131y.d(null);
                xVar3.f3131y = null;
                ViewGroup viewGroup = xVar3.f3086A;
                WeakHashMap weakHashMap2 = N.f4222a;
                B.c(viewGroup);
                break;
        }
    }

    @Override // p007e.AbstractC0201a, p034y.W
    public void c() {
        Object obj = this.b;
        switch (this.f3060a) {
            case 0:
                ((o) obj).b.f3128v.setVisibility(0);
                break;
            case 1:
                x xVar = (x) obj;
                xVar.f3128v.setVisibility(0);
                if (xVar.f3128v.getParent() instanceof View) {
                    View view = (View) xVar.f3128v.getParent();
                    WeakHashMap weakHashMap = N.f4222a;
                    B.c(view);
                }
                break;
        }
    }
}
