package T;

import android.view.SurfaceView;
import android.widget.FrameLayout;
import com.ex.auto.ExSapoCastActivity;

/* JADX INFO: renamed from: T.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0051e1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f947a;
    public final /* synthetic */ ExSapoCastActivity b;

    public /* synthetic */ RunnableC0051e1(ExSapoCastActivity exSapoCastActivity, int i2) {
        this.f947a = i2;
        this.b = exSapoCastActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        ExSapoCastActivity exSapoCastActivity = this.b;
        switch (this.f947a) {
            case 0:
                FrameLayout frameLayout = exSapoCastActivity.f2247a;
                if (frameLayout == null) {
                    I0.f.h("root");
                    throw null;
                }
                int width = frameLayout.getWidth();
                if (width < 1) {
                    width = 1;
                }
                FrameLayout frameLayout2 = exSapoCastActivity.f2247a;
                if (frameLayout2 == null) {
                    I0.f.h("root");
                    throw null;
                }
                int height = frameLayout2.getHeight();
                if (height < 1) {
                    height = 1;
                }
                int i3 = exSapoCastActivity.f2248c;
                if (i3 <= 0 || (i2 = exSapoCastActivity.f2249d) <= 0) {
                    return;
                }
                float fMin = Math.min(width / i3, height / i2);
                int i4 = (int) (exSapoCastActivity.f2248c * fMin);
                if (i4 < 1) {
                    i4 = 1;
                }
                int i5 = (int) (exSapoCastActivity.f2249d * fMin);
                int i6 = i5 >= 1 ? i5 : 1;
                SurfaceView surfaceView = exSapoCastActivity.b;
                if (surfaceView == null) {
                    I0.f.h("surfaceView");
                    throw null;
                }
                surfaceView.setLayoutParams(new FrameLayout.LayoutParams(i4, i6, 17));
                SurfaceView surfaceView2 = exSapoCastActivity.b;
                if (surfaceView2 != null) {
                    surfaceView2.requestLayout();
                    return;
                } else {
                    I0.f.h("surfaceView");
                    throw null;
                }
            default:
                int i7 = ExSapoCastActivity.f2246e;
                exSapoCastActivity.finish();
                return;
        }
    }
}
