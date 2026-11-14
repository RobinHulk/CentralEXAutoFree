package T;

import android.os.Handler;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class V1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f812a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f813c;

    public /* synthetic */ V1(MainActivity mainActivity, String str, int i2) {
        this.f812a = i2;
        this.b = mainActivity;
        this.f813c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object dVar;
        String strM0;
        int i2 = 3;
        boolean z2 = false;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        boolean z3 = false;
        MainActivity mainActivity = this.b;
        String str = this.f813c;
        switch (this.f812a) {
            case 0:
                int i3 = MainActivity.u0;
                try {
                    X xW = Y.w(mainActivity, str);
                    StringBuilder sb = new StringBuilder("resultado=");
                    sb.append(xW);
                    sb.append(" (preferido=");
                    if (str == null) {
                        str = "qualquer";
                    }
                    sb.append(str);
                    sb.append(')');
                    mainActivity.w("CarPlay connect", sb.toString());
                    return;
                } catch (Throwable th) {
                    mainActivity.w("CarPlay connect", "erro: " + th.getMessage());
                    return;
                }
            case 1:
                int i4 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                Toast.makeText(mainActivity, mainActivity.getString((O0.j.x0(str, "MONITOR_BIND_OK", false) || O0.j.x0(str, "MONITOR_JA_MONTADO", false)) ? R.string.k_carplay_patch_ok : R.string.k_carplay_patch_falhou), 1).show();
                mainActivity.e1();
                return;
            case 2:
                int i5 = MainActivity.u0;
                String strC1 = mainActivity.C1(8000, "[ -f '/data/local/hvac-digital/sysui.apk' ] && echo HV_YES || echo HV_NO");
                mainActivity.f2387v.post(new RunnableC0171z2(O0.j.x0(strC1, "HV_YES", false), O0.j.E0(strC1) || O0.j.x0(strC1, "Falha no ADB local", false), mainActivity, str));
                return;
            case 3:
                int i6 = MainActivity.u0;
                mainActivity.f2387v.post(new RunnableC0148v(z4.c(), mainActivity, str, i2));
                return;
            case 4:
                try {
                    C0089k3 c0089k3Q0 = MainActivity.q0(mainActivity, str, 2);
                    String strV0 = MainActivity.V0(c0089k3Q0.f1033a);
                    if (strV0 == null) {
                        throw new IllegalStateException(mainActivity.getString(R.string.k_connadaptor_json_invalid_md5));
                    }
                    File file = new File("/data/local/tmp/fixes/ca_fix.apk");
                    dVar = new v0.d(c0089k3Q0, strV0, file.isFile() ? mainActivity.S0(file) : null);
                    mainActivity.f2387v.post(new RunnableC0168z(mainActivity, dVar, str, 7));
                    return;
                } catch (Exception e2) {
                    dVar = e2;
                }
                break;
            case 5:
                int i7 = MainActivity.u0;
                StringBuilder sb2 = new StringBuilder("Pastas centrais (arranque)\n");
                mainActivity.getClass();
                sb2.append(MainActivity.n2(4000, str));
                mainActivity.v("ADB", sb2.toString());
                return;
            case 6:
                int i8 = MainActivity.u0;
                mainActivity.getClass();
                boolean zT = MainActivity.T();
                Handler handler = mainActivity.f2387v;
                if (zT) {
                    handler.post(new V1(mainActivity, str, 11));
                    return;
                } else {
                    L3.f671a.b("Reiniciar", "canal ADB local fora — nada foi feito");
                    handler.post(new G2(z2 ? 1 : 0, mainActivity));
                    return;
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                int i9 = MainActivity.u0;
                if (O0.j.x0(str, "OK", false)) {
                    mainActivity.X0("/data/local/tmp/avas_preview/preview.wav");
                    return;
                } else {
                    M.d0.l(mainActivity, R.string.k_preview_file_not_found, mainActivity, 0);
                    return;
                }
            case Response.NO /* 8 */:
                int i10 = MainActivity.u0;
                Toast.makeText(mainActivity, str, 1).show();
                return;
            case 9:
                int i11 = MainActivity.u0;
                Toast.makeText(mainActivity, str, 1).show();
                return;
            case 10:
                int i12 = MainActivity.u0;
                String string = mainActivity.getString(R.string.k_auto_update_in_progress, str);
                I0.f.d(string, "getString(...)");
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.R2.setText(string);
                Toast.makeText(mainActivity, string, 1).show();
                mainActivity.v("Update", string);
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 != null) {
                    aVar2.f1311n.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 11:
                int i13 = MainActivity.u0;
                MainActivity mainActivity2 = this.b;
                if (mainActivity2.isFinishing() || mainActivity2.isDestroyed()) {
                    return;
                }
                L3.f671a.b("Reiniciar", "início — reiniciando AA/CarPlay");
                mainActivity2.f2354K = true;
                U.a aVar3 = mainActivity2.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button = aVar3.f1313o0;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                TextView textView = aVar3.M2;
                String string2 = mainActivity2.getString(R.string.k_restarting_aa_carplay);
                I0.f.d(string2, "getString(...)");
                mainActivity2.E1(button, textView, string2, 15000L, 60000, this.f813c, mainActivity2.getString(R.string.k_restarting), new E2(4, mainActivity2), new E2(5, mainActivity2), true);
                return;
            case Response.BAD /* 12 */:
                int i14 = MainActivity.u0;
                String strC0 = mainActivity.c0();
                int[] iArr = AbstractC0121q.f1100a;
                File file2 = new File(AbstractC0121q.b(str, strC0));
                if (file2.isFile() && file2.length() > 0) {
                    String strC = AbstractC0121q.c(str, strC0);
                    String strS0 = mainActivity.S0(file2);
                    if (strS0 != null) {
                        if (strS0.equalsIgnoreCase(strC)) {
                            StringBuilder sb3 = new StringBuilder("cp -f ");
                            String absolutePath = file2.getAbsolutePath();
                            I0.f.d(absolutePath, "getAbsolutePath(...)");
                            sb3.append(MainActivity.Y1(absolutePath));
                            sb3.append(' ');
                            sb3.append(MainActivity.Y1("/data/local/tmp/fixes/ca_fix.apk"));
                            sb3.append(" 2>&1 && chown system:system ");
                            sb3.append(MainActivity.Y1("/data/local/tmp/fixes/ca_fix.apk"));
                            sb3.append(" 2>/dev/null; chmod 664 ");
                            sb3.append(MainActivity.Y1("/data/local/tmp/fixes/ca_fix.apk"));
                            sb3.append(" 2>/dev/null; echo CACHE_OK");
                            String strC2 = mainActivity.C1(20000, sb3.toString());
                            if (O0.j.x0(strC2, "CACHE_OK", false) && !O0.j.x0(strC2, "Falha no ADB local", false)) {
                                z3 = true;
                            }
                            if (z3) {
                                mainActivity.B0().edit().putString("connadaptor_expected_md5", strC).putString("connadaptor_arquivo_versao", strC0).apply();
                                L3.f671a.b("Update", "ConnAdaptor servido do cache local (" + str + '/' + strC0 + ") — sem download");
                            }
                        } else {
                            mainActivity.w("Update", file2.getName() + ": md5 não confere com a variante — ignorando o cache");
                        }
                    }
                }
                mainActivity.f2387v.post(new RunnableC0040c2(z3, mainActivity, 12));
                return;
            case 13:
                int i15 = MainActivity.u0;
                Log.i("KeyServerAtivador", "runKeyServerApply: post na UI, userInitiated=true");
                U.a aVar4 = mainActivity.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar4.f1281R0.f1335c.setEnabled(true);
                Toast.makeText(mainActivity, str, 1).show();
                Log.i("KeyServerAtivador", "runKeyServerApply: Toast.show() chamado");
                U.a aVar5 = mainActivity.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar5.f1281R0.f1350s.setText(str);
                mainActivity.f2388w.execute(new U1(i2, mainActivity));
                return;
            case 14:
                int i16 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                U.a aVar6 = mainActivity.f2384t;
                if (aVar6 != null) {
                    aVar6.A2.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 15:
                U.a aVar7 = mainActivity.f2384t;
                if (aVar7 != null) {
                    aVar7.f1281R0.f1350s.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case Response.BYE /* 16 */:
                int i17 = MainActivity.u0;
                mainActivity.v("Update", "CarplayMonitor: " + str);
                U.a aVar8 = mainActivity.f2384t;
                if (aVar8 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar8.w2.setText(str);
                Toast.makeText(mainActivity, str, 1).show();
                U.a aVar9 = mainActivity.f2384t;
                if (aVar9 != null) {
                    aVar9.f1307l.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 17:
                int i18 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.v("Update", MainActivity.n2(16000, str));
                U.a aVar10 = mainActivity.f2384t;
                if (aVar10 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar10.R2.setText(str);
                Toast.makeText(mainActivity, str, 1).show();
                U.a aVar11 = mainActivity.f2384t;
                if (aVar11 != null) {
                    aVar11.f1311n.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 18:
                int i19 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                if (O0.j.x0(str, "MONITOR_JA_MONTADO", false) || O0.j.x0(str, "MONITOR_BIND_OK", false) || O0.j.x0(str, "MONITOR_JA_PATCHADO_EM_EXECUCAO", false)) {
                    L3.f671a.b("CarplayMonitor", "Reiniciar: bind OK");
                } else {
                    if (O0.j.x0(str, "SEM_MONITOR", false)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_sem_binario);
                    } else if (O0.j.x0(str, "MONITOR_MD5_INESPERADO", false)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_md5_firmware);
                    } else if (O0.j.x0(str, "PATCH_MD5_ERRADO", false)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_patch);
                    } else if (O0.j.x0(str, "CHCON_FALHOU", false)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_selinux);
                    } else if (O0.j.x0(str, "MONITOR_BIND_FALHOU", false)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_bind);
                    } else if (O0.j.E0(str)) {
                        strM0 = mainActivity.getString(R.string.k_monitor_erro_sem_resposta);
                    } else {
                        strM0 = N0.h.m0(new N0.c(new N0.c(O0.j.G0(str), new C0029a3(0), 3), new C0029a3(1), 1), " | ");
                        if (O0.j.E0(strM0)) {
                            strM0 = O0.j.W0(160, O0.j.X0(str).toString());
                        }
                    }
                    I0.f.b(strM0);
                    L3.f671a.b("CarplayMonitor", "Reiniciar: bind FALHOU — ".concat(strM0));
                    if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                        C0081j1 c0081j1 = new C0081j1(mainActivity);
                        c0081j1.i(R.string.k_monitor_bind_erro_titulo);
                        ((C0205e) c0081j1.b).f = mainActivity.getString(R.string.k_monitor_bind_erro_msg, strM0);
                        c0081j1.g(android.R.string.ok, null);
                        c0081j1.j();
                    }
                }
                mainActivity.e1();
                return;
            case 19:
                int i20 = MainActivity.u0;
                MainActivity mainActivity3 = this.b;
                if (str != null) {
                    mainActivity3.H1(true);
                    Toast.makeText(mainActivity3, str, 1).show();
                    mainActivity3.v("Ativar ConnAdaptor", "bloqueado: ".concat(str));
                    return;
                }
                mainActivity3.getClass();
                String strQ = Y.Q();
                mainActivity3.f2354K = true;
                mainActivity3.H1(false);
                U.a aVar12 = mainActivity3.f2384t;
                if (aVar12 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button2 = aVar12.f1298g;
                if (aVar12 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                TextView textView2 = aVar12.M2;
                String string3 = mainActivity3.getString(R.string.k_activating_connadaptor_bind);
                I0.f.d(string3, "getString(...)");
                mainActivity3.E1(button2, textView2, string3, 15000L, 120000, strQ, mainActivity3.getString(R.string.k_activating), new E2(14, mainActivity3), new E2(15, mainActivity3), false);
                return;
            case 20:
                U.a aVar13 = mainActivity.f2384t;
                if (aVar13 != null) {
                    aVar13.R2.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 21:
                U.a aVar14 = mainActivity.f2384t;
                if (aVar14 != null) {
                    aVar14.A2.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 22:
                U.a aVar15 = mainActivity.f2384t;
                if (aVar15 != null) {
                    aVar15.w2.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 23:
                int i21 = MainActivity.u0;
                Toast.makeText(mainActivity, str, 1).show();
                return;
            default:
                int i22 = MainActivity.u0;
                if (mainActivity.isFinishing()) {
                    return;
                }
                U.a aVar16 = mainActivity.f2384t;
                if (aVar16 != null) {
                    aVar16.f1281R0.f1349r.setText(str);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
        }
    }

    public /* synthetic */ V1(String str, MainActivity mainActivity, int i2) {
        this.f812a = i2;
        this.f813c = str;
        this.b = mainActivity;
    }
}
