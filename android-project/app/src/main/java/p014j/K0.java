package p014j;

import A.e;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p012i.l;
import p012i.n;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends E0 implements F0 {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final Method f3459C;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public e f3460B;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f3459C = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // p014j.F0
    public final void e(l lVar, n nVar) {
        e eVar = this.f3460B;
        if (eVar != null) {
            eVar.e(lVar, nVar);
        }
    }

    @Override // p014j.F0
    public final void h(l lVar, n nVar) {
        e eVar = this.f3460B;
        if (eVar != null) {
            eVar.h(lVar, nVar);
        }
    }

    @Override // p014j.E0
    public final C0252s0 q(Context context, boolean z2) {
        J0 j1 = new J0(context, z2);
        j1.setHoverListener(this);
        return j1;
    }
}
