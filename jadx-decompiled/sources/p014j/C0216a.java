package p014j;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import p034y.W;

/* JADX INFO: renamed from: j.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0216a implements W {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3520a = false;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActionBarContextView f3521c;

    public C0216a(ActionBarContextView actionBarContextView) {
        this.f3521c = actionBarContextView;
    }

    @Override // p034y.W
    public final void a() {
        if (this.f3520a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.f3521c;
        actionBarContextView.f = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // p034y.W
    public final void b(View view) {
        this.f3520a = true;
    }

    @Override // p034y.W
    public final void c() {
        super/*android.view.View*/.setVisibility(0);
        this.f3520a = false;
    }
}
