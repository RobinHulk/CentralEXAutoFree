package T;

import android.app.NotificationManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W1 implements H0.l, H0.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f828a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ W1(int i2, MainActivity mainActivity) {
        this.f828a = i2;
        this.b = mainActivity;
    }

    @Override // H0.l
    public Object b(Object obj) {
        String str;
        int i2 = 0;
        switch (this.f828a) {
            case 0:
                MainActivity mainActivity = this.b;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i3 = MainActivity.u0;
                if (zBooleanValue) {
                    mainActivity.startForegroundService(new Intent(mainActivity, (Class<?>) CentralWatchdogService.class));
                }
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 10));
                }
                Toast.makeText(mainActivity, mainActivity.getString(zBooleanValue ? R.string.k_brightness_icon_on : R.string.k_brightness_icon_off), 0).show();
                return v0.e.f4161c;
            case 1:
                String str2 = (String) obj;
                int i4 = MainActivity.u0;
                I0.f.e(str2, "result");
                if (O0.j.x0(str2, "routes_removed", false)) {
                    MainActivity mainActivity2 = this.b;
                    mainActivity2.f2359Q = false;
                    mainActivity2.f2387v.post(new U1(20, mainActivity2));
                }
                return v0.e.f4161c;
            case 2:
            case PlaybackState.STATE_ERROR /* 7 */:
            case 15:
            default:
                int iIntValue = ((Integer) obj).intValue();
                int i5 = MainActivity.u0;
                this.b.B0().edit().putInt("widget_float_volume_size_pct", iIntValue).apply();
                List list = HomeFloatingWidgetsService.f2262Q;
                Y.Z("volume");
                return v0.e.f4161c;
            case 3:
                MainActivity mainActivity3 = this.b;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i6 = MainActivity.u0;
                if (zBooleanValue2) {
                    mainActivity3.startForegroundService(new Intent(mainActivity3, (Class<?>) CentralWatchdogService.class));
                }
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.g2;
                if (centralWatchdogService2 != null) {
                    centralWatchdogService2.f2190a.post(new RunnableC0139t0(centralWatchdogService2, 23));
                }
                Toast.makeText(mainActivity3, mainActivity3.getString(zBooleanValue2 ? R.string.k_wifi_icon_on : R.string.k_wifi_icon_off), 0).show();
                return v0.e.f4161c;
            case 4:
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                int i7 = MainActivity.u0;
                MainActivity mainActivity4 = this.b;
                if (zBooleanValue3) {
                    mainActivity4.startService(new Intent(mainActivity4, (Class<?>) TempBattPillFloaterService.class));
                } else {
                    mainActivity4.stopService(new Intent(mainActivity4, (Class<?>) TempBattPillFloaterService.class));
                }
                return v0.e.f4161c;
            case 5:
                boolean zBooleanValue4 = ((Boolean) obj).booleanValue();
                int i8 = MainActivity.u0;
                MainActivity mainActivity5 = this.b;
                if (zBooleanValue4) {
                    mainActivity5.startForegroundService(new Intent(mainActivity5, (Class<?>) CentralWatchdogService.class));
                } else {
                    I0.f.e(mainActivity5, "context");
                    NotificationManager notificationManager = (NotificationManager) mainActivity5.getApplicationContext().getSystemService(NotificationManager.class);
                    if (notificationManager != null) {
                        notificationManager.cancel(15030);
                    }
                }
                int[] iArr3 = CentralWatchdogService.d2;
                Y.a0();
                Toast.makeText(mainActivity5, mainActivity5.getString(zBooleanValue4 ? R.string.k_signal_icon_on : R.string.k_signal_icon_off), 0).show();
                return v0.e.f4161c;
            case 6:
                boolean zBooleanValue5 = ((Boolean) obj).booleanValue();
                int i9 = MainActivity.u0;
                MainActivity mainActivity6 = this.b;
                Toast.makeText(mainActivity6, mainActivity6.getString(zBooleanValue5 ? R.string.k_avas_sound_applied : R.string.k_avas_sound_rejected), 0).show();
                return v0.e.f4161c;
            case Response.NO /* 8 */:
                String str3 = (String) obj;
                int i10 = MainActivity.u0;
                I0.f.e(str3, "result");
                String string = this.b.getString(O0.j.x0(str3, "desativado", false) ? R.string.k_keyserver_deactivated : R.string.k_error_deactivating);
                I0.f.d(string, "getString(...)");
                return string;
            case 9:
                int i11 = MainActivity.u0;
                I0.f.e((String) obj, "it");
                MainActivity mainActivity7 = this.b;
                M.d0.m(mainActivity7, "keyserver_bind_enabled", false);
                int[] iArr4 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService3 = CentralWatchdogService.g2;
                if (centralWatchdogService3 != null) {
                    centralWatchdogService3.f2190a.post(new RunnableC0169z0(centralWatchdogService3, i2));
                }
                mainActivity7.f2388w.execute(new U1(3, mainActivity7));
                return v0.e.f4161c;
            case 10:
                ((Boolean) obj).booleanValue();
                U.a aVar = this.b.f2384t;
                if (aVar != null) {
                    aVar.f1291c.setEnabled(true);
                    return v0.e.f4161c;
                }
                I0.f.h("binding");
                throw null;
            case 11:
                int i12 = MainActivity.u0;
                I0.f.e((String) obj, "it");
                this.b.o1();
                return v0.e.f4161c;
            case Response.BAD /* 12 */:
                String str4 = (String) obj;
                int i13 = MainActivity.u0;
                I0.f.e(str4, "result");
                String strV0 = O0.j.V0(400, str4);
                MainActivity mainActivity8 = this.b;
                mainActivity8.v("Desinstalar ConnAdaptor", strV0);
                L3 l3 = L3.f671a;
                if (O0.j.x0(str4, "CONNADAPTOR_REVERTIDO_STOCK", true)) {
                    str = "ConnAdaptor revertido pro de fábrica";
                } else {
                    str = "FALHOU: " + O0.j.X0(O0.j.V0(120, str4)).toString();
                }
                l3.b("Desativar", str);
                if (O0.j.x0(str4, "CONNADAPTOR_REVERTIDO_STOCK", true)) {
                    String string2 = mainActivity8.getString(R.string.k_android_auto_deactivated);
                    I0.f.d(string2, "getString(...)");
                    return string2;
                }
                String string3 = mainActivity8.getString(R.string.k_error_deactivating);
                I0.f.d(string3, "getString(...)");
                return string3;
            case 13:
                int i14 = MainActivity.u0;
                I0.f.e((String) obj, "it");
                MainActivity mainActivity9 = this.b;
                mainActivity9.f2354K = false;
                M.d0.m(mainActivity9, "aa_wifi_bind_enabled", false);
                WifiManager wifiManager = mainActivity9.f2348E;
                if (wifiManager == null) {
                    I0.f.h("wifiManager");
                    throw null;
                }
                wifiManager.setWifiEnabled(true);
                mainActivity9.f2387v.postDelayed(new U1(29, mainActivity9), 2000L);
                mainActivity9.e1();
                return v0.e.f4161c;
            case 14:
                int i15 = MainActivity.u0;
                I0.f.e((String) obj, "it");
                this.b.o1();
                return v0.e.f4161c;
            case Response.BYE /* 16 */:
                String str5 = (String) obj;
                int i16 = MainActivity.u0;
                I0.f.e(str5, "result");
                MainActivity mainActivity10 = this.b;
                if (!mainActivity10.isFinishing()) {
                    boolean zX0 = O0.j.x0(str5, "exit_code=0", false);
                    U.a aVar2 = mainActivity10.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar2.M2.setText(mainActivity10.getString(zX0 ? R.string.k_completed : R.string.k_not_completed_see_log));
                    C0081j1 c0081j1 = new C0081j1(mainActivity10);
                    String string4 = zX0 ? mainActivity10.getString(R.string.k_sound_applied_title) : mainActivity10.getString(R.string.k_sound_apply_error_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string4;
                    c0205e.f = zX0 ? mainActivity10.getString(R.string.k_sound_applied_message) : mainActivity10.getString(R.string.k_bind_apply_failed, O0.j.W0(300, str5));
                    c0081j1.h(mainActivity10.getString(R.string.common_ok), null);
                    c0081j1.j();
                    if (zX0) {
                        MainActivity.i1(mainActivity10);
                    }
                }
                return v0.e.f4161c;
            case 17:
                String str6 = (String) obj;
                int i17 = MainActivity.u0;
                I0.f.e(str6, "result");
                MainActivity mainActivity11 = this.b;
                if (!mainActivity11.isFinishing()) {
                    boolean zX1 = O0.j.x0(str6, "exit_code=0", false);
                    U.a aVar3 = mainActivity11.f2384t;
                    if (aVar3 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar3.M2.setText(mainActivity11.getString(zX1 ? R.string.k_completed : R.string.k_not_completed_see_log));
                    C0081j1 c0081j2 = new C0081j1(mainActivity11);
                    String string5 = zX1 ? mainActivity11.getString(R.string.k_sound_applied_title) : mainActivity11.getString(R.string.k_sound_apply_error_title);
                    C0205e c0205e2 = (C0205e) c0081j2.b;
                    c0205e2.f2991d = string5;
                    c0205e2.f = zX1 ? mainActivity11.getString(R.string.k_sound_applied_persist_message) : mainActivity11.getString(R.string.k_bind_apply_failed, O0.j.W0(300, str6));
                    c0081j2.h(mainActivity11.getString(R.string.common_ok), null);
                    c0081j2.j();
                    if (zX1) {
                        MainActivity.i1(mainActivity11);
                    }
                }
                return v0.e.f4161c;
            case 18:
                int i18 = MainActivity.u0;
                I0.f.e((String) obj, "it");
                MainActivity.i1(this.b);
                return v0.e.f4161c;
            case 19:
                String str7 = (String) obj;
                int i19 = MainActivity.u0;
                I0.f.e(str7, "result");
                MainActivity mainActivity12 = this.b;
                if (!mainActivity12.isFinishing()) {
                    boolean zX2 = O0.j.x0(str7, "REMOVIDO_OK", false);
                    Toast.makeText(mainActivity12, mainActivity12.getString(zX2 ? R.string.k_audio_deleted : R.string.k_audio_delete_failed), !zX2 ? 1 : 0).show();
                    MainActivity.i1(mainActivity12);
                }
                return v0.e.f4161c;
            case 20:
                boolean zBooleanValue6 = ((Boolean) obj).booleanValue();
                int i20 = MainActivity.u0;
                MainActivity mainActivity13 = this.b;
                M.d0.m(mainActivity13, "quick_access_enabled", zBooleanValue6);
                if (zBooleanValue6) {
                    mainActivity13.startService(new Intent(mainActivity13, (Class<?>) QuickAccessFloaterService.class));
                } else {
                    mainActivity13.stopService(new Intent(mainActivity13, (Class<?>) QuickAccessFloaterService.class));
                }
                return v0.e.f4161c;
            case 21:
                int iIntValue2 = ((Integer) obj).intValue();
                int i21 = MainActivity.u0;
                MainActivity mainActivity14 = this.b;
                mainActivity14.B0().edit().putInt("widget_bg_opacity_pct", iIntValue2).apply();
                int i22 = HomeWidgetsPollService.f2303r;
                try {
                    mainActivity14.startService(new Intent(mainActivity14, (Class<?>) HomeWidgetsPollService.class).setAction("com.ex.auto.widget.REFRESH_OPACITY"));
                    break;
                } catch (Exception unused) {
                }
                return v0.e.f4161c;
            case 22:
                int iIntValue3 = ((Integer) obj).intValue();
                int i23 = MainActivity.u0;
                this.b.B0().edit().putInt("widget_float_volume_alpha_pct", iIntValue3).apply();
                List list2 = HomeFloatingWidgetsService.f2262Q;
                Y.Z("volume");
                return v0.e.f4161c;
            case 23:
                boolean zBooleanValue7 = ((Boolean) obj).booleanValue();
                int i24 = MainActivity.u0;
                M.d0.m(this.b, "widgets_poslock_all", zBooleanValue7);
                return v0.e.f4161c;
            case 24:
                boolean zBooleanValue8 = ((Boolean) obj).booleanValue();
                int i25 = MainActivity.u0;
                MainActivity mainActivity15 = this.b;
                M.d0.m(mainActivity15, "widget_float_apps_enabled", zBooleanValue8);
                List list3 = HomeFloatingWidgetsService.f2262Q;
                Y.E(mainActivity15);
                return v0.e.f4161c;
            case 25:
                int iIntValue4 = ((Integer) obj).intValue();
                int i26 = MainActivity.u0;
                this.b.B0().edit().putInt("widget_float_apps_size_pct", iIntValue4).apply();
                List list4 = HomeFloatingWidgetsService.f2262Q;
                Y.Z("apps");
                return v0.e.f4161c;
            case 26:
                int iIntValue5 = ((Integer) obj).intValue();
                int i27 = MainActivity.u0;
                this.b.B0().edit().putInt("widget_float_apps_alpha_pct", iIntValue5).apply();
                List list5 = HomeFloatingWidgetsService.f2262Q;
                Y.Z("apps");
                return v0.e.f4161c;
            case 27:
                boolean zBooleanValue9 = ((Boolean) obj).booleanValue();
                int i28 = MainActivity.u0;
                MainActivity mainActivity16 = this.b;
                M.d0.m(mainActivity16, "widget_float_volume_enabled", zBooleanValue9);
                List list6 = HomeFloatingWidgetsService.f2262Q;
                Y.E(mainActivity16);
                return v0.e.f4161c;
        }
    }

    @Override // H0.p
    public Object c(Object obj, Object obj2) {
        int i2 = 2;
        MainActivity mainActivity = this.b;
        int i3 = this.f828a;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        H0.a aVar = (H0.a) obj2;
        switch (i3) {
            case 2:
                int i4 = MainActivity.u0;
                if (zBooleanValue) {
                    mainActivity.getClass();
                    mainActivity.f2388w.execute(new U1(16, mainActivity));
                } else {
                    mainActivity.B0().edit().putBoolean("gestures_enabled", false).apply();
                    mainActivity.l1();
                    U.a aVar2 = mainActivity.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar2.f1281R0.f1349r.setVisibility(8);
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.k_removing), 0).show();
                    mainActivity.f2388w.execute(new U1(15, mainActivity));
                }
                return v0.e.f4161c;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i5 = MainActivity.u0;
                CarPropertyManager carPropertyManager = mainActivity.f2350G;
                if (carPropertyManager == null) {
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.k_car_not_connected_short), 0).show();
                    aVar.a();
                } else {
                    mainActivity.B0().edit().putBoolean("aeb_desired", zBooleanValue).apply();
                    mainActivity.d1();
                    new Thread(new RunnableC0148v(carPropertyManager, zBooleanValue, mainActivity, 2)).start();
                }
                return v0.e.f4161c;
            case 15:
                int i6 = MainActivity.u0;
                if (zBooleanValue) {
                    mainActivity.B0().edit().putBoolean("speed_auto_lock_enabled", true).apply();
                    mainActivity.x(true);
                } else {
                    C0081j1 c0081j1 = new C0081j1(mainActivity);
                    String string = mainActivity.getString(R.string.k_speed_lock_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string;
                    c0205e.f = mainActivity.getString(R.string.k_speed_lock_disable_confirm);
                    c0081j1.h(mainActivity.getString(R.string.common_confirm), new X1(i2, mainActivity));
                    c0081j1.f(mainActivity.getString(R.string.common_cancel), new DialogInterfaceOnClickListenerC0061g(aVar, i2));
                    c0205e.f2998l = new M2(aVar, i2);
                    TextView textView = (TextView) c0081j1.j().findViewById(android.R.id.message);
                    if (textView != null) {
                        textView.setTextColor(-1);
                    }
                }
                return v0.e.f4161c;
            default:
                int i7 = MainActivity.u0;
                if (zBooleanValue) {
                    mainActivity.getClass();
                    C0081j1 c0081j2 = new C0081j1(mainActivity);
                    String string2 = mainActivity.getString(R.string.k_rvc_black_bg_title);
                    C0205e c0205e2 = (C0205e) c0081j2.b;
                    c0205e2.f2991d = string2;
                    c0205e2.f = mainActivity.getString(R.string.k_rvc_black_bg_message);
                    c0205e2.f2997k = false;
                    c0081j2.f(mainActivity.getString(R.string.common_cancel), new X1(10, mainActivity));
                    c0081j2.h(mainActivity.getString(R.string.common_apply), new X1(11, mainActivity));
                    c0081j2.j();
                } else {
                    mainActivity.B0().edit().putBoolean("rvc_black_bg", false).apply();
                    mainActivity.v1();
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.k_rvc_black_bg_disabling), 0).show();
                    mainActivity.f2388w.execute(new U1(4, mainActivity));
                }
                return v0.e.f4161c;
        }
    }
}
