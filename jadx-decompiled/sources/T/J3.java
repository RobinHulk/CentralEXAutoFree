package T;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.provider.Settings;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.WifiFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class J3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f637a = w0.j.T(QuickAccessFloaterService.class, TempBattPillFloaterService.class, HomeFloatingWidgetsService.class, MediaBarFloaterService.class, LyricsFloaterService.class, WifiFloaterService.class, DpadFloaterService.class, SplitFloaterService.class, AppPipFloaterService.class, ExSapoCastFloaterService.class, BlackoutFloaterService.class, DriveRegenFloaterService.class);
    public static final ComponentName b = new ComponentName("com.ex.auto", "com.ex.auto.MainActivity");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f639d;

    public static boolean a(Context context) {
        I0.f.e(context, "ctx");
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
            I0.f.d(sharedPreferences, "getSharedPreferences(...)");
            return sharedPreferences.getBoolean("modo_oficina", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String b(Context context) {
        String str;
        StringBuilder sb = new StringBuilder();
        try {
            str = context.getPackageManager().getApplicationInfo("com.flyme.auto.systemuiplugin", 0).sourceDir;
        } catch (Throwable unused) {
            str = null;
        }
        String str2 = "nao";
        if (str != null) {
            if (O0.j.x0(str, "/data/app/", false)) {
                str2 = "install";
            } else if (e(str)) {
                str2 = "bind";
            }
        }
        sb.append("#HVAC=");
        sb.append(str2);
        sb.append('\n');
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String string = Settings.System.getString(contentResolver, "lock_car_audio_enable");
            String string2 = Settings.System.getString(contentResolver, "lock_car_audio_path");
            if (I0.f.a(string, "1") && string2 != null && !O0.j.E0(string2)) {
                sb.append("#CARLOCK_PATH=");
                sb.append(string2);
                sb.append('\n');
            }
        } catch (Throwable unused2) {
        }
        String string3 = sb.toString();
        I0.f.d(string3, "toString(...)");
        return string3;
    }

    public static void c(Context context, boolean z2) {
        try {
            context.getPackageManager().setComponentEnabledSetting(b, z2 ? 1 : 2, 1);
        } catch (Throwable th) {
            L3.f671a.b("ModoOficina", "não consegui mexer no ícone: " + th.getMessage());
        }
    }

    public static boolean d(Context context, String str, boolean z2) {
        try {
            context.getPackageManager().setApplicationEnabledSetting(str, z2 ? 0 : 3, 0);
            return true;
        } catch (Throwable th) {
            L3 l3 = L3.f671a;
            StringBuilder sb = new StringBuilder("não consegui ");
            sb.append(z2 ? "ligar" : "desligar");
            sb.append(' ');
            sb.append(str);
            sb.append(": ");
            sb.append(th.getMessage());
            l3.b("ModoOficina", sb.toString());
            return false;
        }
    }

    public static boolean e(String str) {
        try {
            ArrayList arrayListZ = A.b.Z(new File("/proc/mounts"));
            if (arrayListZ.isEmpty()) {
                return false;
            }
            Iterator it = arrayListZ.iterator();
            while (it.hasNext()) {
                if (O0.j.x0((String) it.next(), ' ' + str + ' ', false)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static I3 f(Context context, int i2) {
        List listT;
        boolean zW0;
        String str;
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        sharedPreferences.edit().putBoolean("modo_oficina", true).putLong("modo_oficina_ate", i2 > 0 ? (((long) i2) * 3600000) + System.currentTimeMillis() : 0L).putInt("modo_oficina_horas", i2).apply();
        j(context);
        ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
        Y.F(context);
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
        I0.f.d(installedApplications, "getInstalledApplications(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : installedApplications) {
            ApplicationInfo applicationInfo = (ApplicationInfo) obj;
            if ((applicationInfo.flags & 129) == 0 && applicationInfo.enabled) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(w0.k.V(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ApplicationInfo) it.next()).packageName);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (!I0.f.a((String) obj2, context.getPackageName())) {
                arrayList3.add(obj2);
            }
        }
        if (arrayList3.size() <= 1) {
            listT = w0.i.i0(arrayList3);
        } else {
            Object[] array = arrayList3.toArray(new Comparable[0]);
            Comparable[] comparableArr = (Comparable[]) array;
            I0.f.e(comparableArr, "<this>");
            if (comparableArr.length > 1) {
                Arrays.sort(comparableArr);
            }
            listT = w0.h.T(array);
        }
        List list = listT;
        try {
            String str2 = context.getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            I0.f.d(str2, "sourceDir");
            zW0 = O0.s.w0(str2, "/data/");
        } catch (Throwable unused) {
            zW0 = false;
        }
        try {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = context.getFilesDir();
            }
            File file = new File(externalFilesDir, "modo_oficina_estado.txt");
            StringBuilder sb = new StringBuilder();
            sb.append(zW0 ? "#CONNADAPTOR=custom\n" : "#CONNADAPTOR=stock\n");
            sb.append(b(context));
            sb.append(w0.i.d0(list, "\n", null, null, null, 62));
            A.b.k0(file, sb.toString());
            Iterator it2 = list.iterator();
            int i3 = 0;
            while (it2.hasNext()) {
                if (d(context, (String) it2.next(), false)) {
                    i3++;
                }
                try {
                    Thread.sleep(120L);
                } catch (InterruptedException unused2) {
                }
            }
            c(context, false);
            String strK = zW0 ? k(120000, Y.k0()) : "";
            StringBuilder sb2 = new StringBuilder();
            try {
                str = context.getPackageManager().getApplicationInfo("com.flyme.auto.systemuiplugin", 0).sourceDir;
            } catch (Throwable unused3) {
                str = null;
            }
            if (str != null && O0.j.x0(str, "/data/app/", false)) {
                k(60000, "pm uninstall com.flyme.auto.systemuiplugin 2>&1 || pm uninstall --user 0 com.flyme.auto.systemuiplugin 2>&1");
                sb2.append(", hvac=desinstalado");
            } else if (str != null && e(str)) {
                k(60000, Y.l0(str));
                sb2.append(", hvac=desmontado");
            }
            try {
                ContentResolver contentResolver = context.getContentResolver();
                if (I0.f.a(Settings.System.getString(contentResolver, "lock_car_audio_enable"), "1")) {
                    Settings.System.putString(contentResolver, "lock_car_audio_enable", "0");
                    sb2.append(", carlock=desligado");
                }
            } catch (Throwable th) {
                sb2.append(", carlock=FALHOU(" + th.getMessage() + ')');
            }
            String string = sb2.toString();
            I0.f.d(string, "toString(...)");
            L3.f671a.b("ModoOficina", "ocultar: " + i3 + '/' + list.size() + " pacotes, connAdaptor=" + zW0 + ", prazo=" + i2 + 'h' + string);
            String string2 = context.getString(R.string.k_modo_oficina_ocultou, Integer.valueOf(i3));
            I0.f.d(string2, "getString(...)");
            return new I3(string2, strK, true);
        } catch (Throwable th2) {
            L3.f671a.b("ModoOficina", "não consegui gravar o snapshot: " + th2.getMessage());
            String string3 = context.getString(R.string.k_modo_oficina_erro);
            I0.f.d(string3, "getString(...)");
            String message = th2.getMessage();
            return new I3(string3, message != null ? message : "", false);
        }
    }

    public static void g(Context context) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.b(sharedPreferences);
        if (sharedPreferences.getBoolean("modo_oficina", false)) {
            return;
        }
        if (sharedPreferences.getBoolean("quick_access_enabled", false)) {
            try {
                context.startService(new Intent(context, (Class<?>) QuickAccessFloaterService.class));
            } catch (Throwable unused) {
            }
        }
        if (sharedPreferences.getBoolean("temp_batt_pill_enabled", false)) {
            try {
                context.startService(new Intent(context, (Class<?>) TempBattPillFloaterService.class));
            } catch (Throwable unused2) {
            }
        }
        try {
            List list = HomeFloatingWidgetsService.f2262Q;
            Y.E(context);
        } catch (Throwable unused3) {
        }
        if (sharedPreferences.getBoolean("media_bar_floater_enabled", false)) {
            try {
                context.startForegroundService(new Intent(context, (Class<?>) MediaBarFloaterService.class));
            } catch (Throwable unused4) {
            }
        }
        if (sharedPreferences.getBoolean("lyrics_floater_enabled", false)) {
            try {
                context.startForegroundService(new Intent(context, (Class<?>) LyricsFloaterService.class));
            } catch (Throwable unused5) {
            }
        }
    }

    public static I3 h(Context context, String str) {
        I0.f.e(context, "ctx");
        if (!f638c) {
            f638c = true;
            try {
                return i(context, str);
            } finally {
                f638c = false;
            }
        }
        L3.f671a.b("ModoOficina", "restaurar (" + str + ") ignorado — já há um em andamento");
        String string = context.getString(R.string.k_modo_oficina_restaurando);
        I0.f.d(string, "getString(...)");
        return new I3(string, "", true);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[LOOP:4: B:56:0x0108->B:108:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0104  */
    /* JADX WARN: Code duplicated, block: B:58:0x010e  */
    public static I3 i(Context context, String str) {
        boolean z2;
        Iterator it;
        Collection collectionZ = w0.q.f4190a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        sharedPreferences.edit().putBoolean("modo_oficina_restaurando", true).apply();
        Object obj = null;
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        File file = new File(externalFilesDir, "modo_oficina_estado.txt");
        try {
            if (file.exists()) {
                collectionZ = A.b.Z(file);
            }
        } catch (Throwable unused) {
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : collectionZ) {
            String str2 = (String) obj2;
            if (!O0.j.E0(str2) && !O0.s.w0(str2, "#")) {
                arrayList.add(obj2);
            }
        }
        if (collectionZ.isEmpty()) {
            z2 = false;
            break;
        }
        Iterator it2 = collectionZ.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z2 = false;
                break;
            }
            if (I0.f.a(O0.j.X0((String) it2.next()).toString(), "#CONNADAPTOR=custom")) {
                z2 = true;
                break;
            }
        }
        Iterator it3 = arrayList.iterator();
        int i2 = 0;
        while (it3.hasNext()) {
            if (d(context, (String) it3.next(), true)) {
                i2++;
            }
            try {
                Thread.sleep(120L);
            } catch (InterruptedException unused2) {
            }
        }
        c(context, true);
        String strK = z2 ? k(180000, Y.Q()) : "";
        StringBuilder sb = new StringBuilder();
        if (collectionZ.isEmpty()) {
            if (!collectionZ.isEmpty()) {
                it = collectionZ.iterator();
                while (it.hasNext()) {
                    if (I0.f.a(O0.j.X0((String) it.next()).toString(), "#HVAC=bind")) {
                        k(20000, "touch '/data/local/tmp/fixes/hvac_em_bind'");
                        sb.append(", hvac=marcado_p_remontar");
                        break;
                    }
                }
            }
        } else {
            Iterator it4 = collectionZ.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    if (!collectionZ.isEmpty()) {
                        it = collectionZ.iterator();
                        while (it.hasNext()) {
                            if (I0.f.a(O0.j.X0((String) it.next()).toString(), "#HVAC=bind")) {
                                k(20000, "touch '/data/local/tmp/fixes/hvac_em_bind'");
                                sb.append(", hvac=marcado_p_remontar");
                                break;
                            }
                        }
                    }
                } else if (I0.f.a(O0.j.X0((String) it4.next()).toString(), "#HVAC=install")) {
                    sb.append(O0.j.x0(k(120000, "pm install -r -g '/data/local/hvac-digital/sysui.apk' 2>&1"), "Success", false) ? ", hvac=reinstalado" : ", hvac=FALHOU");
                }
            }
        }
        for (Object obj3 : collectionZ) {
            if (O0.s.w0((String) obj3, "#CARLOCK_PATH=")) {
                obj = obj3;
                break;
            }
        }
        String str3 = (String) obj;
        if (str3 != null) {
            String string = O0.j.X0(O0.j.Q0(str3, '=', str3)).toString();
            if (!O0.j.E0(string)) {
                try {
                    ContentResolver contentResolver = context.getContentResolver();
                    Settings.System.putString(contentResolver, "lock_car_audio_path", string);
                    Settings.System.putString(contentResolver, "lock_car_audio_enable", "1");
                    sb.append(", carlock=religado");
                } catch (Throwable th) {
                    sb.append(", carlock=FALHOU(" + th.getMessage() + ')');
                }
            }
        }
        String string2 = sb.toString();
        I0.f.d(string2, "toString(...)");
        try {
            file.delete();
        } catch (Throwable unused3) {
        }
        sharedPreferences.edit().putBoolean("modo_oficina", false).putLong("modo_oficina_ate", 0L).putBoolean("modo_oficina_restaurando", false).apply();
        ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
        Y.F(context);
        g(context);
        L3.f671a.b("ModoOficina", "restaurar (" + str + "): " + i2 + '/' + arrayList.size() + " pacotes, connAdaptor=" + z2 + string2);
        String string3 = context.getString(R.string.k_modo_oficina_restaurou, Integer.valueOf(i2));
        I0.f.d(string3, "getString(...)");
        return new I3(string3, strK, true);
    }

    public static void j(Context context) {
        I0.f.e(context, "ctx");
        Iterator it = f637a.iterator();
        while (it.hasNext()) {
            try {
                context.stopService(new Intent(context, (Class<?>) it.next()));
            } catch (Throwable unused) {
            }
        }
        try {
            Object systemService = context.getSystemService("notification");
            I0.f.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).cancelAll();
        } catch (Throwable unused2) {
        }
    }

    public static String k(int i2, String str) {
        try {
            return C0097m.v(str, i2, null, new C0103n(0));
        } catch (Exception e2) {
            L3.f671a.b("ModoOficina", "shell indisponível (ConnAdaptor não mexido): " + e2.getMessage());
            return "ADB_INDISPONIVEL: " + e2.getMessage();
        }
    }

    public static void l(Context context) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        if (sharedPreferences.getBoolean("modo_oficina_restaurando", false)) {
            L3.f671a.b("ModoOficina", "restaurar tinha ficado pela metade — retomando no boot");
            new Thread(new H3(context, 0)).start();
        } else if (sharedPreferences.getBoolean("modo_oficina", false)) {
            long j2 = sharedPreferences.getLong("modo_oficina_ate", 0L);
            if (1 <= j2 && j2 <= System.currentTimeMillis()) {
                new Thread(new H3(context, 1)).start();
                return;
            }
            j(context);
            ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
            Y.F(context);
        }
    }
}
