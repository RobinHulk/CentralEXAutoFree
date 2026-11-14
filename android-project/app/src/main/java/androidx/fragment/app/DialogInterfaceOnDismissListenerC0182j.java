package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: renamed from: androidx.fragment.app.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC0182j implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0184l f1849a;

    public DialogInterfaceOnDismissListenerC0182j(DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l) {
        this.f1849a = dialogInterfaceOnCancelListenerC0184l;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l = this.f1849a;
        Dialog dialog = dialogInterfaceOnCancelListenerC0184l.f1859a0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0184l.onDismiss(dialog);
        }
    }
}
