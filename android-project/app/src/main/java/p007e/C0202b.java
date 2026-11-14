package p007e;

import android.R;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: renamed from: e.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0202b extends ArrayAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f2985a;
    public final /* synthetic */ C0205e b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0202b(C0205e c0205e, ContextThemeWrapper contextThemeWrapper, int i2, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(contextThemeWrapper, i2, R.id.text1, charSequenceArr);
        this.b = c0205e;
        this.f2985a = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i2, view, viewGroup);
        boolean[] zArr = this.b.f3004r;
        if (zArr != null && zArr[i2]) {
            this.f2985a.setItemChecked(i2, true);
        }
        return view2;
    }
}
