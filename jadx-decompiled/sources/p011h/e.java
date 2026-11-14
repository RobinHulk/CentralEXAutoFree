package p011h;

import G.a;
import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.emoji2.text.q;
import java.lang.ref.WeakReference;
import p012i.j;
import p012i.l;
import p014j.C0234j;

/* JADX INFO: loaded from: classes.dex */
public final class e extends a implements j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f3221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContextView f3222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f3223e;
    public WeakReference f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3224g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f3225h;

    @Override // p011h.a
    public final void a() {
        if (this.f3224g) {
            return;
        }
        this.f3224g = true;
        this.f3223e.z(this);
    }

    @Override // p012i.j
    public final void b(l lVar) {
        h();
        C0234j c0234j = this.f3222d.f1475d;
        if (c0234j != null) {
            c0234j.l();
        }
    }

    @Override // p011h.a
    public final View c() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p011h.a
    public final l d() {
        return this.f3225h;
    }

    @Override // p011h.a
    public final MenuInflater e() {
        return new i(this.f3222d.getContext());
    }

    @Override // p011h.a
    public final CharSequence f() {
        return this.f3222d.getSubtitle();
    }

    @Override // p011h.a
    public final CharSequence g() {
        return this.f3222d.getTitle();
    }

    @Override // p011h.a
    public final void h() {
        this.f3223e.A(this, this.f3225h);
    }

    @Override // p011h.a
    public final boolean i() {
        return this.f3222d.f1489s;
    }

    @Override // p011h.a
    public final void j(View view) {
        this.f3222d.setCustomView(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // p011h.a
    public final void k(int i2) {
        l(this.f3221c.getString(i2));
    }

    @Override // p011h.a
    public final void l(CharSequence charSequence) {
        this.f3222d.setSubtitle(charSequence);
    }

    @Override // p011h.a
    public final void m(int i2) {
        n(this.f3221c.getString(i2));
    }

    @Override // p011h.a
    public final void n(CharSequence charSequence) {
        this.f3222d.setTitle(charSequence);
    }

    @Override // p012i.j
    public final boolean o(l lVar, MenuItem menuItem) {
        return ((q) this.f3223e.b).c(this, menuItem);
    }

    @Override // p011h.a
    public final void p(boolean z2) {
        this.b = z2;
        this.f3222d.setTitleOptional(z2);
    }
}
