package p029r0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import p014j.C0219b0;

/* JADX INFO: loaded from: classes.dex */
public final class m extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4087a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f4089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f4090e;

    public m(n nVar, int i2, TextView textView, int i3, TextView textView2) {
        this.f4090e = nVar;
        this.f4087a = i2;
        this.b = textView;
        this.f4088c = i3;
        this.f4089d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0219b0 c0219b0;
        int i2 = this.f4087a;
        n nVar = this.f4090e;
        nVar.f4097i = i2;
        nVar.f4095g = null;
        TextView textView = this.b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f4088c == 1 && (c0219b0 = nVar.f4101m) != null) {
                c0219b0.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f4089d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f4089d;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
