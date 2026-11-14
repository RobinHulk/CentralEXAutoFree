package p012i;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class i extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f3336a;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f3339e;
    public final int f;

    public i(l lVar, LayoutInflater layoutInflater, boolean z2, int i2) {
        this.f3338d = z2;
        this.f3339e = layoutInflater;
        this.f3336a = lVar;
        this.f = i2;
        a();
    }

    public final void a() {
        l lVar = this.f3336a;
        n nVar = lVar.f3360v;
        if (nVar != null) {
            lVar.i();
            ArrayList arrayList = lVar.f3348j;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (((n) arrayList.get(i2)) == nVar) {
                    this.b = i2;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final n getItem(int i2) {
        ArrayList arrayListL;
        l lVar = this.f3336a;
        if (this.f3338d) {
            lVar.i();
            arrayListL = lVar.f3348j;
        } else {
            arrayListL = lVar.l();
        }
        int i3 = this.b;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return (n) arrayListL.get(i2);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        l lVar = this.f3336a;
        if (this.f3338d) {
            lVar.i();
            arrayListL = lVar.f3348j;
        } else {
            arrayListL = lVar.l();
        }
        return this.b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        boolean z2 = false;
        if (view == null) {
            view = this.f3339e.inflate(this.f, viewGroup, false);
        }
        int i3 = getItem(i2).b;
        int i4 = i2 - 1;
        int i5 = i4 >= 0 ? getItem(i4).b : i3;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f3336a.m() && i3 != i5) {
            z2 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z2);
        z zVar = (z) view;
        if (this.f3337c) {
            listMenuItemView.setForceShowIcon(true);
        }
        zVar.e(getItem(i2));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
