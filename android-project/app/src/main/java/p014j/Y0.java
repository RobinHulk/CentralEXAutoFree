package p014j;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 extends TouchDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f3501a;
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f3502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f3503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3504e;
    public boolean f;

    public Y0(Rect rect, Rect rect2, View view) {
        super(rect, view);
        int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f3504e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.b = rect3;
        Rect rect4 = new Rect();
        this.f3503d = rect4;
        Rect rect5 = new Rect();
        this.f3502c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i2 = -scaledTouchSlop;
        rect4.inset(i2, i2);
        rect5.set(rect2);
        this.f3501a = view;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003e  */
    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z4 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z3 = this.f;
                if (z3 && !this.f3503d.contains(x2, y2)) {
                    z4 = z3;
                    z2 = false;
                }
            } else if (action != 3) {
                z2 = true;
                z4 = false;
            } else {
                z3 = this.f;
                this.f = false;
            }
            z4 = z3;
            z2 = true;
        } else if (this.b.contains(x2, y2)) {
            this.f = true;
            z2 = true;
        } else {
            z2 = true;
            z4 = false;
        }
        if (!z4) {
            return false;
        }
        Rect rect = this.f3502c;
        View view = this.f3501a;
        if (!z2 || rect.contains(x2, y2)) {
            motionEvent.setLocation(x2 - rect.left, y2 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
