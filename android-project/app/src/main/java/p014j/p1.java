package p014j;

import android.content.Context;
import android.view.View;
import android.view.Window;
import p012i.C0211a;

/* JADX INFO: loaded from: classes.dex */
public final class p1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0211a f3657a;
    public final /* synthetic */ q1 b;

    public p1(q1 q1Var) {
        this.b = q1Var;
        Context context = q1Var.f3662a.getContext();
        CharSequence charSequence = q1Var.f3667h;
        C0211a c0211a = new C0211a();
        c0211a.f3292e = 4096;
        c0211a.f3293g = 4096;
        c0211a.f3298l = null;
        c0211a.f3299m = null;
        c0211a.f3300n = false;
        c0211a.f3301o = false;
        c0211a.f3302p = 16;
        c0211a.f3295i = context;
        c0211a.f3289a = charSequence;
        this.f3657a = c0211a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        q1 q1Var = this.b;
        Window.Callback callback = q1Var.f3670k;
        if (callback == null || !q1Var.f3671l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f3657a);
    }
}
