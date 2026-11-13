package T;

import android.widget.Toast;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1170a;
    public final /* synthetic */ SplitFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1171c;

    public /* synthetic */ u4(SplitFloaterService splitFloaterService, String str, int i2) {
        this.f1170a = i2;
        this.b = splitFloaterService;
        this.f1171c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1170a) {
            case 0:
                SplitFloaterService splitFloaterService = this.b;
                String str = this.f1171c;
                y4 y4VarE = splitFloaterService.f2514l;
                if (y4VarE == null) {
                    y4VarE = z4.e();
                }
                if (y4VarE != null) {
                    String strK = z4.k(splitFloaterService, str);
                    if (strK != null) {
                        x4 x4VarI = z4.i(strK, str, splitFloaterService.e(y4VarE));
                        if (x4VarI != null) {
                            x4 x4Var = splitFloaterService.f2512j;
                            if (x4Var == null || z4.f(x4Var)) {
                                splitFloaterService.f2513k = x4VarI;
                                splitFloaterService.f2517o = false;
                                splitFloaterService.f2511i.post(new t4(splitFloaterService, 5));
                            } else {
                                z4.b(x4VarI);
                                splitFloaterService.f2512j = null;
                                splitFloaterService.f2513k = null;
                                splitFloaterService.f2517o = false;
                                splitFloaterService.f2511i.post(new t4(splitFloaterService, 4));
                                String string = splitFloaterService.getString(R.string.k_split_app_crashed);
                                I0.f.d(string, "getString(...)");
                                splitFloaterService.g(string);
                            }
                        } else {
                            splitFloaterService.f2517o = false;
                            splitFloaterService.f2511i.post(new t4(splitFloaterService, 3));
                            String string2 = splitFloaterService.getString(R.string.k_error_split_with_app, z4.f);
                            I0.f.d(string2, "getString(...)");
                            splitFloaterService.g(string2);
                        }
                    } else {
                        String string3 = splitFloaterService.getString(R.string.k_error_open_app);
                        I0.f.d(string3, "getString(...)");
                        splitFloaterService.c(string3);
                    }
                } else {
                    I0.l lVar = z4.f1244a;
                    String string4 = splitFloaterService.getString(R.string.k_error_read_resolution, z4.f);
                    I0.f.d(string4, "getString(...)");
                    splitFloaterService.c(string4);
                }
                break;
            default:
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                Toast.makeText(this.b, this.f1171c, 1).show();
                break;
        }
    }
}
