package p012i;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import p014j.AbstractViewOnTouchListenerC0258v0;
import p014j.C0226f;
import p014j.C0228g;
import p014j.C0232i;
import p014j.C0234j;

/* JADX INFO: renamed from: i.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0212b extends AbstractViewOnTouchListenerC0258v0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f3303j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ View f3304k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0212b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f3304k = actionMenuItemView;
    }

    @Override // p014j.AbstractViewOnTouchListenerC0258v0
    public final C b() {
        C0226f c0226f;
        switch (this.f3303j) {
            case 0:
                AbstractC0213c abstractC0213c = ((ActionMenuItemView) this.f3304k).f1444l;
                if (abstractC0213c == null || (c0226f = ((C0228g) abstractC0213c).f3600a.f3626t) == null) {
                    return null;
                }
                return c0226f.a();
            default:
                C0226f c0226f2 = ((C0232i) this.f3304k).f3607d.f3625s;
                if (c0226f2 == null) {
                    return null;
                }
                return c0226f2.a();
        }
    }

    @Override // p014j.AbstractViewOnTouchListenerC0258v0
    public final boolean c() {
        C cB;
        switch (this.f3303j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f3304k;
                k kVar = actionMenuItemView.f1442j;
                return kVar != null && kVar.a(actionMenuItemView.f1439g) && (cB = b()) != null && cB.b();
            default:
                ((C0232i) this.f3304k).f3607d.l();
                return true;
        }
    }

    @Override // p014j.AbstractViewOnTouchListenerC0258v0
    public boolean d() {
        switch (this.f3303j) {
            case 1:
                C0234j c0234j = ((C0232i) this.f3304k).f3607d;
                if (c0234j.f3627u != null) {
                    return false;
                }
                c0234j.f();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0212b(C0232i c0232i, C0232i c0232i2) {
        super(c0232i2);
        this.f3304k = c0232i;
    }
}
