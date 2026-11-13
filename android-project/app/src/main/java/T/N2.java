package T;

import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class N2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f700a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f702d;

    public /* synthetic */ N2(int i2, MainActivity mainActivity, String str, String str2) {
        this.f700a = i2;
        this.b = mainActivity;
        this.f701c = str;
        this.f702d = str2;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        Object obj2 = this.b;
        String str = this.f702d;
        String str2 = this.f701c;
        switch (this.f700a) {
            case 0:
                int iIntValue = ((Integer) obj).intValue();
                int i2 = MainActivity.u0;
                ((MainActivity) obj2).B0().edit().putInt(str2, iIntValue).apply();
                List list = HomeFloatingWidgetsService.f2262Q;
                Y.Z(str);
                return v0.e.f4161c;
            case 1:
                int iIntValue2 = ((Integer) obj).intValue();
                int i3 = MainActivity.u0;
                ((MainActivity) obj2).B0().edit().putInt(str2, iIntValue2).apply();
                List list2 = HomeFloatingWidgetsService.f2262Q;
                Y.Z(str);
                return v0.e.f4161c;
            default:
                C0115p c0115p = (C0115p) obj;
                I0.f.e(c0115p, "b");
                StringBuilder sb = new StringBuilder("  ");
                sb.append(c0115p.b);
                sb.append(") ");
                sb.append(str2);
                sb.append('=');
                int i4 = c0115p.f1086c;
                sb.append(i4);
                sb.append("; ");
                sb.append(str);
                sb.append('=');
                sb.append(i4 + 7);
                sb.append("; ");
                sb.append((String) obj2);
                sb.append('=');
                sb.append(c0115p.f1087d);
                sb.append("; echo \"MONITOR_BUILD=");
                return M.d0.g(sb, c0115p.f1085a, "\" ;;");
        }
    }

    public /* synthetic */ N2(String str, String str2, String str3) {
        this.f700a = 2;
        this.f701c = str;
        this.f702d = str2;
        this.b = str3;
    }
}
