package T;

import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007e.AbstractC0201a;
import p007e.C0205e;
import p007e.C0208h;
import p007e.DialogC0209i;

/* JADX INFO: renamed from: T.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0168z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1226a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1228d;

    public /* synthetic */ RunnableC0168z(Object obj, Object obj2, Object obj3, int i2) {
        this.f1226a = i2;
        this.b = obj;
        this.f1227c = obj2;
        this.f1228d = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:149:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:158:0x0523  */
    /* JADX WARN: Code duplicated, block: B:173:0x0587  */
    /* JADX WARN: Code duplicated, block: B:175:0x0591  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String strV;
        int iAvailableProcessors;
        float fFloatValue;
        List listG;
        String string;
        Drawable applicationIcon;
        String str;
        Float fO0;
        String str2;
        String str3;
        String string2;
        String str4;
        final int i2 = 2;
        int i3 = 10;
        Bitmap bitmapA = null;
        int i4 = 1;
        final int i5 = 0;
        switch (this.f1226a) {
            case 0:
                x4 x4Var = (x4) this.b;
                w4 w4Var = (w4) this.f1227c;
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f1228d;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                boolean zJ = z4.j(x4Var, w4Var);
                int i6 = x4Var.b;
                appPipFloaterService.getClass();
                String strA = z4.a(6000, "am stack list");
                String str5 = "taskId=" + i6 + ":.*?bounds=\\[(\\d+),(\\d+)]\\[(\\d+),(\\d+)]";
                I0.f.e(str5, "pattern");
                Pattern patternCompile = Pattern.compile(str5);
                I0.f.d(patternCompile, "compile(...)");
                Matcher matcher = patternCompile.matcher(strA);
                I0.f.d(matcher, "matcher(...)");
                O0.e eVarE = A.b.e(matcher, 0, strA);
                w4 w4Var2 = eVarE == null ? null : new w4(Integer.parseInt((String) ((O0.d) eVarE.a()).get(1)), Integer.parseInt((String) ((O0.d) eVarE.a()).get(2)), Integer.parseInt((String) ((O0.d) eVarE.a()).get(3)), Integer.parseInt((String) ((O0.d) eVarE.a()).get(4)));
                if (w4Var2 != null) {
                    w4Var = w4Var2;
                } else if (!zJ) {
                    w4Var = appPipFloaterService.f2123k;
                }
                appPipFloaterService.f2123k = w4Var;
                appPipFloaterService.f2126n = false;
                appPipFloaterService.f2120h.post(new RunnableC0148v(appPipFloaterService, zJ, w4Var2, i5));
                return;
            case 1:
                final CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                final String str6 = (String) this.f1227c;
                D0 d1 = (D0) this.f1228d;
                int[] iArr = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    String str7 = centralWatchdogService.V;
                    boolean z2 = str7 != null;
                    if (str6 != null) {
                        centralWatchdogService.f2192b0 = 0;
                        boolean zEquals = str6.equals(str7);
                        centralWatchdogService.V = str6;
                        if (!zEquals) {
                            if (centralWatchdogService.M().getBoolean("auto_route_on_aa_connect", false) && !str6.equals(centralWatchdogService.f2186W)) {
                                centralWatchdogService.f2190a.postDelayed(new RunnableC0110o0(5, centralWatchdogService, str6), 5000L);
                            }
                            centralWatchdogService.f2188Y = 5000L;
                            centralWatchdogService.f2189Z = SystemClock.elapsedRealtime() + 5000;
                        }
                        boolean z3 = centralWatchdogService.M().getBoolean("auto_proxy_enabled", false);
                        if (z3 && !I0.f.a(centralWatchdogService.f2187X, str6) && !centralWatchdogService.f2191a0 && SystemClock.elapsedRealtime() >= centralWatchdogService.f2189Z) {
                            centralWatchdogService.f2191a0 = true;
                            centralWatchdogService.f2189Z = SystemClock.elapsedRealtime() + centralWatchdogService.f2188Y;
                            U0.a(new H0.a() { // from class: T.F0
                                @Override // H0.a
                                public final Object a() {
                                    String string3;
                                    switch (i5) {
                                        case 0:
                                            CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                                            String str8 = str6;
                                            boolean zG = CentralWatchdogService.g(centralWatchdogService2, str8);
                                            centralWatchdogService2.f2190a.post(new RunnableC0062g0(centralWatchdogService2, str8, zG));
                                            if (zG) {
                                                centralWatchdogService2.w(8080, str8);
                                            }
                                            break;
                                        case 1:
                                            try {
                                                String strB = new I1(5555).b(3000, "settings get global global_http_proxy_host 2>/dev/null");
                                                I0.f.d(strB, "runShell(...)");
                                                string3 = O0.j.X0(strB).toString();
                                            } catch (Exception unused) {
                                                string3 = "";
                                            }
                                            CentralWatchdogService centralWatchdogService3 = centralWatchdogService;
                                            centralWatchdogService3.f2190a.post(new RunnableC0056f0(centralWatchdogService3, str6, string3));
                                            break;
                                        default:
                                            String str9 = str6;
                                            CentralWatchdogService centralWatchdogService4 = centralWatchdogService;
                                            centralWatchdogService4.f2190a.post(new RunnableC0104n0(2, centralWatchdogService4, CentralWatchdogService.g(centralWatchdogService4, str9)));
                                            break;
                                    }
                                    return v0.e.f4161c;
                                }
                            });
                        } else if (z3 && I0.f.a(centralWatchdogService.f2187X, str6) && !centralWatchdogService.f2194c0) {
                            final int i7 = 1;
                            centralWatchdogService.f2194c0 = true;
                            U0.a(new H0.a() { // from class: T.F0
                                @Override // H0.a
                                public final Object a() {
                                    String string3;
                                    switch (i7) {
                                        case 0:
                                            CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                                            String str8 = str6;
                                            boolean zG = CentralWatchdogService.g(centralWatchdogService2, str8);
                                            centralWatchdogService2.f2190a.post(new RunnableC0062g0(centralWatchdogService2, str8, zG));
                                            if (zG) {
                                                centralWatchdogService2.w(8080, str8);
                                            }
                                            break;
                                        case 1:
                                            try {
                                                String strB = new I1(5555).b(3000, "settings get global global_http_proxy_host 2>/dev/null");
                                                I0.f.d(strB, "runShell(...)");
                                                string3 = O0.j.X0(strB).toString();
                                            } catch (Exception unused) {
                                                string3 = "";
                                            }
                                            CentralWatchdogService centralWatchdogService3 = centralWatchdogService;
                                            centralWatchdogService3.f2190a.post(new RunnableC0056f0(centralWatchdogService3, str6, string3));
                                            break;
                                        default:
                                            String str9 = str6;
                                            CentralWatchdogService centralWatchdogService4 = centralWatchdogService;
                                            centralWatchdogService4.f2190a.post(new RunnableC0104n0(2, centralWatchdogService4, CentralWatchdogService.g(centralWatchdogService4, str9)));
                                            break;
                                    }
                                    return v0.e.f4161c;
                                }
                            });
                        }
                    } else {
                        centralWatchdogService.f2192b0++;
                        boolean z4 = centralWatchdogService.M().getBoolean("auto_proxy_enabled", false);
                        if (centralWatchdogService.f2192b0 >= 3) {
                            if (!z4 || centralWatchdogService.f2187X == null || centralWatchdogService.f2191a0) {
                                CentralWatchdogService.f(centralWatchdogService, z2);
                            } else {
                                centralWatchdogService.f2191a0 = true;
                                final String str8 = centralWatchdogService.f2187X;
                                I0.f.b(str8);
                                U0.a(new H0.a() { // from class: T.F0
                                    @Override // H0.a
                                    public final Object a() {
                                        String string3;
                                        switch (i2) {
                                            case 0:
                                                CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                                                String str9 = str8;
                                                boolean zG = CentralWatchdogService.g(centralWatchdogService2, str9);
                                                centralWatchdogService2.f2190a.post(new RunnableC0062g0(centralWatchdogService2, str9, zG));
                                                if (zG) {
                                                    centralWatchdogService2.w(8080, str9);
                                                }
                                                break;
                                            case 1:
                                                try {
                                                    String strB = new I1(5555).b(3000, "settings get global global_http_proxy_host 2>/dev/null");
                                                    I0.f.d(strB, "runShell(...)");
                                                    string3 = O0.j.X0(strB).toString();
                                                } catch (Exception unused) {
                                                    string3 = "";
                                                }
                                                CentralWatchdogService centralWatchdogService3 = centralWatchdogService;
                                                centralWatchdogService3.f2190a.post(new RunnableC0056f0(centralWatchdogService3, str8, string3));
                                                break;
                                            default:
                                                String str10 = str8;
                                                CentralWatchdogService centralWatchdogService4 = centralWatchdogService;
                                                centralWatchdogService4.f2190a.post(new RunnableC0104n0(2, centralWatchdogService4, CentralWatchdogService.g(centralWatchdogService4, str10)));
                                                break;
                                        }
                                        return v0.e.f4161c;
                                    }
                                });
                            }
                        }
                    }
                    if (centralWatchdogService.n()) {
                        centralWatchdogService.f2190a.postDelayed(d1, 6000L);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                I0.i iVar = new I0.i();
                try {
                    Y0 y0 = Y0.f854a;
                    String strI = Y0.i();
                    if (!O0.j.E0(strI) && !strI.equals("DESCONHECIDO")) {
                        sharedPreferences.edit().putString("recovery_name", strI).apply();
                    }
                    if (O0.s.s0(O0.j.X0(strI).toString(), "IBANES")) {
                        iVar.f122a = true;
                        try {
                            Y0.o(strI, Y0.k(), Y0.l());
                        } catch (Throwable th) {
                            Log.d("DR", "adbClickReport: " + th.getMessage());
                        }
                    }
                    break;
                } catch (Throwable th2) {
                    Log.d("DR", "gateAdbClick: " + th2.getMessage());
                }
                ((Handler) this.f1227c).post(new H((H0.l) this.f1228d, 5, iVar));
                return;
            case 3:
                C1 c1 = (C1) this.b;
                boolean z5 = c1.f528a;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.f1227c;
                boolean z6 = homeFloatingWidgetsService.f;
                boolean z7 = c1.b;
                boolean z8 = (z5 == z6 && z7 == homeFloatingWidgetsService.f2283g) ? false : true;
                homeFloatingWidgetsService.f = z5;
                homeFloatingWidgetsService.f2283g = z7;
                if (z8) {
                    HomeFloatingWidgetsService.a(homeFloatingWidgetsService);
                }
                homeFloatingWidgetsService.f2280c.postDelayed((F1) this.f1228d, 1500L);
                return;
            case 4:
                try {
                    strV = C0097m.v("top -b -n 1 -m 25 -s 9", 6000, null, new C0103n(i5));
                    break;
                } catch (Throwable unused) {
                    strV = "";
                }
                List list = HomeFloatingWidgetsService.f2262Q;
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                PackageManager packageManager = homeFloatingWidgetsService2.getPackageManager();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                Pattern patternCompile2 = Pattern.compile("(\\d+)%cpu");
                I0.f.d(patternCompile2, "compile(...)");
                I0.f.e(strV, "input");
                Matcher matcher2 = patternCompile2.matcher(strV);
                I0.f.d(matcher2, "matcher(...)");
                O0.e eVarE2 = A.b.e(matcher2, 0, strV);
                if (eVarE2 == null || (str = (String) w0.i.b0(eVarE2.a(), 1)) == null || (fO0 = O0.q.o0(str)) == null) {
                    iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                    if (iAvailableProcessors < 1) {
                        iAvailableProcessors = 1;
                    }
                    fFloatValue = iAvailableProcessors * 100;
                } else {
                    fFloatValue = fO0.floatValue();
                    if (fFloatValue <= 0.0f) {
                        iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                        if (iAvailableProcessors < 1) {
                            iAvailableProcessors = 1;
                        }
                        fFloatValue = iAvailableProcessors * 100;
                    }
                }
                N0.c cVarG0 = O0.j.G0(strV);
                Iterator it = cVarG0.b.iterator();
                while (it.hasNext()) {
                    String string3 = O0.j.X0((String) ((H0.l) cVarG0.f398c).b(it.next())).toString();
                    Pattern patternCompile3 = Pattern.compile("\\s+");
                    I0.f.d(patternCompile3, "compile(...)");
                    I0.f.e(string3, "input");
                    O0.j.L0(0);
                    Matcher matcher3 = patternCompile3.matcher(string3);
                    if (matcher3.find()) {
                        ArrayList arrayList2 = new ArrayList(i3);
                        int iEnd = 0;
                        do {
                            arrayList2.add(string3.subSequence(iEnd, matcher3.start()).toString());
                            iEnd = matcher3.end();
                        } while (matcher3.find());
                        arrayList2.add(string3.subSequence(iEnd, string3.length()).toString());
                        listG = arrayList2;
                    } else {
                        listG = AbstractC0201a.G(string3.toString());
                    }
                    if (listG.size() < 12 || O0.r.p0((String) listG.get(0)) == null) {
                        i3 = 10;
                    } else {
                        Float fO1 = O0.q.o0((String) listG.get(8));
                        if (fO1 != null) {
                            float fFloatValue2 = (fO1.floatValue() * 100.0f) / fFloatValue;
                            String strT0 = O0.j.T0((String) listG.get(11), ":");
                            if (!O0.s.w0(strT0, "[") && !O0.s.w0(strT0, "/") && !O0.j.x0(strT0, " ", false) && hashSet.add(strT0)) {
                                try {
                                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(strT0, 0);
                                    I0.f.b(applicationInfo);
                                    try {
                                        string = packageManager.getApplicationLabel(applicationInfo).toString();
                                    } catch (Throwable unused2) {
                                        string = strT0;
                                    }
                                    try {
                                        applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                                    } catch (Throwable unused3) {
                                        applicationIcon = null;
                                    }
                                    arrayList.add(new B1(strT0, string, applicationIcon, fFloatValue2, (applicationInfo.flags & 129) != 0 || strT0.equals(homeFloatingWidgetsService2.getPackageName())));
                                    if (arrayList.size() >= 5) {
                                        homeFloatingWidgetsService2.f2280c.post(new RunnableC0164y0(homeFloatingWidgetsService2, (FrameLayout) this.f1227c, (LinearLayout) this.f1228d, arrayList, 1));
                                        return;
                                    }
                                } catch (Throwable unused4) {
                                }
                            }
                        }
                        i3 = 10;
                    }
                }
                homeFloatingWidgetsService2.f2280c.post(new RunnableC0164y0(homeFloatingWidgetsService2, (FrameLayout) this.f1227c, (LinearLayout) this.f1228d, arrayList, 1));
                return;
            case 5:
                HomeFloatingWidgetsService homeFloatingWidgetsService3 = (HomeFloatingWidgetsService) this.b;
                TextView textView = homeFloatingWidgetsService3.f2269F;
                if (textView != null) {
                    Double d2 = (Double) this.f1227c;
                    if (d2 != null) {
                        str3 = "🌡 " + Math.round(d2.doubleValue()) + "°C";
                        if (str3 == null) {
                            str3 = "🌡 --°C";
                        }
                    } else {
                        str3 = "🌡 --°C";
                    }
                    textView.setText(str3);
                }
                TextView textView2 = homeFloatingWidgetsService3.f2270G;
                if (textView2 != null) {
                    Integer num = (Integer) this.f1228d;
                    if (num != null) {
                        str2 = "CPU " + num.intValue() + '%';
                        if (str2 == null) {
                            str2 = "CPU --%";
                        }
                    } else {
                        str2 = "CPU --%";
                    }
                    textView2.setText(str2);
                    return;
                }
                return;
            case 6:
                Set set = LyricsFloaterService.f2324v;
                ExecutorService executorService = K1.f648a;
                List listC = K1.c((String) this.f1227c, (String) this.f1228d);
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                lyricsFloaterService.f2330h = listC;
                lyricsFloaterService.g();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                final MainActivity mainActivity = (MainActivity) this.b;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1309m.setEnabled(true);
                Serializable serializable = (Serializable) this.f1227c;
                boolean z9 = serializable instanceof Exception;
                final String str9 = (String) this.f1228d;
                if (z9) {
                    StringBuilder sb = new StringBuilder("ConnAdaptor check erro: ");
                    Exception exc = (Exception) serializable;
                    sb.append(exc.getMessage());
                    mainActivity.v("Update", sb.toString());
                    String string4 = mainActivity.getString(R.string.k_connadaptor_versao_nao_publicada, mainActivity.d0(str9));
                    I0.f.d(string4, "getString(...)");
                    if (!I0.f.a(exc.getMessage(), string4)) {
                        string4 = mainActivity.getString(R.string.k_no_internet_or_check_failed);
                        I0.f.d(string4, "getString(...)");
                    }
                    U.a aVar2 = mainActivity.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar2.A2.setText(string4);
                    Toast.makeText(mainActivity, string4, 1).show();
                    return;
                }
                v0.d dVar = (v0.d) serializable;
                Object obj = dVar.f4159a;
                I0.f.c(obj, "null cannot be cast to non-null type com.ex.auto.MainActivity.ConnadaptorManifestInfo");
                final C0089k3 c0089k3 = (C0089k3) obj;
                Object obj2 = dVar.b;
                I0.f.c(obj2, "null cannot be cast to non-null type kotlin.String");
                final String str10 = (String) obj2;
                String str11 = (String) dVar.f4160c;
                mainActivity.B0().edit().putString("connadaptor_expected_md5", str10).apply();
                if (str11 == null || !str11.equals(str10)) {
                    C0081j1 c0081j1 = new C0081j1(mainActivity);
                    String string5 = mainActivity.getString(R.string.k_connadaptor_update_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string5;
                    c0205e.f = str11 == null ? mainActivity.getString(R.string.k_connadaptor_available_message) : mainActivity.getString(R.string.k_connadaptor_newer_message);
                    c0081j1.h(mainActivity.getString(R.string.common_install), new DialogInterface.OnClickListener() { // from class: T.L2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i8) {
                            MainActivity mainActivity2 = mainActivity;
                            U.a aVar3 = mainActivity2.f2384t;
                            if (aVar3 == null) {
                                I0.f.h("binding");
                                throw null;
                            }
                            aVar3.f1309m.setEnabled(false);
                            U.a aVar4 = mainActivity2.f2384t;
                            if (aVar4 == null) {
                                I0.f.h("binding");
                                throw null;
                            }
                            aVar4.A2.setText(mainActivity2.getString(R.string.k_downloading_cafix));
                            mainActivity2.f2388w.execute(new RunnableC0164y0(mainActivity2, c0089k3, str10, str9));
                        }
                    });
                    c0081j1.f(mainActivity.getString(R.string.common_not_now), null);
                    c0081j1.j();
                    return;
                }
                String string6 = mainActivity.getString(R.string.connadaptor_update_uptodate);
                I0.f.d(string6, "getString(...)");
                U.a aVar3 = mainActivity.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.A2.setText(string6 + '\n' + mainActivity.getString(R.string.k_connadaptor_versao_selecionada, mainActivity.d0(str9)));
                mainActivity.B0().edit().putString("connadaptor_arquivo_versao", str9).apply();
                Toast.makeText(mainActivity, string6, 0).show();
                return;
            case Response.NO /* 8 */:
                DialogC0209i dialogC0209i = (DialogC0209i) this.f1227c;
                StringBuilder sb2 = (StringBuilder) this.f1228d;
                int i8 = MainActivity.u0;
                MainActivity mainActivity2 = (MainActivity) this.b;
                if (mainActivity2.isFinishing() || mainActivity2.isDestroyed()) {
                    return;
                }
                try {
                    String str12 = mainActivity2.getString(R.string.k_status_km_info) + "\n\n" + ((Object) sb2);
                    C0208h c0208h = dialogC0209i.f3044e;
                    c0208h.f3020e = str12;
                    TextView textView3 = c0208h.f3036v;
                    if (textView3 != null) {
                        textView3.setText(str12);
                        return;
                    }
                    return;
                } catch (Throwable unused5) {
                    return;
                }
            case 9:
                int i9 = MainActivity.u0;
                MainActivity mainActivity3 = (MainActivity) this.b;
                if (mainActivity3.isFinishing()) {
                    U.a aVar4 = mainActivity3.f2384t;
                    if (aVar4 != null) {
                        aVar4.f1311n.setEnabled(true);
                        return;
                    } else {
                        I0.f.h("binding");
                        throw null;
                    }
                }
                C0081j1 c0081j2 = new C0081j1(mainActivity3);
                c0081j2.i(R.string.update_dialog_title);
                C0119p3 c0119p3 = (C0119p3) this.f1228d;
                String string7 = mainActivity3.getString(R.string.update_dialog_message, (String) this.f1227c, c0119p3.b);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f = string7;
                c0081j2.g(R.string.update_yes, new DialogInterfaceOnClickListenerC0055f(mainActivity3, i4, c0119p3));
                c0081j2.e(R.string.update_no, new X1(19, mainActivity3));
                c0205e2.f2998l = new M2(mainActivity3, i5);
                c0081j2.j();
                return;
            case 10:
                int i10 = MainActivity.u0;
                StringBuilder sb3 = new StringBuilder("pm uninstall ");
                MainActivity mainActivity4 = (MainActivity) this.b;
                mainActivity4.getClass();
                String str13 = (String) this.f1227c;
                sb3.append(MainActivity.Y1(str13));
                sb3.append(" 2>&1");
                mainActivity4.f2387v.post(new RunnableC0164y0(mainActivity4.C1(30000, sb3.toString()), mainActivity4, str13, (H0.a) this.f1228d));
                return;
            case 11:
                int i11 = MainActivity.u0;
                if (((MainActivity) this.b).isFinishing()) {
                    return;
                }
                ((TextView) this.f1227c).setText((String) this.f1228d);
                return;
            case Response.BAD /* 12 */:
                MainActivity mainActivity5 = (MainActivity) this.b;
                C0083j3 c0083j3 = (C0083j3) this.f1227c;
                String str14 = (String) this.f1228d;
                int i12 = MainActivity.u0;
                try {
                    mainActivity5.getClass();
                    mainActivity5.C1(8000, Y.C());
                    String str15 = c0083j3.b;
                    E2 e2 = new E2(9, mainActivity5);
                    File file = new File(mainActivity5.getCacheDir(), "CarplayMonitor-update-staging");
                    MainActivity.j0(mainActivity5, str15, file, "CarplayMonitor", null, str14, 0, null, e2, 104);
                    mainActivity5.f2(file, "/data/local/tmp/CarplayMonitor-update", "CarplayMonitor", false);
                    File file2 = new File("/data/local/tmp/CarplayMonitor-update");
                    String strT1 = MainActivity.t0(file2, "MD5");
                    if (!strT1.equals(str14)) {
                        file2.delete();
                        throw new IllegalStateException(mainActivity5.getString(R.string.k_md5_mismatch_manifest, O0.j.V0(8, str14), O0.j.V0(8, strT1)));
                    }
                    mainActivity5.f2387v.post(new G2(13, mainActivity5));
                    String strC1 = mainActivity5.C1(60000, MainActivity.Z1());
                    if (O0.j.x0(strC1, "Falha no ADB local", false)) {
                        throw new IllegalStateException(O0.j.X0(strC1).toString());
                    }
                    string2 = mainActivity5.getString(R.string.k_carplaymonitor_updated_success);
                    I0.f.b(string2);
                    mainActivity5.f2387v.post(new V1(mainActivity5, string2, 16));
                    return;
                } catch (Exception e3) {
                    String message = e3.getMessage();
                    if (message == null) {
                        message = e3.getClass().getSimpleName();
                    }
                    string2 = mainActivity5.getString(R.string.k_generic_error, message);
                }
                break;
            case 13:
                int i13 = MainActivity.u0;
                MainActivity mainActivity6 = (MainActivity) this.b;
                if (mainActivity6.isFinishing()) {
                    return;
                }
                C0089k3 c0089k4 = (C0089k3) this.f1227c;
                if (c0089k4 == null || (str4 = (String) this.f1228d) == null) {
                    if (c0089k4 != null) {
                        M.d0.l(mainActivity6, R.string.k_no_internet_or_check_failed, mainActivity6, 1);
                        return;
                    }
                    return;
                } else {
                    U.a aVar5 = mainActivity6.f2384t;
                    if (aVar5 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar5.A2.setText(mainActivity6.getString(R.string.k_downloading_cafix));
                    mainActivity6.f2388w.execute(new RunnableC0164y0(mainActivity6, c0089k4, str4, mainActivity6.c0()));
                    return;
                }
            case 14:
                int i14 = MainActivity.u0;
                String str16 = (String) this.f1227c;
                String strConcat = "ConnAdaptor: ".concat(str16);
                MainActivity mainActivity7 = (MainActivity) this.b;
                mainActivity7.getClass();
                mainActivity7.v("Update", MainActivity.n2(16000, strConcat));
                U.a aVar6 = mainActivity7.f2384t;
                if (aVar6 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar6.A2.setText(str16);
                Toast.makeText(mainActivity7, str16, 1).show();
                U.a aVar7 = mainActivity7.f2384t;
                if (aVar7 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar7.f1309m.setEnabled(true);
                mainActivity7.e1();
                if (((I0.i) this.f1228d).f122a && mainActivity7.n0) {
                    C0081j1 c0081j3 = new C0081j1(mainActivity7);
                    c0081j3.i(R.string.connadaptor_rebind_title);
                    C0205e c0205e3 = (C0205e) c0081j3.b;
                    c0205e3.f = c0205e3.f2989a.getText(R.string.connadaptor_rebind_message);
                    c0081j3.g(android.R.string.ok, null);
                    c0081j3.j();
                    return;
                }
                return;
            case 15:
                boolean z10 = PhoneSyncService.f2416v;
                boolean z11 = ((SharedPreferences) this.b).getBoolean((String) this.f1227c, false);
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.f1228d;
                if (z11) {
                    AbstractC0120p4.b(phoneSyncService);
                    return;
                } else {
                    AbstractC0120p4.d(phoneSyncService);
                    return;
                }
            case Response.BYE /* 16 */:
                List list2 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                quickAccessFloaterService.f2471a.post(new RunnableC0066g4((TextView) this.f1227c, O0.j.x0(quickAccessFloaterService.b(40000, "ip link set ap0 down 2>/dev/null || true\nip rule show | grep -w 'ap0' | awk '{print $1}' | sed 's/://' | while read p; do ip rule del prio $p 2>/dev/null; done\nam force-stop com.njda.adapter; am force-stop com.njda.aauto\nfor i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do\n  _s=$(getprop init.svc.AAutoMonitor); [ \"$_s\" != \"running\" ] && break; sleep 1; done\nsetprop ctl.restart AAutoMonitor\necho \"reset_ok\""), "reset_ok", false), quickAccessFloaterService, (String) this.f1228d, 1));
                return;
            case 17:
                Context context = (Context) this.b;
                String str17 = (String) this.f1227c;
                try {
                    ExecutorService executorService2 = AbstractC0108n4.f1073a;
                    I0.f.b(context);
                    bitmapA = AbstractC0108n4.a(context, str17);
                    break;
                } catch (Throwable th3) {
                    M.d0.r(th3, M.d0.j("fetch '", str17, "' falhou: "), "RemoteArtwork");
                }
                AbstractC0108n4.b.remove(str17);
                ((H0.l) this.f1228d).b(bitmapA);
                return;
            case 18:
                HashMap map = A4.f474a;
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.b;
                Float fL = A4.l(carPropertyManager);
                Float fM = A4.m(carPropertyManager);
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.f1227c;
                tempBattPillFloaterService.f2528e.post(new RunnableC0164y0(tempBattPillFloaterService, fL, fM, (H4) this.f1228d, 8));
                return;
            default:
                A.e eVar = (A.e) this.b;
                A.b bVar = (A.b) this.f1227c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f1228d;
                eVar.getClass();
                try {
                    androidx.emoji2.text.o oVarU = A.b.u((Context) eVar.b);
                    if (oVarU == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    androidx.emoji2.text.n nVar = (androidx.emoji2.text.n) ((androidx.emoji2.text.h) oVarU.b);
                    synchronized (nVar.f1713d) {
                        nVar.f = threadPoolExecutor;
                        break;
                    }
                    ((androidx.emoji2.text.h) oVarU.b).q(new androidx.emoji2.text.j(bVar, threadPoolExecutor));
                    return;
                } catch (Throwable th4) {
                    bVar.M(th4);
                    threadPoolExecutor.shutdown();
                    return;
                }
        }
    }
}
