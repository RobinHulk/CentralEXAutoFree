package p014j;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import p012i.ViewTreeObserverOnGlobalLayoutListenerC0214d;

/* JADX INFO: loaded from: classes.dex */
public final class O implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0214d f3472a;
    public final /* synthetic */ P b;

    public O(P p2, ViewTreeObserverOnGlobalLayoutListenerC0214d viewTreeObserverOnGlobalLayoutListenerC0214d) {
        this.b = p2;
        this.f3472a = viewTreeObserverOnGlobalLayoutListenerC0214d;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.b.f3483F.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f3472a);
        }
    }
}
