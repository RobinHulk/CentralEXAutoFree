package androidx.activity;

import android.window.OnBackInvokedCallback;
import p007e.x;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1430a;
    public final /* synthetic */ Object b;

    public /* synthetic */ j(Object obj, int i2) {
        this.f1430a = i2;
        this.b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f1430a) {
            case 0:
                ((Runnable) this.b).run();
                break;
            default:
                ((x) this.b).J();
                break;
        }
    }
}
