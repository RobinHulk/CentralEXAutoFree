package T;

import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class N4 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public M4 f707a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f710e;

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 5 || motionEvent.getPointerCount() != 2) {
            return false;
        }
        this.f708c = true;
        int iMin = Math.min(2, motionEvent.getPointerCount());
        float y2 = 0.0f;
        float x2 = 0.0f;
        for (int i2 = 0; i2 < iMin; i2++) {
            x2 += motionEvent.getX(i2);
        }
        this.f709d = x2 / iMin;
        int iMin2 = Math.min(2, motionEvent.getPointerCount());
        for (int i3 = 0; i3 < iMin2; i3++) {
            y2 += motionEvent.getY(i3);
        }
        this.f710e = y2 / iMin2;
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f708c) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (motionEvent.getPointerCount() >= 2) {
                    int iMin = Math.min(2, motionEvent.getPointerCount());
                    float x2 = 0.0f;
                    for (int i2 = 0; i2 < iMin; i2++) {
                        x2 += motionEvent.getX(i2);
                    }
                    float f = x2 / iMin;
                    int iMin2 = Math.min(2, motionEvent.getPointerCount());
                    float y2 = 0.0f;
                    for (int i3 = 0; i3 < iMin2; i3++) {
                        y2 += motionEvent.getY(i3);
                    }
                    float f2 = y2 / iMin2;
                    float f3 = f - this.f709d;
                    float f4 = f2 - this.f710e;
                    if (Math.abs(f3) >= this.b && Math.abs(f3) > Math.abs(f4)) {
                        M4 m4 = this.f707a;
                        if (m4 != null) {
                            int i4 = f3 > 0.0f ? 1 : -1;
                            List list = QuickAccessFloaterService.f2436j0;
                            ((U3) m4).f809a.c(i4);
                        }
                        this.f709d = f;
                        this.f710e = f2;
                    }
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked == 6 && motionEvent.getPointerCount() <= 2) {
                    this.f708c = false;
                }
                return true;
            }
        }
        this.f708c = false;
        return true;
    }

    public void setOnTwoFingerHorizontalSwipeListener(M4 m4) {
        this.f707a = m4;
    }

    public void setStepPx(float f) {
        this.b = f;
    }
}
