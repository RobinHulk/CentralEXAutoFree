package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: renamed from: androidx.fragment.app.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0183k extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0185m f1850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0184l f1851d;

    public C0183k(DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l, C0185m c0185m) {
        this.f1851d = dialogInterfaceOnCancelListenerC0184l;
        this.f1850c = c0185m;
    }

    @Override // A.b
    public final View N(int i2) {
        C0185m c0185m = this.f1850c;
        if (c0185m.O()) {
            return c0185m.N(i2);
        }
        Dialog dialog = this.f1851d.f1859a0;
        if (dialog != null) {
            return dialog.findViewById(i2);
        }
        return null;
    }

    @Override // A.b
    public final boolean O() {
        return this.f1850c.O() || this.f1851d.f1862d0;
    }
}
