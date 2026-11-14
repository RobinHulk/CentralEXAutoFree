package T;

import android.content.ContextWrapper;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.WifiFloaterService;

/* JADX INFO: renamed from: T.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0057f1 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f958a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ C0057f1(ContextWrapper contextWrapper, int i2) {
        this.f958a = i2;
        this.b = contextWrapper;
    }

    @Override // H0.a
    public final Object a() {
        switch (this.f958a) {
            case 0:
                ExSapoCastActivity exSapoCastActivity = (ExSapoCastActivity) this.b;
                int i2 = ExSapoCastActivity.f2246e;
                C0105n1 c0105n1 = C0097m.f1049i;
                if (c0105n1 != null) {
                    c0105n1.g("user");
                }
                exSapoCastActivity.finish();
                break;
            case 1:
                ExSapoCastFloaterService exSapoCastFloaterService = (ExSapoCastFloaterService) this.b;
                int i3 = ExSapoCastFloaterService.f2250j;
                C0105n1 c0105n2 = C0097m.f1049i;
                if (c0105n2 != null) {
                    c0105n2.g("pip-close");
                }
                exSapoCastFloaterService.stopSelf();
                break;
            default:
                WifiFloaterService wifiFloaterService = (WifiFloaterService) this.b;
                wifiFloaterService.f2571e.post(new Q4(wifiFloaterService, 1));
                break;
        }
        return v0.e.f4161c;
    }
}
