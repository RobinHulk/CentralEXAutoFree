package M;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: M.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0013n implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f294a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0013n(Object obj, int i2) {
        this.f294a = i2;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f294a) {
            case 0:
                int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                C0014o c0014o = (C0014o) this.b;
                c0014o.f304c.setAlpha(iFloatValue);
                c0014o.f305d.setAlpha(iFloatValue);
                c0014o.f319s.invalidate();
                break;
            case 1:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                p025p0.g gVar = ((BottomSheetBehavior) this.b).f2692i;
                if (gVar != null) {
                    p025p0.f fVar = gVar.f3939a;
                    if (fVar.f3930i != fFloatValue) {
                        fVar.f3930i = fFloatValue;
                        gVar.f3942e = true;
                        gVar.invalidateSelf();
                    }
                }
                break;
            case 2:
                ((p029r0.k) this.b).f4086c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                ((TextInputLayout) this.b).f2836D0.i(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
