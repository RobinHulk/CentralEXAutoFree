package T;

import android.app.AlertDialog;
import android.bluetooth.BluetoothSocket;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import p007e.AbstractC0201a;
import p007e.C0205e;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f603a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f604c;

    public /* synthetic */ H(ContextWrapper contextWrapper, SharedPreferences sharedPreferences, int i2) {
        this.f603a = i2;
        this.f604c = contextWrapper;
        this.b = sharedPreferences;
    }

    private final void a() {
        String line;
        JSONObject jSONObjectF;
        BluetoothSocket bluetoothSocket = (BluetoothSocket) this.b;
        PhoneSyncService phoneSyncService = (PhoneSyncService) this.f604c;
        boolean z2 = PhoneSyncService.f2416v;
        try {
            try {
                InputStream inputStream = bluetoothSocket.getInputStream();
                Charset charset = StandardCharsets.UTF_8;
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charset));
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(bluetoothSocket.getOutputStream(), charset));
                while (true) {
                    JSONObject jSONObject = null;
                    if (!phoneSyncService.f2417a || (line = bufferedReader.readLine()) == null) {
                        break;
                        break;
                    }
                    if (!O0.j.E0(line)) {
                        try {
                            jSONObject = new JSONObject(line);
                        } catch (Exception unused) {
                        }
                        if (jSONObject == null) {
                            jSONObjectF = new JSONObject().put("ok", false).put("error", "JSON inválido");
                        } else {
                            int[] iArr = CentralWatchdogService.d2;
                            CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                            if (centralWatchdogService != null) {
                                long jElapsedRealtime = SystemClock.elapsedRealtime();
                                if (jElapsedRealtime - CentralWatchdogService.j2 >= 20000) {
                                    CentralWatchdogService.j2 = jElapsedRealtime;
                                    centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 2));
                                }
                            }
                            String strOptString = jSONObject.optString("op");
                            I0.f.d(strOptString, "optString(...)");
                            jSONObjectF = phoneSyncService.f(strOptString, jSONObject.optJSONObject("body"));
                        }
                        bufferedWriter.write(jSONObjectF.toString());
                        bufferedWriter.write("\n");
                        bufferedWriter.flush();
                    }
                }
                A.b.m(bluetoothSocket, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    A.b.m(bluetoothSocket, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            M.d0.n(e2, new StringBuilder("cliente BT: "), "PhoneSyncService");
        }
    }

    /* JADX WARN: Code duplicated, block: B:92:0x01e8  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Throwable, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r12v3 */
    private final void b() {
        JSONObject jSONObject;
        JSONObject jSONObjectF;
        JSONObject jSONObject2;
        boolean z2;
        Socket socket = (Socket) this.f604c;
        boolean z3 = PhoneSyncService.f2416v;
        PhoneSyncService phoneSyncService = (PhoneSyncService) this.b;
        phoneSyncService.getClass();
        try {
            try {
                socket.setSoTimeout(20000);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(socket.getInputStream());
                OutputStream outputStream = socket.getOutputStream();
                List listO0 = O0.j.O0(PhoneSyncService.o(bufferedInputStream), new String[]{" "});
                ?? r12 = 0;
                if (listO0.size() < 2) {
                    I0.f.b(outputStream);
                    PhoneSyncService.x(outputStream, "{\"ok\":false,\"error\":\"linha HTTP inválida\"}", 400);
                    A.b.m(socket, null);
                    return;
                }
                ?? r10 = 0;
                String upperCase = ((String) listO0.get(0)).toUpperCase(Locale.ROOT);
                I0.f.d(upperCase, "toUpperCase(...)");
                String str = (String) listO0.get(1);
                long jLongValue = 0;
                while (true) {
                    String strO = PhoneSyncService.o(bufferedInputStream);
                    if (strO.length() == 0) {
                        break;
                    }
                    int iC0 = O0.j.C0(strO, ':', r10, r10, 6);
                    if (iC0 > 0) {
                        String strSubstring = strO.substring(r10, iC0);
                        I0.f.d(strSubstring, "substring(...)");
                        if (O0.s.s0(O0.j.X0(strSubstring).toString(), "content-length")) {
                            z2 = true;
                            String strSubstring2 = strO.substring(iC0 + 1);
                            I0.f.d(strSubstring2, "substring(...)");
                            Long lQ0 = O0.r.q0(O0.j.X0(strSubstring2).toString());
                            jLongValue = lQ0 != null ? lQ0.longValue() : 0L;
                        } else {
                            z2 = true;
                        }
                    } else {
                        z2 = true;
                    }
                    r10 = 0;
                    r12 = 0;
                }
                if (upperCase.equals("POST") && O0.s.w0(str, "/sync/carlock")) {
                    I0.f.b(outputStream);
                    String string = PhoneSyncService.h(bufferedInputStream, str, jLongValue).toString();
                    I0.f.d(string, "toString(...)");
                    PhoneSyncService.x(outputStream, string, 200);
                    A.b.m(socket, r12);
                    return;
                }
                if (upperCase.equals("POST") && O0.s.w0(str, "/sync/avas_sound")) {
                    I0.f.b(outputStream);
                    String string2 = PhoneSyncService.g(bufferedInputStream, str, jLongValue).toString();
                    I0.f.d(string2, "toString(...)");
                    PhoneSyncService.x(outputStream, string2, 200);
                    A.b.m(socket, r12);
                    return;
                }
                if (upperCase.equals("POST") && O0.s.w0(str, "/sync/logs_zip")) {
                    if (1 > jLongValue || jLongValue >= 65537) {
                        jSONObject2 = r12;
                    } else {
                        try {
                            byte[] bArrM = PhoneSyncService.m(bufferedInputStream, (int) jLongValue);
                            Charset charset = StandardCharsets.UTF_8;
                            I0.f.d(charset, "UTF_8");
                            jSONObject2 = new JSONObject(new String(bArrM, charset));
                        } catch (Exception unused) {
                            jSONObject2 = r12;
                        }
                    }
                    I0.f.b(outputStream);
                    phoneSyncService.s(jSONObject2, outputStream);
                    A.b.m(socket, r12);
                    return;
                }
                if (!upperCase.equals("POST") || 1 > jLongValue || jLongValue > 1048576) {
                    jSONObject = r12;
                } else {
                    byte[] bArrM2 = PhoneSyncService.m(bufferedInputStream, (int) jLongValue);
                    try {
                        Charset charset2 = StandardCharsets.UTF_8;
                        I0.f.d(charset2, "UTF_8");
                        jSONObject = new JSONObject(new String(bArrM2, charset2));
                    } catch (Exception unused2) {
                        jSONObject = r12;
                    }
                }
                if (upperCase.equals("GET") && O0.s.w0(str, "/sync/ping")) {
                    jSONObjectF = phoneSyncService.f("ping", r12);
                } else if (upperCase.equals("GET") && O0.s.w0(str, "/sync/state")) {
                    jSONObjectF = phoneSyncService.f("state", r12);
                } else if (upperCase.equals("POST") && O0.s.w0(str, "/sync/merge")) {
                    jSONObjectF = phoneSyncService.f("merge", jSONObject);
                } else {
                    jSONObjectF = (upperCase.equals("POST") && O0.s.w0(str, "/sync/action")) ? phoneSyncService.f("action", jSONObject) : new JSONObject().put("ok", (boolean) r10).put("error", "endpoint não encontrado");
                }
                I0.f.b(outputStream);
                String string3 = jSONObjectF.toString();
                I0.f.d(string3, "toString(...)");
                PhoneSyncService.x(outputStream, string3, 200);
                A.b.m(socket, r12);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    A.b.m(socket, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            M.d0.n(e2, new StringBuilder("handleHttpClient: "), "PhoneSyncService");
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v133, types: [android.view.View, android.widget.ScrollView] */
    /* JADX WARN: Type inference failed for: r10v5, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r1v12, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.app.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r2v74, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v75, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v85, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v46, types: [java.lang.Iterable, java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r7v25, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean z2;
        int i2;
        boolean z3;
        View view;
        View view2;
        GridLayout gridLayout;
        View view3;
        View view4;
        View view5;
        View view6;
        C1 c1;
        CarPropertyManager carPropertyManager;
        Integer numC;
        Float fB;
        String string;
        ?? arrayList;
        boolean zX0;
        Object obj;
        String str = "QuickAccessFloater";
        int i3 = 1;
        switch (this.f603a) {
            case 0:
                try {
                    Y0 y0 = Y0.f854a;
                    String string2 = O0.j.X0(Y0.a()).toString();
                    if (O0.j.E0(string2)) {
                        z2 = true;
                    } else {
                        String strC = J.c();
                        JSONArray jSONArrayOptJSONArray = strC != null ? new JSONObject(strC).optJSONArray("entries") : null;
                        if (strC == null || jSONArrayOptJSONArray == null) {
                            z2 = true;
                        } else {
                            String strB = J.b(string2);
                            Iterable iterableI0 = A.b.i0(0, jSONArrayOptJSONArray.length());
                            if (!(iterableI0 instanceof Collection) || !((Collection) iterableI0).isEmpty()) {
                                Iterator it = iterableI0.iterator();
                                while (true) {
                                    if (((L0.b) it).f136c) {
                                        String strOptString = jSONArrayOptJSONArray.getJSONObject(((L0.b) it).a()).optString("hash", "");
                                        I0.f.b(strOptString);
                                        if (!O0.j.E0(strOptString) && strOptString.equalsIgnoreCase(strB)) {
                                            z2 = true;
                                        }
                                    }
                                }
                            }
                            z2 = false;
                        }
                    }
                } catch (Exception e2) {
                    Log.d("BanChecker", "recheckWhileBlocked: " + e2.getMessage());
                }
                if (z2) {
                    i2 = 0;
                } else {
                    i2 = 0;
                    ((SharedPreferences) this.b).edit().putBoolean("device_banned", false).apply();
                    Log.i("BanChecker", "recheckWhileBlocked: XDSN não está mais na banlist.json — desbloqueado");
                }
                J.b.post(new I((A.c) this.f604c, z2, i2));
                return;
            case 1:
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.b;
                String str2 = (String) this.f604c;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    Thread.sleep(700L);
                    H1.t(carPropertyManager2, true);
                    Log.i("CentralWatchdog", "recircGuard(" + str2 + "): recirc estava ligada — reaplicada");
                    return;
                } catch (Throwable th) {
                    M.d0.r(th, M.d0.j("recircGuard(", str2, ") falhou: "), "CentralWatchdog");
                    return;
                }
            case 2:
                Float fK = null;
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                H0.l lVar = (H0.l) this.f604c;
                if (centralWatchdogService.f2203i == null) {
                    centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 28));
                }
                HashMap map = A4.f474a;
                CarPropertyManager carPropertyManager3 = centralWatchdogService.f2203i;
                if (carPropertyManager3 != null && (fK = A4.k(carPropertyManager3, 289407492)) == null && (fK = A4.k(carPropertyManager3, 291504644)) == null) {
                    fK = A4.k(carPropertyManager3, 557885100);
                }
                if (fK != null) {
                    centralWatchdogService.M().edit().putFloat("trip_start_odometer_km", fK.floatValue()).apply();
                    centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 29));
                }
                if (lVar != null) {
                    lVar.b(Boolean.valueOf(fK != null));
                    return;
                }
                return;
            case 3:
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.b;
                try {
                    centralWatchdogService2.f2229w = H1.i((CarPropertyManager) this.f604c);
                    z3 = false;
                } catch (Throwable unused) {
                    z3 = false;
                }
                centralWatchdogService2.f2231x = z3;
                return;
            case 4:
                H0.a aVar = (H0.a) this.b;
                String str3 = (String) this.f604c;
                ConcurrentHashMap.KeySetView keySetView = U0.b;
                try {
                    aVar.a();
                    return;
                } finally {
                    keySetView.remove(str3);
                }
            case 5:
                ((H0.l) this.b).b(Boolean.valueOf(((I0.i) this.f604c).f122a));
                return;
            case 6:
                new Thread(new V0((MainActivity) this.f604c, (SharedPreferences) this.b)).start();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                List list = HomeFloatingWidgetsService.f2262Q;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                homeFloatingWidgetsService.getClass();
                String str4 = (String) this.f604c;
                switch (str4.hashCode()) {
                    case -2098953079:
                        if (str4.equals("vent_fan") && (view = homeFloatingWidgetsService.f2301y) != null) {
                            homeFloatingWidgetsService.s(view);
                            homeFloatingWidgetsService.f2301y = null;
                            homeFloatingWidgetsService.i();
                            return;
                        }
                        return;
                    case -1737689861:
                        if (str4.equals("sysinfo") && homeFloatingWidgetsService.f2266C != null) {
                            F1 f1 = homeFloatingWidgetsService.f2271H;
                            if (f1 != null) {
                                homeFloatingWidgetsService.f2280c.removeCallbacks(f1);
                            }
                            homeFloatingWidgetsService.f2271H = null;
                            homeFloatingWidgetsService.p();
                            homeFloatingWidgetsService.s(homeFloatingWidgetsService.f2266C);
                            homeFloatingWidgetsService.f2266C = null;
                            homeFloatingWidgetsService.f2269F = null;
                            homeFloatingWidgetsService.f2270G = null;
                            homeFloatingWidgetsService.g();
                            return;
                        }
                        return;
                    case -810883302:
                        if (str4.equals("volume") && homeFloatingWidgetsService.f2265B != null) {
                            homeFloatingWidgetsService.t();
                            homeFloatingWidgetsService.k();
                            return;
                        }
                        return;
                    case 101139:
                        if (str4.equals("fan") && (view2 = homeFloatingWidgetsService.f2298v) != null) {
                            homeFloatingWidgetsService.s(view2);
                            homeFloatingWidgetsService.f2298v = null;
                            homeFloatingWidgetsService.d();
                            return;
                        }
                        return;
                    case 3000946:
                        if (str4.equals("apps") && (gridLayout = homeFloatingWidgetsService.f2264A) != null) {
                            homeFloatingWidgetsService.s(gridLayout);
                            homeFloatingWidgetsService.f2264A = null;
                            homeFloatingWidgetsService.b();
                            return;
                        }
                        return;
                    case 3556308:
                        if (str4.equals("temp") && (view3 = homeFloatingWidgetsService.f2299w) != null) {
                            homeFloatingWidgetsService.s(view3);
                            homeFloatingWidgetsService.f2299w = null;
                            homeFloatingWidgetsService.h();
                            return;
                        }
                        return;
                    case 3615925:
                        if (str4.equals("vent") && (view4 = homeFloatingWidgetsService.f2300x) != null) {
                            homeFloatingWidgetsService.s(view4);
                            homeFloatingWidgetsService.f2300x = null;
                            homeFloatingWidgetsService.j();
                            return;
                        }
                        return;
                    case 726539592:
                        if (str4.equals("drive_regen") && (view5 = homeFloatingWidgetsService.f2297u) != null) {
                            homeFloatingWidgetsService.s(view5);
                            homeFloatingWidgetsService.f2297u = null;
                            homeFloatingWidgetsService.c();
                            return;
                        }
                        return;
                    case 795788274:
                        if (str4.equals("heating") && (view6 = homeFloatingWidgetsService.f2302z) != null) {
                            homeFloatingWidgetsService.s(view6);
                            homeFloatingWidgetsService.f2302z = null;
                            homeFloatingWidgetsService.e();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            case Response.NO /* 8 */:
                List list2 = HomeFloatingWidgetsService.f2262Q;
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                homeFloatingWidgetsService2.getClass();
                try {
                    String strB2 = new I1(5555).b(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                    I0.f.b(strB2);
                    boolean zX1 = O0.j.x0(strB2, "AppListActivity", false);
                    c1 = new C1(O0.j.x0(strB2, "com.flyme.auto.launcher", false) && !zX1, zX1);
                    break;
                } catch (Throwable th2) {
                    Log.w("HomeFloatingWidgets", "checkForegroundState: " + th2.getMessage());
                    c1 = new C1(false, false);
                }
                homeFloatingWidgetsService2.f2280c.post(new RunnableC0168z(c1, homeFloatingWidgetsService2, (F1) this.f604c, 3));
                return;
            case 9:
                Uri uri = (Uri) this.f604c;
                int i4 = InstallerActivity.f2322u;
                InstallerActivity installerActivity = (InstallerActivity) this.b;
                installerActivity.runOnUiThread(new T0(installerActivity, 5));
                try {
                    File fileT = installerActivity.t(uri);
                    installerActivity.runOnUiThread(new H(installerActivity, 10, fileT));
                    String strS = InstallerActivity.s(fileT);
                    installerActivity.runOnUiThread(new RunnableC0148v(installerActivity, O0.j.x0(strS, "Success", true), strS, 1));
                    return;
                } catch (Exception e3) {
                    installerActivity.runOnUiThread(new H(installerActivity, 11, e3));
                    return;
                }
            case 10:
                InstallerActivity installerActivity2 = (InstallerActivity) this.b;
                TextView textView = installerActivity2.f2323t;
                if (textView != null) {
                    textView.setText(installerActivity2.getString(R.string.k_installer_installing, ((File) this.f604c).getName()));
                    return;
                } else {
                    I0.f.h("tvStatus");
                    throw null;
                }
            case 11:
                int i5 = InstallerActivity.f2322u;
                String message = ((Exception) this.f604c).getMessage();
                InstallerActivity installerActivity3 = (InstallerActivity) this.b;
                if (message == null) {
                    message = installerActivity3.getString(R.string.k_installer_unknown_error);
                    I0.f.d(message, "getString(...)");
                }
                installerActivity3.u(message, false);
                return;
            case Response.BAD /* 12 */:
                ScrollView scrollView = ((LyricsFloaterService) this.b).f2338p;
                if (scrollView != null) {
                    View view7 = (View) this.f604c;
                    int height = view7.getHeight() + (view7.getTop() - 260);
                    if (height < 0) {
                        height = 0;
                    }
                    scrollView.smoothScrollTo(0, height);
                    return;
                }
                return;
            case 13:
                Set set = LyricsFloaterService.f2324v;
                ((I0.i) this.b).f122a = true;
                ((LyricsFloaterService) this.f604c).l();
                return;
            case 14:
                MainActivity mainActivity = (MainActivity) this.b;
                DialogC0209i dialogC0209i = (DialogC0209i) this.f604c;
                int i6 = MainActivity.u0;
                StringBuilder sb = new StringBuilder();
                boolean z4 = mainActivity.B0().getBoolean("status_total_km_enabled", false);
                boolean z5 = mainActivity.B0().getBoolean("status_trip_km_enabled", false);
                sb.append("Total ligado: ");
                sb.append(z4 ? "sim" : "não");
                sb.append("\nViagem ligada: ");
                sb.append(z5 ? "sim" : "não");
                sb.append('\n');
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService3 = CentralWatchdogService.g2;
                if (centralWatchdogService3 == null || (carPropertyManager = centralWatchdogService3.f2203i) == null) {
                    CentralWatchdogService centralWatchdogService4 = CentralWatchdogService.g2;
                    if (centralWatchdogService4 == null) {
                        carPropertyManager = null;
                    } else {
                        try {
                            centralWatchdogService4.f2190a.post(new RunnableC0169z0(centralWatchdogService4, 3));
                            long jCurrentTimeMillis = System.currentTimeMillis() + 6000;
                            while (true) {
                                if (System.currentTimeMillis() < jCurrentTimeMillis) {
                                    CarPropertyManager carPropertyManager4 = centralWatchdogService4.f2203i;
                                    if (carPropertyManager4 != null) {
                                        carPropertyManager = carPropertyManager4;
                                    } else {
                                        Thread.sleep(200L);
                                    }
                                } else {
                                    carPropertyManager = centralWatchdogService4.f2203i;
                                }
                            }
                        } catch (InterruptedException unused2) {
                            carPropertyManager = null;
                        }
                    }
                }
                if (carPropertyManager == null) {
                    sb.append("CarPropertyManager: indisponível");
                } else {
                    for (v0.a aVar2 : w0.j.T(new v0.a("0x11400204 (deste IHU)", 289407492), new v0.a("0x11600204 (AOSP)", 291504644), new v0.a("0x2140a6ac (painel)", 557885100))) {
                        String str5 = (String) aVar2.f4155a;
                        int iIntValue = ((Number) aVar2.b).intValue();
                        try {
                            numC = U.c(carPropertyManager, iIntValue, 0);
                        } catch (Throwable unused3) {
                            numC = null;
                        }
                        if (numC == null) {
                            try {
                                fB = U.b(carPropertyManager, iIntValue, 0);
                            } catch (Throwable unused4) {
                                fB = null;
                            }
                        } else {
                            fB = null;
                        }
                        sb.append(str5);
                        sb.append(": ");
                        if (numC == null || (string = numC.toString()) == null) {
                            string = fB != null ? fB.toString() : "—";
                        }
                        sb.append(string);
                        sb.append('\n');
                        break;
                    }
                    float f = mainActivity.B0().getFloat("trip_start_odometer_km", -1.0f);
                    sb.append("Início da viagem gravado: ");
                    sb.append(f <= 0.0f ? "não definido" : String.valueOf(Math.round(f)));
                }
                mainActivity.f2387v.post(new RunnableC0168z(mainActivity, dialogC0209i, sb, 8));
                return;
            case 15:
                int i7 = MainActivity.u0;
                if (((MainActivity) this.b).isFinishing()) {
                    return;
                }
                ((View) this.f604c).setEnabled(true);
                return;
            case Response.BYE /* 16 */:
                MainActivity mainActivity2 = (MainActivity) this.b;
                mainActivity2.f2389x.clear();
                ArrayList arrayList2 = mainActivity2.f2389x;
                ?? r3 = this.f604c;
                arrayList2.addAll(r3);
                if (r3.isEmpty()) {
                    arrayList = AbstractC0201a.G(mainActivity2.getString(R.string.k_no_wav_loaded));
                } else {
                    arrayList = new ArrayList(w0.k.V(r3));
                    Iterator it2 = r3.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(O0.j.S0((String) it2.next(), '/'));
                    }
                }
                ArrayAdapter arrayAdapter = new ArrayAdapter(mainActivity2, android.R.layout.simple_spinner_item, (List) arrayList);
                arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                U.a aVar3 = mainActivity2.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.E1.setAdapter((SpinnerAdapter) arrayAdapter);
                U.a aVar4 = mainActivity2.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar4.f1301i.setEnabled(!r3.isEmpty());
                U.a aVar5 = mainActivity2.f2384t;
                if (aVar5 != null) {
                    aVar5.f1303j.setEnabled(!r3.isEmpty());
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 17:
                int i8 = MainActivity.u0;
                MainActivity mainActivity3 = (MainActivity) this.b;
                if (mainActivity3.isFinishing()) {
                    return;
                }
                C0103n c0103n = new C0103n(27);
                ArrayList arrayList3 = (ArrayList) this.f604c;
                String strD0 = w0.i.d0(arrayList3, "\n\n", null, null, c0103n, 30);
                C0081j1 c0081j1 = new C0081j1(mainActivity3);
                String string3 = mainActivity3.getString(R.string.k_dep_update_title);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string3;
                c0205e.f = mainActivity3.getString(R.string.k_dep_update_message, strD0);
                c0081j1.h(mainActivity3.getString(R.string.k_dep_update_go), new F2(mainActivity3, arrayList3, 2));
                c0081j1.f(mainActivity3.getString(R.string.common_not_now), new F2(mainActivity3, arrayList3, 3));
                c0081j1.j();
                return;
            case 18:
                int i9 = MainActivity.u0;
                I3 i10 = (I3) ((H0.a) this.b).a();
                MainActivity mainActivity4 = (MainActivity) this.f604c;
                mainActivity4.runOnUiThread(new H(mainActivity4, 20, i10));
                return;
            case 19:
                int i11 = MainActivity.u0;
                ((W1) this.b).b(Boolean.valueOf(((I0.i) this.f604c).f122a));
                return;
            case 20:
                MainActivity mainActivity5 = (MainActivity) this.b;
                U.a aVar6 = mainActivity5.f2384t;
                if (aVar6 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar6.f1278Q.setEnabled(true);
                mainActivity5.p1();
                C0081j1 c0081j2 = new C0081j1(mainActivity5);
                String string4 = mainActivity5.getString(R.string.xml_modo_oficina);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f2991d = string4;
                c0205e2.f = ((I3) this.f604c).b;
                c0081j2.h(mainActivity5.getString(R.string.common_ok), null);
                c0081j2.j();
                return;
            case 21:
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                B.b bVar = (B.b) this.f604c;
                try {
                    if (mediaBarFloaterService.getSharedPreferences("tela_preta_prefs", 0).getBoolean("media_bar_floater_pinned", false)) {
                        zX0 = false;
                    } else if (mediaBarFloaterService.f2401k == null) {
                        zX0 = mediaBarFloaterService.f2409s;
                    } else {
                        String strB3 = new I1(5555).b(3000, "dumpsys window windows 2>/dev/null | sed -n '/Window{.*CarNavigationBar}/,/mWindowRemovalAllowed/p' | grep -o 'isReadyForDisplay()=[a-z]*'");
                        I0.f.b(strB3);
                        zX0 = O0.j.E0(strB3) ? mediaBarFloaterService.f2409s : O0.j.x0(strB3, "=false", false);
                    }
                    break;
                } catch (Throwable unused5) {
                    zX0 = mediaBarFloaterService.f2409s;
                }
                mediaBarFloaterService.f2394c.post(new RunnableC0148v(zX0, mediaBarFloaterService, bVar, 5));
                return;
            case 22:
                MediaCenterAPI mediaCenterAPI = (MediaCenterAPI) this.b;
                if (mediaCenterAPI != null && (obj = this.f604c) != null) {
                    try {
                        mediaCenterAPI.unregister(obj);
                        break;
                    } catch (Throwable unused6) {
                    }
                }
                if (mediaCenterAPI != null) {
                    try {
                        mediaCenterAPI.destroy();
                        return;
                    } catch (Throwable unused7) {
                        return;
                    }
                }
                return;
            case 23:
                Context context = (Context) this.b;
                ModoOficinaTriggerService modoOficinaTriggerService = (ModoOficinaTriggerService) this.f604c;
                ModoOficinaTriggerService modoOficinaTriggerService2 = ModoOficinaTriggerService.f;
                List list3 = J3.f637a;
                I0.f.b(context);
                I3 i3H = J3.h(context, "gesto");
                modoOficinaTriggerService.f2415e = false;
                new Handler(modoOficinaTriggerService.getMainLooper()).post(new H(context, 24, i3H));
                return;
            case 24:
                ModoOficinaTriggerService modoOficinaTriggerService3 = ModoOficinaTriggerService.f;
                Toast.makeText((Context) this.b, ((I3) this.f604c).b, 1).show();
                return;
            case 25:
                a();
                return;
            case 26:
                b();
                return;
            case 27:
                boolean z6 = PhoneSyncService.f2416v;
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                C0097m.x((PhoneSyncService) this.f604c, sharedPreferences.getBoolean("hvac_digital_temp", false), sharedPreferences.getBoolean("hvac_digital_batt", false), sharedPreferences.getBoolean("hvac_digital_ext_temp", false), null);
                return;
            case Response.TYPE_MASK /* 28 */:
                CarPropertyManager carPropertyManager5 = (CarPropertyManager) this.b;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f604c;
                List list4 = QuickAccessFloaterService.f2436j0;
                try {
                    carPropertyManager5.setProperty(Integer.class, 557885179, 0, 2);
                    Log.i("QuickAccessFloater", "sendPowerOff: MMI_POWER_ON_OFF_REQ=2 escrito com sucesso");
                    return;
                } catch (Exception e4) {
                    Log.w("QuickAccessFloater", "sendPowerOff: falhou escrever a property (" + e4.getMessage() + "), tentando broadcast como fallback");
                    try {
                        quickAccessFloaterService.b(8000, "am broadcast -a com.flyme.auto.settings.action.CAR_POWER_OFF");
                        return;
                    } catch (Exception unused8) {
                        return;
                    }
                }
            default:
                List list5 = QuickAccessFloaterService.f2436j0;
                List list6 = (List) this.b;
                boolean zIsEmpty = list6.isEmpty();
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.f604c;
                if (zIsEmpty) {
                    Toast.makeText(quickAccessFloaterService2, quickAccessFloaterService2.getString(R.string.k_close_apps_none_running), 0).show();
                    return;
                }
                Set setL0 = w0.i.l0(Y.X(quickAccessFloaterService2));
                int size = list6.size();
                boolean[] zArr = new boolean[size];
                for (int i12 = 0; i12 < size; i12++) {
                    zArr[i12] = !setL0.contains(((v0.d) list6.get(i12)).f4159a);
                }
                I0.l lVar2 = new I0.l(0);
                ?? linearLayout = new LinearLayout(quickAccessFloaterService2);
                linearLayout.setOrientation(1);
                Button button = new Button(quickAccessFloaterService2);
                button.setText("🔒 " + quickAccessFloaterService2.getString(R.string.k_close_apps_manage_whitelist));
                button.setAllCaps(false);
                button.setTextSize(16.0f);
                button.setBackgroundTintList(ColorStateList.valueOf(quickAccessFloaterService2.getColor(R.color.cx_accent)));
                button.setTextColor(quickAccessFloaterService2.getColor(R.color.cx_on_accent));
                button.setOnClickListener(new ViewOnClickListenerC0030a4(quickAccessFloaterService2, lVar2, i3));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, quickAccessFloaterService2.p(48));
                layoutParams.bottomMargin = quickAccessFloaterService2.p(14);
                linearLayout.addView(button, layoutParams);
                ?? linearLayout2 = new LinearLayout(quickAccessFloaterService2);
                linearLayout2.setOrientation(1);
                Iterator it3 = list6.iterator();
                int i13 = 0;
                while (it3.hasNext()) {
                    int i14 = i13 + 1;
                    v0.d dVar = (v0.d) it3.next();
                    String str6 = (String) dVar.f4159a;
                    String str7 = (String) dVar.b;
                    Drawable drawable = (Drawable) dVar.f4160c;
                    boolean z7 = i13 == 0;
                    boolean z8 = zArr[i13];
                    Iterator it4 = it3;
                    final C0072h4 c0072h4 = new C0072h4(zArr, i13);
                    boolean zContains = setL0.contains(str6);
                    Set set2 = setL0;
                    final J2 j2 = new J2(quickAccessFloaterService2, 2, str6);
                    ?? linearLayout3 = new LinearLayout(quickAccessFloaterService2);
                    linearLayout3.setOrientation(0);
                    linearLayout3.setGravity(16);
                    linearLayout3.setClickable(true);
                    linearLayout3.setFocusable(true);
                    linearLayout3.setBackgroundResource(R.drawable.bg_preset_chip);
                    linearLayout3.setBackgroundTintList(ColorStateList.valueOf(quickAccessFloaterService2.getColor(R.color.cx_surface_alt)));
                    String str8 = str;
                    I0.l lVar3 = lVar2;
                    List list7 = list6;
                    linearLayout3.setPadding(quickAccessFloaterService2.p(16), quickAccessFloaterService2.p(16), quickAccessFloaterService2.p(16), quickAccessFloaterService2.p(16));
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = z7 ? 0 : quickAccessFloaterService2.p(10);
                    linearLayout3.setLayoutParams(layoutParams2);
                    ImageView imageView = new ImageView(quickAccessFloaterService2);
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    } else {
                        imageView.setImageResource(android.R.drawable.sym_def_app_icon);
                    }
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(quickAccessFloaterService2.p(50), quickAccessFloaterService2.p(50));
                    layoutParams3.setMarginEnd(quickAccessFloaterService2.p(18));
                    imageView.setLayoutParams(layoutParams3);
                    linearLayout3.addView(imageView);
                    TextView textView2 = new TextView(quickAccessFloaterService2);
                    textView2.setText(str7);
                    textView2.setTextColor(quickAccessFloaterService2.getColor(R.color.cx_text_primary));
                    textView2.setTextSize(21.0f);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    linearLayout3.addView(textView2);
                    final CheckBox checkBox = new CheckBox(quickAccessFloaterService2);
                    checkBox.setChecked(z8);
                    checkBox.setClickable(false);
                    checkBox.setFocusable(false);
                    checkBox.setButtonTintList(ColorStateList.valueOf(QuickAccessFloaterService.f2443r0));
                    checkBox.setScaleX(1.3f);
                    checkBox.setScaleY(1.3f);
                    final I0.i iVar = new I0.i();
                    iVar.f122a = zContains;
                    final TextView textView3 = new TextView(quickAccessFloaterService2);
                    textView3.setText(iVar.f122a ? "🔒" : "🔓");
                    textView3.setTextSize(24.0f);
                    textView3.setClickable(true);
                    textView3.setFocusable(true);
                    textView3.setPadding(quickAccessFloaterService2.p(12), quickAccessFloaterService2.p(8), quickAccessFloaterService2.p(12), quickAccessFloaterService2.p(8));
                    textView3.setOnClickListener(new View.OnClickListener() { // from class: T.i4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view8) {
                            List list8 = QuickAccessFloaterService.f2436j0;
                            I0.i iVar2 = iVar;
                            boolean z9 = iVar2.f122a;
                            iVar2.f122a = !z9;
                            textView3.setText(!z9 ? "🔒" : "🔓");
                            j2.b(Boolean.valueOf(iVar2.f122a));
                            if (iVar2.f122a) {
                                CheckBox checkBox2 = checkBox;
                                if (checkBox2.isChecked()) {
                                    checkBox2.setChecked(false);
                                    c0072h4.b(Boolean.FALSE);
                                }
                            }
                        }
                    });
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams4.setMarginEnd(quickAccessFloaterService2.p(6));
                    linearLayout3.addView(textView3, layoutParams4);
                    linearLayout3.addView(checkBox);
                    linearLayout3.setOnClickListener(new ViewOnClickListenerC0143u(checkBox, 5, c0072h4));
                    linearLayout2.addView(linearLayout3);
                    i13 = i14;
                    it3 = it4;
                    setL0 = set2;
                    str = str8;
                    lVar2 = lVar3;
                    list6 = list7;
                }
                List list8 = list6;
                I0.l lVar4 = lVar2;
                String str9 = str;
                linearLayout.addView(linearLayout2);
                ?? scrollView2 = new ScrollView(quickAccessFloaterService2);
                scrollView2.addView(linearLayout);
                scrollView2.setPadding(quickAccessFloaterService2.p(20), quickAccessFloaterService2.p(12), quickAccessFloaterService2.p(20), quickAccessFloaterService2.p(4));
                AlertDialog.Builder builder = new AlertDialog.Builder(quickAccessFloaterService2);
                String string5 = quickAccessFloaterService2.getString(R.string.k_close_apps_title);
                I0.f.d(string5, "getString(...)");
                AlertDialog alertDialogCreate = builder.setCustomTitle(quickAccessFloaterService2.o(string5)).setView(scrollView2).setPositiveButton(quickAccessFloaterService2.getString(R.string.k_close_apps_confirm), new DialogInterfaceOnClickListenerC0067h(list8, quickAccessFloaterService2, zArr, 2)).setNegativeButton(quickAccessFloaterService2.getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                lVar4.b = alertDialogCreate;
                if (alertDialogCreate == null) {
                    I0.f.h("dlg");
                    throw null;
                }
                Window window = alertDialogCreate.getWindow();
                if (window != null) {
                    window.setType(2038);
                }
                Object obj2 = lVar4.b;
                if (obj2 == null) {
                    I0.f.h("dlg");
                    throw null;
                }
                Window window2 = ((AlertDialog) obj2).getWindow();
                if (window2 != null) {
                    window2.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
                }
                try {
                    Object obj3 = lVar4.b;
                    if (obj3 == null) {
                        I0.f.h("dlg");
                        throw null;
                    }
                    ((AlertDialog) obj3).show();
                    Object obj4 = lVar4.b;
                    if (obj4 != null) {
                        QuickAccessFloaterService.n((AlertDialog) obj4);
                        return;
                    } else {
                        I0.f.h("dlg");
                        throw null;
                    }
                } catch (Exception e5) {
                    M.d0.n(e5, new StringBuilder("confirmCloseUserApps: "), str9);
                    return;
                }
        }
    }

    public /* synthetic */ H(Object obj, int i2, Object obj2) {
        this.f603a = i2;
        this.b = obj;
        this.f604c = obj2;
    }
}
