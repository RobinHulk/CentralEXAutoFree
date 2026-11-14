package T;

import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.VhalProviderService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class E2 implements H0.l, H0.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f551a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ E2(int i2, MainActivity mainActivity) {
        this.f551a = i2;
        this.b = mainActivity;
    }

    @Override // H0.l
    public Object b(Object obj) {
        int i2 = 8;
        String str = "";
        String string = null;
        int i3 = 0;
        switch (this.f551a) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i4 = MainActivity.u0;
                MainActivity mainActivity = this.b;
                if (zBooleanValue) {
                    mainActivity.startForegroundService(new Intent(mainActivity, (Class<?>) CentralWatchdogService.class));
                    mainActivity.f2388w.execute(new U1(i2, mainActivity));
                }
                Toast.makeText(mainActivity, mainActivity.getString(zBooleanValue ? R.string.k_will_remember_brightness : R.string.k_wont_remember_brightness), 0).show();
                return v0.e.f4161c;
            case 1:
                String str2 = (String) obj;
                int i5 = MainActivity.u0;
                I0.f.e(str2, "result");
                boolean zX0 = O0.j.x0(str2, "FWMARK_MATCH=MISMATCH", true);
                MainActivity mainActivity2 = this.b;
                if (zX0) {
                    String string2 = mainActivity2.getString(R.string.k_routes_not_confirmed);
                    I0.f.d(string2, "getString(...)");
                    return string2;
                }
                mainActivity2.getClass();
                if (MainActivity.B1(str2)) {
                    String string3 = mainActivity2.getString(R.string.k_routes_created);
                    I0.f.d(string3, "getString(...)");
                    return string3;
                }
                String string4 = mainActivity2.getString(R.string.k_routes_creation_failed);
                I0.f.d(string4, "getString(...)");
                return string4;
            case 2:
                String str3 = (String) obj;
                int i6 = MainActivity.u0;
                I0.f.e(str3, "result");
                MainActivity mainActivity3 = this.b;
                mainActivity3.getClass();
                if (MainActivity.B1(str3)) {
                    mainActivity3.f2359Q = true;
                    mainActivity3.f2387v.post(new G2(2, mainActivity3));
                }
                return v0.e.f4161c;
            case 3:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i7 = MainActivity.u0;
                MainActivity mainActivity4 = this.b;
                if (zBooleanValue2) {
                    mainActivity4.startForegroundService(new Intent(mainActivity4, (Class<?>) CentralWatchdogService.class));
                } else if (mainActivity4.B0().getBoolean("window_opposite_on_door", false)) {
                    M.d0.m(mainActivity4, "window_opposite_on_door", false);
                    mainActivity4.S = true;
                    U.a aVar = mainActivity4.f2384t;
                    if (aVar == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar.t2.setChecked(false);
                    mainActivity4.S = false;
                }
                Toast.makeText(mainActivity4, mainActivity4.getString(zBooleanValue2 ? R.string.k_window_follows_door_on : R.string.k_window_follows_door_off), 0).show();
                return v0.e.f4161c;
            case 4:
                String str4 = (String) obj;
                int i8 = MainActivity.u0;
                I0.f.e(str4, "result");
                MainActivity mainActivity5 = this.b;
                mainActivity5.getClass();
                String string5 = mainActivity5.getString((MainActivity.s(str4) && O0.j.x0(str4, "restart_enviado", false)) ? R.string.k_restarted : R.string.k_error_restarting);
                I0.f.d(string5, "getString(...)");
                return string5;
            case 5:
                String str5 = (String) obj;
                int i9 = MainActivity.u0;
                I0.f.e(str5, "saida");
                MainActivity mainActivity6 = this.b;
                mainActivity6.f2354K = false;
                L3 l3 = L3.f671a;
                l3.b("Reiniciar", "restart dos serviços terminou — " + O0.j.X0(O0.s.v0(O0.j.V0(80, str5), "\n", " ")).toString());
                int[] iArr = AbstractC0121q.f1100a;
                if (AbstractC0121q.d(mainActivity6.a0())) {
                    mainActivity6.f2388w.execute(new G2(6, mainActivity6));
                } else {
                    l3.b("Reiniciar", "modo sem CarPlay — não mexo no CarplayMonitor");
                }
                mainActivity6.e1();
                long[] jArr = {15000, 40000, 65000};
                while (i3 < 3) {
                    mainActivity6.f2387v.postDelayed(new G2(7, mainActivity6), jArr[i3]);
                    i3++;
                }
                return v0.e.f4161c;
            case 6:
                String str6 = (String) obj;
                int i10 = MainActivity.u0;
                I0.f.e(str6, "txt");
                MainActivity mainActivity7 = this.b;
                mainActivity7.f2387v.post(new V1(mainActivity7, str6, 15));
                return v0.e.f4161c;
            case PlaybackState.STATE_ERROR /* 7 */:
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                int i11 = MainActivity.u0;
                MainActivity mainActivity8 = this.b;
                if (zBooleanValue3) {
                    M.d0.m(mainActivity8, "window_driver_on_door", true);
                    mainActivity8.S = true;
                    U.a aVar2 = mainActivity8.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar2.s2.setChecked(true);
                    mainActivity8.S = false;
                    mainActivity8.startForegroundService(new Intent(mainActivity8, (Class<?>) CentralWatchdogService.class));
                }
                Toast.makeText(mainActivity8, mainActivity8.getString(zBooleanValue3 ? R.string.k_window_opposite_on : R.string.k_window_opposite_off), 0).show();
                return v0.e.f4161c;
            case Response.NO /* 8 */:
            case 22:
            default:
                boolean zBooleanValue4 = ((Boolean) obj).booleanValue();
                int i12 = MainActivity.u0;
                MainActivity mainActivity9 = this.b;
                if (zBooleanValue4) {
                    mainActivity9.startForegroundService(new Intent(mainActivity9, (Class<?>) CentralWatchdogService.class));
                } else {
                    HashMap map = A4.f474a;
                    A4.g(mainActivity9);
                }
                int[] iArr2 = CentralWatchdogService.d2;
                Y.a0();
                Toast.makeText(mainActivity9, mainActivity9.getString(zBooleanValue4 ? R.string.k_status_km_trip_on : R.string.k_status_km_trip_off), 0).show();
                return v0.e.f4161c;
            case 9:
                String str7 = (String) obj;
                int i13 = MainActivity.u0;
                I0.f.e(str7, "txt");
                MainActivity mainActivity10 = this.b;
                mainActivity10.f2387v.post(new V1(mainActivity10, str7, 22));
                return v0.e.f4161c;
            case 10:
                String str8 = (String) obj;
                int i14 = MainActivity.u0;
                I0.f.e(str8, "progressText");
                MainActivity mainActivity11 = this.b;
                mainActivity11.f2387v.post(new V1(mainActivity11, str8, 20));
                return v0.e.f4161c;
            case 11:
                String str9 = (String) obj;
                int i15 = MainActivity.u0;
                I0.f.e(str9, "txt");
                MainActivity mainActivity12 = this.b;
                mainActivity12.f2387v.post(new V1(mainActivity12, str9, 21));
                return v0.e.f4161c;
            case Response.BAD /* 12 */:
                int iIntValue = ((Integer) obj).intValue();
                MainActivity mainActivity13 = this.b;
                mainActivity13.f2387v.post(new Z1(mainActivity13, iIntValue, 4));
                return v0.e.f4161c;
            case 13:
                MainActivity mainActivity14 = this.b;
                boolean zBooleanValue5 = ((Boolean) obj).booleanValue();
                int i16 = MainActivity.u0;
                mainActivity14.B0().edit().putBoolean("telemetry_on", zBooleanValue5).apply();
                VhalProviderService.b(mainActivity14, zBooleanValue5);
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.H();
                }
                Toast.makeText(mainActivity14, zBooleanValue5 ? "Telemetria ligada (porta 47800)" : "Telemetria desligada", 0).show();
                return v0.e.f4161c;
            case 14:
                String str10 = (String) obj;
                int i17 = MainActivity.u0;
                I0.f.e(str10, "result");
                Pattern patternCompile = Pattern.compile("SRC_MD5=([0-9a-f]{32})");
                I0.f.d(patternCompile, "compile(...)");
                Matcher matcher = patternCompile.matcher(str10);
                I0.f.d(matcher, "matcher(...)");
                O0.e eVarE = A.b.e(matcher, 0, str10);
                string = eVarE != null ? (String) w0.i.b0(eVarE.a(), 1) : null;
                StringBuilder sbJ = M.d0.j("src=", string, " saída=");
                sbJ.append(O0.j.V0(400, str10));
                String string6 = sbJ.toString();
                MainActivity mainActivity15 = this.b;
                mainActivity15.v("Instalar ConnAdaptor", string6);
                if (MainActivity.Z(str10)) {
                    String string7 = mainActivity15.getString(R.string.k_activated_md5, string != null ? O0.j.V0(8, string) : "");
                    I0.f.d(string7, "getString(...)");
                    return string7;
                }
                String string8 = mainActivity15.getString(R.string.k_error_activating);
                I0.f.d(string8, "getString(...)");
                return string8;
            case 15:
                String str11 = (String) obj;
                int i18 = MainActivity.u0;
                I0.f.e(str11, "result");
                MainActivity mainActivity16 = this.b;
                mainActivity16.f2354K = false;
                L3 l4 = L3.f671a;
                l4.b("Ativar", "pm install terminou — ok=" + MainActivity.Z(str11));
                if (MainActivity.Z(str11)) {
                    mainActivity16.B0().edit().putBoolean("aa_wifi_bind_enabled", true).putBoolean("connadaptor_ja_ativado", true).apply();
                    mainActivity16.startForegroundService(new Intent(mainActivity16, (Class<?>) CentralWatchdogService.class));
                    if (!mainActivity16.isFinishing() && !mainActivity16.isDestroyed()) {
                        C0081j1 c0081j1 = new C0081j1(mainActivity16);
                        String string9 = mainActivity16.getString(R.string.k_ativar_titulo);
                        C0205e c0205e = (C0205e) c0081j1.b;
                        c0205e.f2991d = string9;
                        StringBuilder sb = new StringBuilder();
                        sb.append(mainActivity16.getString(R.string.k_ativacao_concluida));
                        sb.append("\n\n");
                        sb.append(mainActivity16.f0());
                        int[] iArr3 = AbstractC0121q.f1100a;
                        SharedPreferences sharedPreferencesB0 = mainActivity16.B0();
                        I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                        if (!AbstractC0121q.a(sharedPreferencesB0)) {
                            str = "\n\n" + mainActivity16.getString(R.string.k_ativacao_carplay_desligado);
                        }
                        sb.append(str);
                        c0205e.f = sb.toString();
                        c0081j1.g(android.R.string.ok, null);
                        c0081j1.j();
                    }
                    int[] iArr4 = AbstractC0121q.f1100a;
                    if (AbstractC0121q.d(mainActivity16.a0())) {
                        mainActivity16.f2388w.execute(new U1(i3, mainActivity16));
                    } else {
                        l4.b("Ativar", "modo Android Auto — patch do CarplayMonitor não se aplica");
                    }
                    if (AbstractC0121q.d(mainActivity16.a0())) {
                        mainActivity16.f2387v.postDelayed(new G2(18, mainActivity16), 12000L);
                    }
                }
                mainActivity16.e1();
                return v0.e.f4161c;
            case Response.BYE /* 16 */:
                String str12 = (String) obj;
                int i19 = MainActivity.u0;
                I0.f.e(str12, "stage");
                MainActivity mainActivity17 = this.b;
                mainActivity17.getClass();
                if (O0.s.w0(str12, "download:")) {
                    Integer numP0 = O0.r.p0(O0.j.K0(str12, "download:"));
                    string = mainActivity17.getString(R.string.xml_gestos_status_baixando, Integer.valueOf(numP0 != null ? numP0.intValue() : 0));
                } else if (str12.equals("verify")) {
                    string = mainActivity17.getString(R.string.xml_gestos_status_verificando);
                } else if (str12.equals("copy")) {
                    string = mainActivity17.getString(R.string.xml_gestos_status_copiando);
                } else if (str12.equals("mount")) {
                    string = mainActivity17.getString(R.string.xml_gestos_status_aplicando);
                }
                if (string != null) {
                    mainActivity17.f2387v.post(new V1(mainActivity17, string, 24));
                }
                return v0.e.f4161c;
            case 17:
                boolean zBooleanValue6 = ((Boolean) obj).booleanValue();
                int i20 = MainActivity.u0;
                MainActivity mainActivity18 = this.b;
                if (zBooleanValue6) {
                    try {
                        WifiManager wifiManager = mainActivity18.f2348E;
                        if (wifiManager == null) {
                            I0.f.h("wifiManager");
                            throw null;
                        }
                        if (!wifiManager.isWifiEnabled()) {
                            WifiManager wifiManager2 = mainActivity18.f2348E;
                            if (wifiManager2 == null) {
                                I0.f.h("wifiManager");
                                throw null;
                            }
                            wifiManager2.setWifiEnabled(true);
                        }
                    } catch (Exception unused) {
                    }
                }
                Toast.makeText(mainActivity18, mainActivity18.getString(zBooleanValue6 ? R.string.k_wifi_auto_enable_on : R.string.k_wifi_auto_enable_off), 0).show();
                return v0.e.f4161c;
            case 18:
                boolean zBooleanValue7 = ((Boolean) obj).booleanValue();
                int i21 = MainActivity.u0;
                MainActivity mainActivity19 = this.b;
                mainActivity19.startService(new Intent(mainActivity19, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", zBooleanValue7));
                if (zBooleanValue7 && mainActivity19.B0().getBoolean("auto_proxy_enabled", false)) {
                    mainActivity19.B0().edit().putBoolean("auto_proxy_enabled", false).apply();
                    Intent intentPutExtra = new Intent(mainActivity19, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", false);
                    I0.f.d(intentPutExtra, "putExtra(...)");
                    mainActivity19.startService(intentPutExtra);
                    mainActivity19.S = true;
                    U.a aVar3 = mainActivity19.f2384t;
                    if (aVar3 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar3.W1.setChecked(false);
                    mainActivity19.S = false;
                }
                return v0.e.f4161c;
            case 19:
                boolean zBooleanValue8 = ((Boolean) obj).booleanValue();
                int i22 = MainActivity.u0;
                MainActivity mainActivity20 = this.b;
                mainActivity20.getClass();
                Intent intentPutExtra2 = new Intent(mainActivity20, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", zBooleanValue8);
                I0.f.d(intentPutExtra2, "putExtra(...)");
                mainActivity20.startService(intentPutExtra2);
                if (zBooleanValue8 && mainActivity20.B0().getBoolean("auto_route_on_aa_connect", false)) {
                    mainActivity20.B0().edit().putBoolean("auto_route_on_aa_connect", false).apply();
                    mainActivity20.startService(new Intent(mainActivity20, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", false));
                    mainActivity20.S = true;
                    U.a aVar4 = mainActivity20.f2384t;
                    if (aVar4 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar4.X1.setChecked(false);
                    mainActivity20.S = false;
                }
                return v0.e.f4161c;
            case 20:
                boolean zBooleanValue9 = ((Boolean) obj).booleanValue();
                int i23 = MainActivity.u0;
                MainActivity mainActivity21 = this.b;
                Intent intent = new Intent(mainActivity21, (Class<?>) MediaBarFloaterService.class);
                if (zBooleanValue9) {
                    mainActivity21.startForegroundService(intent);
                } else {
                    mainActivity21.stopService(intent);
                }
                return v0.e.f4161c;
            case 21:
                boolean zBooleanValue10 = ((Boolean) obj).booleanValue();
                int i24 = MainActivity.u0;
                MainActivity mainActivity22 = this.b;
                Intent intent2 = new Intent(mainActivity22, (Class<?>) LyricsFloaterService.class);
                if (zBooleanValue10) {
                    mainActivity22.startForegroundService(intent2);
                } else {
                    mainActivity22.stopService(intent2);
                }
                return v0.e.f4161c;
            case 23:
                boolean zBooleanValue11 = ((Boolean) obj).booleanValue();
                int i25 = MainActivity.u0;
                boolean z2 = PhoneSyncService.f2416v;
                MainActivity mainActivity23 = this.b;
                I0.f.e(mainActivity23, "ctx");
                Intent intent3 = new Intent(mainActivity23, (Class<?>) PhoneSyncService.class);
                try {
                    if (zBooleanValue11) {
                        mainActivity23.startForegroundService(intent3);
                    } else {
                        mainActivity23.stopService(intent3);
                    }
                    break;
                } catch (Exception unused2) {
                }
                Toast.makeText(mainActivity23, zBooleanValue11 ? mainActivity23.getString(R.string.k_phone_sync_on, 47801) : mainActivity23.getString(R.string.k_phone_sync_off), 0).show();
                return v0.e.f4161c;
            case 24:
                boolean zBooleanValue12 = ((Boolean) obj).booleanValue();
                int i26 = MainActivity.u0;
                MainActivity mainActivity24 = this.b;
                if (zBooleanValue12) {
                    mainActivity24.startForegroundService(new Intent(mainActivity24, (Class<?>) CentralWatchdogService.class));
                } else {
                    HashMap map2 = A4.f474a;
                    A4.e(mainActivity24);
                }
                int[] iArr5 = CentralWatchdogService.d2;
                Y.a0();
                Toast.makeText(mainActivity24, zBooleanValue12 ? "Temperatura externa na barra ligada" : "Temperatura externa na barra desligada", 0).show();
                return v0.e.f4161c;
            case 25:
                boolean zBooleanValue13 = ((Boolean) obj).booleanValue();
                int i27 = MainActivity.u0;
                MainActivity mainActivity25 = this.b;
                if (zBooleanValue13) {
                    mainActivity25.startForegroundService(new Intent(mainActivity25, (Class<?>) CentralWatchdogService.class));
                } else {
                    HashMap map3 = A4.f474a;
                    A4.d(mainActivity25);
                }
                int[] iArr6 = CentralWatchdogService.d2;
                Y.a0();
                Toast.makeText(mainActivity25, mainActivity25.getString(zBooleanValue13 ? R.string.k_battery_icon_on : R.string.k_battery_icon_off), 0).show();
                return v0.e.f4161c;
            case 26:
                boolean zBooleanValue14 = ((Boolean) obj).booleanValue();
                int i28 = MainActivity.u0;
                MainActivity mainActivity26 = this.b;
                if (zBooleanValue14) {
                    mainActivity26.startForegroundService(new Intent(mainActivity26, (Class<?>) CentralWatchdogService.class));
                } else {
                    HashMap map4 = A4.f474a;
                    A4.f(mainActivity26);
                }
                int[] iArr7 = CentralWatchdogService.d2;
                Y.a0();
                Toast.makeText(mainActivity26, mainActivity26.getString(zBooleanValue14 ? R.string.k_status_km_total_on : R.string.k_status_km_total_off), 0).show();
                return v0.e.f4161c;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0066  */
    /* JADX WARN: Code duplicated, block: B:17:0x0071  */
    @Override // H0.p
    public Object c(Object obj, Object obj2) {
        CentralWatchdogService centralWatchdogService;
        switch (this.f551a) {
            case Response.NO /* 8 */:
                String str = (String) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i2 = MainActivity.u0;
                I0.f.e(str, "c");
                return this.b.C1(iIntValue, str);
            default:
                MainActivity mainActivity = this.b;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                H0.a aVar = (H0.a) obj2;
                int i3 = MainActivity.u0;
                if (zBooleanValue && mainActivity.A0("br.com.central.dualdashcam") == null) {
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.k_rear_cam_pip_no_dualdashcam), 1).show();
                    aVar.a();
                } else if (zBooleanValue) {
                    mainActivity.getClass();
                    Intent component = new Intent().setComponent(new ComponentName("br.com.central.dualdashcam", "br.com.central.dualdashcam.camera.RearCamPipService"));
                    I0.f.d(component, "setComponent(...)");
                    try {
                        if (mainActivity.getPackageManager().resolveService(component, 0) != null) {
                            M.d0.m(mainActivity, "rear_cam_turn_signal_enabled", zBooleanValue);
                            int[] iArr = CentralWatchdogService.d2;
                            centralWatchdogService = CentralWatchdogService.g2;
                            if (centralWatchdogService != null) {
                                centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 8));
                            }
                        } else {
                            Toast.makeText(mainActivity, mainActivity.getString(R.string.k_rear_cam_pip_outdated_dualdashcam), 1).show();
                            aVar.a();
                        }
                    } catch (Throwable unused) {
                    }
                } else {
                    M.d0.m(mainActivity, "rear_cam_turn_signal_enabled", zBooleanValue);
                    int[] iArr2 = CentralWatchdogService.d2;
                    centralWatchdogService = CentralWatchdogService.g2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 8));
                    }
                }
                return v0.e.f4161c;
        }
    }
}
