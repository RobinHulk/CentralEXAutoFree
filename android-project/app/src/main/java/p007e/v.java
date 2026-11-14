package p007e;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import p011h.d;

/* JADX INFO: loaded from: classes.dex */
public final class v extends ContentFrameLayout {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x f3068i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(x xVar, d dVar) {
        super(dVar, null);
        this.f3068i = xVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f3068i.A(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (x2 < -5 || y2 < -5 || x2 > getWidth() + 5 || y2 > getHeight() + 5) {
                x xVar = this.f3068i;
                xVar.y(xVar.F(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i2) {
        setBackgroundDrawable(AbstractC0201a.A(getContext(), i2));
    }
}
