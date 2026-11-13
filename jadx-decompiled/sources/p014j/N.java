package p014j;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;
import p029r0.o;

/* JADX INFO: loaded from: classes.dex */
public final class N implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3471a;
    public final /* synthetic */ Object b;

    public /* synthetic */ N(Object obj, int i2) {
        this.f3471a = i2;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        Object item;
        switch (this.f3471a) {
            case 0:
                P p2 = (P) this.b;
                p2.f3483F.setSelection(i2);
                T t2 = p2.f3483F;
                if (t2.getOnItemClickListener() != null) {
                    t2.performItemClick(view, i2, p2.f3480C.getItemId(i2));
                }
                p2.dismiss();
                break;
            case 1:
                ((SearchView) this.b).p(i2);
                break;
            default:
                o oVar = (o) this.b;
                if (i2 < 0) {
                    E0 e1 = oVar.f4111e;
                    item = !e1.f3446y.isShowing() ? null : e1.f3425c.getSelectedItem();
                } else {
                    item = oVar.getAdapter().getItem(i2);
                }
                o.a(oVar, item);
                AdapterView.OnItemClickListener onItemClickListener = oVar.getOnItemClickListener();
                E0 e2 = oVar.f4111e;
                if (onItemClickListener != null) {
                    if (view == null || i2 < 0) {
                        view = e2.f3446y.isShowing() ? e2.f3425c.getSelectedView() : null;
                        i2 = !e2.f3446y.isShowing() ? -1 : e2.f3425c.getSelectedItemPosition();
                        j2 = !e2.f3446y.isShowing() ? Long.MIN_VALUE : e2.f3425c.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(e2.f3425c, view, i2, j2);
                }
                e2.dismiss();
                break;
        }
    }
}
