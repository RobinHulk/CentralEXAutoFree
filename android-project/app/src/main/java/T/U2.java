package T;

import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class U2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f807a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0119p3 f808c;

    public /* synthetic */ U2(MainActivity mainActivity, C0119p3 c0119p3, int i2) {
        this.f807a = i2;
        this.b = mainActivity;
        this.f808c = c0119p3;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String string;
        C0119p3 c0119p3 = this.f808c;
        MainActivity mainActivity = this.b;
        switch (this.f807a) {
            case 0:
                int i2 = MainActivity.u0;
                try {
                    mainActivity.i0(c0119p3, new E2(10, mainActivity));
                    mainActivity.f2387v.post(new U2(mainActivity, c0119p3, 1));
                    String strH0 = mainActivity.H0();
                    File file = new File("/data/local/tmp/CentralEXAuto-update.apk");
                    string = mainActivity.getString(R.string.k_update_result_summary, c0119p3.b, Long.valueOf(c0119p3.f1095a), file.isFile() ? O0.j.V0(16, MainActivity.t0(file, "SHA-256")) : "?", Long.valueOf(file.length()), strH0);
                    break;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    if (message == null) {
                        message = e2.getClass().getSimpleName();
                    }
                    string = mainActivity.getString(R.string.k_update_failed, message);
                }
                I0.f.b(string);
                mainActivity.f2387v.post(new V1(mainActivity, string, 17));
                return;
            default:
                U.a aVar = mainActivity.f2384t;
                if (aVar != null) {
                    aVar.R2.setText(mainActivity.getString(R.string.k_installing_version, c0119p3.b));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
        }
    }
}
