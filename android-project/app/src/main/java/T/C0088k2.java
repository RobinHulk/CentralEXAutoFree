package T;

import android.widget.Button;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import p007e.DialogC0209i;

/* JADX INFO: renamed from: T.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0088k2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1030a = 0;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1032d;

    public /* synthetic */ C0088k2(MainActivity mainActivity, String str, boolean z2) {
        this.f1031c = mainActivity;
        this.b = z2;
        this.f1032d = str;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        final boolean z2 = this.b;
        Object obj2 = this.f1032d;
        switch (this.f1030a) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                final MainActivity mainActivity = this.f1031c;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1291c.setEnabled(true);
                if (zBooleanValue || mainActivity.m0(z2)) {
                    mainActivity.B0().edit().putBoolean("adb_gpio_enabled", z2).apply();
                    mainActivity.c1();
                } else {
                    U.a aVar2 = mainActivity.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    Button button = aVar2.f1291c;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    TextView textView = aVar2.M2;
                    String string = mainActivity.getString(R.string.k_changing_adb_gpio);
                    I0.f.d(string, "getString(...)");
                    MainActivity.F1(mainActivity, button, textView, string, 2000L, 10000, (String) obj2, null, null, new H0.l() { // from class: T.B2
                        @Override // H0.l
                        public final Object b(Object obj3) {
                            String str = (String) obj3;
                            int i2 = MainActivity.u0;
                            I0.f.e(str, "result");
                            boolean zX0 = O0.j.x0(str, "Falha no ADB local", true);
                            MainActivity mainActivity2 = mainActivity;
                            if (!zX0) {
                                mainActivity2.B0().edit().putBoolean("adb_gpio_enabled", z2).apply();
                            }
                            mainActivity2.c1();
                            return v0.e.f4161c;
                        }
                    }, 704);
                }
                return v0.e.f4161c;
            default:
                String str = (String) obj;
                int i2 = MainActivity.u0;
                I0.f.e(str, "escolhido");
                D d2 = (D) obj2;
                MainActivity mainActivity2 = this.f1031c;
                if (z2) {
                    C0097m.g(mainActivity2, d2.f535a, str, null, null, 24);
                } else {
                    C0097m.g(mainActivity2, d2.f535a, null, str, null, 20);
                }
                DialogC0209i dialogC0209i = mainActivity2.f2376k0;
                if (dialogC0209i != null) {
                    dialogC0209i.dismiss();
                }
                mainActivity2.x0();
                return v0.e.f4161c;
        }
    }

    public /* synthetic */ C0088k2(boolean z2, MainActivity mainActivity, D d2) {
        this.b = z2;
        this.f1031c = mainActivity;
        this.f1032d = d2;
    }
}
