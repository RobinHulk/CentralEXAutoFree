package T;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: renamed from: T.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0162x3 extends ViewOutlineProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1207a;

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f1207a) {
            case 0:
                I0.f.e(view, "v");
                I0.f.e(outline, "o");
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 4.0f);
                break;
            default:
                int width = view.getWidth();
                int height = view.getHeight();
                if (width > 0 && height > 0) {
                    outline.setOval(0, 0, width, height);
                    break;
                }
                break;
        }
    }
}
