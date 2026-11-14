package p007e;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: renamed from: e.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0203c implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0208h f2986a;
    public final /* synthetic */ C0205e b;

    public C0203c(C0205e c0205e, C0208h c0208h) {
        this.b = c0205e;
        this.f2986a = c0208h;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        C0205e c0205e = this.b;
        DialogInterface.OnClickListener onClickListener = c0205e.f3002p;
        C0208h c0208h = this.f2986a;
        onClickListener.onClick(c0208h.b, i2);
        if (c0205e.f3006t) {
            return;
        }
        c0208h.b.dismiss();
    }
}
