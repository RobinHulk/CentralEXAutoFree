package T;

import com.ex.auto.MainActivity;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f790a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C f791c;

    public /* synthetic */ S2(MainActivity mainActivity, C c2, int i2) {
        this.f790a = i2;
        this.b = mainActivity;
        this.f791c = c2;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        MainActivity mainActivity = this.b;
        C c2 = this.f791c;
        switch (this.f790a) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                int i2 = MainActivity.u0;
                C0097m.f(mainActivity, c2.f522a, null, bool, 4);
                break;
            default:
                String str = (String) obj;
                int i3 = MainActivity.u0;
                I0.f.e(str, "escolhido");
                C0097m.f(mainActivity, c2.f522a, str, null, 8);
                DialogC0209i dialogC0209i = mainActivity.f2376k0;
                if (dialogC0209i != null) {
                    dialogC0209i.dismiss();
                }
                mainActivity.v0();
                break;
        }
        return v0.e.f4161c;
    }
}
