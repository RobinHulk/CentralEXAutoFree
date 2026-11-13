package p014j;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class F extends SeekBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final G f3447a;

    public F(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        e1.a(this, getContext());
        G g2 = new G(this);
        this.f3447a = g2;
        g2.d(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        G g2 = this.f3447a;
        Drawable drawable = g2.f;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        F f = g2.f3448e;
        if (drawable.setState(f.getDrawableState())) {
            f.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3447a.f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f3447a.i(canvas);
    }
}
