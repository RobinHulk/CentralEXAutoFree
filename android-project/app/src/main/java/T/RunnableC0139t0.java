package T;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.SharedPreferences;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: renamed from: T.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0139t0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1150a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ RunnableC0139t0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f1150a = i2;
        this.b = centralWatchdogService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 6;
        switch (this.f1150a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0139t0(centralWatchdogService, 11)).start();
                    break;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0139t0(centralWatchdogService2, 12)).start();
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (CentralWatchdogService.f2) {
                    CentralWatchdogService.A0(centralWatchdogService3);
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    String strConcat = Y.C().concat("\necho PERMS_OK");
                    centralWatchdogService4.getClass();
                    if (O0.j.x0(CentralWatchdogService.c(15000, strConcat), "PERMS_OK", false)) {
                        L3.f671a.b("CentralWatchdog", "permissões de fixes/ normalizadas no arranque");
                    } else {
                        L3.f671a.b("CentralWatchdog", "permissões de fixes/: canal local não respondeu (o BootScript se vira)");
                    }
                } catch (Throwable th) {
                    L3.f671a.b("CentralWatchdog", "permissões de fixes/: " + th.getClass().getSimpleName() + " (o BootScript se vira)");
                    return;
                }
                break;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0139t0(centralWatchdogService5, 16)).start();
                    break;
                }
                break;
            case 5:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr2 = CentralWatchdogService.d2;
                try {
                    centralWatchdogService6.q();
                } catch (Throwable th2) {
                    L3.f671a.b("CentralWatchdog", "observação do ConnAdaptor falhou: " + th2.getMessage());
                    return;
                }
                break;
            case 6:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr3 = CentralWatchdogService.d2;
                Y.b0(centralWatchdogService7, centralWatchdogService7.M());
                centralWatchdogService7.f2185U = Boolean.valueOf(Y.R(centralWatchdogService7));
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService8 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService8.getClass();
                    new Thread(new RunnableC0116p0(centralWatchdogService8, i2)).start();
                }
                break;
            case Response.NO /* 8 */:
                int[] iArr4 = CentralWatchdogService.d2;
                this.b.s();
                break;
            case 9:
                CentralWatchdogService centralWatchdogService9 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService9.P();
                }
                break;
            case 10:
                CentralWatchdogService centralWatchdogService10 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService10.D();
                }
                break;
            case 11:
                int[] iArr5 = CentralWatchdogService.d2;
                this.b.r();
                break;
            case Response.BAD /* 12 */:
                int[] iArr6 = CentralWatchdogService.d2;
                if (!C0097m.l()) {
                    CentralWatchdogService centralWatchdogService11 = this.b;
                    SharedPreferences sharedPreferencesM = centralWatchdogService11.M();
                    if ((sharedPreferencesM.getBoolean("hvac_digital_temp", false) || sharedPreferencesM.getBoolean("hvac_digital_batt", false)) && !C0097m.l()) {
                        boolean zX0 = O0.j.x0(C0097m.c(6000, "DST=$(pm path com.flyme.auto.systemuiplugin | sed 's/^package://'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false);
                        L3 l3 = L3.f671a;
                        l3.b("HvacDigital", "migração para pm install: bindLegado=" + zX0 + " — instalando o plugin");
                        l3.b("HvacDigital", "migração para pm install: ".concat(C0097m.e(centralWatchdogService11, null) ? "concluída" : "FALHOU (tenta de novo no próximo boot)"));
                    }
                }
                break;
            case 13:
                CentralWatchdogService centralWatchdogService12 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService12.J("CarService voltou");
                }
                break;
            case 14:
                int[] iArr7 = CentralWatchdogService.d2;
                this.b.v("boot");
                break;
            case 15:
                CentralWatchdogService centralWatchdogService13 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService13.U(0, centralWatchdogService13.f2196d0);
                }
                break;
            case Response.BYE /* 16 */:
                int[] iArr8 = CentralWatchdogService.d2;
                this.b.t();
                break;
            case 17:
                CentralWatchdogService centralWatchdogService14 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService14.v0();
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService15 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService15.S();
                }
                break;
            case 19:
                CentralWatchdogService centralWatchdogService16 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService16.Q();
                }
                break;
            case 20:
                CentralWatchdogService centralWatchdogService17 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService17.S();
                }
                break;
            case 21:
                CentralWatchdogService centralWatchdogService18 = this.b;
                if (centralWatchdogService18.f2200g != null) {
                    new Thread(new RunnableC0169z0(centralWatchdogService18, 7)).start();
                } else {
                    Log.i("CentralWatchdog", "triggerDriveRegenApply: cpm null — initDriveRegenCar e retentando");
                    centralWatchdogService18.O();
                    centralWatchdogService18.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService18, i2), 1500L);
                }
                break;
            case 22:
                int[] iArr9 = CentralWatchdogService.d2;
                this.b.x0();
                break;
            case 23:
                int[] iArr10 = CentralWatchdogService.d2;
                this.b.c0();
                break;
            case 24:
                int[] iArr11 = CentralWatchdogService.d2;
                this.b.w0();
                break;
            case 25:
                CentralWatchdogService centralWatchdogService19 = this.b;
                int[] iArr12 = CentralWatchdogService.d2;
                if (!centralWatchdogService19.M().getBoolean("aeb_restore_on_boot", false)) {
                    try {
                        CarPropertyManager carPropertyManager = centralWatchdogService19.f2234z;
                        if (carPropertyManager != null) {
                            carPropertyManager.unregisterCallback(centralWatchdogService19.S1);
                        }
                        break;
                    } catch (Throwable unused) {
                    }
                    try {
                        Car car = centralWatchdogService19.f2233y;
                        if (car != null) {
                            car.disconnect();
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    centralWatchdogService19.f2233y = null;
                    centralWatchdogService19.f2234z = null;
                } else {
                    centralWatchdogService19.f2150A = 0;
                    centralWatchdogService19.N();
                }
                break;
            case 26:
                CentralWatchdogService centralWatchdogService20 = this.b;
                centralWatchdogService20.f2187X = null;
                centralWatchdogService20.V = null;
                centralWatchdogService20.f2188Y = 5000L;
                centralWatchdogService20.f2189Z = 0L;
                new Thread(new RunnableC0044d0(centralWatchdogService20, 9)).start();
                break;
            case 27:
                this.b.v("quick_access");
                break;
            case Response.TYPE_MASK /* 28 */:
                CentralWatchdogService.e(this.b);
                break;
            default:
                int[] iArr13 = CentralWatchdogService.d2;
                this.b.x0();
                break;
        }
    }
}
