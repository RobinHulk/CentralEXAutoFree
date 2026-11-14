package C;

import android.database.Cursor;
import android.util.Log;
import android.widget.Filter;
import androidx.appcompat.widget.SearchView;
import p014j.a1;

/* JADX INFO: loaded from: classes.dex */
public final class d extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f43a;

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return ((a1) this.f43a).c((Cursor) obj);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    @Override // android.widget.Filter
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        String string;
        Cursor cursorG;
        a1 a1Var = (a1) this.f43a;
        if (charSequence == null) {
            string = "";
        } else {
            a1Var.getClass();
            string = charSequence.toString();
        }
        SearchView searchView = a1Var.f3526k;
        if (searchView.getVisibility() == 0 && searchView.getWindowVisibility() == 0) {
            try {
                cursorG = a1Var.g(a1Var.f3527l, string);
                if (cursorG != null) {
                    cursorG.getCount();
                } else {
                    cursorG = null;
                }
            } catch (RuntimeException e2) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e2);
            }
        } else {
            cursorG = null;
        }
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorG != null) {
            filterResults.count = cursorG.getCount();
            filterResults.values = cursorG;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        c cVar = this.f43a;
        Cursor cursor = cVar.f39c;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((a1) cVar).b((Cursor) obj);
    }
}
