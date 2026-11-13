package p014j;

import T.C0081j1;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import p007e.C0205e;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final class L implements S, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DialogC0209i f3461a;
    public M b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f3462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ T f3463d;

    public L(T t2) {
        this.f3463d = t2;
    }

    @Override // p014j.S
    public final void a(int i2) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // p014j.S
    public final boolean b() {
        DialogC0209i dialogC0209i = this.f3461a;
        if (dialogC0209i != null) {
            return dialogC0209i.isShowing();
        }
        return false;
    }

    @Override // p014j.S
    public final int c() {
        return 0;
    }

    @Override // p014j.S
    public final void d(int i2, int i3) {
        if (this.b == null) {
            return;
        }
        T t2 = this.f3463d;
        C0081j1 c0081j1 = new C0081j1(t2.getPopupContext());
        CharSequence charSequence = this.f3462c;
        C0205e c0205e = (C0205e) c0081j1.b;
        if (charSequence != null) {
            c0205e.f2991d = charSequence;
        }
        M m2 = this.b;
        int selectedItemPosition = t2.getSelectedItemPosition();
        c0205e.f3001o = m2;
        c0205e.f3002p = this;
        c0205e.f3007u = selectedItemPosition;
        c0205e.f3006t = true;
        DialogC0209i dialogC0209iB = c0081j1.b();
        this.f3461a = dialogC0209iB;
        AlertController$RecycleListView alertController$RecycleListView = dialogC0209iB.f3044e.f;
        J.d(alertController$RecycleListView, i2);
        J.c(alertController$RecycleListView, i3);
        this.f3461a.show();
    }

    @Override // p014j.S
    public final void dismiss() {
        DialogC0209i dialogC0209i = this.f3461a;
        if (dialogC0209i != null) {
            dialogC0209i.dismiss();
            this.f3461a = null;
        }
    }

    @Override // p014j.S
    public final int g() {
        return 0;
    }

    @Override // p014j.S
    public final Drawable i() {
        return null;
    }

    @Override // p014j.S
    public final CharSequence j() {
        return this.f3462c;
    }

    @Override // p014j.S
    public final void l(CharSequence charSequence) {
        this.f3462c = charSequence;
    }

    @Override // p014j.S
    public final void m(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // p014j.S
    public final void n(int i2) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // p014j.S
    public final void o(ListAdapter listAdapter) {
        this.b = (M) listAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        T t2 = this.f3463d;
        t2.setSelection(i2);
        if (t2.getOnItemClickListener() != null) {
            t2.performItemClick(null, i2, this.b.getItemId(i2));
        }
        dismiss();
    }

    @Override // p014j.S
    public final void p(int i2) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }
}
