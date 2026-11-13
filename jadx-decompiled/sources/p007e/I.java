package p007e;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.emoji2.text.q;
import java.lang.ref.WeakReference;
import p011h.a;
import p011h.i;
import p012i.j;
import p012i.l;
import p014j.C0234j;

/* JADX INFO: loaded from: classes.dex */
public final class I extends a implements j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l f2957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public G.a f2958e;
    public WeakReference f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ J f2959g;

    public I(J j2, Context context, G.a aVar) {
        this.f2959g = j2;
        this.f2956c = context;
        this.f2958e = aVar;
        l lVar = new l(context);
        lVar.f3350l = 1;
        this.f2957d = lVar;
        lVar.f3344e = this;
    }

    @Override // p011h.a
    public final void a() {
        J j2 = this.f2959g;
        if (j2.f2969k != this) {
            return;
        }
        if (j2.f2976r) {
            j2.f2970l = this;
            j2.f2971m = this.f2958e;
        } else {
            this.f2958e.z(this);
        }
        this.f2958e = null;
        j2.m0(false);
        ActionBarContextView actionBarContextView = j2.f2966h;
        if (actionBarContextView.f1481k == null) {
            actionBarContextView.e();
        }
        j2.f2964e.setHideOnContentScrollEnabled(j2.f2981w);
        j2.f2969k = null;
    }

    @Override // p012i.j
    public final void b(l lVar) {
        if (this.f2958e == null) {
            return;
        }
        h();
        C0234j c0234j = this.f2959g.f2966h.f1475d;
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
        return this.f2957d;
    }

    @Override // p011h.a
    public final MenuInflater e() {
        return new i(this.f2956c);
    }

    @Override // p011h.a
    public final CharSequence f() {
        return this.f2959g.f2966h.getSubtitle();
    }

    @Override // p011h.a
    public final CharSequence g() {
        return this.f2959g.f2966h.getTitle();
    }

    @Override // p011h.a
    public final void h() {
        if (this.f2959g.f2969k != this) {
            return;
        }
        l lVar = this.f2957d;
        lVar.w();
        try {
            this.f2958e.A(this, lVar);
        } finally {
            lVar.v();
        }
    }

    @Override // p011h.a
    public final boolean i() {
        return this.f2959g.f2966h.f1489s;
    }

    @Override // p011h.a
    public final void j(View view) {
        this.f2959g.f2966h.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // p011h.a
    public final void k(int i2) {
        l(this.f2959g.f2962c.getResources().getString(i2));
    }

    @Override // p011h.a
    public final void l(CharSequence charSequence) {
        this.f2959g.f2966h.setSubtitle(charSequence);
    }

    @Override // p011h.a
    public final void m(int i2) {
        n(this.f2959g.f2962c.getResources().getString(i2));
    }

    @Override // p011h.a
    public final void n(CharSequence charSequence) {
        this.f2959g.f2966h.setTitle(charSequence);
    }

    @Override // p012i.j
    public final boolean o(l lVar, MenuItem menuItem) {
        G.a aVar = this.f2958e;
        if (aVar != null) {
            return ((q) aVar.b).c(this, menuItem);
        }
        return false;
    }

    @Override // p011h.a
    public final void p(boolean z2) {
        this.b = z2;
        this.f2959g.f2966h.setTitleOptional(z2);
    }
}
