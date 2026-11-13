package T;

import android.content.res.ColorStateList;
import android.widget.Button;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p007e.C0205e;

/* JADX INFO: renamed from: T.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0040c2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f917a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f918c;

    public /* synthetic */ RunnableC0040c2(MainActivity mainActivity, boolean z2, int i2) {
        this.f917a = i2;
        this.b = mainActivity;
        this.f918c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0299  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v2, types: [w0.q] */
    @Override // java.lang.Runnable
    public final void run() {
        Object arrayList;
        boolean z2 = true;
        switch (this.f917a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i2 = MainActivity.u0;
                try {
                    mainActivity.getClass();
                    String strY1 = MainActivity.Y1("/data/local/tmp/sons");
                    String strY2 = MainActivity.Y1("/data/local/tmp");
                    String strY3 = MainActivity.Y1("/sdcard/Download");
                    String strY4 = MainActivity.Y1("/storage/emulated/0/Download");
                    boolean z3 = this.f918c;
                    String strN0 = z3 ? O0.l.n0("\n                        for wav in " + strY2 + "/*.wav " + strY2 + "/*.WAV; do\n                          [ -f \"$wav\" ] || continue\n                          base=${wav##*/}\n                          base=$(echo \"$base\" | tr ' ' '_')\n                          dest=" + strY1 + "/\"$base\"\n                          mv -f \"$wav\" \"$dest\" 2>&1 || true\n                          chown root:root \"$dest\" 2>/dev/null || true\n                          chmod 644 \"$dest\" 2>/dev/null || true\n                          restorecon -v \"$dest\" 2>/dev/null || true\n                        done\n                        for dlroot in " + strY3 + ' ' + strY4 + "; do\n                          [ -d \"$dlroot\" ] || continue\n                          for wav in \"$dlroot\"/*.wav \"$dlroot\"/*.WAV; do\n                            [ -f \"$wav\" ] || continue\n                            base=${wav##*/}\n                            base=$(echo \"$base\" | tr ' ' '_')\n                            dest=" + strY1 + "/\"$base\"\n                            cp -f \"$wav\" \"$dest\" 2>&1 || true\n                            chown root:root \"$dest\" 2>/dev/null || true\n                            chmod 644 \"$dest\" 2>/dev/null || true\n                            restorecon -v \"$dest\" 2>/dev/null || true\n                          done\n                        done\n                        ") : "";
                    String strN1 = O0.l.n0("\n                    for _sw in " + strY1 + "/*.wav " + strY1 + "/*.WAV; do\n                      [ -f \"$_sw\" ] || continue\n                      _sb=${_sw##*/}\n                      _sc=$(echo \"$_sb\" | tr ' ' '_')\n                      [ \"$_sc\" = \"$_sb\" ] && continue\n                      mv -f \"$_sw\" " + strY1 + "/\"$_sc\" 2>&1 || true\n                      chown root:root " + strY1 + "/\"$_sc\" 2>/dev/null || true\n                      chmod 644 " + strY1 + "/\"$_sc\" 2>/dev/null || true\n                    done\n                ");
                    StringBuilder sb = new StringBuilder();
                    sb.append(Y.C());
                    sb.append('\n');
                    if (strN0.length() > 0) {
                        sb.append(strN0);
                        sb.append('\n');
                    }
                    sb.append(strN1);
                    sb.append('\n');
                    sb.append("ls -1 " + strY1 + "/*.wav 2>/dev/null || true");
                    sb.append('\n');
                    String string = sb.toString();
                    I0.f.d(string, "toString(...)");
                    List listH0 = O0.j.H0(mainActivity.C1(z3 ? 35000 : 12000, string));
                    ArrayList arrayList2 = new ArrayList(w0.k.V(listH0));
                    Iterator it = listH0.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(O0.j.X0((String) it.next()).toString());
                    }
                    arrayList = new ArrayList();
                    for (Object obj : arrayList2) {
                        String str = (String) obj;
                        if (O0.s.w0(str, "/data/local/tmp/sons") && O0.s.r0(str, ".wav", true)) {
                            arrayList.add(obj);
                        }
                        break;
                    }
                } catch (Exception unused) {
                    arrayList = w0.q.f4190a;
                }
                mainActivity.f2387v.post(new H(mainActivity, 16, arrayList));
                return;
            case 1:
                int i3 = MainActivity.u0;
                MainActivity mainActivity2 = this.b;
                if (mainActivity2.isFinishing()) {
                    return;
                }
                Toast.makeText(mainActivity2, this.f918c ? mainActivity2.getString(R.string.k_removed) : mainActivity2.getString(R.string.k_restart_car_for_oem), 0).show();
                return;
            case 2:
                MainActivity mainActivity3 = this.b;
                U.a aVar = mainActivity3.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1281R0.f1335c.setEnabled(true);
                U.a aVar2 = mainActivity3.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button = aVar2.f1281R0.f1335c;
                boolean z4 = this.f918c;
                button.setText(mainActivity3.getString(z4 ? R.string.xml_desativar : R.string.xml_ativar));
                U.a aVar3 = mainActivity3.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.f1281R0.f1335c.setBackgroundTintList(ColorStateList.valueOf(mainActivity3.getColor(z4 ? R.color.cx_danger_deep : R.color.cx_surface_alt)));
                U.a aVar4 = mainActivity3.f2384t;
                if (aVar4 != null) {
                    aVar4.f1281R0.f1335c.setTextColor(mainActivity3.getColor(z4 ? R.color.cx_on_accent : R.color.cx_text_hi));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 3:
                int i4 = MainActivity.u0;
                boolean z5 = this.f918c;
                String str2 = z5 ? "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')" : "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')";
                MainActivity mainActivity4 = this.b;
                String strC1 = mainActivity4.C1(20000, str2);
                if (z5) {
                    I0.f.e(strC1, "saida");
                    if (AbstractC0126q4.a(strC1, "TTL_V4") <= 0 || AbstractC0126q4.a(strC1, "TTL_V6") <= 0) {
                        z2 = false;
                    }
                } else {
                    I0.f.e(strC1, "saida");
                    if (AbstractC0126q4.a(strC1, "TTL_V4") > 0 && AbstractC0126q4.a(strC1, "TTL_V6") > 0) {
                        z2 = false;
                    }
                }
                if (z2) {
                    M.d0.m(mainActivity4, "ttl_65_ativo", z5);
                }
                L3 l3 = L3.f671a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z5 ? "ativar" : "desativar");
                sb2.append(": ");
                sb2.append(z2 ? "OK" : "FALHOU");
                sb2.append(" — ");
                sb2.append(O0.j.V0(120, O0.s.v0(strC1, "\n", " ")));
                l3.b("TTL", sb2.toString());
                mainActivity4.f2387v.post(new H2(mainActivity4, z2, z5, 2));
                return;
            case 4:
                int i5 = MainActivity.u0;
                MainActivity mainActivity5 = this.b;
                if (mainActivity5.isFinishing()) {
                    return;
                }
                Toast.makeText(mainActivity5, mainActivity5.getString(this.f918c ? R.string.k_rvc_back_to_normal : R.string.k_rvc_disabled_restart_if_needed), 0).show();
                return;
            case 5:
                int i6 = MainActivity.u0;
                this.b.C1(3000, this.f918c ? "mkdir -p /data/local/gesture-launcher && touch /data/local/gesture-launcher/single_step_mode && chmod 666 /data/local/gesture-launcher/single_step_mode" : "rm -f /data/local/gesture-launcher/single_step_mode");
                return;
            case 6:
                MainActivity mainActivity6 = this.b;
                U.a aVar5 = mainActivity6.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar5.f1291c.setEnabled(true);
                String string2 = mainActivity6.getString(this.f918c ? R.string.k_adb_service_started : R.string.k_adb_service_error);
                I0.f.b(string2);
                Toast.makeText(mainActivity6, string2, 1).show();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity7 = this.b;
                U.a aVar6 = mainActivity7.f2384t;
                if (aVar6 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                SwitchMaterial switchMaterial = aVar6.q2;
                I0.f.d(switchMaterial, "swTtl65");
                boolean z6 = this.f918c;
                mainActivity7.O1(switchMaterial, z6);
                U.a aVar7 = mainActivity7.f2384t;
                if (aVar7 != null) {
                    aVar7.Q2.setText(mainActivity7.getString(z6 ? R.string.k_ttl65_on : R.string.k_ttl65_off));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case Response.NO /* 8 */:
                int i7 = MainActivity.u0;
                MainActivity mainActivity8 = this.b;
                if (mainActivity8.isFinishing()) {
                    return;
                }
                Toast.makeText(mainActivity8, this.f918c ? mainActivity8.getString(R.string.k_removed) : mainActivity8.getString(R.string.k_restart_car_for_oem), 0).show();
                return;
            case 9:
                MainActivity mainActivity9 = this.b;
                boolean z7 = this.f918c;
                int i8 = MainActivity.u0;
                if (mainActivity9.isFinishing()) {
                    return;
                }
                if (z7) {
                    M.d0.l(mainActivity9, R.string.k_rvc_black_bg_applied, mainActivity9, 0);
                    return;
                }
                M.d0.m(mainActivity9, "rvc_black_bg", false);
                U.a aVar8 = mainActivity9.f2384t;
                if (aVar8 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                mainActivity9.O1(aVar8.e2, false);
                mainActivity9.v1();
                String str3 = AbstractC0120p4.f1098a;
                String str4 = AbstractC0120p4.f1098a;
                C0081j1 c0081j1 = new C0081j1(mainActivity9);
                String string3 = mainActivity9.getString(R.string.k_error_occurred_title);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string3;
                c0205e.f = mainActivity9.getString(R.string.k_error_report_prompt, "Falha ao aplicar o fundo preto na ré");
                c0081j1.f(mainActivity9.getString(R.string.common_not_now), null);
                c0081j1.h(mainActivity9.getString(R.string.k_send_btn), new DialogInterfaceOnClickListenerC0028a2(mainActivity9, str4, 4));
                c0081j1.j();
                return;
            case 10:
                MainActivity mainActivity10 = this.b;
                mainActivity10.f2359Q = this.f918c;
                mainActivity10.q2();
                return;
            case 11:
                MainActivity mainActivity11 = this.b;
                U.a aVar9 = mainActivity11.f2384t;
                if (aVar9 != null) {
                    aVar9.S2.setBackgroundTintList(this.f918c ? ColorStateList.valueOf(mainActivity11.getColor(R.color.cx_success)) : null);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case Response.BAD /* 12 */:
                int i9 = MainActivity.u0;
                boolean z8 = this.f918c;
                MainActivity mainActivity12 = this.b;
                if (z8) {
                    M.d0.l(mainActivity12, R.string.k_connadaptor_do_cache, mainActivity12, 0);
                }
                mainActivity12.z();
                return;
            case 13:
                int i10 = MainActivity.u0;
                MainActivity mainActivity13 = this.b;
                if (mainActivity13.isFinishing()) {
                    return;
                }
                M.d0.l(mainActivity13, this.f918c ? R.string.k_dep_gestures_updated : R.string.k_dep_gestures_update_failed, mainActivity13, 1);
                return;
            case 14:
                boolean z9 = this.f918c;
                MainActivity mainActivity14 = this.b;
                if (!z9) {
                    int i11 = MainActivity.u0;
                    String strR2 = mainActivity14.r2();
                    if (strR2 != null) {
                        mainActivity14.f2387v.post(new V1(mainActivity14, strR2, 23));
                        return;
                    }
                }
                mainActivity14.f2387v.post(new RunnableC0040c2(mainActivity14, z9, 15));
                String strC2 = mainActivity14.C1(30000, z9 ? "pm uninstall com.njda.adapter" : "pm install -r -g '/data/local/tmp/fixes/ca_fix.apk'");
                boolean zE0 = O0.j.E0(strC2);
                boolean z10 = !zE0 && (O0.j.x0(strC2, "Success", true) || (z9 && !O0.j.x0(strC2, "Failure", true)));
                boolean zY = mainActivity14.Y();
                boolean z11 = zY != z9;
                if (z11) {
                    M.d0.m(mainActivity14, "aa_wifi_bind_enabled", zY);
                }
                mainActivity14.f2387v.post(new W2(zE0, mainActivity14, z10, z11, z9, strC2));
                return;
            case 15:
                int i12 = MainActivity.u0;
                int i13 = this.f918c ? R.string.k_connadaptor_pm_uninstalling : R.string.k_connadaptor_pm_installing;
                MainActivity mainActivity15 = this.b;
                M.d0.l(mainActivity15, i13, mainActivity15, 0);
                return;
            default:
                int i14 = MainActivity.u0;
                MainActivity mainActivity16 = this.b;
                if (mainActivity16.isFinishing()) {
                    return;
                }
                if (this.f918c) {
                    U.a aVar10 = mainActivity16.f2384t;
                    if (aVar10 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar10.f1281R0.f1349r.setText(mainActivity16.getString(R.string.xml_gestos_status_concluido));
                    mainActivity16.f2387v.postDelayed(new G2(19, mainActivity16), 15000L);
                    return;
                }
                U.a aVar11 = mainActivity16.f2384t;
                if (aVar11 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar11.f1281R0.f1349r.setText(mainActivity16.getString(R.string.xml_gestos_status_falha));
                mainActivity16.B0().edit().putBoolean("gestures_enabled", false).apply();
                mainActivity16.l1();
                return;
        }
    }

    public /* synthetic */ RunnableC0040c2(boolean z2, MainActivity mainActivity, int i2) {
        this.f917a = i2;
        this.f918c = z2;
        this.b = mainActivity;
    }
}
