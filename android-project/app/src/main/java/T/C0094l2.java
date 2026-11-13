package T;

import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import java.util.List;

/* JADX INFO: renamed from: T.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0094l2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1039a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1040c;

    public /* synthetic */ C0094l2(MainActivity mainActivity, String str, int i2) {
        this.f1039a = i2;
        this.b = mainActivity;
        this.f1040c = str;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        String str = this.f1040c;
        MainActivity mainActivity = this.b;
        switch (this.f1039a) {
            case 0:
                String str2 = (String) obj;
                int i2 = MainActivity.u0;
                I0.f.e(str2, "result");
                mainActivity.c2(str2, str);
                break;
            case 1:
                String str3 = (String) obj;
                int i3 = MainActivity.u0;
                I0.f.e(str3, "result");
                mainActivity.c2(str3, str);
                break;
            case 2:
                String str4 = (String) obj;
                int i4 = MainActivity.u0;
                I0.f.e(str4, "result");
                mainActivity.c2(str4, str);
                break;
            case 3:
                String str5 = (String) obj;
                int i5 = MainActivity.u0;
                I0.f.e(str5, "result");
                mainActivity.c2(str5, str);
                break;
            default:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i6 = MainActivity.u0;
                mainActivity.B0().edit().putBoolean(str, zBooleanValue).apply();
                List list = HomeFloatingWidgetsService.f2262Q;
                Y.E(mainActivity);
                break;
        }
        return v0.e.f4161c;
    }
}
