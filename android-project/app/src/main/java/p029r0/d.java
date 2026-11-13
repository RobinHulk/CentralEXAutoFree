package p029r0;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4060a;
    public final /* synthetic */ e b;

    public /* synthetic */ d(e eVar, int i2) {
        this.f4060a = i2;
        this.b = eVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f4060a) {
            case 0:
                this.b.f4086c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                e eVar = this.b;
                eVar.f4086c.setScaleX(fFloatValue);
                eVar.f4086c.setScaleY(fFloatValue);
                break;
        }
    }
}
