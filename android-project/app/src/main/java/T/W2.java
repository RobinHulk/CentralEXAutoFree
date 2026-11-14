package T;

import android.os.Handler;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f829a = 0;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f832e;
    public final /* synthetic */ boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f833g;

    public /* synthetic */ W2(MainActivity mainActivity, boolean z2, boolean z3, boolean z4, String str, boolean z5) {
        this.f830c = mainActivity;
        this.b = z2;
        this.f831d = z3;
        this.f832e = z4;
        this.f833g = str;
        this.f = z5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String string;
        String str = this.f833g;
        boolean z2 = this.f;
        boolean z3 = this.f832e;
        boolean z4 = this.f831d;
        MainActivity mainActivity = this.f830c;
        boolean z5 = this.b;
        switch (this.f829a) {
            case 0:
                int i2 = MainActivity.u0;
                boolean zX = C0097m.x(mainActivity, z5, z4, z3, new E2(12, mainActivity));
                Handler handler = mainActivity.f2387v;
                handler.post(new G2(17, mainActivity));
                handler.post(new RunnableC0171z2(mainActivity, zX, str, z2));
                break;
            default:
                int i3 = MainActivity.u0;
                if (z5) {
                    string = mainActivity.getString(R.string.k_connadaptor_pm_sem_canal);
                } else if (z4 && z3) {
                    string = mainActivity.getString(z2 ? R.string.k_connadaptor_pm_uninstalled : R.string.k_connadaptor_pm_installed);
                } else if (!z4 || z3) {
                    string = mainActivity.getString(R.string.k_connadaptor_pm_error) + '\n' + O0.j.X0(O0.j.V0(120, str)).toString();
                } else {
                    string = mainActivity.getString(R.string.k_connadaptor_pm_sem_efeito);
                }
                I0.f.b(string);
                C0081j1 c0081j1 = new C0081j1(mainActivity);
                String string2 = mainActivity.getString(R.string.xml_android_auto_carplay);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string2;
                StringBuilder sbI = M.d0.i(string, "\n\n");
                sbI.append(mainActivity.f0());
                c0205e.f = sbI.toString();
                c0081j1.g(android.R.string.ok, null);
                c0081j1.j();
                mainActivity.f2388w.execute(new U1(22, mainActivity));
                mainActivity.e1();
                break;
        }
    }

    public /* synthetic */ W2(boolean z2, MainActivity mainActivity, boolean z3, boolean z4, boolean z5, String str) {
        this.b = z2;
        this.f830c = mainActivity;
        this.f831d = z3;
        this.f832e = z4;
        this.f = z5;
        this.f833g = str;
    }
}
