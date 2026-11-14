package p029r0;

import Z.a;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p014j.C0219b0;
import p034y.A;
import p034y.AbstractC0291z;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4091a;
    public final TextInputLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f4092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FrameLayout f4094e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AnimatorSet f4095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f4096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4097i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4098j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f4099k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4100l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0219b0 f4101m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f4102n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f4104p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f4105q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4106r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C0219b0 f4107s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4108t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ColorStateList f4109u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Typeface f4110v;

    public n(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f4091a = context;
        this.b = textInputLayout;
        this.f4096h = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void a(C0219b0 c0219b0, int i2) {
        if (this.f4092c == null && this.f4094e == null) {
            Context context = this.f4091a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f4092c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f4092c;
            TextInputLayout textInputLayout = this.b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f4094e = new FrameLayout(context);
            this.f4092c.addView(this.f4094e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i2 == 0 || i2 == 1) {
            this.f4094e.setVisibility(0);
            this.f4094e.addView(c0219b0);
            this.f++;
        } else {
            this.f4092c.addView(c0219b0, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f4092c.setVisibility(0);
        this.f4093d++;
    }

    public final void b() {
        if (this.f4092c != null) {
            TextInputLayout textInputLayout = this.b;
            if (textInputLayout.getEditText() != null) {
                LinearLayout linearLayout = this.f4092c;
                EditText editText = textInputLayout.getEditText();
                WeakHashMap weakHashMap = N.f4222a;
                AbstractC0291z.k(linearLayout, AbstractC0291z.f(editText), 0, AbstractC0291z.e(textInputLayout.getEditText()), 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f4095g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z2, C0219b0 c0219b0, int i2, int i3, int i4) {
        if (c0219b0 == null || !z2) {
            return;
        }
        if (i2 == i4 || i2 == i3) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(c0219b0, (Property<C0219b0, Float>) View.ALPHA, i4 == i2 ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(a.f1389a);
            arrayList.add(objectAnimatorOfFloat);
            if (i4 == i2) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(c0219b0, (Property<C0219b0, Float>) View.TRANSLATION_Y, -this.f4096h, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(a.f1391d);
                arrayList.add(objectAnimatorOfFloat2);
            }
        }
    }

    public final boolean e() {
        return (this.f4098j != 1 || this.f4101m == null || TextUtils.isEmpty(this.f4099k)) ? false : true;
    }

    public final TextView f(int i2) {
        if (i2 == 1) {
            return this.f4101m;
        }
        if (i2 != 2) {
            return null;
        }
        return this.f4107s;
    }

    public final void g() {
        this.f4099k = null;
        c();
        if (this.f4097i == 1) {
            if (!this.f4106r || TextUtils.isEmpty(this.f4105q)) {
                this.f4098j = 0;
            } else {
                this.f4098j = 2;
            }
        }
        j(this.f4097i, this.f4098j, i(this.f4101m, null));
    }

    public final void h(C0219b0 c0219b0, int i2) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f4092c;
        if (linearLayout == null) {
            return;
        }
        if (!(i2 == 0 || i2 == 1) || (frameLayout = this.f4094e) == null) {
            linearLayout.removeView(c0219b0);
        } else {
            int i3 = this.f - 1;
            this.f = i3;
            if (i3 == 0) {
                frameLayout.setVisibility(8);
            }
            this.f4094e.removeView(c0219b0);
        }
        int i4 = this.f4093d - 1;
        this.f4093d = i4;
        LinearLayout linearLayout2 = this.f4092c;
        if (i4 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean i(C0219b0 c0219b0, CharSequence charSequence) {
        WeakHashMap weakHashMap = N.f4222a;
        TextInputLayout textInputLayout = this.b;
        return A.c(textInputLayout) && textInputLayout.isEnabled() && !(this.f4098j == this.f4097i && c0219b0 != null && TextUtils.equals(c0219b0.getText(), charSequence));
    }

    public final void j(int i2, int i3, boolean z2) {
        TextView textViewF;
        TextView textViewF2;
        if (i2 == i3) {
            return;
        }
        if (z2) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f4095g = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f4106r, this.f4107s, 2, i2, i3);
            d(arrayList, this.f4100l, this.f4101m, 1, i2, i3);
            int size = arrayList.size();
            long jMax = 0;
            for (int i4 = 0; i4 < size; i4++) {
                Animator animator = (Animator) arrayList.get(i4);
                jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
            valueAnimatorOfInt.setDuration(jMax);
            arrayList.add(0, valueAnimatorOfInt);
            animatorSet.playTogether(arrayList);
            animatorSet.addListener(new m(this, i3, f(i2), i2, f(i3)));
            animatorSet.start();
        } else if (i2 != i3) {
            if (i3 != 0 && (textViewF2 = f(i3)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i2 != 0 && (textViewF = f(i2)) != null) {
                textViewF.setVisibility(4);
                if (i2 == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            this.f4097i = i3;
        }
        TextInputLayout textInputLayout = this.b;
        textInputLayout.p();
        textInputLayout.s(z2, false);
        textInputLayout.z();
    }
}
