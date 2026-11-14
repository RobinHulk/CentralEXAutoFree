package com.ex.auto;

import A.b;
import I0.f;
import M.d0;
import O.c;
import O0.l;
import T.A4;
import T.AbstractC0121q;
import T.C0097m;
import T.C0103n;
import T.C0105n1;
import T.C0134s1;
import T.E;
import T.F4;
import T.G4;
import T.H;
import T.I;
import T.I3;
import T.J3;
import T.L3;
import T.N3;
import T.O3;
import T.Q3;
import T.RunnableC0139t0;
import T.RunnableC0168z;
import T.S3;
import T.T3;
import T.U;
import T.Y;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.util.Log;
import com.ex.auto.PhoneSyncService;
import com.geely.hvacstepperv2.TempStepperService;
import com.sun.mail.imap.IMAPStore;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import v0.a;
import v0.e;
import w0.i;
import w0.j;
import w0.k;
import w0.q;
import w0.s;
import w0.u;

/* JADX INFO: loaded from: classes.dex */
public final class PhoneSyncService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile boolean f2416v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f2417a;
    public ServerSocket b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BluetoothServerSocket f2418c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Car f2420e;
    public volatile CarPropertyManager f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile CarAudioManager f2421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile G4 f2422h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile Integer f2423i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Integer f2426l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f2427m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Integer f2428n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f2429o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Boolean f2430p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f2431q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ExecutorService f2419d = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f2424j = {1, 49, 5, 0};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f2425k = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Object f2432r = u.V(new a("away_lock", new T3(557850650, 0, 1, 2, "Travar ao se afastar")), new a("approach_unlock", new T3(557883671, 0, 1, 2, "Destravar ao aproximar")), new a("tail_approach", new T3(557850652, 536870912, 1, 2, "Porta-malas ao aproximar")), new a("speed_auto_lock", new T3(557850645, 0, 2, 1, "Travamento por velocidade")));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List f2433s = j.T(new a("fl", 1), new a("fr", 4), new a("rl", 16), new a("rr", 64));

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List f2434t = j.T(new a("fl", 16), new a("fr", 64), new a("rl", 256), new a("rr", 1024));

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List f2435u = j.T("connadaptor-log", "connadaptor-logs", "mfi-kernel", "mfi-state", "i2c-mfi", "carplay-diag");

    public static JSONObject e(File file) {
        return new JSONObject().put(IMAPStore.ID_NAME, file.getName()).put("sizeKb", (int) ((file.length() + ((long) 1023)) / ((long) 1024)));
    }

    public static JSONObject g(BufferedInputStream bufferedInputStream, String str, long j2) throws JSONException, IOException {
        Object next;
        String str2;
        int i2 = 0;
        List listN0 = O0.j.N0(O0.j.Q0(str, '?', ""), new char[]{'&'});
        ArrayList arrayList = new ArrayList();
        Iterator it = listN0.iterator();
        while (true) {
            a aVar = null;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int iC0 = O0.j.C0(str3, '=', 0, false, 6);
            if (iC0 > 0) {
                String strSubstring = str3.substring(0, iC0);
                f.d(strSubstring, "substring(...)");
                String strSubstring2 = str3.substring(iC0 + 1);
                f.d(strSubstring2, "substring(...)");
                aVar = new a(strSubstring, strSubstring2);
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!f.a(((a) next).f4155a, "filename"));
        a aVar2 = (a) next;
        String strDecode = (aVar2 == null || (str2 = (String) aVar2.b) == null) ? null : URLDecoder.decode(str2, StandardCharsets.UTF_8.name());
        if (strDecode == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "filename obrigatório");
            f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String strR = r(strDecode);
        if (strR == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "nome inválido (use .wav)");
            f.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        if (1 > j2 || j2 >= 26214401) {
            if (j2 > 0) {
                m(bufferedInputStream, (int) Math.min(j2, 26214400L));
            }
            JSONObject jSONObjectPut3 = new JSONObject().put("ok", false).put("error", "arquivo vazio ou acima de 25 MB");
            f.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        byte[] bArrM = m(bufferedInputStream, (int) j2);
        if (bArrM.length != j2) {
            JSONObject jSONObjectPut4 = new JSONObject().put("ok", false).put("error", "upload interrompido");
            f.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        try {
            C0097m.v(Y.C(), 10000, null, new C0103n(i2));
        } catch (Exception unused) {
        }
        try {
            File file = new File("/data/local/tmp/sons");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, strR);
            FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
            try {
                fileOutputStream.write(bArrM);
                b.m(fileOutputStream, null);
                file2.setReadable(true, false);
                Log.i("PhoneSyncService", "avas_sound salvo: " + strR + " (" + bArrM.length + " bytes)");
                return new JSONObject().put("ok", true).put("message", "Som enviado: " + strR + " — abra o AvasSomAtivador no carro para aplicar");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    b.m(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            JSONObject jSONObjectPut5 = new JSONObject().put("ok", false);
            String message = e2.getMessage();
            if (message == null) {
                message = e2.getClass().getSimpleName();
            }
            return jSONObjectPut5.put("error", message);
        }
    }

    public static JSONObject h(BufferedInputStream bufferedInputStream, String str, long j2) throws JSONException, IOException {
        String strV;
        String strQ0 = O0.j.Q0(str, '?', "");
        if (f.a(i(strQ0, "remove"), "1")) {
            if (j2 > 0) {
                m(bufferedInputStream, (int) j2);
            }
            try {
                strV = C0097m.v(Y.s(), 20000, null, new C0103n(0));
            } catch (Exception e2) {
                strV = "erro: " + e2.getMessage();
            }
            boolean zX0 = O0.j.x0(strV, "exit_code=0", false);
            JSONObject jSONObjectPut = new JSONObject().put("ok", zX0).put("message", zX0 ? "Som original restaurado" : "Falha ao restaurar");
            f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String strI = i(strQ0, "filename");
        if (strI == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "filename obrigatório");
            f.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        String strR = r(strI);
        if (strR == null) {
            JSONObject jSONObjectPut3 = new JSONObject().put("ok", false).put("error", "nome inválido (use .wav)");
            f.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        if (1 > j2 || j2 >= 26214401) {
            if (j2 > 0) {
                m(bufferedInputStream, (int) Math.min(j2, 26214400L));
            }
            JSONObject jSONObjectPut4 = new JSONObject().put("ok", false).put("error", "arquivo vazio ou acima de 25 MB");
            f.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        byte[] bArrM = m(bufferedInputStream, (int) j2);
        if (bArrM.length != j2) {
            JSONObject jSONObjectPut5 = new JSONObject().put("ok", false).put("error", "upload interrompido");
            f.d(jSONObjectPut5, "put(...)");
            return jSONObjectPut5;
        }
        try {
            C0097m.v(Y.C(), 10000, null, new C0103n(0));
        } catch (Exception unused) {
        }
        try {
            File file = new File("/data/local/tmp/sons");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, strR);
            FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
            try {
                fileOutputStream.write(bArrM);
                b.m(fileOutputStream, null);
                boolean z2 = true;
                file2.setReadable(true, false);
                String absolutePath = file2.getAbsolutePath();
                f.d(absolutePath, "getAbsolutePath(...)");
                String strV2 = C0097m.v(Y.r(absolutePath), 25000, null, new C0103n(0));
                if (!O0.j.x0(strV2, "exit_code=0", false) || O0.j.x0(strV2, "BIND_NAO_CONFIRMADO", false)) {
                    z2 = false;
                }
                Log.i("PhoneSyncService", "carlock bind (" + strR + "): " + O0.j.W0(300, strV2));
                return new JSONObject().put("ok", z2).put("message", z2 ? "Som de bloqueio aplicado: ".concat(strR) : "Falha ao aplicar o som");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    b.m(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e3) {
            JSONObject jSONObjectPut6 = new JSONObject().put("ok", false);
            String message = e3.getMessage();
            if (message == null) {
                message = e3.getClass().getSimpleName();
            }
            return jSONObjectPut6.put("error", message);
        }
    }

    public static final String i(String str, String str2) {
        Object next;
        String str3;
        List listN0 = O0.j.N0(str, new char[]{'&'});
        ArrayList arrayList = new ArrayList();
        Iterator it = listN0.iterator();
        while (true) {
            a aVar = null;
            if (!it.hasNext()) {
                break;
            }
            String str4 = (String) it.next();
            int iC0 = O0.j.C0(str4, '=', 0, false, 6);
            if (iC0 > 0) {
                String strSubstring = str4.substring(0, iC0);
                f.d(strSubstring, "substring(...)");
                String strSubstring2 = str4.substring(iC0 + 1);
                f.d(strSubstring2, "substring(...)");
                aVar = new a(strSubstring, strSubstring2);
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!f.a(((a) next).f4155a, str2));
        a aVar2 = (a) next;
        if (aVar2 == null || (str3 = (String) aVar2.b) == null) {
            return null;
        }
        return URLDecoder.decode(str3, StandardCharsets.UTF_8.name());
    }

    public static Set k(JSONArray jSONArray) {
        if (jSONArray == null) {
            return s.f4192a;
        }
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            String strOptString = jSONArray.optString(i2, "");
            f.b(strOptString);
            if (O0.j.E0(strOptString)) {
                strOptString = null;
            }
            if (strOptString != null) {
                hashSet.add(strOptString);
            }
        }
        return hashSet;
    }

    public static byte[] m(BufferedInputStream bufferedInputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = bufferedInputStream.read(bArr, i3, i2 - i3);
            if (i4 < 0) {
                break;
            }
            i3 += i4;
        }
        if (i3 == i2) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i3);
        f.d(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static String o(BufferedInputStream bufferedInputStream) throws IOException {
        ArrayList arrayList = new ArrayList(128);
        do {
            int i2 = bufferedInputStream.read();
            if (i2 == -1 || i2 == 10) {
                break;
            }
            if (i2 != 13) {
                arrayList.add(Byte.valueOf((byte) i2));
            }
        } while (arrayList.size() <= 8192);
        byte[] bArr = new byte[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            bArr[i3] = ((Number) it.next()).byteValue();
            i3++;
        }
        Charset charset = StandardCharsets.UTF_8;
        f.d(charset, "UTF_8");
        return new String(bArr, charset);
    }

    public static JSONObject p(String str, boolean z2) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("ok", z2).put("message", str);
        f.d(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public static JSONObject q(String str, int i2, String str2) throws JSONException {
        Thread thread = new Thread(new S3(str, i2, 0));
        thread.setDaemon(true);
        thread.start();
        JSONObject jSONObjectPut = new JSONObject().put("ok", true).put("message", str2);
        f.d(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public static String r(String str) {
        int length;
        String strS0 = O0.j.S0(O0.j.S0(O0.j.X0(str).toString(), '/'), '\\');
        Pattern patternCompile = Pattern.compile("[^A-Za-z0-9._-]");
        f.d(patternCompile, "compile(...)");
        String strReplaceAll = patternCompile.matcher(strS0).replaceAll("_");
        f.d(strReplaceAll, "replaceAll(...)");
        String lowerCase = strReplaceAll.toLowerCase(Locale.ROOT);
        f.d(lowerCase, "toLowerCase(...)");
        if (!O0.s.r0(lowerCase, ".wav", false) || 5 > (length = strReplaceAll.length()) || length >= 121 || O0.s.w0(strReplaceAll, ".")) {
            return null;
        }
        return strReplaceAll;
    }

    public static void x(OutputStream outputStream, String str, int i2) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        f.d(charset, "UTF_8");
        byte[] bytes = str.getBytes(charset);
        f.d(bytes, "getBytes(...)");
        byte[] bytes2 = ("HTTP/1.1 " + i2 + ' ' + (i2 == 200 ? "OK" : "Bad Request") + "\r\nConnection: close\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\n\r\n").getBytes(charset);
        f.d(bytes2, "getBytes(...)");
        outputStream.write(bytes2);
        outputStream.write(bytes);
        outputStream.flush();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0226 A[Catch: Exception -> 0x00a3, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a3, blocks: (B:18:0x007a, B:22:0x0085, B:25:0x008f, B:28:0x00a6, B:31:0x00b0, B:32:0x00c4, B:35:0x00ce, B:36:0x00e2, B:39:0x00ec, B:41:0x00f2, B:43:0x0100, B:42:0x00fb, B:44:0x0107, B:46:0x010f, B:49:0x0120, B:52:0x0129, B:53:0x012e, B:59:0x0142, B:62:0x014a, B:56:0x0138, B:63:0x0158, B:66:0x0162, B:67:0x0178, B:70:0x0182, B:71:0x0198, B:102:0x0226, B:74:0x01a2, B:77:0x01ac, B:79:0x01b2, B:81:0x01c0, B:80:0x01bb, B:82:0x01c7, B:85:0x01d1, B:86:0x01ec, B:89:0x01f5, B:92:0x0208, B:95:0x0210, B:96:0x0214, B:99:0x021d), top: B:107:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0142 A[Catch: Exception -> 0x00a3, TryCatch #0 {Exception -> 0x00a3, blocks: (B:18:0x007a, B:22:0x0085, B:25:0x008f, B:28:0x00a6, B:31:0x00b0, B:32:0x00c4, B:35:0x00ce, B:36:0x00e2, B:39:0x00ec, B:41:0x00f2, B:43:0x0100, B:42:0x00fb, B:44:0x0107, B:46:0x010f, B:49:0x0120, B:52:0x0129, B:53:0x012e, B:59:0x0142, B:62:0x014a, B:56:0x0138, B:63:0x0158, B:66:0x0162, B:67:0x0178, B:70:0x0182, B:71:0x0198, B:102:0x0226, B:74:0x01a2, B:77:0x01ac, B:79:0x01b2, B:81:0x01c0, B:80:0x01bb, B:82:0x01c7, B:85:0x01d1, B:86:0x01ec, B:89:0x01f5, B:92:0x0208, B:95:0x0210, B:96:0x0214, B:99:0x021d), top: B:107:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0148  */
    /* JADX WARN: Code duplicated, block: B:62:0x014a A[Catch: Exception -> 0x00a3, TryCatch #0 {Exception -> 0x00a3, blocks: (B:18:0x007a, B:22:0x0085, B:25:0x008f, B:28:0x00a6, B:31:0x00b0, B:32:0x00c4, B:35:0x00ce, B:36:0x00e2, B:39:0x00ec, B:41:0x00f2, B:43:0x0100, B:42:0x00fb, B:44:0x0107, B:46:0x010f, B:49:0x0120, B:52:0x0129, B:53:0x012e, B:59:0x0142, B:62:0x014a, B:56:0x0138, B:63:0x0158, B:66:0x0162, B:67:0x0178, B:70:0x0182, B:71:0x0198, B:102:0x0226, B:74:0x01a2, B:77:0x01ac, B:79:0x01b2, B:81:0x01c0, B:80:0x01bb, B:82:0x01c7, B:85:0x01d1, B:86:0x01ec, B:89:0x01f5, B:92:0x0208, B:95:0x0210, B:96:0x0214, B:99:0x021d), top: B:107:0x007a }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final JSONObject a(JSONObject jSONObject) throws JSONException {
        CentralWatchdogService centralWatchdogService;
        String strOptString = jSONObject.optString("key");
        Q3 q3 = Q3.f768a;
        f.b(strOptString);
        N3 n3 = (N3) Q3.f769c.get(strOptString);
        if (n3 == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "chave desconhecida: ".concat(strOptString));
            f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        SharedPreferences sharedPreferencesA = n3.f704c == O3.b ? Q3.a(this) : Q3.c(this);
        int iOrdinal = n3.b.ordinal();
        if (iOrdinal == 0) {
            sharedPreferencesA.edit().putBoolean(strOptString, jSONObject.optBoolean("value")).apply();
        } else {
            if (iOrdinal != 1) {
                throw new c();
            }
            sharedPreferencesA.edit().putInt(strOptString, jSONObject.optInt("value")).apply();
        }
        SharedPreferences sharedPreferencesC = Q3.c(this);
        try {
            switch (strOptString.hashCode()) {
                case -1383138571:
                    if (strOptString.equals("hvac_digital_batt")) {
                        Thread thread = new Thread(new H(this, sharedPreferencesC, 27));
                        thread.setDaemon(true);
                        thread.start();
                    }
                    break;
                case -1382598710:
                    if (strOptString.equals("hvac_digital_temp")) {
                        Thread thread2 = new Thread(new H(this, sharedPreferencesC, 27));
                        thread2.setDaemon(true);
                        thread2.start();
                    }
                    break;
                case -1120513032:
                    if (strOptString.equals("quick_access_enabled")) {
                        boolean z2 = sharedPreferencesC.getBoolean(strOptString, false);
                        List list = QuickAccessFloaterService.f2436j0;
                        boolean z3 = QuickAccessFloaterService.f2439m0;
                        Intent intent = new Intent(this, (Class<?>) QuickAccessFloaterService.class);
                        if (z2 && !z3) {
                            startForegroundService(intent);
                        } else if (!z2 && z3) {
                            stopService(intent);
                        }
                    }
                    break;
                case -953601624:
                    if (strOptString.equals("floater_alpha")) {
                        sendBroadcast(new Intent("UPDATE_FLOATER_ALPHA").putExtra("alpha", Q3.a(this).getInt(strOptString, 100)));
                    }
                    break;
                case -449068059:
                    if (strOptString.equals("status_temp_ext_enabled")) {
                        if (sharedPreferencesC.getBoolean(strOptString, false)) {
                            startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class));
                        } else {
                            HashMap map = A4.f474a;
                            A4.e(this);
                        }
                        int[] iArr = CentralWatchdogService.d2;
                        Y.a0();
                    }
                    break;
                case -27285464:
                    if (strOptString.equals("hvac_digital_ext_temp")) {
                        Thread thread3 = new Thread(new H(this, sharedPreferencesC, 27));
                        thread3.setDaemon(true);
                        thread3.start();
                    }
                    break;
                case 9535899:
                    if (strOptString.equals("avas_muted_saved")) {
                        Thread thread4 = new Thread(new I(this, sharedPreferencesC.getBoolean(strOptString, false), 1));
                        thread4.setDaemon(true);
                        thread4.start();
                    }
                    break;
                case 265856781:
                    if (strOptString.equals("telemetry_autostart")) {
                        boolean z4 = sharedPreferencesC.getBoolean(strOptString, false);
                        sharedPreferencesC.edit().putBoolean("telemetry_on", z4).apply();
                        VhalProviderService.b(this, z4);
                    }
                    break;
                case 397683154:
                    if (strOptString.equals("saved_drive")) {
                        int[] iArr2 = CentralWatchdogService.d2;
                        centralWatchdogService = CentralWatchdogService.g2;
                        if (centralWatchdogService == null) {
                            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 21));
                        }
                    }
                    break;
                case 410222725:
                    if (strOptString.equals("saved_regen")) {
                        int[] iArr3 = CentralWatchdogService.d2;
                        centralWatchdogService = CentralWatchdogService.g2;
                        if (centralWatchdogService == null) {
                            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 21));
                        }
                    }
                    break;
                case 771455812:
                    if (strOptString.equals("hvac_stepper_enabled")) {
                        boolean z5 = sharedPreferencesC.getBoolean(strOptString, false);
                        boolean z6 = TempStepperService.f2617Z;
                        Intent intent2 = new Intent(this, (Class<?>) TempStepperService.class);
                        if (z5 && !z6) {
                            startForegroundService(intent2);
                        } else if (!z5 && z6) {
                            stopService(intent2);
                        }
                    }
                    break;
                case 869369026:
                    if (strOptString.equals("status_battery_enabled")) {
                        if (sharedPreferencesC.getBoolean(strOptString, false)) {
                            startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class));
                        } else {
                            HashMap map2 = A4.f474a;
                            A4.d(this);
                        }
                        int[] iArr4 = CentralWatchdogService.d2;
                        Y.a0();
                    }
                    break;
                case 1288791589:
                    if (strOptString.equals("rvc_black_bg")) {
                        Thread thread5 = new Thread(new RunnableC0168z(sharedPreferencesC, strOptString, this, 15));
                        thread5.setDaemon(true);
                        thread5.start();
                    }
                    break;
                case 1811894309:
                    if (strOptString.equals("auto_route_on_aa_connect")) {
                        startService(new Intent(this, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", sharedPreferencesC.getBoolean(strOptString, false)));
                    }
                    break;
                case 1869561824:
                    if (strOptString.equals("auto_proxy_enabled")) {
                        startService(new Intent(this, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", sharedPreferencesC.getBoolean(strOptString, false)));
                    }
                    break;
            }
        } catch (Exception e2) {
            StringBuilder sbJ = d0.j("applySideEffect(", strOptString, "): ");
            sbJ.append(e2.getMessage());
            Log.e("PhoneSyncService", sbJ.toString());
        }
        StringBuilder sbJ2 = d0.j("set_setting ativo: ", strOptString, " = ");
        sbJ2.append(jSONObject.opt("value"));
        Log.i("PhoneSyncService", sbJ2.toString());
        return p("Config " + strOptString + " aplicada", true);
    }

    public final ArrayList b() {
        List<String> listT = j.T("central_events.log", "central_boot.log");
        ArrayList arrayList = new ArrayList(k.V(listT));
        for (String str : listT) {
            File externalFilesDir = getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = getFilesDir();
                f.d(externalFilesDir, "getFilesDir(...)");
            }
            arrayList.add(new File(externalFilesDir, str));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((File) obj).isFile()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final List c() {
        List<String> list;
        q qVar = q.f4190a;
        try {
            File[] fileArrListFiles = new File("/storage/emulated/0/Download").listFiles();
            if (fileArrListFiles == null) {
                return qVar;
            }
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                if (file.isFile() && ((list = this.f2435u) == null || !list.isEmpty())) {
                    for (String str : list) {
                        String name = file.getName();
                        f.d(name, "getName(...)");
                        f.e(str, "prefix");
                        if (O0.s.t0(0, 0, str.length(), name, str, true)) {
                            arrayList.add(file);
                            break;
                        }
                    }
                }
            }
            return i.f0(arrayList, new E(10));
        } catch (Throwable unused) {
            return qVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0252  */
    /* JADX WARN: Code duplicated, block: B:136:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d9  */
    /* JADX WARN: Type inference failed for: r6v61, types: [java.lang.Object, java.util.Map] */
    public final JSONObject d() throws JSONException {
        F4 f4A;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        JSONObject jSONObject4;
        Q3 q3 = Q3.f768a;
        String str = "?";
        try {
            String str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            if (str2 != null) {
                str = str2;
            }
        } catch (Exception unused) {
        }
        JSONObject jSONObject5 = new JSONObject();
        for (N3 n3 : Q3.b) {
            SharedPreferences sharedPreferencesA = n3.f704c == O3.b ? Q3.a(this) : Q3.c(this);
            JSONObject jSONObject6 = new JSONObject();
            int iOrdinal = n3.b.ordinal();
            String str3 = n3.f703a;
            if (iOrdinal == 0) {
                jSONObject6.put("v", sharedPreferencesA.getBoolean(str3, n3.f705d));
            } else {
                if (iOrdinal != 1) {
                    throw new c();
                }
                jSONObject6.put("v", sharedPreferencesA.getInt(str3, n3.f706e));
            }
            SharedPreferences sharedPreferences = getSharedPreferences("phone_sync_meta", 0);
            f.d(sharedPreferences, "getSharedPreferences(...)");
            jSONObject6.put("t", sharedPreferences.getLong(str3, 0L));
            jSONObject5.put(str3, jSONObject6);
        }
        JSONObject jSONObjectPut = new JSONObject().put("protocol", 1).put("device", "central").put("time", System.currentTimeMillis()).put(IMAPStore.ID_VERSION, str).put("settings", jSONObject5);
        f.d(jSONObjectPut, "put(...)");
        JSONObject jSONObject7 = null;
        try {
            G4 g4 = this.f2422h;
            f4A = g4 != null ? g4.a() : null;
        } catch (Exception unused2) {
        }
        if (f4A == null) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            Float f = f4A.f568a;
            if (f != null) {
                jSONObject.put("speedKmh", Float.valueOf(f.floatValue()));
            }
            Integer num = f4A.b;
            if (num != null) {
                jSONObject.put("gear", num.intValue());
            }
            String str4 = f4A.f569c;
            if (str4 != null) {
                jSONObject.put("gearLabel", str4);
            }
            Float f2 = f4A.f570d;
            if (f2 != null) {
                jSONObject.put("socPct", Float.valueOf(f2.floatValue()));
            }
            Float f3 = f4A.f571e;
            if (f3 != null) {
                jSONObject.put("rangeKm", Float.valueOf(f3.floatValue()));
            }
            Float f4 = f4A.f;
            if (f4 != null) {
                jSONObject.put("odometerKm", Float.valueOf(f4.floatValue()));
            }
            Float f5 = f4A.f572g;
            if (f5 != null) {
                jSONObject.put("instPowerKw", Float.valueOf(f5.floatValue()));
            }
            Float f6 = f4A.f578m;
            if (f6 != null) {
                jSONObject.put("outsideTempC", Float.valueOf(f6.floatValue()));
            }
            Float f7 = f4A.f579n;
            if (f7 != null) {
                jSONObject.put("aux12vVolt", Float.valueOf(f7.floatValue()));
            }
            Boolean bool = f4A.f575j;
            if (bool != null) {
                jSONObject.put("acOn", bool.booleanValue());
            }
            Integer num2 = f4A.f576k;
            if (num2 != null) {
                jSONObject.put("acFanLevel", num2.intValue());
            }
            Float f8 = f4A.f577l;
            if (f8 != null) {
                jSONObject.put("hvacTempSetC", Float.valueOf(f8.floatValue()));
            }
            Float f9 = f4A.f582q;
            if (f9 != null) {
                jSONObject.put("chargeKw", Float.valueOf(f9.floatValue()));
            }
            Boolean bool2 = f4A.f580o;
            if (bool2 != null) {
                jSONObject.put("charging", bool2.booleanValue());
            }
            Boolean bool3 = f4A.f581p;
            if (bool3 != null) {
                jSONObject.put("dcfc", bool3.booleanValue());
            }
            Boolean bool4 = f4A.f583r;
            if (bool4 != null) {
                jSONObject.put("vhalLive", bool4.booleanValue());
            }
            if (!f4A.f584s.equals("unknown")) {
                jSONObject.put("carId", f4A.f584s);
            }
            if (jSONObject.length() <= 0) {
                jSONObject = null;
            }
        }
        if (jSONObject != null) {
            jSONObjectPut.put("telemetry", jSONObject);
        }
        CarPropertyManager carPropertyManager = this.f;
        if (carPropertyManager == null) {
            jSONObject2 = null;
        } else {
            jSONObject2 = new JSONObject();
            Float fB = U.b(carPropertyManager, 624955446, 1);
            if (fB != null) {
                jSONObject2.put("driverTemp", Float.valueOf(fB.floatValue()));
            }
            Float fB2 = U.b(carPropertyManager, 624955446, 4);
            if (fB2 != null) {
                jSONObject2.put("passengerTemp", Float.valueOf(fB2.floatValue()));
            }
            Integer numN = n();
            if (numN != null) {
                jSONObject2.put("fanLevel", numN.intValue());
            }
            Boolean boolL = l();
            if (boolL != null) {
                jSONObject2.put("acOn", boolL.booleanValue());
            }
            synchronized (this.f2425k) {
                jSONObject2.put("fanTs", this.f2427m);
                jSONObject2.put("tempTs", this.f2429o);
                jSONObject2.put("acTs", this.f2431q);
            }
            if (jSONObject2.length() <= 0) {
                jSONObject2 = null;
            }
        }
        if (jSONObject2 != null) {
            jSONObjectPut.put("hvac", jSONObject2);
        }
        CarPropertyManager carPropertyManager2 = this.f;
        if (carPropertyManager2 == null) {
            jSONObject3 = null;
        } else {
            jSONObject3 = new JSONObject();
            Integer numC = U.c(carPropertyManager2, 541129728, 0);
            if (numC != null) {
                jSONObject3.put("locked", numC.intValue() == 1);
            }
            JSONObject jSONObject8 = new JSONObject();
            boolean z2 = false;
            for (a aVar : this.f2433s) {
                String str5 = (String) aVar.f4155a;
                Integer numC2 = U.c(carPropertyManager2, 373295872, ((Number) aVar.b).intValue());
                if (numC2 != null) {
                    jSONObject8.put(str5, numC2.intValue() == 1);
                    z2 = true;
                }
            }
            if (z2) {
                jSONObject3.put("open", jSONObject8);
            }
            if (jSONObject3.length() <= 0) {
                jSONObject3 = null;
            }
        }
        if (jSONObject3 != null) {
            jSONObjectPut.put("doors", jSONObject3);
        }
        CarPropertyManager carPropertyManager3 = this.f;
        if (carPropertyManager3 == null) {
            jSONObject4 = null;
        } else {
            jSONObject4 = new JSONObject();
            boolean z3 = false;
            for (a aVar2 : this.f2434t) {
                String str6 = (String) aVar2.f4155a;
                Integer numC3 = U.c(carPropertyManager3, 322964416, ((Number) aVar2.b).intValue());
                if (numC3 != null) {
                    jSONObject4.put(str6, numC3.intValue());
                    z3 = true;
                }
            }
            if (!z3) {
                jSONObject4 = null;
            }
        }
        if (jSONObject4 != null) {
            jSONObjectPut.put("windows", jSONObject4);
        }
        CarPropertyManager carPropertyManager4 = this.f;
        if (carPropertyManager4 != null) {
            JSONObject jSONObject9 = new JSONObject();
            boolean z4 = false;
            for (Map.Entry entry : this.f2432r.entrySet()) {
                String str7 = (String) entry.getKey();
                T3 t3 = (T3) entry.getValue();
                ExecutorService executorService = U.f804a;
                Integer numC4 = U.c(carPropertyManager4, t3.f800a, t3.b);
                if (numC4 != null) {
                    jSONObject9.put(str7, numC4.intValue() != t3.f803e);
                    z4 = true;
                }
            }
            if (z4) {
                jSONObject7 = jSONObject9;
            }
        }
        if (jSONObject7 != null) {
            jSONObjectPut.put("presence", jSONObject7);
        }
        return jSONObjectPut;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x0206 A[Catch: Exception -> 0x0103, TRY_LEAVE, TryCatch #3 {Exception -> 0x0103, blocks: (B:27:0x00ac, B:31:0x00bd, B:34:0x00c7, B:51:0x00f9, B:57:0x010d, B:37:0x00d8, B:40:0x00e1, B:44:0x00e9, B:46:0x00ef, B:58:0x0113, B:61:0x011d, B:62:0x0126, B:65:0x0130, B:67:0x0136, B:70:0x0142, B:71:0x0148, B:72:0x0156, B:75:0x0160, B:77:0x0166, B:78:0x0169, B:79:0x0171, B:82:0x017b, B:98:0x01aa, B:88:0x0191, B:90:0x0198, B:99:0x01b0, B:102:0x01ba, B:103:0x01c9, B:106:0x01d3, B:123:0x0216, B:124:0x021f, B:109:0x01ee, B:111:0x01f5, B:115:0x01fe, B:116:0x0200, B:118:0x0206, B:125:0x0236, B:128:0x0240, B:130:0x0246, B:131:0x024e, B:132:0x025e, B:135:0x0268, B:136:0x0276, B:139:0x027e, B:140:0x0288, B:145:0x0297, B:150:0x02a3, B:154:0x02ab, B:155:0x02b7, B:158:0x02c1, B:159:0x02c7, B:162:0x02d1, B:164:0x02e0, B:169:0x02f0, B:165:0x02e5, B:170:0x02f9, B:173:0x0303, B:175:0x0333, B:181:0x0350, B:182:0x035b, B:176:0x033d, B:178:0x0345, B:179:0x034a, B:183:0x037a, B:186:0x0383, B:187:0x0392, B:190:0x039b, B:191:0x03bf, B:194:0x03dc, B:193:0x03c7, B:112:0x01f9), top: B:208:0x00ac, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:219:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final JSONObject f(String str, JSONObject jSONObject) throws JSONException {
        int[] iArr;
        int length;
        int i2;
        boolean z2;
        boolean zOptBoolean = true;
        switch (str.hashCode()) {
            case -1422950858:
                if (str.equals("action")) {
                    String strOptString = jSONObject != null ? jSONObject.optString(IMAPStore.ID_NAME) : null;
                    String str2 = "";
                    if (strOptString == null) {
                        strOptString = "";
                    }
                    try {
                        switch (strOptString.hashCode()) {
                            case -1950600976:
                                if (strOptString.equals("aa_restart")) {
                                    return q(l.n0("\n            " + l.n0("\n            _STA_ANTES=0\n            grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null && _STA_ANTES=1\n            echo \"STA_ANTES=$_STA_ANTES\"\n            if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w 'ap0' | awk '{print $1}' | sed 's/://' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 5\n            setprop ctl.restart AAutoMonitor\n    ") + "\n            echo \"restart_enviado\"\n    "), 60000, "Reinício AA/CarPlay enviado");
                                }
                            case -1855980398:
                                if (strOptString.equals("proxy_ready")) {
                                    f.b(jSONObject);
                                    String strOptString2 = jSONObject.optString("ip");
                                    int iOptInt = jSONObject.optInt("port", 8080);
                                    String strOptString3 = jSONObject.optString("state", "up");
                                    int[] iArr2 = CentralWatchdogService.d2;
                                    f.b(strOptString2);
                                    f.b(strOptString3);
                                    return Y.j0(strOptString2, iOptInt, strOptString3);
                                }
                            case -1658020302:
                                return !strOptString.equals("aa_activate") ? new JSONObject().put("ok", false).put("error", "ação desconhecida: ".concat(strOptString)) : q(Y.Q(), 120000, "Ativação AA/CarPlay enviada");
                            case -1376766144:
                                if (strOptString.equals("hvac_set_temp")) {
                                    f.b(jSONObject);
                                    long jOptLong = jSONObject.optLong("t", 0L);
                                    float fRound = Math.round(b.n((float) jSONObject.optDouble("temp", 22.0d), 17.0f, 32.0f) * 2.0f) / 2.0f;
                                    String strOptString4 = jSONObject.optString("zone", "driver");
                                    boolean zV = f.a(strOptString4, "both") ? v(1, fRound) | v(4, fRound) : f.a(strOptString4, "passenger") ? v(4, fRound) : v(1, fRound);
                                    if (zV) {
                                        w("temp", Integer.valueOf(Math.round(fRound)), jOptLong);
                                    }
                                    return p("Temperatura " + strOptString4 + " → " + fRound + " °C", zV);
                                }
                            case -1276666629:
                                if (strOptString.equals("presence")) {
                                    f.b(jSONObject);
                                    String strOptString5 = jSONObject.optString("key");
                                    if (jSONObject.has("on")) {
                                        zOptBoolean = jSONObject.optBoolean("on");
                                    } else if (jSONObject.optInt("value", 2) != 1) {
                                        zOptBoolean = false;
                                    }
                                    f.b(strOptString5);
                                    return u(strOptString5, zOptBoolean);
                                }
                            case -1224310608:
                                if (strOptString.equals("list_logs")) {
                                    return j();
                                }
                            case -1092342563:
                                if (strOptString.equals("stream_offer")) {
                                    String str3 = "pip";
                                    String strOptString6 = jSONObject != null ? jSONObject.optString("display", "pip") : null;
                                    if (strOptString6 != null) {
                                        str2 = strOptString6;
                                    }
                                    if (str2.length() != 0) {
                                        str3 = str2;
                                    }
                                    return p(C0097m.b.p(this, str3), true);
                                }
                            case -934938715:
                                if (strOptString.equals("reboot")) {
                                    return q("reboot", 5000, "Reboot enviado");
                                }
                            case 332350963:
                                if (strOptString.equals("aa_deactivate")) {
                                    return q(Y.A(), 30000, "Desativação enviada");
                                }
                            case 708792277:
                                if (strOptString.equals("modo_oficina_restaurar")) {
                                    if (!J3.a(this)) {
                                        return p("não estava em modo oficina", true);
                                    }
                                    I3 i3H = J3.h(this, "celular");
                                    return p(i3H.b, i3H.f626a);
                                }
                            case 1086287876:
                                if (strOptString.equals("hvac_fan")) {
                                    f.b(jSONObject);
                                    long jOptLong2 = jSONObject.optLong("t", 0L);
                                    int iO = b.o(jSONObject.optInt("level", 3), 0, 8);
                                    CarPropertyManager carPropertyManager = this.f;
                                    if (carPropertyManager != null) {
                                        Integer num = this.f2423i;
                                        if (num != null) {
                                            try {
                                                carPropertyManager.setIntProperty(356517120, num.intValue(), iO);
                                                break;
                                            } catch (Exception unused) {
                                                this.f2423i = null;
                                                iArr = this.f2424j;
                                                length = iArr.length;
                                                i2 = 0;
                                                while (true) {
                                                    if (i2 < length) {
                                                        int i3 = iArr[i2];
                                                        try {
                                                            carPropertyManager.setIntProperty(356517120, i3, iO);
                                                            this.f2423i = Integer.valueOf(i3);
                                                        } catch (Exception unused2) {
                                                            i2++;
                                                        }
                                                    } else {
                                                        zOptBoolean = false;
                                                    }
                                                }
                                            }
                                        } else {
                                            iArr = this.f2424j;
                                            length = iArr.length;
                                            i2 = 0;
                                            while (true) {
                                                if (i2 < length) {
                                                    int i4 = iArr[i2];
                                                    carPropertyManager.setIntProperty(356517120, i4, iO);
                                                    this.f2423i = Integer.valueOf(i4);
                                                } else {
                                                    zOptBoolean = false;
                                                }
                                            }
                                        }
                                    } else {
                                        zOptBoolean = false;
                                    }
                                    if (zOptBoolean) {
                                        w("fan", Integer.valueOf(iO), jOptLong2);
                                    }
                                    return p("Ventilação → " + iO, zOptBoolean);
                                }
                            case 1221111409:
                                if (strOptString.equals("lock_doors")) {
                                    f.b(jSONObject);
                                    return t(jSONObject.optBoolean("lock", true));
                                }
                            case 1349493379:
                                if (strOptString.equals("windows")) {
                                    f.b(jSONObject);
                                    boolean zOptBoolean2 = jSONObject.optBoolean("open", false);
                                    CarPropertyManager carPropertyManager2 = this.f;
                                    if (carPropertyManager2 == null) {
                                        z2 = false;
                                    } else {
                                        int i5 = zOptBoolean2 ? 100 : 0;
                                        z2 = false;
                                        for (int i6 : AbstractC0121q.b) {
                                            try {
                                                carPropertyManager2.setIntProperty(322964416, i6, i5);
                                                z2 = true;
                                            } catch (Exception unused3) {
                                            }
                                        }
                                    }
                                    return p(zOptBoolean2 ? "Janelas abrindo" : "Janelas fechando", z2);
                                }
                            case 1627464033:
                                if (strOptString.equals("stream_stop")) {
                                    C0105n1 c0105n1 = C0097m.f1049i;
                                    if (c0105n1 != null) {
                                        c0105n1.g("phone-request");
                                    }
                                    return p("ExSapoCast encerrado", true);
                                }
                            case 1774209684:
                                if (strOptString.equals("modo_oficina_ocultar")) {
                                    if (J3.a(this)) {
                                        return p("já estava em modo oficina", true);
                                    }
                                    I3 i3F = J3.f(this, jSONObject != null ? jSONObject.optInt("horas", 24) : 24);
                                    return p(i3F.b, i3F.f626a);
                                }
                            case 1973874547:
                                if (strOptString.equals("set_setting")) {
                                    f.b(jSONObject);
                                    return a(jSONObject);
                                }
                            case 2044057256:
                                if (strOptString.equals("ac_power")) {
                                    f.b(jSONObject);
                                    long jOptLong3 = jSONObject.optLong("t", 0L);
                                    boolean zOptBoolean3 = jSONObject.optBoolean("on", true);
                                    CarPropertyManager carPropertyManager3 = this.f;
                                    if (carPropertyManager3 == null) {
                                        zOptBoolean = false;
                                    } else {
                                        int[] iArr3 = AbstractC0121q.f;
                                        int length2 = iArr3.length;
                                        int i7 = 0;
                                        while (true) {
                                            if (i7 < length2) {
                                                try {
                                                    carPropertyManager3.setBooleanProperty(358613145, iArr3[i7], zOptBoolean3);
                                                } catch (Exception unused4) {
                                                    i7++;
                                                }
                                            } else {
                                                int[] iArr4 = AbstractC0121q.f;
                                                int length3 = iArr4.length;
                                                int i8 = 0;
                                                while (true) {
                                                    if (i8 < length3) {
                                                        try {
                                                            carPropertyManager3.setIntProperty(358613145, iArr4[i8], zOptBoolean3 ? 1 : 0);
                                                        } catch (Exception unused5) {
                                                            i8++;
                                                        }
                                                    } else {
                                                        zOptBoolean = false;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (zOptBoolean) {
                                        w("ac", Boolean.valueOf(zOptBoolean3), jOptLong3);
                                    }
                                    return p(zOptBoolean3 ? "A/C ligado" : "A/C desligado", zOptBoolean);
                                }
                            default:
                        }
                    } catch (Exception e2) {
                        JSONObject jSONObjectPut = new JSONObject().put("ok", false);
                        String message = e2.getMessage();
                        if (message == null) {
                            message = e2.getClass().getSimpleName();
                        }
                        return jSONObjectPut.put("error", message);
                    }
                }
                break;
            case 3441010:
                if (str.equals("ping")) {
                    JSONObject jSONObjectPut2 = new JSONObject().put("ok", true).put("service", "TelaPretaSync").put("protocol", 1).put("device", "central");
                    f.d(jSONObjectPut2, "put(...)");
                    return jSONObjectPut2;
                }
                break;
            case 103785528:
                if (str.equals("merge")) {
                    JSONObject jSONObjectPut3 = d().put("ok", true).put("applied", 0);
                    f.d(jSONObjectPut3, "put(...)");
                    return jSONObjectPut3;
                }
                break;
            case 109757585:
                if (str.equals("state")) {
                    JSONObject jSONObjectPut4 = d().put("ok", true);
                    f.d(jSONObjectPut4, "put(...)");
                    return jSONObjectPut4;
                }
                break;
        }
        JSONObject jSONObjectPut5 = new JSONObject().put("ok", false).put("error", "op desconhecida: ".concat(str));
        f.d(jSONObjectPut5, "put(...)");
        return jSONObjectPut5;
    }

    public final JSONObject j() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator it = b().iterator();
        while (it.hasNext()) {
            jSONArray.put(e((File) it.next()));
        }
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = c().iterator();
        while (it2.hasNext()) {
            jSONArray2.put(e((File) it2.next()));
        }
        JSONObject jSONObjectPut = new JSONObject().put("ok", true).put("logger", jSONArray2).put("telapretacentral", jSONArray);
        f.d(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public final Boolean l() {
        CarPropertyManager carPropertyManager = this.f;
        if (carPropertyManager == null) {
            return null;
        }
        for (int i2 : AbstractC0121q.f) {
            Boolean boolA = U.a(carPropertyManager, 358613145, i2);
            if (boolA != null) {
                return boolA;
            }
        }
        for (int i3 : AbstractC0121q.f) {
            Integer numC = U.c(carPropertyManager, 358613145, i3);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    public final Integer n() {
        CarPropertyManager carPropertyManager = this.f;
        if (carPropertyManager == null) {
            return null;
        }
        Integer num = this.f2423i;
        for (int i2 : num != null ? new int[]{num.intValue()} : this.f2424j) {
            Integer numC = U.c(carPropertyManager, 356517120, i2);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        NotificationChannel notificationChannel = new NotificationChannel("phone_sync", getString(R.string.k_phonesync_channel), 2);
        Object systemService = getSystemService("notification");
        f.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        Q3.f768a.b(this);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f2417a = false;
        f2416v = false;
        try {
            ServerSocket serverSocket = this.b;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (Exception unused) {
        }
        try {
            BluetoothServerSocket bluetoothServerSocket = this.f2418c;
            if (bluetoothServerSocket != null) {
                bluetoothServerSocket.close();
            }
        } catch (Exception unused2) {
        }
        this.f2419d.shutdownNow();
        try {
            Car car = this.f2420e;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused3) {
        }
        this.f2420e = null;
        this.f = null;
        this.f2421g = null;
        this.f2422h = null;
        Log.i("PhoneSyncService", "PhoneSyncService destruído");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        String string = getString(R.string.k_phonesync_notif_text, 47801);
        f.d(string, "getString(...)");
        Notification notificationBuild = new Notification.Builder(this, "phone_sync").setSmallIcon(android.R.drawable.stat_sys_data_bluetooth).setContentTitle(getString(R.string.k_phonesync_notif_title)).setContentText(string).build();
        f.d(notificationBuild, "build(...)");
        startForeground(52, notificationBuild);
        if (f2416v) {
            return 1;
        }
        f2416v = true;
        this.f2417a = true;
        try {
            this.f2420e = Car.createCar(this, null, 0L, new C0134s1(this, 3));
        } catch (Exception e2) {
            Log.e("PhoneSyncService", "connectCar: " + e2.getMessage());
        }
        final int i4 = 0;
        Thread thread = new Thread(new Runnable(this) { // from class: T.R3
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Float fB;
                switch (i4) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f2416v;
                        phoneSyncService.getClass();
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f2417a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.f2419d.execute(new H(phoneSyncService, 26, socketAccept));
                                        }
                                        break;
                                    }
                                    A.b.m(serverSocket, null);
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        A.b.m(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e3) {
                                if (phoneSyncService.f2417a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e3.getMessage());
                                }
                            }
                            phoneSyncService.b = null;
                            return;
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f2416v;
                        phoneSyncService2.getClass();
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f2417a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f2418c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f2417a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.f2419d.execute(new H(bluetoothSocketAccept, 25, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e4) {
                                    if (phoneSyncService2.f2417a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e4.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f2418c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f2418c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f2418c = null;
                                throw th4;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f2417a) {
                            try {
                                Integer numN = phoneSyncService3.n();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f;
                                Integer numValueOf = (carPropertyManager == null || (fB = U.b(carPropertyManager, 624955446, 1)) == null) ? null : Integer.valueOf(Math.round(fB.floatValue()));
                                Boolean boolL = phoneSyncService3.l();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f2425k) {
                                    if (numN != null) {
                                        try {
                                            if (!numN.equals(phoneSyncService3.f2426l)) {
                                                phoneSyncService3.f2426l = numN;
                                                phoneSyncService3.f2427m = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f2428n)) {
                                        phoneSyncService3.f2428n = numValueOf;
                                        phoneSyncService3.f2429o = jCurrentTimeMillis;
                                    }
                                    if (boolL != null && !boolL.equals(phoneSyncService3.f2430p)) {
                                        phoneSyncService3.f2430p = boolL;
                                        phoneSyncService3.f2431q = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-tcp");
        thread.setDaemon(true);
        thread.start();
        final int i5 = 1;
        Thread thread2 = new Thread(new Runnable(this) { // from class: T.R3
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Float fB;
                switch (i5) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f2416v;
                        phoneSyncService.getClass();
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f2417a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.f2419d.execute(new H(phoneSyncService, 26, socketAccept));
                                        }
                                        break;
                                    }
                                    A.b.m(serverSocket, null);
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        A.b.m(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e3) {
                                if (phoneSyncService.f2417a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e3.getMessage());
                                }
                            }
                            phoneSyncService.b = null;
                            return;
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f2416v;
                        phoneSyncService2.getClass();
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f2417a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f2418c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f2417a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.f2419d.execute(new H(bluetoothSocketAccept, 25, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e4) {
                                    if (phoneSyncService2.f2417a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e4.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f2418c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f2418c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f2418c = null;
                                throw th4;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f2417a) {
                            try {
                                Integer numN = phoneSyncService3.n();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f;
                                Integer numValueOf = (carPropertyManager == null || (fB = U.b(carPropertyManager, 624955446, 1)) == null) ? null : Integer.valueOf(Math.round(fB.floatValue()));
                                Boolean boolL = phoneSyncService3.l();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f2425k) {
                                    if (numN != null) {
                                        try {
                                            if (!numN.equals(phoneSyncService3.f2426l)) {
                                                phoneSyncService3.f2426l = numN;
                                                phoneSyncService3.f2427m = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f2428n)) {
                                        phoneSyncService3.f2428n = numValueOf;
                                        phoneSyncService3.f2429o = jCurrentTimeMillis;
                                    }
                                    if (boolL != null && !boolL.equals(phoneSyncService3.f2430p)) {
                                        phoneSyncService3.f2430p = boolL;
                                        phoneSyncService3.f2431q = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-bt");
        thread2.setDaemon(true);
        thread2.start();
        final int i6 = 2;
        Thread thread3 = new Thread(new Runnable(this) { // from class: T.R3
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Float fB;
                switch (i6) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f2416v;
                        phoneSyncService.getClass();
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f2417a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.f2419d.execute(new H(phoneSyncService, 26, socketAccept));
                                        }
                                        break;
                                    }
                                    A.b.m(serverSocket, null);
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        A.b.m(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e3) {
                                if (phoneSyncService.f2417a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e3.getMessage());
                                }
                            }
                            phoneSyncService.b = null;
                            return;
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f2416v;
                        phoneSyncService2.getClass();
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f2417a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f2418c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f2417a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.f2419d.execute(new H(bluetoothSocketAccept, 25, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e4) {
                                    if (phoneSyncService2.f2417a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e4.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f2418c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f2418c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f2418c = null;
                                throw th4;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f2417a) {
                            try {
                                Integer numN = phoneSyncService3.n();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f;
                                Integer numValueOf = (carPropertyManager == null || (fB = U.b(carPropertyManager, 624955446, 1)) == null) ? null : Integer.valueOf(Math.round(fB.floatValue()));
                                Boolean boolL = phoneSyncService3.l();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f2425k) {
                                    if (numN != null) {
                                        try {
                                            if (!numN.equals(phoneSyncService3.f2426l)) {
                                                phoneSyncService3.f2426l = numN;
                                                phoneSyncService3.f2427m = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f2428n)) {
                                        phoneSyncService3.f2428n = numValueOf;
                                        phoneSyncService3.f2429o = jCurrentTimeMillis;
                                    }
                                    if (boolL != null && !boolL.equals(phoneSyncService3.f2430p)) {
                                        phoneSyncService3.f2430p = boolL;
                                        phoneSyncService3.f2431q = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-hvac");
        thread3.setDaemon(true);
        thread3.start();
        Log.i("PhoneSyncService", "PhoneSyncService iniciado");
        return 1;
    }

    public final void s(JSONObject jSONObject, OutputStream outputStream) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null) {
            try {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("logger");
            } catch (Throwable th) {
                d0.r(th, new StringBuilder("servirZipDeLogs: "), "PhoneSyncService");
                try {
                    JSONObject jSONObjectPut = new JSONObject().put("ok", false);
                    String message = th.getMessage();
                    if (message == null) {
                        message = "falha ao montar o zip";
                    }
                    String string = jSONObjectPut.put("error", message).toString();
                    f.d(string, "toString(...)");
                    x(outputStream, string, 500);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
        } else {
            jSONArrayOptJSONArray = null;
        }
        Set setK = k(jSONArrayOptJSONArray);
        Set setK2 = k(jSONObject != null ? jSONObject.optJSONArray("telapretacentral") : null);
        List listC = c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC) {
            if (setK.contains(((File) obj).getName())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayListB = b();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayListB) {
            if (setK2.contains(((File) obj2).getName())) {
                arrayList2.add(obj2);
            }
        }
        ArrayList<File> arrayListE0 = i.e0(arrayList, arrayList2);
        if (arrayListE0.isEmpty()) {
            String string2 = new JSONObject().put("ok", false).put("error", "nenhum log válido escolhido").toString();
            f.d(string2, "toString(...)");
            x(outputStream, string2, 400);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
        try {
            for (File file : arrayListE0) {
                try {
                    zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        b.t(fileInputStream, zipOutputStream);
                        b.m(fileInputStream, null);
                        zipOutputStream.closeEntry();
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            b.m(fileInputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    Log.w("PhoneSyncService", "logs_zip: " + file.getName() + " falhou: " + th4.getMessage());
                }
            }
            b.m(zipOutputStream, null);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            L3.f671a.b("PhoneSyncService", "logs_zip: " + arrayListE0.size() + " arquivo(s), " + (byteArray.length / 1024) + " KB");
            StringBuilder sb = new StringBuilder();
            sb.append("HTTP/1.1 200 OK\r\nContent-Type: application/zip\r\nContent-Length: ");
            sb.append(byteArray.length);
            sb.append("\r\nConnection: close\r\n\r\n");
            String string3 = sb.toString();
            Charset charset = StandardCharsets.UTF_8;
            f.d(charset, "UTF_8");
            byte[] bytes = string3.getBytes(charset);
            f.d(bytes, "getBytes(...)");
            outputStream.write(bytes);
            outputStream.write(byteArray);
            outputStream.flush();
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                b.m(zipOutputStream, th5);
                throw th6;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JSONObject t(boolean z2) throws JSONException {
        Object next;
        Integer numC;
        String string;
        String str;
        Exception e2;
        CarPropertyManager carPropertyManager = this.f;
        if (carPropertyManager == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "sem CarPropertyManager");
            f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String str2 = z2 ? "trancar" : "destrancar";
        List listT = j.T(new a(557883730, "0x2140a152"), new a(557884961, "0x2140a621"));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listT.iterator();
        String str3 = "";
        while (true) {
            next = null;
            if (!it.hasNext()) {
                numC = null;
                break;
            }
            a aVar = (a) it.next();
            int iIntValue = ((Number) aVar.f4155a).intValue();
            String str4 = (String) aVar.b;
            try {
                carPropertyManager.setIntProperty(iIntValue, 0, z2 ? 1 : 0);
                try {
                    Thread.sleep(200L);
                } catch (Exception unused) {
                }
                try {
                    numC = U.c(carPropertyManager, iIntValue, 0);
                    str3 = str4;
                    break;
                } catch (Exception e3) {
                    e2 = e3;
                    str = str4;
                    StringBuilder sbI = d0.i(str4, ": ");
                    String message = e2.getMessage();
                    if (message == null) {
                        message = e2.getClass().getSimpleName();
                    }
                    sbI.append(message);
                    linkedHashSet.add(sbI.toString());
                    str3 = str;
                }
            } catch (Exception e4) {
                str = str3;
                e2 = e4;
            }
            sbI.append(message);
            linkedHashSet.add(sbI.toString());
            str3 = str;
        }
        boolean z3 = str3.length() > 0;
        if (!z3) {
            StringBuilder sbJ = d0.j("Trava (", str2, "): nenhuma prop aceitou a escrita (");
            if (linkedHashSet instanceof List) {
                List list = (List) linkedHashSet;
                if (!list.isEmpty()) {
                    next = list.get(0);
                }
            } else {
                Iterator it2 = linkedHashSet.iterator();
                if (it2.hasNext()) {
                    next = it2.next();
                }
            }
            String str5 = (String) next;
            if (str5 == null) {
                str5 = "?";
            }
            sbJ.append(str5);
            sbJ.append(')');
            string = sbJ.toString();
        } else if (numC != null) {
            string = "Trava (" + str2 + "): escrito " + str3 + '=' + (z2 ? 1 : 0) + ", relê=" + numC + " — confira se o carro respondeu";
        } else {
            string = "Trava (" + str2 + "): escrito " + str3 + '=' + (z2 ? 1 : 0) + " (prop não legível) — confira no carro";
        }
        Log.i("PhoneSyncService", "lock_doors lock=" + z2 + " prop=" + str3 + " wrote=" + z3 + " readBack=" + numC + " errs=" + linkedHashSet);
        JSONObject jSONObjectPut2 = new JSONObject().put("ok", z3).put("message", string).put("wrote", z3).put("prop", str3).put("value", z2 ? 1 : 0);
        if (numC != null) {
            jSONObjectPut2.put("after", numC.intValue());
        }
        if (!linkedHashSet.isEmpty()) {
            jSONObjectPut2.put("error", i.d0(linkedHashSet, "; ", null, null, null, 62));
        }
        if (!z3) {
            jSONObjectPut2.put("error", string);
        }
        f.b(jSONObjectPut2);
        return jSONObjectPut2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.Map] */
    public final JSONObject u(String str, boolean z2) throws JSONException {
        Integer numC;
        String message;
        boolean z3;
        String strConcat;
        T3 t3 = (T3) this.f2432r.get(str);
        boolean z4 = false;
        if (t3 == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "chave desconhecida: ".concat(str));
            f.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        CarPropertyManager carPropertyManager = this.f;
        if (carPropertyManager == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "sem CarPropertyManager");
            f.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        int i2 = z2 ? t3.f802d : t3.f803e;
        CarPropertyManager carPropertyManager2 = this.f;
        Integer numC2 = null;
        if (carPropertyManager2 != null) {
            ExecutorService executorService = U.f804a;
            numC = U.c(carPropertyManager2, t3.f800a, t3.b);
        } else {
            numC = null;
        }
        try {
            carPropertyManager.setIntProperty(t3.f800a, t3.b, i2);
            message = null;
            z3 = true;
        } catch (Exception e2) {
            message = e2.getMessage();
            if (message == null) {
                message = e2.getClass().getSimpleName();
            }
            z3 = false;
        }
        try {
            Thread.sleep(200L);
        } catch (Exception unused) {
        }
        CarPropertyManager carPropertyManager3 = this.f;
        if (carPropertyManager3 != null) {
            ExecutorService executorService2 = U.f804a;
            numC2 = U.c(carPropertyManager3, t3.f800a, t3.b);
        }
        boolean z5 = numC2 != null;
        boolean z6 = z5 && numC2 != null && numC2.intValue() == i2;
        if (z3 && (z6 || !z5)) {
            z4 = true;
        }
        if (!z3) {
            StringBuilder sb = new StringBuilder();
            sb.append(t3.f801c);
            sb.append(": erro ao escrever (");
            sb.append(message == null ? "?" : message);
            sb.append(')');
            strConcat = sb.toString();
        } else if (z6) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(t3.f801c);
            sb2.append(": ");
            strConcat = d0.g(sb2, z2 ? "ligado" : "desligado", " ✓ confirmado");
        } else if (z5) {
            strConcat = t3.f801c + ": NÃO persistiu (pedido=" + i2 + ", carro=" + numC2 + ") — VHAL ignorou";
        } else {
            strConcat = t3.f801c.concat(": escrito, mas o carro não expõe leitura p/ confirmar");
        }
        StringBuilder sbJ = d0.j("presence ", str, " prop=");
        sbJ.append(t3.f800a);
        sbJ.append(" area=");
        sbJ.append(t3.b);
        sbJ.append(" target=");
        sbJ.append(i2);
        sbJ.append(" before=");
        sbJ.append(numC);
        sbJ.append(" after=");
        sbJ.append(numC2);
        sbJ.append(" wrote=");
        sbJ.append(z3);
        sbJ.append(" confirmed=");
        sbJ.append(z6);
        sbJ.append(" err=");
        sbJ.append(message);
        Log.i("PhoneSyncService", sbJ.toString());
        JSONObject jSONObjectPut3 = new JSONObject().put("ok", z4).put("message", strConcat).put("wrote", z3).put("target", i2).put("readable", z5).put("confirmed", z6);
        if (numC != null) {
            jSONObjectPut3.put("before", numC.intValue());
        }
        if (numC2 != null) {
            jSONObjectPut3.put("after", numC2.intValue());
        }
        if (message != null) {
            jSONObjectPut3.put("error", message);
        }
        if (!z4 && message == null) {
            jSONObjectPut3.put("error", strConcat);
        }
        f.b(jSONObjectPut3);
        return jSONObjectPut3;
    }

    public final boolean v(int i2, float f) {
        e eVar;
        try {
            CarPropertyManager carPropertyManager = this.f;
            if (carPropertyManager != null) {
                carPropertyManager.setFloatProperty(624955446, i2, f);
                eVar = e.f4161c;
            } else {
                eVar = null;
            }
            return eVar != null;
        } catch (Exception e2) {
            Log.w("PhoneSyncService", "setZoneTemp area=0x" + Integer.toHexString(i2) + ": " + e2.getMessage());
            return false;
        }
    }

    public final void w(String str, Object obj, long j2) {
        if (j2 <= 0) {
            j2 = System.currentTimeMillis();
        }
        synchronized (this.f2425k) {
            try {
                int iHashCode = str.hashCode();
                if (iHashCode != 3106) {
                    if (iHashCode != 101139) {
                        if (iHashCode == 3556308 && str.equals("temp")) {
                            this.f2428n = (Integer) obj;
                            this.f2429o = j2;
                        }
                    } else if (str.equals("fan")) {
                        this.f2426l = (Integer) obj;
                        this.f2427m = j2;
                    }
                } else if (str.equals("ac")) {
                    this.f2430p = (Boolean) obj;
                    this.f2431q = j2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
