package p012i;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final class m implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public E f3363a;
    public DialogC0209i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public h f3364c;

    @Override // p012i.x
    public final void a(l lVar, boolean z2) {
        DialogC0209i dialogC0209i;
        if ((z2 || lVar == this.f3363a) && (dialogC0209i = this.b) != null) {
            dialogC0209i.dismiss();
        }
    }

    @Override // p012i.x
    public final boolean f(l lVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        h hVar = this.f3364c;
        if (hVar.f == null) {
            hVar.f = new g(hVar);
        }
        this.f3363a.q(hVar.f.getItem(i2), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f3364c.a(this.f3363a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        E e2 = this.f3363a;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                e2.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return e2.performShortcut(i2, keyEvent, 0);
    }
}
