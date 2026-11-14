package T;

import android.content.DialogInterface;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class M2 implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f694a;
    public final /* synthetic */ Object b;

    public /* synthetic */ M2(Object obj, int i2) {
        this.f694a = i2;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Object obj = this.b;
        switch (this.f694a) {
            case 0:
                U.a aVar = ((MainActivity) obj).f2384t;
                if (aVar != null) {
                    aVar.f1311n.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 1:
                int i2 = MainActivity.u0;
                ((MainActivity) obj).l1();
                return;
            default:
                int i3 = MainActivity.u0;
                ((H0.a) obj).a();
                return;
        }
    }
}
