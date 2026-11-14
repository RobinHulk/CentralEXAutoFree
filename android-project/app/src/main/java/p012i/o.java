package p012i;

import A.e;
import android.view.ActionProvider;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class o implements ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionProvider f3392a;
    public final /* synthetic */ s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f3393c;

    public o(s sVar, ActionProvider actionProvider) {
        this.b = sVar;
        this.f3392a = actionProvider;
    }

    public final View a(n nVar) {
        return this.f3392a.onCreateActionView(nVar);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z2) {
        e eVar = this.f3393c;
        if (eVar != null) {
            l lVar = ((n) eVar.b).f3379n;
            lVar.f3346h = true;
            lVar.p(true);
        }
    }
}
