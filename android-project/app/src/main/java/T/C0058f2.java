package T;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.concurrent.ExecutorService;
import p007e.C0205e;

/* JADX INFO: renamed from: T.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0058f2 implements RadioGroup.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f959a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ C0058f2(int i2, MainActivity mainActivity) {
        this.f959a = i2;
        this.b = mainActivity;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        int i3;
        int i4;
        final int i5 = 1;
        final int i6 = 0;
        final MainActivity mainActivity = this.b;
        switch (this.f959a) {
            case 0:
                int i7 = MainActivity.u0;
                mainActivity.B0().edit().putString("update_channel", "stable").apply();
                return;
            case 1:
                if (mainActivity.f2379o0) {
                    return;
                }
                final String str = i2 == R.id.rbModoAa ? "aa" : "ambos";
                final String strA0 = mainActivity.a0();
                if (str.equals(strA0)) {
                    return;
                }
                String strB0 = mainActivity.b0(str);
                C0081j1 c0081j1 = new C0081j1(mainActivity);
                String string = mainActivity.getString(R.string.k_modo_confirm_title, strB0);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string;
                if (str.equals("aa")) {
                    i3 = R.string.k_modo_aa_msg;
                } else {
                    i3 = str.equals("carplay") ? R.string.k_modo_carplay_msg : R.string.k_modo_ambos_msg;
                }
                c0205e.f = mainActivity.getString(i3);
                c0205e.f2997k = false;
                c0081j1.g(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: T.x2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i8) {
                        String str2 = strA0;
                        String str3 = str;
                        MainActivity mainActivity2 = mainActivity;
                        switch (i5) {
                            case 0:
                                int i9 = MainActivity.u0;
                                mainActivity2.B0().edit().putString("connadaptor_versao_alvo", str3).apply();
                                mainActivity2.v("Update", "ConnAdaptor: versão alvo " + str2 + " -> " + str3);
                                mainActivity2.z();
                                break;
                            default:
                                int i10 = MainActivity.u0;
                                mainActivity2.B0().edit().putString("connadaptor_modo", str3).apply();
                                L3.f671a.b("Modo", "modo de projeção: " + str2 + " -> " + str3);
                                boolean zD = AbstractC0121q.d(str3);
                                if (!str3.equals("aa")) {
                                    str3.equals("ambos");
                                }
                                Toast.makeText(mainActivity2, mainActivity2.getString(R.string.k_modo_aplicando, mainActivity2.b0(str3)), 0).show();
                                if (mainActivity2.Y()) {
                                    C0081j1 c0081j2 = new C0081j1(mainActivity2);
                                    c0081j2.i(R.string.k_modo_trocar_titulo);
                                    ((C0205e) c0081j2.b).f = mainActivity2.getString(R.string.k_modo_trocar_msg, mainActivity2.b0(str3));
                                    c0081j2.g(R.string.k_modo_trocar_ok, new X1(23, mainActivity2));
                                    c0081j2.e(android.R.string.cancel, null);
                                    c0081j2.j();
                                }
                                ExecutorService executorService = mainActivity2.f2388w;
                                if (zD) {
                                    try {
                                        C0032b0.f889a.b();
                                        break;
                                    } catch (Throwable unused) {
                                    }
                                    mainActivity2.startForegroundService(new Intent(mainActivity2, (Class<?>) CentralWatchdogService.class).putExtra("reaplicar_patch_monitor", true));
                                } else {
                                    try {
                                        C0032b0.f889a.c();
                                        break;
                                    } catch (Throwable unused2) {
                                    }
                                    executorService.execute(new G2(10, mainActivity2));
                                }
                                mainActivity2.e1();
                                executorService.execute(new V1(mainActivity2, str3, 12));
                                break;
                        }
                    }
                });
                c0081j1.e(R.string.common_cancel, new DialogInterfaceOnClickListenerC0028a2(strA0, mainActivity, 2));
                c0081j1.j();
                return;
            case 2:
                if (mainActivity.f2380p0) {
                    return;
                }
                final String str2 = i2 == R.id.rbConnadaptor1114 ? "1114" : "1111";
                final String strC0 = mainActivity.c0();
                if (str2.equals(strC0)) {
                    return;
                }
                String strD0 = mainActivity.d0(str2);
                C0081j1 c0081j2 = new C0081j1(mainActivity);
                c0081j2.i(R.string.k_connadaptor_versao_confirm_title);
                String string2 = mainActivity.getString(R.string.k_connadaptor_versao_confirm_msg, strD0);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f = string2;
                c0205e2.f2997k = false;
                c0081j2.h(mainActivity.getString(R.string.k_connadaptor_versao_confirm_ok, strD0), new DialogInterface.OnClickListener() { // from class: T.x2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i8) {
                        String str3 = strC0;
                        String str4 = str2;
                        MainActivity mainActivity2 = mainActivity;
                        switch (i6) {
                            case 0:
                                int i9 = MainActivity.u0;
                                mainActivity2.B0().edit().putString("connadaptor_versao_alvo", str4).apply();
                                mainActivity2.v("Update", "ConnAdaptor: versão alvo " + str3 + " -> " + str4);
                                mainActivity2.z();
                                break;
                            default:
                                int i10 = MainActivity.u0;
                                mainActivity2.B0().edit().putString("connadaptor_modo", str4).apply();
                                L3.f671a.b("Modo", "modo de projeção: " + str3 + " -> " + str4);
                                boolean zD = AbstractC0121q.d(str4);
                                if (!str4.equals("aa")) {
                                    str4.equals("ambos");
                                }
                                Toast.makeText(mainActivity2, mainActivity2.getString(R.string.k_modo_aplicando, mainActivity2.b0(str4)), 0).show();
                                if (mainActivity2.Y()) {
                                    C0081j1 c0081j3 = new C0081j1(mainActivity2);
                                    c0081j3.i(R.string.k_modo_trocar_titulo);
                                    ((C0205e) c0081j3.b).f = mainActivity2.getString(R.string.k_modo_trocar_msg, mainActivity2.b0(str4));
                                    c0081j3.g(R.string.k_modo_trocar_ok, new X1(23, mainActivity2));
                                    c0081j3.e(android.R.string.cancel, null);
                                    c0081j3.j();
                                }
                                ExecutorService executorService = mainActivity2.f2388w;
                                if (zD) {
                                    try {
                                        C0032b0.f889a.b();
                                        break;
                                    } catch (Throwable unused) {
                                    }
                                    mainActivity2.startForegroundService(new Intent(mainActivity2, (Class<?>) CentralWatchdogService.class).putExtra("reaplicar_patch_monitor", true));
                                } else {
                                    try {
                                        C0032b0.f889a.c();
                                        break;
                                    } catch (Throwable unused2) {
                                    }
                                    executorService.execute(new G2(10, mainActivity2));
                                }
                                mainActivity2.e1();
                                executorService.execute(new V1(mainActivity2, str4, 12));
                                break;
                        }
                    }
                });
                c0081j2.e(R.string.common_cancel, new DialogInterfaceOnClickListenerC0028a2(strC0, mainActivity, 1));
                c0081j2.j();
                return;
            default:
                if (i2 == R.id.rbApkSourcePendrive) {
                    i4 = mainActivity.f2344A;
                } else if (i2 == R.id.rbApkSourceInstalled) {
                    i4 = mainActivity.f2345B;
                } else {
                    int i8 = MainActivity.u0;
                    mainActivity.getClass();
                    i4 = 0;
                }
                if (i4 == mainActivity.f2346C) {
                    return;
                }
                mainActivity.f2346C = i4;
                mainActivity.f2390y.clear();
                mainActivity.f2391z.clear();
                i5 = mainActivity.f2346C != mainActivity.f2345B ? 0 : 1;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1261H.setText(mainActivity.getString(i5 != 0 ? R.string.k_uninstall_with_icon : R.string.k_install_with_icon));
                int color = mainActivity.getColor(i5 != 0 ? R.color.cx_danger_deep : R.color.cx_accent);
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.f1261H.setBackgroundTintList(ColorStateList.valueOf(color));
                U.a aVar3 = mainActivity.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.f1261H.setTextColor(i5 != 0 ? -1 : mainActivity.getColor(R.color.cx_on_accent));
                U.a aVar4 = mainActivity.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar4.f1320s.setVisibility(i5 != 0 ? 8 : 0);
                U.a aVar5 = mainActivity.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar5.f1314p.setVisibility(i5 != 0 ? 8 : 0);
                w0.q qVar = w0.q.f4190a;
                if (i4 != mainActivity.f2344A) {
                    mainActivity.I1(qVar, "");
                    mainActivity.o1();
                    return;
                } else {
                    String string3 = mainActivity.getString(R.string.k_tap_list_to_read_pendrive);
                    I0.f.d(string3, "getString(...)");
                    mainActivity.I1(qVar, string3);
                    return;
                }
        }
    }
}
