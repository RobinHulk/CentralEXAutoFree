package p007e;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: renamed from: e.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0204d implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f2987a;
    public final /* synthetic */ C0208h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0205e f2988c;

    public C0204d(C0205e c0205e, AlertController$RecycleListView alertController$RecycleListView, C0208h c0208h) {
        this.f2988c = c0205e;
        this.f2987a = alertController$RecycleListView;
        this.b = c0208h;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        C0205e c0205e = this.f2988c;
        boolean[] zArr = c0205e.f3004r;
        AlertController$RecycleListView alertController$RecycleListView = this.f2987a;
        if (zArr != null) {
            zArr[i2] = alertController$RecycleListView.isItemChecked(i2);
        }
        c0205e.f3008v.onClick(this.b.b, i2, alertController$RecycleListView.isItemChecked(i2));
    }
}
