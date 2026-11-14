package T;

import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.VhalProviderService;
import com.ex.auto.WifiFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class X1 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f842a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ X1(int i2, MainActivity mainActivity) {
        this.f842a = i2;
        this.b = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = 19;
        int i4 = 0;
        int i5 = 1;
        switch (this.f842a) {
            case 0:
                int i6 = MainActivity.u0;
                MainActivity mainActivity = this.b;
                if (mainActivity.B0().getBoolean("device_banned", false)) {
                    Y0 y0 = Y0.f854a;
                    SharedPreferences sharedPreferencesB0 = mainActivity.B0();
                    I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                    new Thread(new V0(sharedPreferencesB0, 3)).start();
                    List listT = w0.j.T("quick_access_enabled", "media_bar_floater_enabled", "widget_float_apps_enabled", "widget_float_drive_regen_enabled", "lyrics_floater_enabled", "temp_batt_pill_enabled", "app_pip_enabled", "phone_sync_enabled");
                    SharedPreferences.Editor editorEdit = mainActivity.B0().edit();
                    Iterator it = listT.iterator();
                    while (it.hasNext()) {
                        editorEdit.putBoolean((String) it.next(), false);
                    }
                    editorEdit.apply();
                    Iterator it2 = w0.j.T(QuickAccessFloaterService.class, MediaBarFloaterService.class, HomeFloatingWidgetsService.class, HomeWidgetsPollService.class, LyricsFloaterService.class, TempBattPillFloaterService.class, AppPipFloaterService.class, BlackoutFloaterService.class, DpadFloaterService.class, SplitFloaterService.class, WifiFloaterService.class, ExSapoCastFloaterService.class, PhoneSyncService.class, VhalProviderService.class, CentralWatchdogService.class).iterator();
                    while (it2.hasNext()) {
                        mainActivity.stopService(new Intent(mainActivity, (Class<?>) it2.next()));
                    }
                    L3.f671a.b("Ban", "bloqueio aplicado — serviços parados e recursos desligados");
                    mainActivity.finishAffinity();
                    return;
                }
                return;
            case 1:
                int i7 = MainActivity.u0;
                MainActivity mainActivity2 = this.b;
                mainActivity2.B0().edit().putBoolean("keyserver_first_activate_warned", true).apply();
                mainActivity2.D1();
                return;
            case 2:
                int i8 = MainActivity.u0;
                MainActivity mainActivity3 = this.b;
                mainActivity3.B0().edit().putBoolean("speed_auto_lock_enabled", false).apply();
                mainActivity3.x(false);
                return;
            case 3:
                MainActivity mainActivity4 = this.b;
                U.a aVar = mainActivity4.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                String str = (String) w0.i.b0(mainActivity4.f2389x, aVar.E1.getSelectedItemPosition());
                if (str == null) {
                    M.d0.l(mainActivity4, R.string.k_refresh_list_choose_audio, mainActivity4, 0);
                    return;
                }
                String strS0 = O0.j.S0(str, '/');
                String strY1 = MainActivity.Y1(str);
                String strY2 = MainActivity.Y1("/vendor/etc/carlock/yuedongyinghe.wav");
                StringBuilder sbK = M.d0.k("\n            echo \"== apagando áudio: ", strS0, " ==\"\n            TGT_INO=$(stat -c %i ", strY2, " 2>/dev/null)\n            SRC_INO=$(stat -c %i ");
                M.d0.q(sbK, strY1, " 2>/dev/null)\n            if [ -n \"$SRC_INO\" ] && [ \"$TGT_INO\" = \"$SRC_INO\" ] && grep -F \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts >/dev/null 2>&1; then\n              umount ", strY2, " 2>/dev/null || umount -l ");
                M.d0.q(sbK, strY2, " 2>/dev/null || true\n              restorecon -v ", strY2, " 2>/dev/null || true\n              echo \"unbind_deste_audio\"\n            else\n              echo \"unbind_nao_necessario\"\n            fi\n            rm -f ");
                sbK.append(strY1);
                sbK.append(" 2>&1 || exit 41\n            sync 2>/dev/null || true\n            if [ -f ");
                sbK.append(strY1);
                sbK.append(" ]; then echo \"FALHA_REMOVER\"; exit 42; else echo \"REMOVIDO_OK\"; fi\n        ");
                String strN0 = O0.l.n0(sbK.toString());
                U.a aVar2 = mainActivity4.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button = aVar2.f1318r;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                TextView textView = aVar2.M2;
                String string = mainActivity4.getString(R.string.k_deleting_audio_named, strS0);
                I0.f.d(string, "getString(...)");
                MainActivity.F1(mainActivity4, button, textView, string, 3000L, 15000, strN0, null, null, new W1(i3, mainActivity4), 704);
                return;
            case 4:
                int i9 = MainActivity.u0;
                this.b.W();
                return;
            case 5:
                int i10 = MainActivity.u0;
                this.b.finish();
                return;
            case 6:
                MainActivity mainActivity5 = this.b;
                U.a aVar3 = mainActivity5.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button2 = aVar3.f1277P0;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                TextView textView2 = aVar3.M2;
                String string2 = mainActivity5.getString(R.string.k_creating_network_routes);
                I0.f.d(string2, "getString(...)");
                MainActivity.F1(mainActivity5, button2, textView2, string2, 3000L, 30000, "TS=$(date +%Y%m%d-%H%M%S)\nF=/sdcard/Download/aa_route_create_${TS}.txt\n{\n  echo \"=== CRIAR ROTAS AA INTERNET $(date) ===\"\n  PHONE=$(ip neigh show dev ap0 2>/dev/null | awk '/REACHABLE|STALE|DELAY/ && $1 ~ /^[0-9]/ {print $1; exit}')\n  echo \"PHONE=${PHONE}\"\n  if [ -z \"${PHONE}\" ]; then echo \"ERRO: telefone nao encontrado em ap0\"; exit 1; fi\n\n  FWMARK=$(ip rule show 2>/dev/null | awk '/^19[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n  [ -z \"${FWMARK}\" ] && FWMARK=\"0x64/0x1ffff\"\n  echo \"FWMARK=${FWMARK}\"\n\n  NETID=$(printf '%d' $(echo \"${FWMARK}\" | cut -d'/' -f1) 2>/dev/null || echo 100)\n  echo \"NETID=${NETID}\"\n\n  EXPLICIT_FWMARK=$(ip rule show 2>/dev/null | awk '/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n  if [ -z \"${EXPLICIT_FWMARK}\" ]; then\n    EXPLICIT_DEC=$(( $(printf '%d' $(echo \"${FWMARK}\" | cut -d'/' -f1)) | 65536 ))\n    EXPLICIT_FWMARK=$(printf '0x%x/0x1ffff' ${EXPLICIT_DEC})\n    echo \"EXPLICIT_FWMARK=${EXPLICIT_FWMARK} (calculado)\"\n  else\n    echo \"EXPLICIT_FWMARK=${EXPLICIT_FWMARK} (lido prio13000)\"\n  fi\n\n  ip rule del prio 12500 2>/dev/null; true\n  ip rule del prio 18500 2>/dev/null; true\n  ip rule del prio 21000 2>/dev/null; true\n  ip route flush table 200 2>/dev/null; true\n\n  ip rule add prio 12500 from all fwmark ${EXPLICIT_FWMARK} iif lo lookup 200 2>&1; echo \"rule_add_12500_ec=$?\"\n  ip rule add prio 18500 from all fwmark ${FWMARK} iif lo lookup 200 2>&1; echo \"rule_add_18500_ec=$?\"\n  ip rule add prio 21000 from all fwmark 0x0/0xffff iif lo lookup 200 2>&1; echo \"rule_add_21000_ec=$?\"\n  ip route replace default via ${PHONE} dev ap0 table 200 2>&1; echo \"route_default_ec=$?\"\n  ip route add 192.168.43.0/24 dev ap0 table 200 2>&1; echo \"route_43_ec=$?\"\n\n  settings put global captive_portal_mode 0 2>&1\n  echo \"--- limpando proxy global ---\"\n  settings delete global http_proxy 2>&1\n  settings delete global global_http_proxy_host 2>&1\n  settings delete global global_http_proxy_port 2>&1\n  setprop net.dns1 8.8.8.8\n  setprop net.dns2 8.8.4.4\n  ndc resolver setnetdns ${NETID} '' 8.8.8.8 8.8.4.4 2>&1\n\n  echo \"--- ip rule grep rotas ---\"\n  ip rule show 2>&1 | grep -E '12500|18500|21000' || echo \"REGRAS_NAO_ENCONTRADAS\"\n  echo \"--- ip route table 200 ---\"\n  ip route show table 200 2>&1\n  echo \"--- verificacao fwmark ---\"\n  OUR_12500=$(ip rule show 2>/dev/null | awk '/^12500:.*fwmark/{print $5; exit}')\n  TBOX_13000=$(ip rule show 2>/dev/null | awk '/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n  echo \"prio_12500=${OUR_12500}\"\n  echo \"prio_13000_tbox0=${TBOX_13000}\"\n  if [ \"${OUR_12500}\" = \"${TBOX_13000}\" ]; then echo \"FWMARK_MATCH=OK\"; else echo \"FWMARK_MATCH=MISMATCH - execute Criar Rotas novamente\"; fi\n  echo \"--- dns ---\"\n  getprop net.dns1; getprop net.dns2\n  echo \"--- proxy global ---\"\n  settings get global http_proxy 2>&1\n  settings get global global_http_proxy_host 2>&1\n  settings get global global_http_proxy_port 2>&1\n  echo \"--- ping global fallback ---\"\n  ping -c 2 -W 3 8.8.8.8 2>&1\n  echo \"--- ping via ap0 direto ---\"\n  ping -I ap0 -c 2 -W 3 8.8.8.8 2>&1\n} 2>&1 | tee ${F}\necho \"Salvo: ${F}\"", mainActivity5.getString(R.string.k_creating_routes_toast), new E2(i5, mainActivity5), new E2(2, mainActivity5), 512);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i11 = MainActivity.u0;
                L3.f671a.b("Reiniciar", "reboot pedido pelo botão da tela");
                MainActivity mainActivity6 = this.b;
                mainActivity6.f2388w.execute(new U1(i3, mainActivity6));
                return;
            case Response.NO /* 8 */:
                int i12 = MainActivity.u0;
                MainActivity mainActivity7 = this.b;
                mainActivity7.startService(new Intent(mainActivity7, (Class<?>) CentralWatchdogService.class).putExtra("crash_action", "resume"));
                return;
            case 9:
                int i13 = MainActivity.u0;
                MainActivity mainActivity8 = this.b;
                mainActivity8.startService(new Intent(mainActivity8, (Class<?>) CentralWatchdogService.class).putExtra("crash_action", "disable_all"));
                int i14 = mainActivity8.f2353J;
                U.a aVar4 = mainActivity8.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                LinearLayout linearLayout = aVar4.i1;
                I0.f.d(linearLayout, "navAcesso");
                List list = mainActivity8.f2363W;
                if (list == null) {
                    I0.f.h("navSections");
                    throw null;
                }
                Iterator it3 = list.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        i4 = -1;
                    } else if (((C0107n3) it3.next()).f1071a != linearLayout) {
                        i4++;
                    }
                }
                if (i14 == i4) {
                    mainActivity8.C();
                    return;
                }
                return;
            case 10:
                int i15 = MainActivity.u0;
                MainActivity mainActivity9 = this.b;
                U.a aVar5 = mainActivity9.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                mainActivity9.O1(aVar5.e2, false);
                mainActivity9.v1();
                return;
            case 11:
                int i16 = MainActivity.u0;
                MainActivity mainActivity10 = this.b;
                mainActivity10.B0().edit().putBoolean("rvc_black_bg", true).apply();
                mainActivity10.v1();
                mainActivity10.startForegroundService(new Intent(mainActivity10, (Class<?>) CentralWatchdogService.class));
                Toast.makeText(mainActivity10, mainActivity10.getString(R.string.k_rvc_black_bg_applying), 0).show();
                mainActivity10.f2388w.execute(new U1(17, mainActivity10));
                return;
            case Response.BAD /* 12 */:
                int i17 = MainActivity.u0;
                this.b.V();
                return;
            case 13:
                int i18 = MainActivity.u0;
                MainActivity mainActivity11 = this.b;
                mainActivity11.getClass();
                String strY3 = MainActivity.Y1("/data/local/tmp/sons");
                StringBuilder sb = new StringBuilder("\n            ");
                sb.append(Y.C());
                sb.append("\n            echo \"== copiar áudios do pen-drive para sons/ ==\"\n            mkdir -p ");
                sb.append(strY3);
                sb.append(" 2>&1 || exit 20\n            chmod 755 ");
                sb.append(strY3);
                M.d0.q(sb, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.wav \"$root\"/*.WAV \"$root\"/*.mp3 \"$root\"/*.MP3 \"$root\"/*.ogg \"$root\"/*.OGG \"$root\"/*.flac \"$root\"/*.FLAC \"$root\"/*.m4a \"$root\"/*.M4A \"$root\"/*.aac \"$root\"/*.AAC \\\n                        \"$root\"/*/*.wav \"$root\"/*/*.WAV \"$root\"/*/*.mp3 \"$root\"/*/*.MP3 \\\n                        \"$root\"/*/*.ogg \"$root\"/*/*.OGG \"$root\"/*/*.flac \"$root\"/*/*.FLAC \\\n                        \"$root\"/*/*.m4a \"$root\"/*/*.M4A \"$root\"/*/*.aac \"$root\"/*/*.AAC; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                base=$(echo \"$base\" | tr ' ' '_')\n                echo \"copiando $f -> /data/local/tmp/sons/$base\"\n                cp -f \"$f\" ", strY3, "/\"$base\" 2>&1\n                chown root:root ", strY3);
                M.d0.q(sb, "/\"$base\" 2>/dev/null || true\n                chmod 644 ", strY3, "/\"$base\" 2>/dev/null || true\n                restorecon -v ", strY3);
                sb.append("/\"$base\" 2>/dev/null || true\n                copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l ");
                sb.append(strY3);
                sb.append(" 2>&1 || true\n        ");
                String strN1 = O0.l.n0(sb.toString());
                U.a aVar6 = mainActivity11.f2384t;
                if (aVar6 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button3 = aVar6.f1316q;
                if (aVar6 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                TextView textView3 = aVar6.M2;
                String string3 = mainActivity11.getString(R.string.k_copying_audios_pendrive);
                I0.f.d(string3, "getString(...)");
                MainActivity.F1(mainActivity11, button3, textView3, string3, 3000L, 60000, strN1, null, null, new W1(18, mainActivity11), 704);
                return;
            case 14:
                int i19 = MainActivity.u0;
                MainActivity mainActivity12 = this.b;
                U.a aVar7 = mainActivity12.f2384t;
                if (aVar7 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar7.f1298g.setEnabled(false);
                mainActivity12.f2388w.execute(new U1(24, mainActivity12));
                return;
            case 15:
                int i20 = MainActivity.u0;
                this.b.K1(true);
                return;
            case Response.BYE /* 16 */:
                int i21 = MainActivity.u0;
                MainActivity mainActivity13 = this.b;
                mainActivity13.B0().edit().putBoolean("aeb_restore_on_boot", true).apply();
                mainActivity13.d1();
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 25));
                }
                CarPropertyManager carPropertyManager = mainActivity13.f2350G;
                if (carPropertyManager != null) {
                    new Thread(new RunnableC0052e2(carPropertyManager, mainActivity13, i5)).start();
                    return;
                }
                return;
            case 17:
                int i22 = MainActivity.u0;
                MainActivity mainActivity14 = this.b;
                String string4 = mainActivity14.getString(R.string.k_modo_oficina_trabalhando);
                I0.f.d(string4, "getString(...)");
                mainActivity14.A1(string4, new C0076i2(7, mainActivity14));
                return;
            case 18:
                int i23 = MainActivity.u0;
                MainActivity mainActivity15 = this.b;
                mainActivity15.B0().edit().putBoolean("gestures_restore_on_boot", true).apply();
                mainActivity15.m1();
                return;
            case 19:
                int i24 = MainActivity.u0;
                MainActivity mainActivity16 = this.b;
                String string5 = mainActivity16.getString(R.string.update_declined);
                I0.f.d(string5, "getString(...)");
                U.a aVar8 = mainActivity16.f2384t;
                if (aVar8 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar8.R2.setText(string5);
                Toast.makeText(mainActivity16, string5, 0).show();
                U.a aVar9 = mainActivity16.f2384t;
                if (aVar9 != null) {
                    aVar9.f1311n.setEnabled(true);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 20:
                int i25 = MainActivity.u0;
                this.b.v1();
                return;
            case 21:
                int i26 = MainActivity.u0;
                this.b.V();
                return;
            case 22:
                int i27 = MainActivity.u0;
                this.b.v1();
                return;
            case 23:
                int i28 = MainActivity.u0;
                this.b.V();
                return;
            case 24:
                int i29 = MainActivity.u0;
                this.b.l1();
                return;
            case 25:
                int i30 = MainActivity.u0;
                this.b.l1();
                return;
            default:
                int i31 = MainActivity.u0;
                MainActivity mainActivity17 = this.b;
                mainActivity17.B0().edit().putBoolean("gestures_enabled", true).apply();
                mainActivity17.l1();
                mainActivity17.startForegroundService(new Intent(mainActivity17, (Class<?>) CentralWatchdogService.class));
                U.a aVar10 = mainActivity17.f2384t;
                if (aVar10 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar10.f1281R0.f1349r.setVisibility(0);
                U.a aVar11 = mainActivity17.f2384t;
                if (aVar11 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar11.f1281R0.f1349r.setText(mainActivity17.getString(R.string.xml_gestos_status_aplicando));
                mainActivity17.f2388w.execute(new G2(16, mainActivity17));
                return;
        }
    }
}
