package C;

import android.database.DataSetObserver;
import p014j.E0;
import p014j.a1;

/* JADX INFO: loaded from: classes.dex */
public final class b extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f37a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f37a = i2;
        this.b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f37a) {
            case 0:
                a1 a1Var = (a1) this.b;
                a1Var.f38a = true;
                a1Var.notifyDataSetChanged();
                break;
            default:
                E0 e1 = (E0) this.b;
                if (e1.f3446y.isShowing()) {
                    e1.f();
                }
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f37a) {
            case 0:
                a1 a1Var = (a1) this.b;
                a1Var.f38a = false;
                a1Var.notifyDataSetInvalidated();
                break;
            default:
                ((E0) this.b).dismiss();
                break;
        }
    }
}
