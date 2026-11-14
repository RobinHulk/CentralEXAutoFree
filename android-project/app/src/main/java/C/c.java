package C;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import p014j.a1;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends BaseAdapter implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f38a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Cursor f39c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f41e;
    public b f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f42g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f39c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.f41e;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                b bVar = this.f;
                if (bVar != null) {
                    cursor2.unregisterDataSetObserver(bVar);
                }
            }
            this.f39c = cursor;
            if (cursor != null) {
                a aVar2 = this.f41e;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                b bVar2 = this.f;
                if (bVar2 != null) {
                    cursor.registerDataSetObserver(bVar2);
                }
                this.f40d = cursor.getColumnIndexOrThrow("_id");
                this.f38a = true;
                notifyDataSetChanged();
            } else {
                this.f40d = -1;
                this.f38a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f38a || (cursor = this.f39c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f38a) {
            return null;
        }
        this.f39c.moveToPosition(i2);
        if (view == null) {
            a1 a1Var = (a1) this;
            view = a1Var.f3525j.inflate(a1Var.f3524i, viewGroup, false);
        }
        a(view, this.f39c);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f42g == null) {
            d dVar = new d();
            dVar.f43a = this;
            this.f42g = dVar;
        }
        return this.f42g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        Cursor cursor;
        if (!this.f38a || (cursor = this.f39c) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.f39c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        Cursor cursor;
        if (this.f38a && (cursor = this.f39c) != null && cursor.moveToPosition(i2)) {
            return this.f39c.getLong(this.f40d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f38a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f39c.moveToPosition(i2)) {
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f39c);
        return view;
    }
}
