package p012i;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.ex.auto.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3331a = -1;
    public final /* synthetic */ h b;

    public g(h hVar) {
        this.b = hVar;
        a();
    }

    public final void a() {
        l lVar = this.b.f3333c;
        n nVar = lVar.f3360v;
        if (nVar != null) {
            lVar.i();
            ArrayList arrayList = lVar.f3348j;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (((n) arrayList.get(i2)) == nVar) {
                    this.f3331a = i2;
                    return;
                }
            }
        }
        this.f3331a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final n getItem(int i2) {
        h hVar = this.b;
        l lVar = hVar.f3333c;
        lVar.i();
        ArrayList arrayList = lVar.f3348j;
        hVar.getClass();
        int i3 = this.f3331a;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return (n) arrayList.get(i2);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        h hVar = this.b;
        l lVar = hVar.f3333c;
        lVar.i();
        int size = lVar.f3348j.size();
        hVar.getClass();
        return this.f3331a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((z) view).e(getItem(i2));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
