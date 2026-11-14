package T;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.view.WindowManager;
import android.widget.RemoteViews;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.FanSpeedWidgetProvider;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.HvacDirectionFanWidgetProvider;
import com.ex.auto.HvacDirectionWidgetProvider;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.R;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile long f845a = 0;
    public static volatile boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Handler f849g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static long f850h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile boolean f852j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile String f853k = "/data/local/tmp/fixes/central_boot.log";
    public static volatile X b = X.f839c;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f846c = {-14829228, -1, -5317, -16718337, -44462, -22746};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f847d = {-15592425, -16777216, -15064194, -13558894, -12703965, -16757440};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f848e = {1090651392, 557884981};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final RunnableC0026a0 f851i = new RunnableC0026a0(10);

    public static String A() {
        String strH0 = h0("/system/app/ConnAdaptor/ConnAdaptor.apk");
        String strH1 = h0(" /system/app/ConnAdaptor/ConnAdaptor.apk ");
        StringBuilder sbK = M.d0.k("\n            if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w 'ap0' | awk '{print $1}' | sed 's/://' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 2\n            umount ", strH0, " 2>/dev/null || umount -l ", strH0, " 2>/dev/null || true\n            if grep -F ");
        sbK.append(strH1);
        sbK.append(" /proc/mounts >/dev/null 2>&1; then echo \"UNMOUNT_FALHOU\"; else echo \"desativado\"; fi\n        ");
        return O0.l.n0(sbK.toString());
    }

    public static String B() {
        C0029a3 c0029a3 = new C0029a3(13);
        return O0.l.n0("\n            if grep -F " + ((String) c0029a3.b(" /system/bin/CarplayMonitor ")) + " /proc/mounts >/dev/null 2>&1; then\n              " + l0("/system/bin/CarplayMonitor") + "\n              if grep -F " + ((String) c0029a3.b(" /system/bin/CarplayMonitor ")) + " /proc/mounts >/dev/null 2>&1; then\n                echo \"MONITOR_UMOUNT_FALHOU\"\n              else\n                echo \"MONITOR_DESMONTADO\"\n              fi\n            else\n              echo \"MONITOR_JA_ESTAVA_DE_FABRICA\"\n            fi\n            _md=$(md5sum " + ((String) c0029a3.b("/system/bin/CarplayMonitor")) + " 2>/dev/null | awk '{print $1}')\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk '{print $1}')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk '{print $1}')\n            echo \"MONITOR_PATH_MD5=$_md RUNNING_MD5=$_run\"\n            echo \"MONITOR_SEM_REINICIO (volta de fábrica no próximo boot)\"\n            echo \"== fim ==\"\n        ");
    }

    public static String C() {
        String strH0 = h0("/data/local/tmp");
        String strH1 = h0("/data/local/tmp/apks");
        String strH2 = h0("/data/local/tmp/sons");
        String strH3 = h0("/data/local/tmp/fixes");
        String strH4 = h0("/sdcard/Download");
        String strH5 = h0("/storage/emulated/0/Download");
        String strH6 = h0("/data/local/tmp/soms");
        StringBuilder sbK = M.d0.k("\n            [ -d ", strH6, " ] && [ ! -d ", strH2, " ] && mv ");
        sbK.append(strH6);
        sbK.append(' ');
        sbK.append(strH2);
        sbK.append(" 2>/dev/null || true\n            for _centdir in ");
        sbK.append(strH0);
        sbK.append(' ');
        sbK.append(strH1);
        sbK.append(' ');
        sbK.append(strH2);
        sbK.append(' ');
        sbK.append(strH3);
        sbK.append(' ');
        sbK.append(strH4);
        sbK.append(' ');
        sbK.append(strH5);
        sbK.append("; do\n              mkdir -p \"$_centdir\" 2>/dev/null || true\n              if [ -d \"$_centdir\" ]; then chmod 755 \"$_centdir\" 2>/dev/null || true; fi\n            done\n            for _appdir in ");
        sbK.append(strH1);
        sbK.append(' ');
        sbK.append(strH2);
        sbK.append(' ');
        M.d0.q(sbK, strH3, "; do\n              if [ -d \"$_appdir\" ]; then\n                chown system:system \"$_appdir\" 2>/dev/null || true\n                chmod 775 \"$_appdir\" 2>/dev/null || true\n              fi\n            done\n            for _centf in ", strH3, "/ca_fix.apk ");
        sbK.append(strH3);
        sbK.append("/central_boot.sh ");
        sbK.append(strH3);
        sbK.append("/central_boot.log; do\n              if [ -f \"$_centf\" ]; then\n                chown system:system \"$_centf\" 2>/dev/null || true\n                chmod 664 \"$_centf\" 2>/dev/null || true\n              fi\n            done\n        ");
        return O0.l.n0(sbK.toString());
    }

    public static void D(Context context) {
        I0.f.e(context, "context");
        try {
            context.startService(new Intent(context, (Class<?>) HomeWidgetsPollService.class));
        } catch (Exception unused) {
        }
    }

    public static void E(Context context) {
        I0.f.e(context, "context");
        if (!a(context)) {
            context.stopService(new Intent(context, (Class<?>) HomeFloatingWidgetsService.class));
            return;
        }
        context.startService(new Intent(context, (Class<?>) HomeFloatingWidgetsService.class));
        HomeFloatingWidgetsService homeFloatingWidgetsService = HomeFloatingWidgetsService.f2263R;
        if (homeFloatingWidgetsService != null) {
            homeFloatingWidgetsService.f2280c.post(new RunnableC0155w1(homeFloatingWidgetsService, 1));
        }
    }

    public static void F(Context context) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        Intent intent = new Intent(context, (Class<?>) ModoOficinaTriggerService.class);
        try {
            List list = J3.f637a;
            I0.f.b(sharedPreferences);
            if (!sharedPreferences.getBoolean("modo_oficina", false)) {
                context.stopService(intent);
            } else if (ModoOficinaTriggerService.f == null) {
                context.startService(intent);
            }
        } catch (Throwable unused) {
        }
    }

    public static String G(int i2) {
        int i3 = i2 / 60;
        int i4 = i2 % 60;
        if (i3 > 0 && i4 > 0) {
            return i3 + "min" + i4 + 's';
        }
        if (i3 > 0) {
            return i3 + "min";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i4);
        sb.append('s');
        return sb.toString();
    }

    public static final Notification H(Service service, String str, String str2, String str3, int i2, String str4, int i3) {
        Object systemService = service.getSystemService("notification");
        I0.f.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (notificationManager.getNotificationChannel(str) == null) {
            NotificationChannel notificationChannel = new NotificationChannel(str, str2, i3);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        Notification.Builder smallIcon = new Notification.Builder(service, str).setContentTitle(str3).setSmallIcon(i2);
        I0.f.d(smallIcon, "setSmallIcon(...)");
        if (str4 != null) {
            smallIcon.setContentText(str4);
        }
        Notification notificationBuild = smallIcon.build();
        I0.f.d(notificationBuild, "build(...)");
        return notificationBuild;
    }

    public static /* synthetic */ Notification I(Service service, String str, String str2, String str3, int i2, String str4, int i3, int i4) {
        if ((i4 & 16) != 0) {
            str4 = null;
        }
        String str5 = str4;
        if ((i4 & 32) != 0) {
            i3 = 1;
        }
        return H(service, str, str2, str3, i2, str5, i3);
    }

    public static List J(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.devicelist.ICarplayDeviceManager");
            if (!iBinder.transact(8, parcelObtain, parcelObtain2, 0)) {
                Log.w("CarplayDeviceBinder", "transact(getDeviceList) devolveu false");
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return null;
            }
            parcelObtain2.readException();
            int i2 = parcelObtain2.readInt();
            if (i2 < 0) {
                w0.q qVar = w0.q.f4190a;
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return qVar;
            }
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                if (parcelObtain2.readInt() != 0) {
                    arrayList.add(new W(parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readByte(), parcelObtain2.readByte(), parcelObtain2.readByte()));
                }
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.w("CarplayDeviceBinder", "getDeviceList(txn 8): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return null;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static List K(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.adapter.androidauto.connection.devicelist.IDeviceManager");
            iBinder.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            int i2 = parcelObtain2.readInt();
            if (i2 < 0) {
                w0.q qVar = w0.q.f4190a;
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return qVar;
            }
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                if (parcelObtain2.readInt() != 0) {
                    arrayList.add(new C0025a(parcelObtain2.readInt(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readInt(), parcelObtain2.readByte()));
                }
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.w("AaDeviceBinder", "getDeviceList(txn 6): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return null;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static int L(LyricsFloaterService lyricsFloaterService) {
        return lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("font", -14829228);
    }

    public static float M(LyricsFloaterService lyricsFloaterService) {
        return A.b.n(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getFloat("scale", 1.0f), 0.6f, 2.0f);
    }

    public static void N(File file, boolean z2) throws IllegalAccessException, IOException, InvocationTargetException {
        try {
            A.b.k0(file, z(z2));
        } catch (IOException e2) {
            Log.w("BootScript", "gravação direta falhou (" + e2.getMessage() + ") — apagando o arquivo alheio e recriando");
            if (file.exists() && !file.delete()) {
                try {
                    I1 i1 = new I1(5555);
                    StringBuilder sb = new StringBuilder("chown system:system ");
                    sb.append(g0("/data/local/tmp/fixes"));
                    sb.append(' ');
                    String absolutePath = file.getAbsolutePath();
                    I0.f.d(absolutePath, "getAbsolutePath(...)");
                    sb.append(g0(absolutePath));
                    sb.append(" 2>/dev/null; chmod 775 ");
                    sb.append(g0("/data/local/tmp/fixes"));
                    sb.append(" 2>/dev/null; chmod 664 ");
                    String absolutePath2 = file.getAbsolutePath();
                    I0.f.d(absolutePath2, "getAbsolutePath(...)");
                    sb.append(g0(absolutePath2));
                    sb.append(" 2>/dev/null; echo perms_ok");
                    i1.b(8000, sb.toString());
                } catch (Throwable th) {
                    M.d0.r(th, new StringBuilder("canal root indisponível pra corrigir permissões: "), "BootScript");
                }
            }
            A.b.k0(file, z(z2));
        }
    }

    public static String O(ContextWrapper contextWrapper, String str) {
        I0.f.e(contextWrapper, "context");
        switch (str.hashCode()) {
            case -2062114727:
                if (!str.equals("close_apps")) {
                    return str;
                }
                String string = contextWrapper.getString(R.string.k_qa_close_apps);
                I0.f.d(string, "getString(...)");
                return string;
            case -1658020302:
                if (!str.equals("aa_activate")) {
                    return str;
                }
                String string2 = contextWrapper.getString(R.string.k_qa_activate_aa);
                I0.f.d(string2, "getString(...)");
                return string2;
            case -936045084:
                return !str.equals("karaoke") ? str : "Karaokê";
            case -793615751:
                if (!str.equals("app_pip")) {
                    return str;
                }
                String string3 = contextWrapper.getString(R.string.k_qa_pip_app);
                I0.f.d(string3, "getString(...)");
                return string3;
            case -753149968:
                if (!str.equals("recirc_guard")) {
                    return str;
                }
                String string4 = contextWrapper.getString(R.string.k_recirc_guard_title);
                I0.f.d(string4, "getString(...)");
                return string4;
            case -417036516:
                if (!str.equals("screen_off")) {
                    return str;
                }
                String string5 = contextWrapper.getString(R.string.k_qa_screen_off);
                I0.f.d(string5, "getString(...)");
                return string5;
            case -179908303:
                if (!str.equals("split_screen")) {
                    return str;
                }
                String string6 = contextWrapper.getString(R.string.k_qa_split_screen);
                I0.f.d(string6, "getString(...)");
                return string6;
            case -43141177:
                if (!str.equals("screen_rest")) {
                    return str;
                }
                String string7 = contextWrapper.getString(R.string.k_qa_screen_rest);
                I0.f.d(string7, "getString(...)");
                return string7;
            case 96446:
                return !str.equals("aeb") ? str : "AEB";
            case 3006247:
                return !str.equals("avas") ? str : "AVAS";
            case 3649301:
                return !str.equals("wifi") ? str : "Wi-Fi";
            case 110066619:
                if (!str.equals("fullscreen")) {
                    return str;
                }
                String string8 = contextWrapper.getString(R.string.k_qa_fullscreen);
                I0.f.d(string8, "getString(...)");
                return string8;
            case 134853144:
                if (!str.equals("cronometro")) {
                    return str;
                }
                String string9 = contextWrapper.getString(R.string.k_qa_cronometro);
                I0.f.d(string9, "getString(...)");
                return string9;
            case 270595184:
                if (!str.equals("aa_reset")) {
                    return str;
                }
                String string10 = contextWrapper.getString(R.string.k_qa_restart_aa);
                I0.f.d(string10, "getString(...)");
                return string10;
            case 726539592:
                return !str.equals("drive_regen") ? str : "Drive/Regen";
            case 780346297:
                if (!str.equals("telemetry")) {
                    return str;
                }
                String string11 = contextWrapper.getString(R.string.k_qa_telemetry);
                I0.f.d(string11, "getString(...)");
                return string11;
            case 845503285:
                if (!str.equals("power_off")) {
                    return str;
                }
                String string12 = contextWrapper.getString(R.string.k_qa_power_off);
                I0.f.d(string12, "getString(...)");
                return string12;
            case 1421312269:
                if (!str.equals("regressiva")) {
                    return str;
                }
                String string13 = contextWrapper.getString(R.string.k_qa_regressiva);
                I0.f.d(string13, "getString(...)");
                return string13;
            default:
                return str;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:75:0x0106 A[RETURN, SYNTHETIC] */
    public static String P(MainActivity mainActivity, String str) {
        I0.f.e(mainActivity, "context");
        I0.f.e(str, "id");
        switch (str) {
            case "close_apps":
                String string = mainActivity.getString(R.string.k_qa_close_apps_chip);
                I0.f.d(string, "getString(...)");
                return string;
            case "aa_activate":
                return "▶ AA";
            case "karaoke":
                return "🎤";
            case "app_pip":
                return "▢";
            case "recirc_guard":
                return "🌀";
            case "screen_off":
                String string2 = mainActivity.getString(R.string.k_qa_screen_chip);
                I0.f.d(string2, "getString(...)");
                return string2;
            case "split_screen":
                return "◫";
            case "screen_rest":
                return "🕐";
            case "aeb":
                return "AEB";
            case "avas":
                return "AVAS";
            case "wifi":
                return "WiFi";
            case "fullscreen":
                return "⛶";
            case "cronometro":
                return "⏱";
            case "aa_reset":
                return "↺ AA";
            case "drive_regen":
                return "🚗";
            case "telemetry":
                return "📡";
            case "power_off":
                return "OFF";
            case "regressiva":
                return "⏳";
            default:
                if (str.equals("close_apps")) {
                    String string3 = mainActivity.getString(R.string.k_qa_close_apps_chip);
                    I0.f.d(string3, "getString(...)");
                    return string3;
                }
                return "?";
        }
    }

    public static String Q() {
        String strH0 = h0(" /system/app/ConnAdaptor/ConnAdaptor.apk ");
        return O0.l.n0("\n            " + C() + "\n            setprop persist.cpaa.enable 1\n            ls -l " + h0("/data/local/tmp/fixes/ca_fix.apk") + " 2>&1 || { echo \"ERRO_falta_ca_fix\"; exit 30; }\n            echo \"SRC_MD5=$(md5sum " + h0("/data/local/tmp/fixes/ca_fix.apk") + " 2>/dev/null | awk '{print $1}')\"\n            if grep -F " + strH0 + " /proc/mounts >/dev/null 2>&1; then\n              " + l0("/system/app/ConnAdaptor/ConnAdaptor.apk") + "\n              if grep -F " + strH0 + " /proc/mounts >/dev/null 2>&1; then\n                echo \"BIND_ANTIGO_NAO_SAIU\"\n              else\n                echo \"BIND_ANTIGO_DESMONTADO\"\n              fi\n            fi\n            chmod 644 " + h0("/data/local/tmp/fixes/ca_fix.apk") + "\n            _OUT=$(pm install -r -g " + h0("/data/local/tmp/fixes/ca_fix.apk") + " 2>&1 | tail -n1)\n            echo \"$_OUT\"\n            # SEM FALLBACK DE BIND PARA O ConnAdaptor.\n            #\n            # O bind sobre /system é o mecanismo do Ar Digital e dos outros patches de sistema — não\n            # do ConnAdaptor. Aqui ele produzia um estado meio-funcionando: o APK aparecia montado,\n            # a tela dizia \"ativado\", e o CarplayMonitor não trabalhava. Pior que falhar, porque\n            # esconde a falha.\n            #\n            # Quando o `pm install` recusa por VERSION_DOWNGRADE (acontece na fábrica 1121, para a\n            # qual ainda não publicamos artefato), o certo é dizer isso e parar. Ativar é INSTALAR.\n            case \"$_OUT\" in\n              *INSTALL_FAILED_VERSION_DOWNGRADE*)\n                echo \"CONNADAPTOR_DOWNGRADE_SEM_ARTEFATO\"\n                ;;\n            esac\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*)\n                echo \"CONNADAPTOR_INSTALL_OK\"\n                rm -f " + h0("/data/local/tmp/fixes/connadaptor_em_bind") + " 2>/dev/null || true\n                ;;\n              *)\n                # Montagem legada NÃO é instalação. Enquanto isto imprimia \"..._OK (bind)\", a tela\n                # dava o ConnAdaptor por ativado num estado que `connAdaptorAtivado()` (só /data/app)\n                # responde `false` — e o CarplayMonitor não trabalhava. Agora as duas pontas dizem a\n                # mesma coisa, e o BootScript desfaz a montagem no próximo boot.\n                if grep -F " + strH0 + " /proc/mounts >/dev/null 2>&1; then\n                  echo \"CONNADAPTOR_INSTALL_FALHOU (montagem legada no lugar — sera desfeita no boot)\"\n                else\n                  echo \"CONNADAPTOR_INSTALL_FALHOU\"\n                fi\n                ;;\n            esac\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 5\n            _UDC=$(cat /sys/class/udc/*/state 2>/dev/null | head -1)\n            _HOSTS=$(ls /sys/bus/usb/devices/ 2>/dev/null | wc -l)\n            if [ \"$_UDC\" = \"configured\" ] && [ \"$_HOSTS\" = \"0\" ]; then\n              echo \"AAUTOMONITOR_RESTART_PULADO (cabo USB em modo device — reiniciar aqui trava o serviço)\"\n            else\n              setprop ctl.restart AAutoMonitor\n" + O0.l.m0(m0("AAutoMonitor", "AAUTOMONITOR"), "              ") + "\n            fi\n        ");
    }

    public static boolean R(Context context) {
        I0.f.e(context, "context");
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static String S() {
        return O0.l.n0("\n            " + l0("/system/app/ConnAdaptor/ConnAdaptor.apk") + "\n            rm -f " + h0("/data/local/tmp/fixes/connadaptor_em_bind") + "\n            if grep -F " + h0(" /system/app/ConnAdaptor/ConnAdaptor.apk ") + " /proc/mounts >/dev/null 2>&1; then\n              echo \"BIND_LEGADO_AINDA_MONTADO\"\n            else\n              echo \"BIND_LEGADO_LIMPO\"\n            fi\n        ");
    }

    public static C0085k T(Context context, int i2) {
        I0.f.e(context, "ctx");
        String string = context.getSharedPreferences("ac_programs_prefs", 0).getString("program_" + i2, null);
        if (string == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("steps");
            int length = jSONArray.length();
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                String string2 = jSONObject2.getString("type");
                I0.f.d(string2, "getString(...)");
                arrayList.add(new C0091l(string2, jSONObject2.getDouble("value")));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new C0085k(arrayList, jSONObject.optBoolean("repeat", false));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static K3 U(Context context, String str, int i2, int i3, int i4) {
        int i5;
        int i6;
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        if (contextCreateDeviceProtectedStorageContext != null) {
            applicationContext = contextCreateDeviceProtectedStorageContext;
        }
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("overlay_positions_config", 0);
        String strConcat = str.concat(".");
        if (sharedPreferences.getInt(strConcat + "schema", -1) != 1) {
            u(sharedPreferences, strConcat);
            return new K3(i2, i3, i4);
        }
        int i7 = sharedPreferences.getInt(strConcat + "gravity", i2);
        int i8 = sharedPreferences.getInt(strConcat + "x", i3);
        int i9 = sharedPreferences.getInt(strConcat + "y", i4);
        int i10 = sharedPreferences.getInt(strConcat + "screen_width", -1);
        int i11 = sharedPreferences.getInt(strConcat + "screen_height", -1);
        Point pointE0 = e0(context);
        if (i7 == i2 && (i5 = pointE0.x) > 0 && i8 > (-i5) && i8 < i5 * 2 && (i6 = pointE0.y) > 0 && i9 > (-i6) && i9 < i6 * 2 && i10 > 0 && i11 > 0) {
            return new K3(i7, i8, i9);
        }
        u(sharedPreferences, strConcat);
        return new K3(i2, i3, i4);
    }

    public static List V(Context context) {
        I0.f.e(context, "ctx");
        String string = context.getSharedPreferences("background_keep_alive_prefs", 0).getString("packages", null);
        if (string == null) {
            return w0.q.f4190a;
        }
        List listO0 = O0.j.O0(string, new String[]{","});
        ArrayList arrayList = new ArrayList(w0.k.V(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(O0.j.X0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static Set W(Context context) {
        I0.f.e(context, "context");
        String string = context.getSharedPreferences("favorite_cards_prefs", 0).getString("ids", "");
        List listO0 = O0.j.O0(string != null ? string : "", new String[]{","});
        ArrayList arrayList = new ArrayList(w0.k.V(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(O0.j.X0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return w0.i.k0(arrayList2);
    }

    public static List X(Context context) {
        I0.f.e(context, "ctx");
        String string = context.getSharedPreferences("close_apps_whitelist_prefs", 0).getString("packages", null);
        if (string == null) {
            return w0.q.f4190a;
        }
        List listO0 = O0.j.O0(string, new String[]{","});
        ArrayList arrayList = new ArrayList(w0.k.V(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(O0.j.X0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static List Y(Context context) {
        I0.f.e(context, "ctx");
        String string = context.getSharedPreferences("favorite_apps_prefs", 0).getString("packages", null);
        if (string == null) {
            return w0.q.f4190a;
        }
        List listO0 = O0.j.O0(string, new String[]{","});
        ArrayList arrayList = new ArrayList(w0.k.V(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(O0.j.X0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static void Z(String str) {
        HomeFloatingWidgetsService homeFloatingWidgetsService = HomeFloatingWidgetsService.f2263R;
        if (homeFloatingWidgetsService != null) {
            homeFloatingWidgetsService.f2280c.post(new H(homeFloatingWidgetsService, 7, str));
        }
    }

    public static boolean a(Context context) {
        I0.f.e(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        List list = HomeFloatingWidgetsService.f2262Q;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (sharedPreferences.getBoolean((String) it.next(), false)) {
                return true;
            }
        }
        return false;
    }

    public static void a0() {
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 22));
        }
    }

    public static void b(int i2) {
        int iO = A.b.o(i2, 0, 255);
        try {
            try {
                new I1(5555).b(3000, "setenforce 0 2>/dev/null");
            } catch (Throwable th) {
                M.d0.r(th, new StringBuilder("applyBrightness: "), "BrightMem");
                return;
            }
        } catch (Exception unused) {
        }
        A.b.k0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(iO));
    }

    public static void b0(Context context, SharedPreferences sharedPreferences) {
        I0.f.e(context, "context");
        if (sharedPreferences.getBoolean("remember_brightness", false)) {
            int i2 = sharedPreferences.getInt(R(context) ? "bright_night" : "bright_day", -1);
            if (1 > i2 || i2 >= 256) {
                return;
            }
            b(i2);
            StringBuilder sb = new StringBuilder("restore: ");
            sb.append(R(context) ? "noite(farol on)" : "dia(farol off)");
            sb.append(" -> ");
            sb.append(i2);
            Log.i("BrightMem", sb.toString());
        }
    }

    public static String c() {
        C0103n c0103n = new C0103n(22);
        return O0.l.n0("\n            setenforce 0 2>/dev/null || true\n            " + C() + "\n            WAS_ACTIVE=0\n            if grep -F \" /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk \" /proc/mounts >/dev/null 2>&1; then\n              WAS_ACTIVE=1\n              echo \"== bind ATIVO: parar KeyServer, umount, trocar patch ==\"\n              am force-stop com.flyme.auto.keyserver 2>/dev/null || true\n              sleep 2\n              " + l0("/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk") + "\n              grep -F \" /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk \" /proc/mounts >/dev/null 2>&1 && exit 51\n            else\n              echo \"== bind INATIVO: só trocar o patch de staging ==\"\n            fi\n            mkdir -p " + ((String) c0103n.b("/data/local/tmp/fixes")) + " 2>&1 || exit 52\n            # Remove o patch antigo ANTES de copiar: o ficheiro existente fica com label\n            # system_app_file:s0 root:root 644 e o cp -f por cima é negado (SELinux/relabel).\n            rm -f " + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || true\n            cp -f " + ((String) c0103n.b("/data/local/tmp/GeelyAutoKeyServer-patched-update.apk")) + ' ' + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || exit 53\n            chown root:root " + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || true\n            chmod 644 " + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || true\n            chcon u:object_r:system_app_file:s0 " + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || true\n            restorecon -v " + ((String) c0103n.b("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk")) + " 2>&1 || true\n            rm -f " + ((String) c0103n.b("/data/local/tmp/GeelyAutoKeyServer-patched-update.apk")) + " 2>&1 || true\n            echo \"BIND_ATIVO=$WAS_ACTIVE\"\n            echo \"keyserver_patch_aplicado\"\n        ");
    }

    public static void c0(Context context, SharedPreferences sharedPreferences) {
        Integer numP0;
        int iIntValue;
        I0.f.e(context, "context");
        if (sharedPreferences.getBoolean("remember_brightness", false)) {
            try {
                numP0 = O0.r.p0(O0.j.X0(A.b.b0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
            } catch (Throwable unused) {
                numP0 = null;
            }
            if (numP0 == null || (iIntValue = numP0.intValue()) <= 0) {
                return;
            }
            String str = R(context) ? "bright_night" : "bright_day";
            if (sharedPreferences.getInt(str, -1) == iIntValue) {
                return;
            }
            sharedPreferences.edit().putInt(str, iIntValue).apply();
        }
    }

    public static String d() {
        return O0.l.n0("\n            " + C() + "\n            setenforce 0\n            ls -l " + h0("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk") + " 2>&1 || { echo \"ERRO_falta_patch\"; exit 30; }\n            chown root:root " + h0("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk") + "\n            chmod 644 " + h0("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk") + "\n            chcon u:object_r:system_app_file:s0 " + h0("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk") + "\n            " + l0("/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk") + "\n            mount --bind " + h0("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk") + ' ' + h0("/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk") + "\n            restorecon -v " + h0("/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk") + "\n            rm -rf /data/dalvik-cache/*/system@app@GeelyAutoKeyServer*\n            am force-stop com.flyme.auto.keyserver\n            sleep 1\n            am start-foreground-service -n com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService 2>/dev/null || true\n            sleep 2\n            _svcrun=$(ps -A 2>/dev/null | grep -c \"com.flyme.auto.keyserver\")\n            if [ \"$_svcrun\" = \"0\" ]; then\n              echo \"AVISO: servico nao respondeu na 1a tentativa, tentando de novo\"\n              am start-foreground-service -n com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService 2>/dev/null || true\n              sleep 2\n              _svcrun=$(ps -A 2>/dev/null | grep -c \"com.flyme.auto.keyserver\")\n            fi\n            if [ \"$_svcrun\" != \"0\" ]; then echo \"KEYSERVER_SERVICE_RUNNING\"; else echo \"KEYSERVER_SERVICE_NAO_RODANDO\"; fi\n            if grep -F " + h0(" /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk ") + " /proc/mounts >/dev/null 2>&1; then echo \"BIND_KEYSERVER_MOUNT_OK\"; else echo \"BIND_KEYSERVER_NAO_CONFIRMADO\"; fi\n        ");
    }

    public static void d0(Context context, String str, int i2, int i3, int i4) {
        Point pointE0 = e0(context);
        String strConcat = str.concat(".");
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        if (contextCreateDeviceProtectedStorageContext != null) {
            applicationContext = contextCreateDeviceProtectedStorageContext;
        }
        applicationContext.getSharedPreferences("overlay_positions_config", 0).edit().putInt(strConcat + "schema", 1).putInt(strConcat + "gravity", i2).putInt(strConcat + "x", i3).putInt(strConcat + "y", i4).putInt(androidx.fragment.app.Q.d(strConcat, "screen_width"), pointE0.x).putInt(androidx.fragment.app.Q.d(strConcat, "screen_height"), pointE0.y).apply();
    }

    public static RemoteViews e(Context context, C0128r1 c0128r1) {
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_heating_test);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        remoteViews.setTextViewText(R.id.txt_heat_header, contextO.getString(R.string.k_widget_lbl_heat_header));
        Boolean bool = Boolean.TRUE;
        boolean zA = I0.f.a(c0128r1.f1118a, bool);
        String string = contextO.getString(R.string.k_widget_lbl_heat_wheel);
        I0.f.d(string, "getString(...)");
        q(remoteViews, context, R.id.chip_wheel_heat, R.id.txt_wheel_heat, zA, string, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE");
        boolean zA2 = I0.f.a(c0128r1.b, bool);
        String string2 = contextO.getString(R.string.k_widget_lbl_rear_defrost);
        I0.f.d(string2, "getString(...)");
        q(remoteViews, context, R.id.chip_front_rear_defrost, R.id.txt_front_rear_defrost, zA2, string2, "com.ex.auto.widget.REAR_DEFROST_TOGGLE");
        boolean zA3 = I0.f.a(c0128r1.f1119c, bool);
        String string3 = contextO.getString(R.string.k_widget_lbl_heat_front_max);
        I0.f.d(string3, "getString(...)");
        q(remoteViews, context, R.id.chip_front_max_defrost, R.id.txt_front_max_defrost, zA3, string3, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE");
        boolean zA4 = I0.f.a(c0128r1.f1120d, bool);
        String string4 = contextO.getString(R.string.k_widget_lbl_heat_windshield);
        I0.f.d(string4, "getString(...)");
        q(remoteViews, context, R.id.chip_windshield_heat, R.id.txt_windshield_heat, zA4, string4, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE");
        String string5 = contextO.getString(R.string.k_widget_lbl_heat_seat_driver);
        I0.f.d(string5, "getString(...)");
        p(remoteViews, context, contextO, R.id.chip_seat_heat_driver, R.id.txt_seat_heat_driver, c0128r1.f1121e, string5, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE");
        String string6 = contextO.getString(R.string.k_widget_lbl_heat_seat_passenger);
        I0.f.d(string6, "getString(...)");
        p(remoteViews, context, contextO, R.id.chip_seat_heat_passenger, R.id.txt_seat_heat_passenger, c0128r1.f, string6, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE");
        return remoteViews;
    }

    public static Point e0(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point(1980, 1080);
        if (windowManager == null) {
            return point;
        }
        try {
            windowManager.getDefaultDisplay().getRealSize(point);
        } catch (Exception unused) {
        }
        return point;
    }

    public static RemoteViews f(Context context, Integer num) {
        v0.a aVar;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_drive_mode_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        if (num != null && num.intValue() == 570491137) {
            aVar = new v0.a(Integer.valueOf(R.drawable.ic_widget_eco), "Eco");
        } else if (num != null && num.intValue() == 570491138) {
            aVar = new v0.a(Integer.valueOf(R.drawable.ic_widget_comfort), "Conf.");
        } else {
            aVar = (num != null && num.intValue() == 570491139) ? new v0.a(Integer.valueOf(R.drawable.ic_widget_sport), "Sport") : new v0.a(Integer.valueOf(R.drawable.ic_widget_comfort), "—");
        }
        int iIntValue = ((Number) aVar.f4155a).intValue();
        String str = (String) aVar.b;
        remoteViews.setImageViewResource(R.id.img_drive_mode, iIntValue);
        remoteViews.setTextViewText(R.id.tv_drive_mode_label, str);
        remoteViews.setTextViewText(R.id.tv_drive_mode_footer, H1.o(context).getString(R.string.k_qa_driving_label));
        remoteViews.setOnClickPendingIntent(R.id.btn_drive_next, AbstractC0126q4.e(context, "com.ex.auto.widget.DRIVE_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_drive_prev, AbstractC0126q4.e(context, "com.ex.auto.widget.DRIVE_PREV"));
        return remoteViews;
    }

    public static String f0() {
        C0103n c0103n = new C0103n(4);
        StringBuilder sb = new StringBuilder("\n            echo \"-- CarplayMonitor (bind efêmero, refazer sempre) --\"\n            if [ ! -f ");
        sb.append((String) M.d0.c(sb, (String) M.d0.c(sb, (String) c0103n.b("/system/bin/CarplayMonitor"), " ]; then echo \"SEM_MONITOR\"; exit 0; fi\n            echo \"SELINUX_ANTES=$(getenforce 2>/dev/null)\"\n            setenforce 0 2>/dev/null || true\n            if grep -F ", c0103n, " /system/bin/CarplayMonitor "), " /proc/mounts >/dev/null 2>&1; then\n              _MM=$(md5sum ", c0103n, "/system/bin/CarplayMonitor"));
        sb.append(" | awk '{print $1}')\n              case \"$_MM\" in\n");
        String str = "_EXP";
        C0109o c0109o = new C0109o(str, 0);
        List list = AbstractC0121q.f1103e;
        sb.append(O0.l.m0(w0.i.d0(list, "\n", null, null, c0109o, 30).concat("\n  *) _EXP= ;;"), "              "));
        sb.append("\n              esac\n              if [ -n \"$_EXP\" ]; then\n                echo \"MONITOR_JA_MONTADO\"\n              else\n                echo \"MONITOR_MONTADO_DESCONHECIDO=$_MM (desmontando p/ refazer)\"\n                _N=0\n                while grep -F ");
        sb.append((String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) c0103n.b(" /system/bin/CarplayMonitor "), " /proc/mounts >/dev/null 2>&1 && [ $_N -lt 8 ]; do\n                  umount ", c0103n, "/system/bin/CarplayMonitor"), " 2>/dev/null || umount -l ", c0103n, "/system/bin/CarplayMonitor"), " 2>/dev/null\n                  _N=$((_N+1))\n                done\n                if grep -F ", c0103n, " /system/bin/CarplayMonitor "), " /proc/mounts >/dev/null 2>&1; then\n                  echo \"MONITOR_DESMONTE_FALHOU\"; exit 1\n                fi\n              fi\n            fi\n            if ! grep -F ", c0103n, " /system/bin/CarplayMonitor "), " /proc/mounts >/dev/null 2>&1; then\n              LBL=$(ls -Z ", c0103n, "/system/bin/CarplayMonitor"), " | awk '{print $1}')\n              MD=$(md5sum ", c0103n, "/system/bin/CarplayMonitor"));
        sb.append(" | awk '{print $1}')\n              echo \"MONITOR_ORIG_MD5=$MD LABEL=$LBL\"\n              case \"$MD\" in\n");
        sb.append(O0.l.m0(w0.i.d0(list, "\n", null, null, new N2("_SEEK", "_TAIL", str), 30).concat("\n  *) echo \"MONITOR_MD5_INESPERADO=$MD\"; exit 1 ;;"), "              "));
        sb.append("\n                *) echo \"MONITOR_MD5_INESPERADO:$MD\"; exit 1 ;;\n              esac\n              MDS=$([ -f ");
        sb.append((String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) M.d0.c(sb, (String) c0103n.b("/data/local/tmp/fixes/CarplayMonitor"), " ] && md5sum ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), " 2>/dev/null | awk '{print $1}')\n              if [ \"$MDS\" = \"$_EXP\" ]; then\n                echo \"MONITOR_REUSA_PATCH_PRONTO\"\n              else\n                echo \"MONITOR_GERANDO_PATCH (tinha: $MDS)\"\n                rm -f ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "\n                head -c $_SEEK ", c0103n, "/system/bin/CarplayMonitor"), " > ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "\n                printf 'ap0\\000\\000\\000' >> ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "\n                tail -c +$_TAIL ", c0103n, "/system/bin/CarplayMonitor"), " >> ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "\n                MD2=$(md5sum ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), " | awk '{print $1}')\n                echo \"MONITOR_PATCH_MD5=$MD2\"\n                if [ \"$MD2\" != \"$_EXP\" ]; then\n                  echo \"PATCH_MD5_ERRADO\"; exit 1\n                fi\n              fi\n              chown root:root ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "; chmod 755 ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), "\n              chcon \"$LBL\" ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"), " || { echo \"CHCON_FALHOU\"; exit 1; }\n              mount --bind ", c0103n, "/data/local/tmp/fixes/CarplayMonitor"));
        sb.append(' ');
        sb.append((String) M.d0.c(sb, (String) c0103n.b("/system/bin/CarplayMonitor"), "\n              grep -F ", c0103n, " /system/bin/CarplayMonitor "));
        sb.append(" /proc/mounts >/dev/null 2>&1 || { echo \"MONITOR_BIND_FALHOU\"; exit 1; }\n              echo \"MONITOR_BIND_OK\"\n            fi\n\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk '{print $1}')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk '{print $1}')\n            echo \"MONITOR_RUNNING_MD5=$_run\"\n            if [ -n \"$_EXP\" ] && [ \"$_run\" = \"$_EXP\" ]; then\n              echo \"MONITOR_JA_PATCHADO_EM_EXECUCAO\"\n            else\n              echo \"MONITOR_REINICIO_UNICO\"\n              setprop ctl.stop CarplayMonitor; sleep 2\n              setprop ctl.start CarplayMonitor\n");
        sb.append(O0.l.m0(m0("CarplayMonitor", "MONITOR"), "              "));
        sb.append("\n              if [ \"${_STA_ANTES:-}\" = \"1\" ] || grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null; then\n                echo \"CARPLAY_APP_MANTIDO (celular associado no ap0)\"\n              else\n                am force-stop com.njda.carplay 2>/dev/null || true\n                echo \"CARPLAY_APP_REINICIADO\"\n              fi\n\n            fi\n        ");
        return O0.l.n0(sb.toString());
    }

    public static RemoteViews g(Context context, Integer num, int i2) {
        String string;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        if (num == null || (string = num.toString()) == null) {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_fan_value, string);
        remoteViews.setTextViewText(R.id.tv_fan_label, contextO.getString(R.string.k_widget_lbl_fan));
        int[] iArr = FanSpeedWidgetProvider.f2259a;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 7) {
            int i5 = i4 + 1;
            remoteViews.setInt(iArr[i3], "setBackgroundResource", (num == null || i4 >= num.intValue()) ? R.drawable.widget_dot_off : R.drawable.widget_dot_on);
            i3++;
            i4 = i5;
        }
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_minus, AbstractC0126q4.e(context, "com.ex.auto.widget.FAN_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_plus, AbstractC0126q4.e(context, "com.ex.auto.widget.FAN_PLUS"));
        return remoteViews;
    }

    public static String g0(String str) {
        I0.f.e(str, "s");
        return "'" + O0.s.v0(str, "'", "'\\''") + '\'';
    }

    public static RemoteViews h(Context context, Integer num, Boolean bool) {
        String string;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        int i2 = HvacDirectionWidgetProvider.f2321a;
        int i3 = R.drawable.ic_widget_vent_face;
        if (num == null || num.intValue() != 1) {
            if (num != null && num.intValue() == 2) {
                i3 = R.drawable.ic_widget_vent_floor;
            } else if (num != null && num.intValue() == 3) {
                i3 = R.drawable.ic_widget_vent_face_floor;
            } else if (num != null && num.intValue() == 4) {
                i3 = R.drawable.ic_widget_vent_windshield;
            } else if (num != null && num.intValue() == 6) {
                i3 = R.drawable.ic_widget_vent_floor_windshield;
            }
        }
        remoteViews.setImageViewResource(R.id.img_vent_mode, i3);
        if (num != null && num.intValue() == 1) {
            string = contextO.getString(R.string.k_widget_lbl_vent_face);
            I0.f.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 2) {
            string = contextO.getString(R.string.k_widget_lbl_vent_floor);
            I0.f.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 3) {
            string = contextO.getString(R.string.k_widget_lbl_vent_face_floor);
            I0.f.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 4) {
            string = contextO.getString(R.string.k_widget_lbl_vent_windshield);
            I0.f.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 6) {
            string = contextO.getString(R.string.k_widget_lbl_vent_floor_windshield);
            I0.f.d(string, "getString(...)");
        } else {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_vent_mode_label, string);
        remoteViews.setTextViewText(R.id.tv_vent_mode_footer, contextO.getString(R.string.k_widget_lbl_vent_short));
        remoteViews.setTextViewText(R.id.txt_recirc_v, contextO.getString(R.string.k_widget_lbl_recirc));
        boolean zA = I0.f.a(bool, Boolean.TRUE);
        remoteViews.setInt(R.id.chip_recirc_v, "setBackgroundResource", zA ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(R.id.txt_recirc_v, context.getColor(zA ? R.color.cx_on_accent : R.color.cx_text_primary));
        remoteViews.setOnClickPendingIntent(R.id.btn_vent_next, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_vent_prev, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_PREV"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc_v, AbstractC0126q4.e(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        return remoteViews;
    }

    public static String h0(String str) {
        I0.f.e(str, "s");
        return "'" + O0.s.v0(str, "'", "'\\''") + '\'';
    }

    public static RemoteViews i(Context context, Integer num, Boolean bool, Integer num2, Boolean bool2) {
        String string;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction_fan);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        int i2 = 0;
        n(remoteViews, context, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        n(remoteViews, context, R.id.chip_vent_floor, R.id.txt_vent_floor, num != null && num.intValue() == 2);
        n(remoteViews, context, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num != null && num.intValue() == 3);
        n(remoteViews, context, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num != null && num.intValue() == 4);
        n(remoteViews, context, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, num != null && num.intValue() == 6);
        Boolean bool3 = Boolean.TRUE;
        n(remoteViews, context, R.id.chip_recirc, R.id.txt_recirc, I0.f.a(bool, bool3));
        if (num2 == null || (string = num2.toString()) == null) {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_fan_value, string);
        remoteViews.setInt(R.id.chip_fan_ac, "setBackgroundResource", I0.f.a(bool2, bool3) ? R.drawable.widget_chip_active : R.drawable.widget_chip_ac_off);
        remoteViews.setTextColor(R.id.tv_fan_value, context.getColor(I0.f.a(bool2, bool3) ? R.color.cx_on_accent : R.color.cx_text_primary));
        int[] iArr = HvacDirectionFanWidgetProvider.f2319a;
        int i3 = 0;
        while (i2 < 7) {
            int i4 = i3 + 1;
            remoteViews.setInt(iArr[i2], "setBackgroundResource", (num2 == null || i3 >= num2.intValue()) ? R.drawable.widget_dot_off : R.drawable.widget_dot_on);
            i2++;
            i3 = i4;
        }
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FACE"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face_floor, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FACE_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_windshield, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor_windshield, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc, AbstractC0126q4.e(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_minus, AbstractC0126q4.e(context, "com.ex.auto.widget.FAN_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_plus, AbstractC0126q4.e(context, "com.ex.auto.widget.FAN_PLUS"));
        remoteViews.setOnClickPendingIntent(R.id.chip_fan_ac, AbstractC0126q4.e(context, "com.ex.auto.widget.AC_TOGGLE"));
        return remoteViews;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String i0(C0085k c0085k) {
        String string;
        ArrayList<C0091l> arrayList = c0085k.f1026a;
        ArrayList arrayList2 = new ArrayList(w0.k.V(arrayList));
        for (C0091l c0091l : arrayList) {
            String str = c0091l.f1035a;
            int iHashCode = str.hashCode();
            double d2 = c0091l.b;
            switch (iHashCode) {
                case -934914614:
                    if (!str.equals("recirc")) {
                        string = "?";
                    } else if (d2 == 1.0d) {
                        string = "ar interno";
                    } else {
                        string = "ar externo";
                    }
                    break;
                case 101139:
                    if (str.equals("fan")) {
                        StringBuilder sb = new StringBuilder("vento ");
                        long j2 = (long) d2;
                        sb.append(d2 == ((double) j2) ? String.valueOf(j2) : String.valueOf(d2));
                        string = sb.toString();
                    } else {
                        string = "?";
                    }
                    break;
                case 3556308:
                    if (str.equals("temp")) {
                        long j3 = (long) d2;
                        string = M.d0.g(new StringBuilder(), d2 == ((double) j3) ? String.valueOf(j3) : String.valueOf(d2), "°C");
                    } else {
                        string = "?";
                    }
                    break;
                case 3641717:
                    if (str.equals("wait")) {
                        string = G((int) d2);
                    } else {
                        string = "?";
                    }
                    break;
                default:
                    string = "?";
                    break;
            }
            arrayList2.add(string);
        }
        String strD0 = w0.i.d0(arrayList2, " · ", null, null, null, 62);
        return c0085k.b ? strD0.concat(" · repete") : strD0;
    }

    public static RemoteViews j(Context context, Integer num, Integer num2) {
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_drive_regen);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        remoteViews.setTextViewText(R.id.txt_drive_header, contextO.getString(R.string.k_widget_lbl_drive_header));
        remoteViews.setTextViewText(R.id.txt_regen_header, contextO.getString(R.string.k_widget_lbl_regen_header));
        remoteViews.setTextViewText(R.id.txt_drive_eco, "Eco");
        remoteViews.setTextViewText(R.id.txt_drive_comfort, "Conf.");
        remoteViews.setTextViewText(R.id.txt_drive_sport, "Sport");
        remoteViews.setTextViewText(R.id.txt_regen_low, contextO.getString(R.string.k_widget_lbl_regen_low));
        remoteViews.setTextViewText(R.id.txt_regen_mid, contextO.getString(R.string.k_widget_lbl_regen_mid));
        remoteViews.setTextViewText(R.id.txt_regen_high, contextO.getString(R.string.k_widget_lbl_regen_high));
        boolean z2 = false;
        m(remoteViews, context, R.id.chip_drive_eco, R.id.txt_drive_eco, num != null && num.intValue() == 570491137);
        m(remoteViews, context, R.id.chip_drive_comfort, R.id.txt_drive_comfort, num != null && num.intValue() == 570491138);
        m(remoteViews, context, R.id.chip_drive_sport, R.id.txt_drive_sport, num != null && num.intValue() == 570491139);
        m(remoteViews, context, R.id.chip_regen_low, R.id.txt_regen_low, num2 != null && num2.intValue() == 537003265);
        m(remoteViews, context, R.id.chip_regen_mid, R.id.txt_regen_mid, num2 != null && num2.intValue() == 537003266);
        if (num2 != null && num2.intValue() == 537003267) {
            z2 = true;
        }
        m(remoteViews, context, R.id.chip_regen_high, R.id.txt_regen_high, z2);
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_eco, AbstractC0126q4.e(context, "com.ex.auto.widget.DRIVE_ECO"));
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_comfort, AbstractC0126q4.e(context, "com.ex.auto.widget.DRIVE_COMFORT"));
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_sport, AbstractC0126q4.e(context, "com.ex.auto.widget.DRIVE_SPORT"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_low, AbstractC0126q4.e(context, "com.ex.auto.widget.REGEN_LOW"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_mid, AbstractC0126q4.e(context, "com.ex.auto.widget.REGEN_MID"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_high, AbstractC0126q4.e(context, "com.ex.auto.widget.REGEN_HIGH"));
        return remoteViews;
    }

    public static JSONObject j0(String str, int i2, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
        if (centralWatchdogService == null) {
            JSONObject jSONObjectPut = jSONObject.put("ok", false).put("error", "watchdog não ativo");
            I0.f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        if (!centralWatchdogService.M().getBoolean("auto_proxy_enabled", false)) {
            JSONObject jSONObjectPut2 = jSONObject.put("ok", false).put("error", "auto-proxy desligado");
            I0.f.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        if (str2.equals("down")) {
            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 26));
            JSONObject jSONObjectPut3 = jSONObject.put("ok", true).put("message", "proxy limpo");
            I0.f.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        Pattern patternCompile = Pattern.compile("^\\d{1,3}(\\.\\d{1,3}){3}$");
        I0.f.d(patternCompile, "compile(...)");
        if (!patternCompile.matcher(str).matches()) {
            JSONObject jSONObjectPut4 = jSONObject.put("ok", false).put("error", "ip inválido: ".concat(str));
            I0.f.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        try {
            String strB = new I1(5555).b(3000, "ip neigh show dev ap0 2>/dev/null");
            I0.f.b(strB);
            List<String> listH0 = O0.j.H0(strB);
            if (!listH0.isEmpty()) {
                for (String str3 : listH0) {
                    if (O0.s.w0(O0.j.X0(str3).toString(), str + ' ') || I0.f.a(O0.j.X0(str3).toString(), str)) {
                        if (I0.f.a(centralWatchdogService.f2187X, str)) {
                            JSONObject jSONObjectPut5 = jSONObject.put("ok", true).put("message", "proxy já aplicado " + str + ':' + i2);
                            I0.f.d(jSONObjectPut5, "put(...)");
                            return jSONObjectPut5;
                        }
                        centralWatchdogService.f2190a.post(new RunnableC0086k0(centralWatchdogService, str, i2, 3));
                        JSONObject jSONObjectPut6 = jSONObject.put("ok", true).put("message", "proxy aplicado " + str + ':' + i2);
                        I0.f.d(jSONObjectPut6, "put(...)");
                        return jSONObjectPut6;
                    }
                }
            }
        } catch (Exception unused) {
        }
        JSONObject jSONObjectPut7 = jSONObject.put("ok", false).put("error", "ip fora do ap0: ".concat(str));
        I0.f.d(jSONObjectPut7, "put(...)");
        return jSONObjectPut7;
    }

    public static RemoteViews k(Context context, Integer num) {
        v0.a aVar;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_regen_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        if (num != null && num.intValue() == 537003265) {
            aVar = new v0.a(Integer.valueOf(R.drawable.ic_widget_regen_weak), contextO.getString(R.string.k_widget_lbl_regen_low));
        } else if (num != null && num.intValue() == 537003266) {
            aVar = new v0.a(Integer.valueOf(R.drawable.ic_widget_regen_mid), contextO.getString(R.string.k_widget_lbl_regen_mid));
        } else {
            aVar = (num != null && num.intValue() == 537003267) ? new v0.a(Integer.valueOf(R.drawable.ic_widget_regen_strong), contextO.getString(R.string.k_widget_lbl_regen_high)) : new v0.a(Integer.valueOf(R.drawable.ic_widget_regen_mid), "—");
        }
        int iIntValue = ((Number) aVar.f4155a).intValue();
        String str = (String) aVar.b;
        remoteViews.setImageViewResource(R.id.img_regen_level, iIntValue);
        remoteViews.setTextViewText(R.id.tv_regen_level_label, str);
        remoteViews.setTextViewText(R.id.tv_regen_level_footer, contextO.getString(R.string.k_qa_regen_label));
        remoteViews.setOnClickPendingIntent(R.id.btn_regen_next, AbstractC0126q4.e(context, "com.ex.auto.widget.REGEN_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_regen_prev, AbstractC0126q4.e(context, "com.ex.auto.widget.REGEN_PREV"));
        return remoteViews;
    }

    public static String k0() {
        StringBuilder sbJ = M.d0.j("\n            if grep -F ", h0(" /system/app/ConnAdaptor/ConnAdaptor.apk "), " /proc/mounts >/dev/null 2>&1; then\n              umount ");
        sbJ.append(h0("/system/app/ConnAdaptor/ConnAdaptor.apk"));
        sbJ.append(" 2>/dev/null || umount -l ");
        sbJ.append(h0("/system/app/ConnAdaptor/ConnAdaptor.apk"));
        sbJ.append(" 2>/dev/null || true\n              echo \"BIND_ANTIGO_DESMONTADO\"\n            fi\n            pm uninstall com.njda.adapter 2>&1 | tail -n1\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR_AINDA_INSTALADO\" ;;\n              *\"/system/\"*)   echo \"CONNADAPTOR_REVERTIDO_STOCK\" ;;\n              *)              echo \"CONNADAPTOR_SEM_PATH\" ;;\n            esac\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n        ");
        return O0.l.n0(sbJ.toString());
    }

    public static RemoteViews l(Context context, Integer num, Boolean bool) {
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        Context contextO = H1.o(context);
        remoteViews.setTextViewText(R.id.txt_vent_header, contextO.getString(R.string.k_widget_lbl_vent_header));
        remoteViews.setTextViewText(R.id.txt_vent_face, contextO.getString(R.string.k_widget_lbl_vent_face));
        remoteViews.setTextViewText(R.id.txt_vent_floor, contextO.getString(R.string.k_widget_lbl_vent_floor));
        remoteViews.setTextViewText(R.id.txt_vent_face_floor, contextO.getString(R.string.k_widget_lbl_vent_face_floor));
        remoteViews.setTextViewText(R.id.txt_vent_windshield, contextO.getString(R.string.k_widget_lbl_vent_windshield));
        remoteViews.setTextViewText(R.id.txt_vent_floor_windshield, contextO.getString(R.string.k_widget_lbl_vent_floor_windshield));
        remoteViews.setTextViewText(R.id.txt_recirc, contextO.getString(R.string.k_widget_lbl_recirc));
        boolean z2 = false;
        o(remoteViews, context, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        o(remoteViews, context, R.id.chip_vent_floor, R.id.txt_vent_floor, num != null && num.intValue() == 2);
        o(remoteViews, context, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num != null && num.intValue() == 3);
        o(remoteViews, context, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num != null && num.intValue() == 4);
        if (num != null && num.intValue() == 6) {
            z2 = true;
        }
        o(remoteViews, context, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, z2);
        o(remoteViews, context, R.id.chip_recirc, R.id.txt_recirc, I0.f.a(bool, Boolean.TRUE));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FACE"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face_floor, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FACE_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_windshield, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor_windshield, AbstractC0126q4.e(context, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc, AbstractC0126q4.e(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        return remoteViews;
    }

    public static String l0(String str) {
        String strH0 = h0(str);
        StringBuilder sbK = M.d0.k("\n            for _i in 1 2 3 4 5 6; do\n              grep -F ", h0(" " + str + ' '), " /proc/mounts >/dev/null 2>&1 || break\n              umount ", strH0, " 2>/dev/null || umount -l ");
        sbK.append(strH0);
        sbK.append(" 2>/dev/null || true\n            done\n        ");
        return O0.l.n0(sbK.toString());
    }

    public static final void m(RemoteViews remoteViews, Context context, int i2, int i3, boolean z2) {
        remoteViews.setInt(i2, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i3, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static String m0(String str, String str2) {
        StringBuilder sbK = M.d0.k("\n            _p1=$(pidof ", str, " 2>/dev/null | awk '{print $1}')\n            sleep 12\n            _p2=$(pidof ", str, " 2>/dev/null | awk '{print $1}')\n            if [ -z \"$_p2\" ]; then\n              echo \"");
        M.d0.q(sbK, str2, "_MORTO (init.svc=$(getprop init.svc.", str, "))\"\n            elif [ \"$_p1\" = \"$_p2\" ]; then\n              echo \"");
        sbK.append(str2);
        sbK.append("_ESTAVEL pid=$_p2\"\n            else\n              echo \"");
        sbK.append(str2);
        sbK.append("_CRASH_LOOP (pid $_p1 -> $_p2 em 12s — o init está respawnando)\"\n            fi\n        ");
        return O0.l.n0(sbK.toString());
    }

    public static final void n(RemoteViews remoteViews, Context context, int i2, int i3, boolean z2) {
        remoteViews.setInt(i2, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i3, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static String n0(Context context, boolean z2) {
        File externalFilesDir;
        String string;
        I0.f.e(context, "ctx");
        if (f852j) {
            try {
                externalFilesDir = context.getExternalFilesDir(null);
            } catch (Throwable unused) {
                externalFilesDir = null;
            }
            if (externalFilesDir != null) {
                f853k = new File(externalFilesDir, "central_boot.log").getAbsolutePath();
                f852j = false;
                L3.f671a.b("BootScript", "log de boot promovido pro armazenamento externo: " + f853k);
            }
        }
        try {
            File file = new File("/data/local/tmp/fixes");
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            File file2 = new File("/data/local/tmp/fixes/central_boot.sh");
            N(file2, z2);
            file2.setExecutable(true, false);
            file2.setReadable(true, false);
            Log.i("BootScript", "script gravado em /data/local/tmp/fixes/central_boot.sh (" + file2.length() + " bytes)");
            if ("/data/local/tmp/fixes/central_boot.log".equals(f853k)) {
                string = "";
            } else {
                StringBuilder sb = new StringBuilder("echo 'OBSOLETO - o log de boot agora fica em ");
                sb.append(f853k);
                sb.append("' > ");
                sb.append("'" + O0.s.v0("/data/local/tmp/fixes/central_boot.log", "'", "'\\''") + '\'');
                sb.append(" 2>/dev/null; ");
                string = sb.toString();
            }
            return string + " sh " + g0("/data/local/tmp/fixes/central_boot.sh") + " > " + g0(f853k) + " 2>&1; cat " + g0(f853k);
        } catch (Throwable th) {
            String str = th.getClass().getSimpleName() + ": " + th.getMessage();
            Log.w("BootScript", "não consegui gravar /data/local/tmp/fixes/central_boot.sh: " + str);
            M.d0.o("não consegui gravar /data/local/tmp/fixes/central_boot.sh — ", str, " (dono/modo do arquivo?)", L3.f671a, "BootScript");
            return null;
        }
    }

    public static final void o(RemoteViews remoteViews, Context context, int i2, int i3, boolean z2) {
        remoteViews.setInt(i2, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i3, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static final void p(RemoteViews remoteViews, Context context, Context context2, int i2, int i3, Integer num, String str, String str2) {
        String string;
        boolean z2 = (num != null ? num.intValue() : 0) > 0;
        remoteViews.setInt(i2, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i3, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
        if (num == null) {
            string = "—";
        } else if (num.intValue() >= 4) {
            string = context2.getString(R.string.k_widget_lbl_heat_auto);
            I0.f.d(string, "getString(...)");
        } else {
            string = num.toString();
        }
        remoteViews.setTextViewText(i3, str + ' ' + string);
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str2);
        I0.f.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str2.hashCode(), action, 201326592);
        I0.f.d(service, "getService(...)");
        remoteViews.setOnClickPendingIntent(i2, service);
    }

    public static final void q(RemoteViews remoteViews, Context context, int i2, int i3, boolean z2, String str, String str2) {
        remoteViews.setInt(i2, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i3, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
        remoteViews.setTextViewText(i3, str);
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str2);
        I0.f.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str2.hashCode(), action, 201326592);
        I0.f.d(service, "getService(...)");
        remoteViews.setOnClickPendingIntent(i2, service);
    }

    public static String r(String str) {
        String str2;
        String strN0;
        String strU0 = O0.j.U0(str);
        String strS0 = O0.j.S0(str, '/');
        String strU1 = O0.s.u0(strS0, ' ');
        if (strU1.equals(strS0)) {
            str2 = str;
        } else {
            str2 = strU0 + '/' + strU1;
        }
        String strH0 = h0(str);
        String strH1 = h0(str2);
        String strH2 = h0("/vendor/etc/carlock/yuedongyinghe.wav");
        if (strU1.equals(strS0)) {
            strN0 = "";
        } else {
            StringBuilder sbK = M.d0.k("\n            if [ -f ", strH0, " ] && [ ! -f ", strH1, " ]; then\n              mv -f ");
            sbK.append(strH0);
            sbK.append(' ');
            sbK.append(strH1);
            sbK.append(" 2>&1 || true\n            fi\n        ");
            strN0 = O0.l.n0(sbK.toString());
        }
        StringBuilder sbK2 = M.d0.k("\n            echo \"== carlock bind ==\"\n            ", strN0, "\n            ls -l ", strH1, " 2>&1 || { echo \"ERRO: arquivo nao encontrado: ");
        M.d0.q(sbK2, strH1, "\"; exit 10; }\n            ls -l ", strH2, " 2>&1 || exit 11\n            if grep \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts | grep -qF \"/data/local/tmp/sons/\"; then\n              umount ");
        M.d0.q(sbK2, strH2, " 2>&1 || exit 12\n            fi\n            chown root:root ", strH1, " 2>&1 || true\n            chmod 664 ");
        M.d0.q(sbK2, strH1, " 2>&1 || exit 13\n            restorecon -v ", strH1, " 2>&1 || true\n            chcon u:object_r:vendor_configs_file:s0 ");
        M.d0.q(sbK2, strH1, " 2>&1 || true\n            restorecon -v ", strH2, " 2>&1 || true\n            mount --bind ");
        sbK2.append(strH1);
        sbK2.append(' ');
        sbK2.append(strH2);
        sbK2.append(" 2>&1 || exit 14\n            restorecon -v ");
        sbK2.append(strH2);
        sbK2.append(" 2>&1 || true\n            cat /proc/mounts | grep -F ");
        sbK2.append(strH2);
        sbK2.append(" || echo \"BIND_NAO_CONFIRMADO\"\n            echo \"exit_code=0\"\n        ");
        return O0.l.n0(sbK2.toString());
    }

    public static String s() {
        String strH0 = h0("/vendor/etc/carlock/yuedongyinghe.wav");
        StringBuilder sbK = M.d0.k("\n            echo \"== carlock unbind ==\"\n            if grep -F \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts >/dev/null 2>&1; then\n              umount ", strH0, " 2>&1 || exit 21\n              echo \"unbind_ok\"\n            else\n              echo \"sem_bind_ativo\"\n            fi\n            restorecon -v ", strH0, " 2>&1 || true\n            cat /proc/mounts | grep -F ");
        sbK.append(strH0);
        sbK.append(" || echo \"BIND_REMOVIDO\"\n            echo \"exit_code=0\"\n        ");
        return O0.l.n0(sbK.toString());
    }

    public static V t(String str) {
        String str2;
        String strN0;
        String strU0 = O0.j.U0(str);
        String strS0 = O0.j.S0(str, '/');
        String strU1 = O0.s.u0(strS0, ' ');
        if (strU1.equals(strS0)) {
            str2 = str;
        } else {
            str2 = strU0 + '/' + strU1;
        }
        String strG0 = g0(str);
        String strG1 = g0(str2);
        if (strU1.equals(strS0)) {
            strN0 = "";
        } else {
            StringBuilder sbK = M.d0.k("\n            if [ -f ", strG0, " ] && [ ! -f ", strG1, " ]; then\n              mv -f ");
            sbK.append(strG0);
            sbK.append(' ');
            sbK.append(strG1);
            sbK.append(" 2>&1 || true\n            fi\n        ");
            strN0 = O0.l.n0(sbK.toString());
        }
        return new V(strN0, strG1);
    }

    public static void u(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.edit().remove(str + "schema").remove(str + "gravity").remove(str + "x").remove(str + "y").remove(str + "screen_width").remove(str + "screen_height").apply();
    }

    public static String v() {
        return N0.h.m0(new N0.c(new N0.c(O0.j.G0(f0()), new C0103n(2), 3), new C0103n(3), 1), "\n").concat("\necho \"== fim ==\"");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static X w(Context context, String str) {
        boolean zBindService;
        X x2 = X.f839c;
        I0.f.e(context, "ctx");
        long jCurrentTimeMillis = System.currentTimeMillis() - f845a;
        if (f845a > 0 && jCurrentTimeMillis < 10000) {
            Log.i("CarplayDeviceBinder", "connect ignorado — outra tentativa há " + jCurrentTimeMillis + "ms (devolvendo " + b + ')');
            return b;
        }
        f845a = System.currentTimeMillis();
        ServiceConnectionC0037c serviceConnectionC0037c = null;
        Object obj = null;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        ServiceConnectionC0037c serviceConnectionC0037c2 = new ServiceConnectionC0037c(arrayBlockingQueue, 1);
        try {
            Intent intent = new Intent("carplay.devices.service").setPackage("com.njda.carplay");
            I0.f.d(intent, "setPackage(...)");
            try {
                zBindService = context.bindService(intent, serviceConnectionC0037c2, 1);
            } catch (Throwable th) {
                Log.w("CarplayDeviceBinder", "bindService lançou: " + th.getMessage());
                zBindService = false;
            }
            if (!zBindService) {
                Log.w("CarplayDeviceBinder", "bindService recusou (carplay.devices.service em com.njda.carplay)");
                b = x2;
                return x2;
            }
            IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
            if (iBinder == null) {
                Log.w("CarplayDeviceBinder", "serviço não conectou em 6000ms");
                b = x2;
                try {
                    context.unbindService(serviceConnectionC0037c2);
                } catch (Throwable unused) {
                }
                return x2;
            }
            List listJ = J(iBinder);
            if (listJ == null) {
                b = x2;
                try {
                    context.unbindService(serviceConnectionC0037c2);
                } catch (Throwable unused2) {
                }
                return x2;
            }
            if (listJ.isEmpty()) {
                Log.i("CarplayDeviceBinder", "getDeviceList vazio — nenhum iPhone pareado/conhecido; nada a conectar");
                X x3 = X.b;
                b = x3;
                try {
                    context.unbindService(serviceConnectionC0037c2);
                } catch (Throwable unused3) {
                }
                return x3;
            }
            for (Object obj2 : listJ) {
                if ((str != null && O0.s.s0(((W) obj2).b, str)) != false) {
                    obj = obj2;
                    break;
                }
            }
            W w2 = (W) obj;
            if (w2 == null) {
                w2 = (W) w0.i.Z(listJ);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("conectando '");
            sb.append(w2.f821a);
            sb.append("' (");
            sb.append(w2.b);
            sb.append(") — ");
            sb.append(listJ.size());
            sb.append(" na lista, preferido=");
            if (str == null) {
                str = "(qualquer)";
            }
            sb.append(str);
            Log.i("CarplayDeviceBinder", sb.toString());
            String str2 = w2.b;
            if (str2 == null || O0.j.E0(str2)) {
                Log.i("CarplayDeviceBinder", "alvo sem MAC — pulando o connect direto de BT");
            } else {
                ArrayBlockingQueue arrayBlockingQueue2 = new ArrayBlockingQueue(1);
                C0097m.h(context, str2, new A.c(arrayBlockingQueue2, 1));
                Object obj3 = (Boolean) arrayBlockingQueue2.poll(2500L, TimeUnit.MILLISECONDS);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("HFP-Client de ");
                sb2.append(str2);
                sb2.append(": ");
                if (obj3 == null) {
                    obj3 = "sem resposta a tempo";
                }
                sb2.append(obj3);
                Log.i("CarplayDeviceBinder", sb2.toString());
            }
            X x4 = y(iBinder, w2) ? X.f838a : x2;
            b = x4;
            try {
                context.unbindService(serviceConnectionC0037c2);
            } catch (Throwable unused4) {
            }
            return x4;
        } catch (Throwable th2) {
            th = th2;
            serviceConnectionC0037c = serviceConnectionC0037c2;
        }
        try {
            Log.w("CarplayDeviceBinder", "connect falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            b = x2;
            return x2;
        } finally {
            if (serviceConnectionC0037c != null) {
                try {
                    context.unbindService(serviceConnectionC0037c);
                } catch (Throwable unused5) {
                }
            }
        }
    }

    public static boolean x(IBinder iBinder, C0025a c0025a) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.adapter.androidauto.connection.devicelist.IDeviceManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeInt(c0025a.f875a);
            parcelObtain.writeString(c0025a.b);
            parcelObtain.writeString(c0025a.f876c);
            parcelObtain.writeString(c0025a.f877d);
            parcelObtain.writeInt(c0025a.f878e);
            parcelObtain.writeByte((byte) 1);
            iBinder.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("AaDeviceBinder", "connectDevice(txn 3): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static boolean y(IBinder iBinder, W w2) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.devicelist.ICarplayDeviceManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeString(w2.f821a);
            parcelObtain.writeString(w2.b);
            parcelObtain.writeString(w2.f822c);
            parcelObtain.writeByte(w2.f823d);
            parcelObtain.writeByte(w2.f824e);
            parcelObtain.writeByte(w2.f);
            iBinder.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("CarplayDeviceBinder", "connectDevice(txn 5): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static String z(boolean z2) {
        C0103n c0103n = new C0103n(5);
        StringBuilder sb = new StringBuilder("\n            #!/system/bin/sh\n            # Gerado pelo EX Sapo Central — regravado a cada boot. Editar aqui não adianta.\n            echo \"== central_boot $(date) ==\"\n            echo \"-- por que o boot anterior terminou --\"\n            echo \"BOOTREASON=$(getprop ro.boot.bootreason) / $(getprop sys.boot.reason)\"\n            echo \"UPTIME=$(cut -d. -f1 /proc/uptime)s\"\n            if [ -s /proc/last_kmsg ]; then\n              echo \"LAST_KMSG (fim do boot anterior):\"\n              tail -n 25 /proc/last_kmsg 2>/dev/null | sed 's/^/  | /'\n            else\n              echo \"LAST_KMSG=vazio (sem panic de kernel registrado)\"\n            fi\n            echo \"DMESG_RESET=$(dmesg 2>/dev/null | grep -icE 'kernel panic|watchdog reset|hardware reset')\"\n\n            echo \"-- ConnAdaptor --\"\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR=ATIVO\" ;;\n              *)\n                # O ConnAdaptor NÃO volta por bind. O bind sobre /system é o mecanismo do Ar\n                # Digital e dos outros patches de sistema; para o ConnAdaptor ele produzia um estado\n                # meio-funcionando — APK montado, tela dizendo \"ativado\", CarplayMonitor sem\n                # trabalhar. Ativar é `pm install`.\n                #\n                # Se sobrou bind de uma instalação antiga, DESFAZ e apaga o marcador: melhor a\n                # central voltar limpa ao estado de fábrica (e a pessoa reativar) do que carregar\n                # para sempre uma montagem que aparenta funcionar e não funciona.\n                if [ -f ");
        sb.append((String) c0103n.b("/data/local/tmp/fixes/connadaptor_em_bind"));
        sb.append(" ]; then\n                  echo \"CONNADAPTOR=LIMPANDO_BIND_LEGADO\"\n                  # Bind EMPILHA: montar duas vezes sobre o mesmo alvo deixa duas entradas em\n                  # /proc/mounts, e um `umount` sozinho descobre a de baixo em vez de limpar. Por\n                  # isso o laço, igual ao `unmountAllLoop` do ShellSnippets.\n                  _i=0\n                  while grep -F \" /system/app/ConnAdaptor/ConnAdaptor.apk \" /proc/mounts >/dev/null 2>&1 && [ $_i -lt 8 ]; do\n                    umount ");
        sb.append((String) c0103n.b("/system/app/ConnAdaptor/ConnAdaptor.apk"));
        sb.append(" 2>/dev/null || break\n                    _i=$((_i+1))\n                  done\n                  # Só apaga o marcador se a montagem REALMENTE saiu. Apagar antes de conferir perde\n                  # a única pista de que ainda há bind vivo, e o boot seguinte nem tentaria de novo.\n                  if grep -F \" /system/app/ConnAdaptor/ConnAdaptor.apk \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"CONNADAPTOR=LIMPEZA_FALHOU (bind ainda montado apos $_i tentativas)\"\n                  else\n                    rm -f ");
        sb.append((String) c0103n.b("/data/local/tmp/fixes/connadaptor_em_bind"));
        sb.append(" 2>/dev/null || true\n                    echo \"CONNADAPTOR=STOCK (bind legado desfeito)\"\n                  fi\n                else\n                  echo \"CONNADAPTOR=STOCK\"\n                fi\n                ;;\n            esac\n\n            if [ -f ");
        sb.append((String) c0103n.b("/data/local/tmp/fixes/hvac_em_bind"));
        sb.append(" ] && [ -f ");
        sb.append((String) c0103n.b("/data/local/hvac-digital/sysui.apk"));
        sb.append(" ]; then\n              echo \"-- Ar Digital (em bind: refazer) --\"\n              _hp=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null | sed 's/^package://')\n              case \"$_hp\" in\n                *\"/data/app/\"*) echo \"HVAC=ATIVO (pm install; marcador obsoleto)\"; rm -f ");
        sb.append((String) c0103n.b("/data/local/tmp/fixes/hvac_em_bind"));
        sb.append(" ;;\n                \"\") echo \"HVAC_SEM_ALVO\" ;;\n                *)\n                  setenforce 0 2>/dev/null || true\n                  chown root:root ");
        sb.append((String) c0103n.b("/data/local/hvac-digital/sysui.apk"));
        sb.append("; chmod 644 ");
        sb.append((String) c0103n.b("/data/local/hvac-digital/sysui.apk"));
        sb.append("\n                  chcon u:object_r:system_app_file:s0 ");
        sb.append((String) c0103n.b("/data/local/hvac-digital/sysui.apk"));
        sb.append(" 2>/dev/null || echo \"HVAC_CHCON_FALHOU\"\n                  umount \"$_hp\" 2>/dev/null || true\n                  mount --bind ");
        sb.append((String) c0103n.b("/data/local/hvac-digital/sysui.apk"));
        sb.append(" \"$_hp\"\n                  restorecon -v \"$_hp\" 2>/dev/null || true\n                  if grep -F \" $_hp \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"HVAC=ATIVO_POR_BIND\"\n                  else\n                    echo \"HVAC_BIND_FALHOU\"\n                  fi\n                  ;;\n              esac\n            fi\n\n");
        sb.append(z2 ? O0.l.m0(f0(), "            ") : "            echo \"-- CarplayMonitor: fora deste script de proposito, roda por comando proprio --\"");
        sb.append("\n            echo \"== fim ==\"\n        ");
        return O0.l.n0(sb.toString());
    }
}
