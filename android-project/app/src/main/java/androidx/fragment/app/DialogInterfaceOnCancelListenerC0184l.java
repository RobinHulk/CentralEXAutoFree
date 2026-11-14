package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.ex.auto.R;
import java.io.PrintWriter;
import p007e.AbstractActivityC0210j;

/* JADX INFO: renamed from: androidx.fragment.app.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC0184l extends AbstractComponentCallbacksC0187o implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final DialogInterfaceOnCancelListenerC0181i f1852R;
    public final DialogInterfaceOnDismissListenerC0182j S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f1853T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f1854U;
    public boolean V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f1855W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f1856X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f1857Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final A.e f1858Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Dialog f1859a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1860b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1861c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f1862d0;

    public DialogInterfaceOnCancelListenerC0184l() {
        new B.b(this, 15);
        this.f1852R = new DialogInterfaceOnCancelListenerC0181i(this);
        this.S = new DialogInterfaceOnDismissListenerC0182j(this);
        this.f1853T = 0;
        this.f1854U = 0;
        this.V = true;
        this.f1855W = true;
        this.f1856X = -1;
        this.f1858Z = new A.e(this, 8);
        this.f1862d0 = false;
    }

    public Dialog A() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(w(), this.f1854U);
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final A.b e() {
        return new C0183k(this, new C0185m(this));
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void l(AbstractActivityC0210j abstractActivityC0210j) {
        super.l(abstractActivityC0210j);
        this.f1887N.d(this.f1858Z);
        this.f1861c0 = false;
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public void m(Bundle bundle) {
        super.m(bundle);
        new Handler();
        this.f1855W = this.f1909w == 0;
        if (bundle != null) {
            this.f1853T = bundle.getInt("android:style", 0);
            this.f1854U = bundle.getInt("android:theme", 0);
            this.V = bundle.getBoolean("android:cancelable", true);
            this.f1855W = bundle.getBoolean("android:showsDialog", this.f1855W);
            this.f1856X = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void o() {
        this.f1876C = true;
        Dialog dialog = this.f1859a0;
        if (dialog != null) {
            this.f1860b0 = true;
            dialog.setOnDismissListener(null);
            this.f1859a0.dismiss();
            if (!this.f1861c0) {
                onDismiss(this.f1859a0);
            }
            this.f1859a0 = null;
            this.f1862d0 = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1860b0) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        if (this.f1861c0) {
            return;
        }
        this.f1861c0 = true;
        Dialog dialog = this.f1859a0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f1859a0.dismiss();
        }
        this.f1860b0 = true;
        if (this.f1856X >= 0) {
            E eJ = j();
            int i2 = this.f1856X;
            if (i2 >= 0) {
                eJ.u(new D(eJ, i2), false);
                this.f1856X = -1;
                return;
            } else {
                throw new IllegalArgumentException("Bad id: " + i2);
            }
        }
        C0173a c0173a = new C0173a(j());
        E e2 = this.f1904r;
        if (e2 != null && e2 != c0173a.f1819p) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        c0173a.b(new L(3, this));
        if (c0173a.f1820q) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Commit: " + c0173a);
            PrintWriter printWriter = new PrintWriter(new N());
            c0173a.d("  ", printWriter, true);
            printWriter.close();
        }
        c0173a.f1820q = true;
        boolean z2 = c0173a.f1810g;
        E e3 = c0173a.f1819p;
        if (z2) {
            c0173a.f1821r = e3.f1743i.getAndIncrement();
        } else {
            c0173a.f1821r = -1;
        }
        e3.u(c0173a, true);
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void p() {
        this.f1876C = true;
        if (!this.f1861c0) {
            this.f1861c0 = true;
        }
        A.e eVar = this.f1858Z;
        androidx.lifecycle.w wVar = this.f1887N;
        wVar.getClass();
        androidx.lifecycle.w.a("removeObserver");
        androidx.lifecycle.v vVar = (androidx.lifecycle.v) wVar.b.b(eVar);
        if (vVar == null) {
            return;
        }
        vVar.d();
        vVar.c(false);
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final LayoutInflater q(Bundle bundle) {
        LayoutInflater layoutInflaterQ = super.q(bundle);
        boolean z2 = this.f1855W;
        if (!z2 || this.f1857Y) {
            if (Log.isLoggable("FragmentManager", 2)) {
                String str = "getting layout inflater for DialogFragment " + this;
                if (this.f1855W) {
                    Log.d("FragmentManager", "mCreatingDialog = true: " + str);
                } else {
                    Log.d("FragmentManager", "mShowsDialog = false: " + str);
                }
            }
            return layoutInflaterQ;
        }
        if (z2 && !this.f1862d0) {
            try {
                this.f1857Y = true;
                Dialog dialogA = A();
                this.f1859a0 = dialogA;
                if (this.f1855W) {
                    int i2 = this.f1853T;
                    if (i2 == 1 || i2 == 2) {
                        dialogA.requestWindowFeature(1);
                    } else if (i2 == 3) {
                        Window window = dialogA.getWindow();
                        if (window != null) {
                            window.addFlags(24);
                        }
                        dialogA.requestWindowFeature(1);
                    }
                    Context contextH = h();
                    if (contextH instanceof Activity) {
                        this.f1859a0.setOwnerActivity((Activity) contextH);
                    }
                    this.f1859a0.setCancelable(this.V);
                    this.f1859a0.setOnCancelListener(this.f1852R);
                    this.f1859a0.setOnDismissListener(this.S);
                    this.f1862d0 = true;
                } else {
                    this.f1859a0 = null;
                }
                this.f1857Y = false;
            } catch (Throwable th) {
                this.f1857Y = false;
                throw th;
            }
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
        }
        Dialog dialog = this.f1859a0;
        return dialog != null ? layoutInflaterQ.cloneInContext(dialog.getContext()) : layoutInflaterQ;
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public void r(Bundle bundle) {
        Dialog dialog = this.f1859a0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i2 = this.f1853T;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i3 = this.f1854U;
        if (i3 != 0) {
            bundle.putInt("android:theme", i3);
        }
        boolean z2 = this.V;
        if (!z2) {
            bundle.putBoolean("android:cancelable", z2);
        }
        boolean z3 = this.f1855W;
        if (!z3) {
            bundle.putBoolean("android:showsDialog", z3);
        }
        int i4 = this.f1856X;
        if (i4 != -1) {
            bundle.putInt("android:backStackId", i4);
        }
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public void s() {
        this.f1876C = true;
        Dialog dialog = this.f1859a0;
        if (dialog != null) {
            this.f1860b0 = false;
            dialog.show();
            View decorView = this.f1859a0.getWindow().getDecorView();
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public void t() {
        this.f1876C = true;
        Dialog dialog = this.f1859a0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void u(Bundle bundle) {
        Bundle bundle2;
        this.f1876C = true;
        if (this.f1859a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1859a0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.v(layoutInflater, viewGroup, bundle);
        if (this.f1878E != null || this.f1859a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1859a0.onRestoreInstanceState(bundle2);
    }
}
