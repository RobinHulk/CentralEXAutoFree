package p011h;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import p012i.B;

/* JADX INFO: loaded from: classes.dex */
public final class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3226a;
    public final a b;

    public f(Context context, a aVar) {
        this.f3226a = context;
        this.b = aVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.b.c();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new B(this.f3226a, this.b.d());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.b.e();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.b.f3216a;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.b.b;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.b.h();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.b.i();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.b.j(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.b.l(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.b.f3216a = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.b.n(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z2) {
        this.b.p(z2);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i2) {
        this.b.k(i2);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i2) {
        this.b.m(i2);
    }
}
