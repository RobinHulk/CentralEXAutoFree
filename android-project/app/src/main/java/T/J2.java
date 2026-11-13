package T;

import android.content.SharedPreferences;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class J2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f635a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f636c;

    public /* synthetic */ J2(Object obj, int i2, Object obj2) {
        this.f635a = i2;
        this.b = obj;
        this.f636c = obj2;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        switch (this.f635a) {
            case 0:
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                String str = (String) this.f636c;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i2 = MainActivity.u0;
                sharedPreferences.edit().putBoolean("qa_visible_" + str, zBooleanValue).apply();
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                if (quickAccessFloaterService != null) {
                    I0.f.e(str, "id");
                    quickAccessFloaterService.t().edit().putBoolean("qa_visible_".concat(str), zBooleanValue).apply();
                    quickAccessFloaterService.H();
                }
                break;
            case 1:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                int i3 = MainActivity.u0;
                C0097m.g((MainActivity) this.b, ((D) this.f636c).f535a, null, null, bool, 12);
                break;
            default:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                List list2 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.b;
                I0.f.e(quickAccessFloaterService2, "ctx");
                String str2 = (String) this.f636c;
                I0.f.e(str2, "pkg");
                ArrayList arrayListJ0 = w0.i.j0(Y.X(quickAccessFloaterService2));
                if (!zBooleanValue2) {
                    arrayListJ0.remove(str2);
                } else if (!arrayListJ0.contains(str2)) {
                    arrayListJ0.add(str2);
                }
                quickAccessFloaterService2.getSharedPreferences("close_apps_whitelist_prefs", 0).edit().putString("packages", w0.i.d0(w0.i.Y(arrayListJ0), ",", null, null, null, 62)).apply();
                break;
        }
        return v0.e.f4161c;
    }
}
