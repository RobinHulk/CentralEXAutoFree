package T;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p007e.AbstractC0201a;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class T1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f798a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ T1(int i2, MainActivity mainActivity) {
        this.f798a = i2;
        this.b = mainActivity;
    }

    /* JADX WARN: Code duplicated, block: B:188:0x04d0  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BluetoothAdapter defaultAdapter;
        int i2;
        String address;
        List listF0;
        int i3 = -1;
        int i4 = 0;
        int i5 = 1;
        switch (this.f798a) {
            case 0:
                MainActivity mainActivity = this.b;
                if (mainActivity.f2356M) {
                    mainActivity.K1(false);
                    return;
                }
                C0081j1 c0081j1 = new C0081j1(mainActivity);
                String string = mainActivity.getString(R.string.k_disable_avas_title);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string;
                c0205e.f = mainActivity.getString(R.string.k_disable_avas_message);
                c0081j1.h(mainActivity.getString(R.string.common_yes), new X1(15, mainActivity));
                c0081j1.f(mainActivity.getString(R.string.common_no), null);
                c0081j1.j();
                return;
            case 1:
                MainActivity mainActivity2 = this.b;
                U.a aVar = mainActivity2.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                int iO = A.b.o(aVar.D1.getSelectedItemPosition() + 1, 1, 3);
                if (mainActivity2.f2350G == null) {
                    M.d0.l(mainActivity2, R.string.k_car_still_connecting, mainActivity2, 0);
                    return;
                }
                W1 w1 = new W1(6, mainActivity2);
                int iO2 = A.b.o(iO, 1, 3);
                CarPropertyManager carPropertyManager = mainActivity2.f2350G;
                if (carPropertyManager == null) {
                    w1.b(Boolean.FALSE);
                    return;
                } else {
                    new Thread(new RunnableC0151v2(carPropertyManager, iO2, mainActivity2, w1)).start();
                    return;
                }
            case 2:
                MainActivity mainActivity3 = this.b;
                U.a aVar2 = mainActivity3.f2384t;
                if (aVar2 != null) {
                    mainActivity3.f2388w.execute(new Z1(mainActivity3, aVar2.D1.getSelectedItemPosition() + 1, 0));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 3:
                int i6 = MainActivity.u0;
                this.b.M1(3);
                return;
            case 4:
                int i7 = MainActivity.u0;
                this.b.M1(2);
                return;
            case 5:
                int i8 = MainActivity.u0;
                this.b.M1(1);
                return;
            case 6:
                int i9 = MainActivity.u0;
                this.b.L1(1);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i10 = MainActivity.u0;
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                if (centralWatchdogService != null) {
                    new Thread(new H(centralWatchdogService, 2, (Object) null)).start();
                }
                MainActivity mainActivity4 = this.b;
                M.d0.l(mainActivity4, R.string.k_status_km_reset_done, mainActivity4, 0);
                return;
            case Response.NO /* 8 */:
                int i11 = MainActivity.u0;
                MainActivity mainActivity5 = this.b;
                boolean z2 = mainActivity5.B0().getBoolean("status_brightness2_enabled", false);
                boolean z3 = !z2;
                mainActivity5.B0().edit().putBoolean("status_brightness2_enabled", z3).apply();
                mainActivity5.h1(z3);
                Toast.makeText(mainActivity5, mainActivity5.getString(!z2 ? R.string.k_second_line_in_cycle : R.string.k_second_line_out_cycle), 0).show();
                return;
            case 9:
                int i12 = MainActivity.u0;
                MainActivity mainActivity6 = this.b;
                M.d0.l(mainActivity6, R.string.k_status_brightness_info, mainActivity6, 1);
                return;
            case 10:
                int i13 = MainActivity.u0;
                MainActivity mainActivity7 = this.b;
                mainActivity7.startActivity(new Intent(mainActivity7, (Class<?>) AcProgramListActivity.class));
                return;
            case 11:
                int i14 = MainActivity.u0;
                MainActivity mainActivity8 = this.b;
                boolean z4 = !mainActivity8.B0().getBoolean("gestures_ac_swipe_single_step", false);
                mainActivity8.B0().edit().putBoolean("gestures_ac_swipe_single_step", z4).apply();
                mainActivity8.b1();
                mainActivity8.f2388w.execute(new RunnableC0040c2(z4, mainActivity8, 5));
                return;
            case Response.BAD /* 12 */:
                int i15 = MainActivity.u0;
                MainActivity mainActivity9 = this.b;
                String string2 = mainActivity9.getString(R.string.xml_gestos_rapidos_titulo);
                I0.f.d(string2, "getString(...)");
                String string3 = mainActivity9.getString(R.string.xml_gestos_help_texto);
                I0.f.d(string3, "getString(...)");
                mainActivity9.d2(string2, string3);
                return;
            case 13:
                int i16 = MainActivity.u0;
                MainActivity mainActivity10 = this.b;
                if (mainActivity10.B0().getBoolean("gestures_restore_on_boot", false)) {
                    mainActivity10.B0().edit().putBoolean("gestures_restore_on_boot", false).apply();
                    mainActivity10.m1();
                    return;
                }
                C0081j1 c0081j2 = new C0081j1(mainActivity10);
                String string4 = mainActivity10.getString(R.string.xml_gestos_restore_title);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f2991d = string4;
                c0205e2.f = mainActivity10.getString(R.string.xml_gestos_explanation) + "\n\n" + mainActivity10.getString(R.string.xml_gestos_reapply_question) + "\n\n" + mainActivity10.getString(R.string.k_use_responsibly_message);
                c0081j2.h(mainActivity10.getString(R.string.common_confirm), new X1(18, mainActivity10));
                c0081j2.f(mainActivity10.getString(R.string.common_cancel), null);
                TextView textView = (TextView) c0081j2.j().findViewById(android.R.id.message);
                if (textView != null) {
                    textView.setTextColor(-1);
                    return;
                }
                return;
            case 14:
                int i17 = MainActivity.u0;
                MainActivity mainActivity11 = this.b;
                M.d0.l(mainActivity11, R.string.k_wifi_icon_info, mainActivity11, 1);
                return;
            case 15:
                int i18 = MainActivity.u0;
                MainActivity mainActivity12 = this.b;
                String string5 = mainActivity12.getString(R.string.k_info_pill_title);
                I0.f.d(string5, "getString(...)");
                String string6 = mainActivity12.getString(R.string.k_info_pill_message);
                I0.f.d(string6, "getString(...)");
                mainActivity12.d2(string5, string6);
                return;
            case Response.BYE /* 16 */:
                int i19 = MainActivity.u0;
                MainActivity mainActivity13 = this.b;
                mainActivity13.getClass();
                List<BluetoothDevice> list = w0.q.f4190a;
                try {
                    defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    break;
                } catch (Throwable unused) {
                    defaultAdapter = null;
                }
                if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                    i2 = R.string.k_celular_preferido_bt_off;
                } else {
                    try {
                        Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                        List listI0 = bondedDevices != null ? w0.i.i0(bondedDevices) : null;
                        if (listI0 != null) {
                            list = listI0;
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    if (!list.isEmpty()) {
                        List listG = AbstractC0201a.G(null);
                        ArrayList arrayList = new ArrayList(w0.k.V(list));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((BluetoothDevice) it.next()).getAddress());
                        }
                        ArrayList<String> arrayListE0 = w0.i.e0(listG, arrayList);
                        List listG2 = AbstractC0201a.G(mainActivity13.getString(R.string.k_celular_preferido_qualquer));
                        ArrayList arrayList2 = new ArrayList(w0.k.V(list));
                        for (BluetoothDevice bluetoothDevice : list) {
                            try {
                                address = bluetoothDevice.getName();
                            } catch (Throwable unused3) {
                                address = null;
                            }
                            if (address == null) {
                                address = bluetoothDevice.getAddress();
                            }
                            arrayList2.add(address);
                            break;
                        }
                        String[] strArr = (String[]) w0.i.e0(listG2, arrayList2).toArray(new String[0]);
                        String string7 = mainActivity13.B0().getString("auto_connect_preferred_bt", null);
                        if (string7 == null || O0.j.E0(string7)) {
                            string7 = null;
                        }
                        int i20 = 0;
                        for (String str : arrayListE0) {
                            if (str != null && str.equalsIgnoreCase(string7)) {
                                i3 = i20;
                                i4 = i3 >= 0 ? i3 : 0;
                                C0081j1 c0081j3 = new C0081j1(mainActivity13);
                                c0081j3.i(R.string.k_celular_preferido_titulo_dialogo);
                                F2 f2 = new F2(arrayListE0, mainActivity13);
                                C0205e c0205e3 = (C0205e) c0081j3.b;
                                c0205e3.f3000n = strArr;
                                c0205e3.f3002p = f2;
                                c0205e3.f3007u = i4;
                                c0205e3.f3006t = true;
                                c0081j3.e(R.string.common_cancel, null);
                                c0081j3.j();
                                return;
                            }
                            i20++;
                        }
                        if (i3 >= 0) {
                        }
                        C0081j1 c0081j4 = new C0081j1(mainActivity13);
                        c0081j4.i(R.string.k_celular_preferido_titulo_dialogo);
                        F2 f3 = new F2(arrayListE0, mainActivity13);
                        C0205e c0205e4 = (C0205e) c0081j4.b;
                        c0205e4.f3000n = strArr;
                        c0205e4.f3002p = f3;
                        c0205e4.f3007u = i4;
                        c0205e4.f3006t = true;
                        c0081j4.e(R.string.common_cancel, null);
                        c0081j4.j();
                        return;
                    }
                    i2 = R.string.k_celular_preferido_sem_pareado;
                }
                M.d0.l(mainActivity13, i2, mainActivity13, 1);
                return;
            case 17:
                int i21 = MainActivity.u0;
                MainActivity mainActivity14 = this.b;
                if (mainActivity14.B0().getBoolean("aeb_restore_on_boot", false)) {
                    mainActivity14.B0().edit().putBoolean("aeb_restore_on_boot", false).apply();
                    mainActivity14.d1();
                    int[] iArr2 = CentralWatchdogService.d2;
                    CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.g2;
                    if (centralWatchdogService2 != null) {
                        centralWatchdogService2.f2190a.post(new RunnableC0139t0(centralWatchdogService2, 25));
                        return;
                    }
                    return;
                }
                C0081j1 c0081j5 = new C0081j1(mainActivity14);
                String string8 = mainActivity14.getString(R.string.k_aeb_reapply_on_title);
                C0205e c0205e5 = (C0205e) c0081j5.b;
                c0205e5.f2991d = string8;
                c0205e5.f = mainActivity14.getString(R.string.k_aeb_explanation) + "\n\n" + mainActivity14.getString(R.string.k_aeb_reapply_on_msg) + "\n\n" + mainActivity14.getString(R.string.k_use_responsibly_message);
                c0081j5.h(mainActivity14.getString(R.string.common_confirm), new X1(16, mainActivity14));
                c0081j5.f(mainActivity14.getString(R.string.common_cancel), null);
                TextView textView2 = (TextView) c0081j5.j().findViewById(android.R.id.message);
                if (textView2 != null) {
                    textView2.setTextColor(-1);
                    return;
                }
                return;
            case 18:
                int i22 = MainActivity.u0;
                SplitFloaterService splitFloaterService = SplitFloaterService.f2504v;
                boolean z5 = SplitFloaterService.f2504v != null;
                MainActivity mainActivity15 = this.b;
                if (!z5) {
                    mainActivity15.startForegroundService(new Intent(mainActivity15, (Class<?>) SplitFloaterService.class));
                    String string9 = mainActivity15.getString(R.string.k_split_screen_enabled_hint);
                    I0.f.d(string9, "getString(...)");
                    mainActivity15.f2388w.execute(new V1(mainActivity15, string9, 3));
                    return;
                }
                I0.f.e(mainActivity15, "context");
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                if (splitFloaterService2 == null) {
                    mainActivity15.stopService(new Intent(mainActivity15, (Class<?>) SplitFloaterService.class));
                } else {
                    x4 x4Var = splitFloaterService2.f2512j;
                    x4 x4Var2 = splitFloaterService2.f2513k;
                    if (x4Var == null && x4Var2 == null) {
                        splitFloaterService2.stopSelf();
                    } else {
                        splitFloaterService2.f2517o = true;
                        splitFloaterService2.h();
                        new Thread(new RunnableC0137s4(x4Var2, splitFloaterService2, x4Var, 1)).start();
                    }
                }
                M.d0.l(mainActivity15, R.string.k_split_screen_disabled, mainActivity15, 0);
                return;
            case 19:
                int i23 = MainActivity.u0;
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                boolean z6 = AppPipFloaterService.f2114u != null;
                MainActivity mainActivity16 = this.b;
                if (!z6) {
                    mainActivity16.startForegroundService(new Intent(mainActivity16, (Class<?>) AppPipFloaterService.class));
                    String string10 = mainActivity16.getString(R.string.k_app_pip_enabled_hint);
                    I0.f.d(string10, "getString(...)");
                    mainActivity16.f2388w.execute(new V1(mainActivity16, string10, 3));
                    return;
                }
                I0.f.e(mainActivity16, "context");
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                if (appPipFloaterService2 == null) {
                    mainActivity16.stopService(new Intent(mainActivity16, (Class<?>) AppPipFloaterService.class));
                } else {
                    x4 x4Var3 = appPipFloaterService2.f2121i;
                    if (x4Var3 == null) {
                        appPipFloaterService2.stopSelf();
                    } else {
                        appPipFloaterService2.f2126n = true;
                        appPipFloaterService2.i();
                        appPipFloaterService2.f2120h.removeCallbacks(appPipFloaterService2.f2132t);
                        new Thread(new RunnableC0132s(x4Var3, appPipFloaterService2, 0)).start();
                    }
                }
                M.d0.l(mainActivity16, R.string.k_app_pip_disabled, mainActivity16, 0);
                return;
            case 20:
                int i24 = MainActivity.u0;
                MainActivity mainActivity17 = this.b;
                Toast.makeText(mainActivity17, mainActivity17.getString(R.string.k_app_pip_info_text), 1).show();
                mainActivity17.f2388w.execute(new U1(7, mainActivity17));
                return;
            case 21:
                int i25 = MainActivity.u0;
                MainActivity mainActivity18 = this.b;
                PackageManager packageManager = mainActivity18.getPackageManager();
                try {
                    List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                    I0.f.d(installedApplications, "getInstalledApplications(...)");
                    ArrayList<ApplicationInfo> arrayList3 = new ArrayList();
                    for (Object obj : installedApplications) {
                        if (packageManager.getLaunchIntentForPackage(((ApplicationInfo) obj).packageName) != null) {
                            arrayList3.add(obj);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList(w0.k.V(arrayList3));
                    for (ApplicationInfo applicationInfo : arrayList3) {
                        arrayList4.add(new v0.a(applicationInfo.packageName, packageManager.getApplicationLabel(applicationInfo).toString()));
                    }
                    listF0 = w0.i.f0(arrayList4, new E(8));
                    break;
                } catch (Exception unused4) {
                    listF0 = w0.q.f4190a;
                }
                if (listF0.isEmpty()) {
                    return;
                }
                ArrayList arrayList5 = new ArrayList(w0.k.V(listF0));
                Iterator it2 = listF0.iterator();
                while (it2.hasNext()) {
                    arrayList5.add((String) ((v0.a) it2.next()).b);
                }
                String[] strArr2 = (String[]) arrayList5.toArray(new String[0]);
                String string11 = mainActivity18.B0().getString("widget_apps_list", "");
                List listO0 = O0.j.O0(string11 != null ? string11 : "", new String[]{","});
                ArrayList arrayList6 = new ArrayList(w0.k.V(listO0));
                Iterator it3 = listO0.iterator();
                while (it3.hasNext()) {
                    arrayList6.add(O0.j.X0((String) it3.next()).toString());
                }
                ArrayList arrayList7 = new ArrayList();
                for (Object obj2 : arrayList6) {
                    if (((String) obj2).length() > 0) {
                        arrayList7.add(obj2);
                    }
                }
                ArrayList arrayListJ0 = w0.i.j0(arrayList7);
                ArrayList arrayList8 = new ArrayList(w0.k.V(listF0));
                Iterator it4 = listF0.iterator();
                while (it4.hasNext()) {
                    arrayList8.add(Boolean.valueOf(arrayListJ0.contains(((v0.a) it4.next()).f4155a)));
                }
                boolean[] zArr = new boolean[arrayList8.size()];
                Iterator it5 = arrayList8.iterator();
                while (it5.hasNext()) {
                    zArr[i4] = ((Boolean) it5.next()).booleanValue();
                    i4++;
                }
                C0081j1 c0081j6 = new C0081j1(mainActivity18);
                c0081j6.i(R.string.k_widget_apps_choose);
                I2 i26 = new I2(listF0, arrayListJ0);
                C0205e c0205e6 = (C0205e) c0081j6.b;
                c0205e6.f3000n = strArr2;
                c0205e6.f3008v = i26;
                c0205e6.f3004r = zArr;
                c0205e6.f3005s = true;
                c0081j6.g(android.R.string.ok, new F2(mainActivity18, arrayListJ0, i5));
                c0081j6.e(android.R.string.cancel, null);
                c0081j6.j();
                return;
            case 22:
                int i27 = MainActivity.u0;
                MainActivity mainActivity19 = this.b;
                Toast.makeText(mainActivity19, mainActivity19.getString(R.string.k_split_screen_info_text), 1).show();
                mainActivity19.f2388w.execute(new U1(10, mainActivity19));
                return;
            case 23:
                MainActivity mainActivity20 = this.b;
                U.a aVar3 = mainActivity20.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                MainActivity.g2(mainActivity20, aVar3.f1331y);
                if (mainActivity20.B0().getBoolean("hvac_digital_temp", false)) {
                    mainActivity20.g0("temp");
                    return;
                } else {
                    mainActivity20.f2388w.execute(new V1(mainActivity20, "temp", 2));
                    return;
                }
            case 24:
                MainActivity mainActivity21 = this.b;
                U.a aVar4 = mainActivity21.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                MainActivity.g2(mainActivity21, aVar4.f1327w);
                if (mainActivity21.B0().getBoolean("hvac_digital_batt", false)) {
                    mainActivity21.g0("batt");
                    return;
                } else {
                    mainActivity21.f2388w.execute(new V1(mainActivity21, "batt", 2));
                    return;
                }
            case 25:
                MainActivity mainActivity22 = this.b;
                U.a aVar5 = mainActivity22.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                MainActivity.g2(mainActivity22, aVar5.f1329x);
                if (mainActivity22.B0().getBoolean("hvac_digital_ext_temp", false)) {
                    mainActivity22.g0("exttemp");
                    return;
                } else {
                    mainActivity22.f2388w.execute(new V1(mainActivity22, "exttemp", 2));
                    return;
                }
            case 26:
                U.a aVar6 = this.b.f2384t;
                if (aVar6 != null) {
                    aVar6.i1.performClick();
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 27:
                int i28 = MainActivity.u0;
                MainActivity mainActivity23 = this.b;
                boolean z7 = mainActivity23.B0().getBoolean("light_mode", false);
                M.d0.m(mainActivity23, "light_mode", !z7);
                p007e.n.q(z7 ? 2 : 1);
                mainActivity23.recreate();
                return;
            case Response.TYPE_MASK /* 28 */:
                int i29 = MainActivity.u0;
                this.b.J1("pt-BR");
                return;
            default:
                int i30 = MainActivity.u0;
                this.b.J1("es-CL");
                return;
        }
    }
}
