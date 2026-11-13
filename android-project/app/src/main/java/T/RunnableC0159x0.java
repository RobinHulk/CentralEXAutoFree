package T;

import android.app.Service;
import android.car.hardware.property.CarPropertyManager;
import android.content.IntentFilter;
import android.provider.Settings;
import android.util.Log;
import android.widget.TextView;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: renamed from: T.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0159x0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1200a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Service f1202d;

    public /* synthetic */ RunnableC0159x0(Service service, int i2, int i3, int i4) {
        this.f1200a = i4;
        this.f1202d = service;
        this.b = i2;
        this.f1201c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1200a) {
            case 0:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.f1202d;
                int i2 = this.b;
                int i3 = this.f1201c;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService.f2223s0 = true;
                    centralWatchdogService.f2225t0 = i2;
                    StringBuilder sb = new StringBuilder("applyStatusBrightnessFromSlider: pct=");
                    sb.append(i3);
                    sb.append(" nextState=");
                    sb.append(i2);
                    sb.append(" registrarVolume=");
                    sb.append(i3 <= 1);
                    Log.i("CentralWatchdog", sb.toString());
                    if (i3 > 1) {
                        centralWatchdogService.z0();
                        break;
                    } else if (centralWatchdogService.f2228v0 == null) {
                        J0 j1 = new J0(centralWatchdogService, w0.j.T("global_http_proxy_host", "global_http_proxy_port", "global_http_proxy_exclusion_list", "http_proxy", "captive_portal_mode", "policy_control", "development_settings_enabled", "enable_freeform_support", "force_resizable_activities", "heads_up_notifications_enabled", "wifi_on", "bluetooth_on", "wifi_scan_always_enabled", "airplane_mode_on"), centralWatchdogService.f2190a);
                        centralWatchdogService.f2228v0 = j1;
                        centralWatchdogService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, j1);
                        try {
                            centralWatchdogService.getContentResolver().registerContentObserver(Settings.Global.CONTENT_URI, true, j1);
                            break;
                        } catch (Exception unused) {
                        }
                        G0 g1 = new G0(centralWatchdogService, 3);
                        centralWatchdogService.f2230w0 = g1;
                        centralWatchdogService.registerReceiver(g1, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                        break;
                    }
                }
                break;
            case 1:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f1202d;
                TextView textView = quickAccessFloaterService.f2486j;
                int i4 = this.b;
                quickAccessFloaterService.Q(textView, i4 == 570491137);
                quickAccessFloaterService.Q(quickAccessFloaterService.f2487k, i4 == 570491138);
                quickAccessFloaterService.Q(quickAccessFloaterService.f2488l, i4 == 570491139);
                TextView textView2 = quickAccessFloaterService.f2489m;
                int i5 = this.f1201c;
                quickAccessFloaterService.Q(textView2, i5 == 537003265);
                quickAccessFloaterService.Q(quickAccessFloaterService.f2490n, i5 == 537003266);
                quickAccessFloaterService.Q(quickAccessFloaterService.f2491o, i5 == 537003267);
                break;
            default:
                int i6 = this.b;
                int i7 = this.f1201c;
                TempStepperService tempStepperService = (TempStepperService) this.f1202d;
                tempStepperService.S = null;
                if (tempStepperService.P) {
                    try {
                        CarPropertyManager carPropertyManager = tempStepperService.f2646k;
                        if (carPropertyManager != null) {
                            carPropertyManager.setIntProperty(356517120, i6, i7);
                        }
                    } catch (Exception e2) {
                        M.d0.n(e2, new StringBuilder("Ventoinha final: "), "HvacStepperV2");
                    }
                    tempStepperService.P = false;
                    tempStepperService.f2633Q = -1;
                    tempStepperService.f2649n.post(new X.b(tempStepperService, 6));
                    break;
                }
                break;
        }
    }
}
