package T;

import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import p007e.C0205e;

/* JADX INFO: renamed from: T.w2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0156w2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1191a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f1192c;

    public /* synthetic */ RunnableC0156w2(MainActivity mainActivity, Exception exc, int i2) {
        this.f1191a = i2;
        this.b = mainActivity;
        this.f1192c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception exc = this.f1192c;
        MainActivity mainActivity = this.b;
        switch (this.f1191a) {
            case 0:
                int i2 = MainActivity.u0;
                String message = exc.getMessage();
                if (message == null) {
                    message = exc.getClass().getSimpleName();
                }
                String string = mainActivity.getString(R.string.k_carplaymonitor_error, message);
                I0.f.d(string, "getString(...)");
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.w2.setText(string);
                Toast.makeText(mainActivity, string, 1).show();
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 != null) {
                    aVar2.f1307l.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 1:
                int i3 = MainActivity.u0;
                String message2 = exc.getMessage();
                if (message2 == null) {
                    message2 = exc.getClass().getSimpleName();
                }
                String string2 = mainActivity.getString(R.string.k_check_update_failed, message2);
                I0.f.d(string2, "getString(...)");
                U.a aVar3 = mainActivity.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.R2.setText(string2);
                Toast.makeText(mainActivity, string2, 1).show();
                mainActivity.v("Update", string2);
                U.a aVar4 = mainActivity.f2384t;
                if (aVar4 != null) {
                    aVar4.f1311n.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            default:
                int i4 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                C0081j1 c0081j1 = new C0081j1(mainActivity);
                c0081j1.i(R.string.k_dep_update_title);
                String string3 = mainActivity.getString(R.string.k_dep_connadaptor_curto);
                String message3 = exc.getMessage();
                if (message3 == null) {
                    message3 = mainActivity.getString(R.string.k_no_internet_or_check_failed);
                    I0.f.d(message3, "getString(...)");
                }
                ((C0205e) c0081j1.b).f = mainActivity.getString(R.string.k_dep_falhou_msg, string3, message3);
                c0081j1.g(android.R.string.ok, null);
                c0081j1.j();
                return;
        }
    }
}
