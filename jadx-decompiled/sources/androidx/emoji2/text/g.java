package androidx.emoji2.text;

import M.O;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1692a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1693c;

    public /* synthetic */ g(Object obj, int i2, int i3) {
        this.f1692a = i3;
        this.f1693c = obj;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1692a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.f1693c;
                int size = arrayList.size();
                int i2 = 0;
                if (this.b == 1) {
                    while (i2 < size) {
                        ((f) arrayList.get(i2)).b();
                        i2++;
                    }
                } else {
                    while (i2 < size) {
                        ((f) arrayList.get(i2)).a();
                        i2++;
                    }
                }
                break;
            case 1:
                RecyclerView recyclerView = ((com.google.android.material.datepicker.l) this.f1693c).f2773Y;
                if (!recyclerView.f2067u) {
                    O o2 = recyclerView.f2052l;
                    if (o2 != null) {
                        o2.s0(recyclerView, this.b);
                    } else {
                        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    }
                    break;
                }
                break;
            default:
                p026q.b bVar = (p026q.b) ((A.e) this.f1693c).b;
                if (bVar != null) {
                    bVar.d(this.b);
                }
                break;
        }
    }

    public g(List list, int i2, Throwable th) {
        this.f1692a = 0;
        AbstractC0201a.j(list, "initCallbacks cannot be null");
        this.f1693c = new ArrayList(list);
        this.b = i2;
    }
}
