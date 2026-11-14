package p029r0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import p025p0.k;

/* JADX INFO: loaded from: classes.dex */
public final class g extends p025p0.g {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Paint f4067x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final RectF f4068y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4069z;

    public g(k kVar) {
        super(kVar == null ? new k() : kVar);
        Paint paint = new Paint(1);
        this.f4067x = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f4068y = new RectF();
    }

    @Override // p025p0.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else {
            this.f4069z = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }
        super.draw(canvas);
        canvas.drawRect(this.f4068y, this.f4067x);
        if (getCallback() instanceof View) {
            return;
        }
        canvas.restoreToCount(this.f4069z);
    }

    public final void l(float f, float f2, float f3, float f4) {
        RectF rectF = this.f4068y;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }
}
