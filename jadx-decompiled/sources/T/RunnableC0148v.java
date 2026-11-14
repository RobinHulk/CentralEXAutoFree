package T;

import android.car.hardware.property.CarPropertyManager;
import android.content.ContextWrapper;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.R;
import p007e.C0205e;

/* JADX INFO: renamed from: T.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0148v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1172a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1174d;

    public /* synthetic */ RunnableC0148v(I0.i iVar, MainActivity mainActivity, boolean z2) {
        this.f1172a = 4;
        this.f1173c = iVar;
        this.f1174d = mainActivity;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1172a) {
            case 0:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f1173c;
                boolean z2 = this.b;
                w4 w4Var = (w4) this.f1174d;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                appPipFloaterService.i();
                if (!z2 && w4Var == null) {
                    I0.l lVar = z4.f1244a;
                    String string = appPipFloaterService.getString(R.string.k_adjust_failed, z4.f);
                    I0.f.d(string, "getString(...)");
                    appPipFloaterService.h(string);
                    break;
                }
                break;
            case 1:
                int i2 = InstallerActivity.f2322u;
                ((InstallerActivity) this.f1173c).u((String) this.f1174d, this.b);
                break;
            case 2:
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f1173c;
                boolean z3 = this.b;
                int i3 = MainActivity.u0;
                I0.i iVar = new I0.i();
                I0.l lVar2 = new I0.l(0);
                try {
                    carPropertyManager.setIntProperty(557858874, 0, z3 ? 1 : 0);
                    iVar.f122a = true;
                    Thread.sleep(350L);
                    Integer numC = U.c(carPropertyManager, 557858874, 0);
                    lVar2.b = numC != null ? Boolean.valueOf(numC.intValue() != 0) : null;
                } catch (Throwable th) {
                    M.d0.r(th, new StringBuilder("setIntProperty AEB falhou: "), "AEB");
                }
                Boolean bool = (Boolean) lVar2.b;
                MainActivity mainActivity = (MainActivity) this.f1174d;
                if (bool != null) {
                    M.d0.m(mainActivity, "aeb_state_saved", bool.booleanValue());
                }
                mainActivity.runOnUiThread(new RunnableC0066g4(mainActivity, lVar2, z3, iVar));
                break;
            case 3:
                int i4 = MainActivity.u0;
                boolean z4 = this.b;
                MainActivity mainActivity2 = (MainActivity) this.f1173c;
                if (!z4) {
                    Toast.makeText(mainActivity2, (String) this.f1174d, 0).show();
                } else {
                    C0081j1 c0081j1 = new C0081j1(mainActivity2);
                    String string2 = mainActivity2.getString(R.string.k_feature_enabled_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string2;
                    c0205e.f = mainActivity2.getString(R.string.k_freeform_setup_message);
                    c0081j1.h(mainActivity2.getString(R.string.common_ok), null);
                    c0205e.f2997k = false;
                    c0081j1.j();
                }
                break;
            case 4:
                int i5 = MainActivity.u0;
                boolean z5 = ((I0.i) this.f1173c).f122a;
                MainActivity mainActivity3 = (MainActivity) this.f1174d;
                String string3 = z5 ? mainActivity3.getString(this.b ? R.string.k_speed_lock_on : R.string.k_speed_lock_off) : mainActivity3.getString(R.string.k_speed_lock_err);
                I0.f.b(string3);
                Toast.makeText(mainActivity3, string3, 0).show();
                break;
            default:
                boolean z6 = this.b;
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.f1173c;
                B.b bVar = (B.b) this.f1174d;
                if (z6 != mediaBarFloaterService.f2409s) {
                    mediaBarFloaterService.f2409s = z6;
                    StringBuilder sb = new StringBuilder("smartbar escondida: ");
                    sb.append(z6);
                    sb.append(" — ");
                    sb.append(z6 ? "escondendo" : "liberando");
                    sb.append(" o floater");
                    Log.i("MediaBarFloater", sb.toString());
                    if (z6) {
                        mediaBarFloaterService.b();
                    } else {
                        mediaBarFloaterService.e();
                    }
                }
                mediaBarFloaterService.f2394c.postDelayed(bVar, 3000L);
                break;
        }
    }

    public /* synthetic */ RunnableC0148v(Object obj, boolean z2, Object obj2, int i2) {
        this.f1172a = i2;
        this.f1173c = obj;
        this.b = z2;
        this.f1174d = obj2;
    }

    public /* synthetic */ RunnableC0148v(boolean z2, ContextWrapper contextWrapper, Object obj, int i2) {
        this.f1172a = i2;
        this.b = z2;
        this.f1173c = contextWrapper;
        this.f1174d = obj;
    }
}
