package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: renamed from: androidx.fragment.app.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0181i implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0184l f1848a;

    public DialogInterfaceOnCancelListenerC0181i(DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l) {
        this.f1848a = dialogInterfaceOnCancelListenerC0184l;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l = this.f1848a;
        Dialog dialog = dialogInterfaceOnCancelListenerC0184l.f1859a0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0184l.onCancel(dialog);
        }
    }
}
