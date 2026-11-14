package p012i;

import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public final class u implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f3400a;

    public u(w wVar) {
        this.f3400a = wVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f3400a.c();
    }
}
