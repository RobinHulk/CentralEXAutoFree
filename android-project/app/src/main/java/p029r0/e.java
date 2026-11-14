package p029r0;

import Z.a;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashSet;
import p007e.AbstractC0201a;
import p014j.Q0;
import p014j.S0;

/* JADX INFO: loaded from: classes.dex */
public final class e extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Q0 f4061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final S0 f4062e;
    public final a f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f4063g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AnimatorSet f4064h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ValueAnimator f4065i;

    public e(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f4061d = new Q0(this, 1);
        this.f4062e = new S0(this, 1);
        this.f = new a(this, 0);
        this.f4063g = new b(this, 0);
    }

    @Override // p029r0.l
    public final void a() {
        Drawable drawableA = AbstractC0201a.A(this.b, R.drawable.mtrl_ic_cancel);
        TextInputLayout textInputLayout = this.f4085a;
        textInputLayout.setEndIconDrawable(drawableA);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        textInputLayout.setEndIconOnClickListener(new j(this, 5));
        LinkedHashSet linkedHashSet = textInputLayout.f2858b0;
        a aVar = this.f;
        linkedHashSet.add(aVar);
        if (textInputLayout.f2863e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f2865f0.add(this.f4063g);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(a.f1391d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new d(this, 1));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = a.f1389a;
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(100L);
        valueAnimatorOfFloat2.addUpdateListener(new d(this, 0));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f4064h = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f4064h.addListener(new c(this, 0));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat3.setDuration(100L);
        valueAnimatorOfFloat3.addUpdateListener(new d(this, 0));
        this.f4065i = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, 1));
    }

    @Override // p029r0.l
    public final void c(boolean z2) {
        if (this.f4085a.getSuffixText() == null) {
            return;
        }
        d(z2);
    }

    public final void d(boolean z2) {
        boolean z3 = this.f4085a.g() == z2;
        if (z2) {
            this.f4065i.cancel();
            this.f4064h.start();
            if (z3) {
                this.f4064h.end();
                return;
            }
            return;
        }
        this.f4064h.cancel();
        this.f4065i.start();
        if (z3) {
            this.f4065i.end();
        }
    }
}
