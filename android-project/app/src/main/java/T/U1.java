package T;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import com.sun.mail.imap.IMAPStore;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class U1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f806a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ U1(int i2, MainActivity mainActivity) {
        this.f806a = i2;
        this.b = mainActivity;
    }

    private final void a() {
        MainActivity mainActivity = this.b;
        int i2 = MainActivity.u0;
        try {
            Object systemService = mainActivity.getSystemService("power");
            I0.f.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
            ((PowerManager) systemService).reboot(null);
        } catch (Throwable th) {
            L3.f671a.b("Reiniciar", "PowerManager.reboot falhou (" + th.getClass().getSimpleName() + ") — caindo pro shell");
            new I1(5555).b(60000, "reboot");
        }
    }

    private final void b() {
        String strC1;
        String str;
        String string;
        Integer numP0;
        MainActivity mainActivity = this.b;
        int i2 = MainActivity.u0;
        try {
            strC1 = mainActivity.C1(8000, "RULES=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\necho \"rules=${RULES}\"");
        } catch (Exception unused) {
            strC1 = "";
        }
        Pattern patternCompile = Pattern.compile("rules=(\\d+)");
        I0.f.d(patternCompile, "compile(...)");
        I0.f.e(strC1, "input");
        Matcher matcher = patternCompile.matcher(strC1);
        I0.f.d(matcher, "matcher(...)");
        O0.e eVarE = A.b.e(matcher, 0, strC1);
        mainActivity.f2387v.post(new RunnableC0040c2(mainActivity, ((eVarE == null || (str = (String) ((O0.d) eVarE.a()).get(1)) == null || (string = O0.j.X0(str).toString()) == null || (numP0 = O0.r.p0(string)) == null) ? 0 : numP0.intValue()) > 0, 10));
    }

    private final void c() {
        int i2 = MainActivity.u0;
        MainActivity mainActivity = this.b;
        String strA0 = mainActivity.A0("br.com.central.dualdashcam");
        String strA1 = mainActivity.A0("com.geely.connadaptorlogger");
        String strA2 = mainActivity.A0("org.bromite.chromium");
        String strA3 = mainActivity.A0("com.amaze.filemanager");
        String strA4 = mainActivity.A0("org.mozilla.firefox");
        String strA5 = mainActivity.A0("app.revanced.android.gms");
        mainActivity.f2387v.post(new O2(mainActivity, mainActivity.A0("com.timhss.geelybattery"), mainActivity.A0("com.geely.eisapo"), strA0, strA1, strA2, strA3, strA4, strA5));
    }

    private final void d() {
        int i2 = 1;
        int i3 = MainActivity.u0;
        MainActivity mainActivity = this.b;
        String strC1 = mainActivity.C1(8000, "[ -f '/data/local/tmp/fixes/ca_fix.apk' ] && echo CAFIX_YES || echo CAFIX_NO");
        mainActivity.f2387v.post(new H2(mainActivity, O0.j.x0(strC1, "CAFIX_YES", false), O0.j.E0(strC1) || O0.j.x0(strC1, "Falha no ADB local", false), i2));
    }

    private final void e() {
        int i2 = MainActivity.u0;
        MainActivity mainActivity = this.b;
        String string = mainActivity.getString(R.string.update_none_available);
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
        } else {
            I0.f.h("binding");
            throw null;
        }
    }

    private final void f() {
        MainActivity mainActivity = this.b;
        U.a aVar = mainActivity.f2384t;
        if (aVar == null) {
            I0.f.h("binding");
            throw null;
        }
        aVar.S2.setText(mainActivity.getString(R.string.k_car_disconnected));
    }

    private final void g() {
        int i2 = MainActivity.u0;
        MainActivity mainActivity = this.b;
        String strC1 = mainActivity.C1(12000, "echo TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65'); echo TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')");
        I0.f.e(strC1, "saida");
        Pattern patternCompile = Pattern.compile("TTL_V[46]=\\d+");
        I0.f.d(patternCompile, "compile(...)");
        if (patternCompile.matcher(strC1).find()) {
            boolean z2 = AbstractC0126q4.a(strC1, "TTL_V4") > 0 && AbstractC0126q4.a(strC1, "TTL_V6") > 0;
            SharedPreferences sharedPreferencesB0 = mainActivity.B0();
            I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
            if (z2 != sharedPreferencesB0.getBoolean("ttl_65_ativo", false)) {
                M.d0.m(mainActivity, "ttl_65_ativo", z2);
            }
            mainActivity.f2387v.post(new RunnableC0040c2(mainActivity, z2, 7));
            return;
        }
        L3 l3 = L3.f671a;
        StringBuilder sb = new StringBuilder("estado não pôde ser lido — mantendo o que a preferência diz (");
        SharedPreferences sharedPreferencesB1 = mainActivity.B0();
        I0.f.d(sharedPreferencesB1, "<get-prefs>(...)");
        sb.append(sharedPreferencesB1.getBoolean("ttl_65_ativo", false));
        sb.append("): ");
        sb.append(O0.j.V0(80, O0.s.v0(strC1, "\n", " ")));
        l3.b("TTL", sb.toString());
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String strC1;
        final boolean zX0;
        final boolean z2;
        final boolean z3;
        String lowerCase;
        final String str;
        String strV0;
        String string;
        String str2;
        boolean z4;
        boolean z5;
        List listG;
        boolean z6;
        Long lValueOf;
        String str3;
        String str4;
        boolean zX1;
        String string2;
        C0101m3 c0101m3R0;
        String strV;
        int i2 = 10;
        String strT0 = null;
        int i3 = 0;
        switch (this.f806a) {
            case 0:
                int i4 = MainActivity.u0;
                MainActivity mainActivity = this.b;
                String strN0 = Y.n0(mainActivity, true);
                if (strN0 == null) {
                    mainActivity.w("CarplayMonitor", "não consegui gravar o script");
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                L3.f671a.b("Ativar", "patch do monitor: início (segundo plano)");
                try {
                    strC1 = mainActivity.C1(120000, strN0);
                    break;
                } catch (Exception e2) {
                    strC1 = "erro: " + e2.getMessage();
                }
                L3.f671a.b("Ativar", "patch do monitor terminou em " + ((SystemClock.elapsedRealtime() - jElapsedRealtime) / ((long) IMAPStore.RESPONSE)) + 's');
                mainActivity.w("CarplayMonitor", O0.j.W0(400, strC1));
                mainActivity.f2387v.post(new V1(mainActivity, strC1, 1));
                return;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i5 = MainActivity.u0;
                try {
                    mainActivity2.getClass();
                    C0083j3 c0083j3O0 = MainActivity.o0();
                    String strV1 = MainActivity.V0(c0083j3O0.f1023a);
                    if (strV1 == null) {
                        throw new IllegalStateException(mainActivity2.getString(R.string.k_carplaymonitor_json_invalid_md5));
                    }
                    File file = new File("/data/local/tmp/fixes/CarplayMonitor");
                    mainActivity2.f2387v.post(new RunnableC0164y0(mainActivity2, file.isFile() ? MainActivity.t0(file, "MD5") : null, strV1, c0083j3O0, 3));
                    return;
                } catch (Exception e3) {
                    mainActivity2.f2387v.post(new RunnableC0156w2(mainActivity2, e3, 0));
                    return;
                }
            case 2:
                final MainActivity mainActivity3 = this.b;
                int i6 = MainActivity.u0;
                try {
                    String str5 = mainActivity3.getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
                    I0.f.d(str5, "sourceDir");
                    zX0 = O0.j.x0(str5, "/data/app/", false);
                } catch (Throwable unused) {
                    zX0 = false;
                }
                try {
                    ArrayList arrayListZ = A.b.Z(new File("/proc/mounts"));
                    if (arrayListZ.isEmpty()) {
                        z5 = false;
                    } else {
                        Iterator it = arrayListZ.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z5 = false;
                            } else if (O0.j.x0((String) it.next(), " /system/app/ConnAdaptor/ConnAdaptor.apk ", false)) {
                                z5 = true;
                            }
                        }
                    }
                    z2 = z5;
                } catch (Throwable unused2) {
                    z2 = false;
                }
                try {
                    ArrayList arrayListZ2 = A.b.Z(new File("/proc/mounts"));
                    if (arrayListZ2.isEmpty()) {
                        z4 = false;
                    } else {
                        Iterator it2 = arrayListZ2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z4 = false;
                            } else if (O0.j.x0((String) it2.next(), " /system/bin/CarplayMonitor ", false)) {
                                z4 = true;
                            }
                        }
                    }
                    z3 = z4;
                } catch (Throwable unused3) {
                    z3 = false;
                }
                if (zX0 && z2) {
                    L3 l3 = L3.f671a;
                    l3.b("ConnAdaptor", "bind legado sobre instalação — desmontando sozinho");
                    try {
                        l3.b("ConnAdaptor", "limpeza do bind legado: " + O0.j.W0(120, O0.j.X0(mainActivity3.C1(30000, Y.S())).toString()));
                    } catch (Exception e4) {
                        L3.f671a.b("ConnAdaptor", "limpeza do bind legado falhou: " + e4.getMessage());
                    }
                    break;
                }
                final String strF0 = mainActivity3.f0();
                int[] iArr = AbstractC0121q.f1100a;
                String strR0 = mainActivity3.R0();
                if (strR0 != null) {
                    lowerCase = strR0.toLowerCase(Locale.ROOT);
                    I0.f.d(lowerCase, "toLowerCase(...)");
                } else {
                    lowerCase = null;
                }
                if (lowerCase != null) {
                    switch (lowerCase) {
                        case "260459e68360a4ff5c3720d84a2acddd":
                            str2 = "v1111cp";
                            str = str2;
                            break;
                        case "4b37f46239a938fa164d4a0bdc65a399":
                            str2 = "v1111cp-only";
                            str = str2;
                            break;
                        case "d49ab03b18a5c5e21928c59c465394d7":
                            str2 = "v1111aa";
                            str = str2;
                            break;
                        case "0c280b07f92a3538bcda1aae2e8b0746":
                            str2 = "v1114aa";
                            str = str2;
                            break;
                        case "4b0e1de041032ee63ef0c223926d7889":
                            str2 = "v1114cp";
                            str = str2;
                            break;
                        default:
                            str = null;
                            break;
                    }
                } else {
                    str = null;
                }
                try {
                    File file2 = new File("/data/local/tmp/fixes/ca_fix.apk");
                    strV0 = file2.isFile() ? O0.j.V0(8, MainActivity.t0(file2, "MD5")) : null;
                    break;
                } catch (Throwable unused4) {
                }
                if (strV0 != null && !O0.s.w0(strF0, strV0)) {
                    File file3 = new File("/data/local/tmp/fixes/ca_fix.apk");
                    if (!file3.isFile() || file3.length() <= 0) {
                        string = mainActivity3.getString(R.string.k_cafix_ausente);
                        I0.f.d(string, "getString(...)");
                    } else {
                        String strS0 = mainActivity3.S0(file3);
                        String strU = mainActivity3.u(strS0);
                        if (strU == null) {
                            strU = mainActivity3.getString(R.string.k_connadaptor_build_desconhecida);
                            I0.f.d(strU, "getString(...)");
                        }
                        string = mainActivity3.getString(R.string.k_cafix_pronto, strS0 != null ? O0.j.V0(8, strS0) : "?", strU);
                        I0.f.d(string, "getString(...)");
                    }
                    strT0 = string;
                }
                final String str6 = strT0;
                final boolean z7 = zX0;
                mainActivity3.f2387v.post(new Runnable() { // from class: T.y2
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i7;
                        int i8 = MainActivity.u0;
                        boolean z8 = !z7;
                        MainActivity mainActivity4 = mainActivity3;
                        mainActivity4.H1(z8);
                        U.a aVar = mainActivity4.f2384t;
                        if (aVar == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar.f1313o0.setEnabled(true);
                        U.a aVar2 = mainActivity4.f2384t;
                        if (aVar2 == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar2.f1315p0.setEnabled(true);
                        U.a aVar3 = mainActivity4.f2384t;
                        if (aVar3 == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar3.f1313o0.setAlpha(1.0f);
                        U.a aVar4 = mainActivity4.f2384t;
                        if (aVar4 == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar4.f1315p0.setAlpha(1.0f);
                        boolean z9 = zX0;
                        boolean z10 = z2;
                        if (z9 && z10) {
                            i7 = R.string.k_ca_estado_hibrido;
                        } else if (z9) {
                            i7 = R.string.k_ca_estado_instalado;
                        } else {
                            i7 = z10 ? R.string.k_ca_estado_bind : R.string.k_ca_estado_fabrica;
                        }
                        String string3 = mainActivity4.getString(i7);
                        I0.f.d(string3, "getString(...)");
                        StringBuilder sb = new StringBuilder();
                        boolean z11 = z3;
                        sb.append(mainActivity4.getString(z11 ? R.string.k_cm_estado_ativo : R.string.k_cm_estado_padrao));
                        if (!z11) {
                            if (mainActivity4.B0().getBoolean("auto_apply_paused", false)) {
                                sb.append(" · ");
                                sb.append(mainActivity4.getString(R.string.k_carplaymonitor_motivo_trava));
                            } else {
                                int[] iArr2 = AbstractC0121q.f1100a;
                                SharedPreferences sharedPreferencesB0 = mainActivity4.B0();
                                I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                                if (!AbstractC0121q.a(sharedPreferencesB0)) {
                                    sb.append(" · ");
                                    sb.append(mainActivity4.getString(R.string.k_carplaymonitor_motivo_toggle));
                                } else if (mainActivity4.Y()) {
                                    sb.append(" · ");
                                    sb.append(!AbstractC0121q.d(mainActivity4.a0()) ? mainActivity4.getString(R.string.k_carplaymonitor_motivo_modo, mainActivity4.b0(mainActivity4.a0())) : mainActivity4.getString(R.string.k_carplaymonitor_motivo_falhou));
                                } else {
                                    sb.append(" · ");
                                    sb.append(mainActivity4.getString(R.string.k_carplaymonitor_motivo_fabrica));
                                }
                            }
                        }
                        String string4 = sb.toString();
                        I0.f.d(string4, "toString(...)");
                        String str7 = str;
                        if (str7 != null) {
                            string3 = str7 + " · " + string3;
                        }
                        String strS2 = MainActivity.s2();
                        U.a aVar5 = mainActivity4.f2384t;
                        if (aVar5 == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(mainActivity4.getString(R.string.k_linha_connadaptor, string3));
                        sb2.append("\n");
                        sb2.append(mainActivity4.getString(R.string.k_linha_carplaymonitor, string4));
                        sb2.append("\n");
                        sb2.append(strS2 != null ? mainActivity4.getString(R.string.k_linha_versao_central, strS2) : mainActivity4.getString(R.string.k_linha_versao_central_desconhecida));
                        if (str7 == null) {
                            sb2.append("\n");
                            sb2.append(strF0);
                        }
                        String str8 = str6;
                        if (str8 != null) {
                            sb2.append("\n");
                            sb2.append(str8);
                        }
                        String string5 = sb2.toString();
                        I0.f.d(string5, "toString(...)");
                        aVar5.y2.setText(string5);
                    }
                });
                return;
            case 3:
                int i7 = MainActivity.u0;
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder("awk -v target=");
                MainActivity mainActivity4 = this.b;
                mainActivity4.getClass();
                sb2.append(MainActivity.Y1("/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk"));
                sb2.append(" '$2 == target { print; found=1 } END { exit found ? 0 : 1 }' /proc/mounts");
                sb.append(sb2.toString());
                sb.append(" || true");
                String strC2 = mainActivity4.C1(5000, sb.toString());
                if (O0.j.x0(strC2, "Falha no ADB local", false)) {
                    z6 = false;
                } else {
                    N0.c cVarG0 = O0.j.G0(strC2);
                    Iterator it3 = cVarG0.b.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            String string3 = O0.j.X0((String) ((H0.l) cVarG0.f398c).b(it3.next())).toString();
                            Pattern patternCompile = Pattern.compile("\\s+");
                            I0.f.d(patternCompile, "compile(...)");
                            I0.f.e(string3, "input");
                            O0.j.L0(0);
                            Matcher matcher = patternCompile.matcher(string3);
                            if (matcher.find()) {
                                ArrayList arrayList = new ArrayList(10);
                                int iEnd = 0;
                                do {
                                    arrayList.add(string3.subSequence(iEnd, matcher.start()).toString());
                                    iEnd = matcher.end();
                                } while (matcher.find());
                                arrayList.add(string3.subSequence(iEnd, string3.length()).toString());
                                listG = arrayList;
                            } else {
                                listG = AbstractC0201a.G(string3.toString());
                            }
                            if (listG.size() >= 2 && I0.f.a(listG.get(1), "/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk")) {
                                z6 = true;
                            }
                        } else {
                            z6 = false;
                        }
                    }
                }
                if (z6 != mainActivity4.B0().getBoolean("keyserver_bind_enabled", false)) {
                    M.d0.m(mainActivity4, "keyserver_bind_enabled", z6);
                    if (z6) {
                        mainActivity4.startForegroundService(new Intent(mainActivity4, (Class<?>) CentralWatchdogService.class));
                    }
                    int[] iArr2 = CentralWatchdogService.d2;
                    CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 0));
                    }
                }
                mainActivity4.f2387v.post(new RunnableC0040c2(mainActivity4, z6, 2));
                return;
            case 4:
                int i8 = MainActivity.u0;
                String str7 = AbstractC0120p4.f1098a;
                MainActivity mainActivity5 = this.b;
                mainActivity5.f2387v.post(new RunnableC0040c2(mainActivity5, AbstractC0120p4.d(mainActivity5), 4));
                return;
            case 5:
                int i9 = MainActivity.u0;
                this.b.u1();
                return;
            case 6:
                int i10 = MainActivity.u0;
                ArrayList arrayList2 = new ArrayList();
                MainActivity mainActivity6 = this.b;
                String strA0 = mainActivity6.A0("br.com.central.dualdashcam");
                try {
                    lValueOf = Long.valueOf(mainActivity6.getPackageManager().getPackageInfo("br.com.central.dualdashcam", 0).versionCode);
                    break;
                } catch (Throwable unused5) {
                    lValueOf = null;
                }
                if (strA0 != null && lValueOf != null) {
                    try {
                        C0077i3 c0077i3N0 = MainActivity.n0("https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json");
                        long jLongValue = lValueOf.longValue();
                        str4 = "Update";
                        long j2 = c0077i3N0.f1006a;
                        if (j2 > jLongValue) {
                            try {
                                String string4 = mainActivity6.getString(R.string.k_dep_dualdashcam, strA0, c0077i3N0.b);
                                I0.f.d(string4, "getString(...)");
                                arrayList2.add(new C0113o3("dualdashcam", string4, String.valueOf(j2)));
                            } catch (Exception e5) {
                                e = e5;
                                str3 = str4;
                                mainActivity6.v(str3, "dep DualDashcam: " + e.getMessage());
                            }
                        }
                        str3 = str4;
                    } catch (Exception e6) {
                        e = e6;
                        str4 = "Update";
                    }
                    break;
                } else {
                    str3 = "Update";
                }
                if (mainActivity6.B0().getBoolean("gestures_enabled", false)) {
                    try {
                        String strM = C0097m.m();
                        v0.a aVar = strM == null ? null : new v0.a(strM, Boolean.valueOf(O0.s.s0(O0.j.X0(C0097m.b(15000, "sha256sum '/data/local/gesture-launcher/launcher.apk' 2>/dev/null | cut -d' ' -f1")).toString(), strM)));
                        if (aVar != null) {
                            String str8 = (String) aVar.f4155a;
                            if (!((Boolean) aVar.b).booleanValue()) {
                                String string5 = mainActivity6.getString(R.string.k_dep_gestures);
                                I0.f.d(string5, "getString(...)");
                                arrayList2.add(new C0113o3("gestos", string5, str8));
                            }
                        }
                    } catch (Exception e7) {
                        mainActivity6.v(str3, "dep gestos: " + e7.getMessage());
                    }
                    break;
                }
                File file4 = new File("/data/local/tmp/fixes/ca_fix.apk");
                if (file4.isFile()) {
                    try {
                        String strV2 = MainActivity.V0(MainActivity.q0(mainActivity6, null, 3).f1033a);
                        if (strV2 != null && !I0.f.a(mainActivity6.S0(file4), strV2)) {
                            String string6 = mainActivity6.getString(R.string.k_dep_connadaptor);
                            I0.f.d(string6, "getString(...)");
                            arrayList2.add(new C0113o3("connadaptor", string6, strV2));
                        }
                    } catch (Exception e8) {
                        mainActivity6.v(str3, "dep ConnAdaptor: " + e8.getMessage());
                    }
                    break;
                }
                if (mainActivity6.B0().getBoolean("keyserver_bind_enabled", false)) {
                    File file5 = new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk");
                    if (file5.isFile()) {
                        try {
                            C0101m3 c0101m3R1 = MainActivity.r0();
                            String str9 = c0101m3R1.f1055c;
                            if (!MainActivity.t0(file5, "SHA-256").equalsIgnoreCase(str9)) {
                                String string7 = mainActivity6.getString(R.string.k_dep_keyserver, c0101m3R1.f1054a);
                                I0.f.d(string7, "getString(...)");
                                arrayList2.add(new C0113o3("keyserver", string7, str9));
                            }
                        } catch (Exception e9) {
                            mainActivity6.v(str3, "dep KeyServer: " + e9.getMessage());
                        }
                    }
                    break;
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : arrayList2) {
                    C0113o3 c0113o3 = (C0113o3) obj;
                    if (!I0.f.a(mainActivity6.B0().getString("dep_update_notified_".concat(c0113o3.f1081a), null), c0113o3.f1082c)) {
                        arrayList3.add(obj);
                    }
                }
                if (arrayList3.isEmpty()) {
                    return;
                }
                mainActivity6.f2387v.post(new H(mainActivity6, 17, arrayList3));
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i11 = MainActivity.u0;
                String strD = z4.d();
                MainActivity mainActivity7 = this.b;
                mainActivity7.f2387v.post(new V1(mainActivity7, strD, 9));
                return;
            case Response.NO /* 8 */:
                int i12 = MainActivity.u0;
                MainActivity mainActivity8 = this.b;
                SharedPreferences sharedPreferencesB0 = mainActivity8.B0();
                I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                Y.c0(mainActivity8, sharedPreferencesB0);
                return;
            case 9:
                U.a aVar2 = this.b.f2384t;
                if (aVar2 != null) {
                    aVar2.y1.fullScroll(130);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 10:
                int i13 = MainActivity.u0;
                String strD2 = z4.d();
                MainActivity mainActivity9 = this.b;
                mainActivity9.f2387v.post(new V1(mainActivity9, strD2, 8));
                return;
            case 11:
                MainActivity mainActivity10 = this.b;
                int i14 = MainActivity.u0;
                try {
                    new File(mainActivity10.getCacheDir(), "CentralEXAuto-update-staging.apk").delete();
                    break;
                } catch (Exception unused6) {
                }
                try {
                    new File(mainActivity10.getCacheDir(), "ca_fix-update-staging.apk").delete();
                    break;
                } catch (Exception unused7) {
                }
                try {
                    new File("/data/local/tmp/CentralEXAuto-update.apk").delete();
                    break;
                } catch (Exception unused8) {
                }
                try {
                    new File("/data/local/tmp/ca_fix-update.apk").delete();
                    break;
                } catch (Exception unused9) {
                }
                StringBuilder sb3 = new StringBuilder("rm -f ");
                mainActivity10.getClass();
                sb3.append(MainActivity.Y1("/data/local/tmp/CentralEXAuto-update.apk"));
                sb3.append(' ');
                sb3.append(MainActivity.Y1("/data/local/tmp/ca_fix-update.apk"));
                sb3.append(" 2>/dev/null || true");
                mainActivity10.C1(5000, sb3.toString());
                return;
            case Response.BAD /* 12 */:
                MainActivity mainActivity11 = this.b;
                int i15 = MainActivity.u0;
                try {
                    C0119p3 c0119p3S0 = mainActivity11.s0();
                    long jE0 = mainActivity11.e0();
                    String strValueOf = mainActivity11.getPackageManager().getPackageInfo(mainActivity11.getPackageName(), 0).versionName;
                    if (strValueOf == null) {
                        strValueOf = String.valueOf(mainActivity11.e0());
                    }
                    long j3 = c0119p3S0.f1095a;
                    Handler handler = mainActivity11.f2387v;
                    if (j3 <= jE0) {
                        handler.post(new U1(25, mainActivity11));
                        return;
                    }
                    if (CentralWatchdogService.h2.get()) {
                        handler.post(new V1(mainActivity11, (String) CentralWatchdogService.i2.get(), i2));
                    }
                    handler.post(new RunnableC0168z(mainActivity11, strValueOf, c0119p3S0, 9));
                    return;
                } catch (Exception e10) {
                    mainActivity11.f2387v.post(new RunnableC0156w2(mainActivity11, e10, 1));
                    return;
                }
            case 13:
                int i16 = MainActivity.u0;
                MainActivity mainActivity12 = this.b;
                mainActivity12.getClass();
                mainActivity12.f2388w.execute(new G2(3, mainActivity12));
                return;
            case 14:
                MainActivity mainActivity13 = this.b;
                int i17 = MainActivity.u0;
                try {
                    File file6 = new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk");
                    try {
                        mainActivity13.getClass();
                        c0101m3R0 = MainActivity.r0();
                        break;
                    } catch (Exception unused10) {
                        if (!file6.isFile()) {
                            throw new IllegalStateException(mainActivity13.getString(R.string.k_keyserver_no_internet_first_download));
                        }
                        c0101m3R0 = null;
                    }
                    if (c0101m3R0 != null) {
                        if (file6.isFile()) {
                            mainActivity13.getClass();
                            strT0 = MainActivity.t0(file6, "SHA-256");
                        }
                        if (strT0 == null || !strT0.equalsIgnoreCase(c0101m3R0.f1055c)) {
                            mainActivity13.getClass();
                            mainActivity13.C1(8000, Y.C());
                            String str10 = c0101m3R0.b;
                            String str11 = c0101m3R0.f1055c;
                            E2 e11 = new E2(6, mainActivity13);
                            File file7 = new File(mainActivity13.getCacheDir(), "GeelyAutoKeyServer-patched-update-staging.apk");
                            MainActivity.j0(mainActivity13, str10, file7, "KeyServer", str11, null, 0, null, e11, 112);
                            mainActivity13.f2(file7, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk", "keyserver_patch", false);
                            mainActivity13.f2387v.post(new G2(4, mainActivity13));
                            mainActivity13.v("KeyServer", MainActivity.n2(12000, mainActivity13.C1(60000, Y.c())));
                        }
                    }
                    if (!new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk").isFile()) {
                        throw new IllegalStateException(mainActivity13.getString(R.string.k_keyserver_file_missing_after_download));
                    }
                    mainActivity13.f2387v.post(new G2(5, mainActivity13));
                    String strC3 = mainActivity13.C1(60000, Y.d());
                    mainActivity13.v("KeyServer", MainActivity.n2(12000, strC3));
                    zX1 = O0.j.x0(strC3, "BIND_KEYSERVER_MOUNT_OK", false);
                    try {
                        string2 = (zX1 && O0.j.x0(strC3, "KEYSERVER_SERVICE_RUNNING", false)) ? mainActivity13.getString(R.string.k_keyserver_activated) : zX1 ? mainActivity13.getString(R.string.k_keyserver_activated_service_down) : mainActivity13.getString(R.string.k_keyserver_error_activating);
                        break;
                    } catch (Exception e12) {
                        e = e12;
                        Log.w("KeyServerAtivador", "runKeyServerApply: exceção — " + e.getMessage(), e);
                        String message = e.getMessage();
                        if (message == null) {
                            message = e.getClass().getSimpleName();
                        }
                        string2 = mainActivity13.getString(R.string.k_keyserver_download_failed, message);
                    }
                    Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + zX1 + " message=\"" + string2 + '\"');
                    if (zX1) {
                        mainActivity13.B0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                        mainActivity13.startForegroundService(new Intent(mainActivity13, (Class<?>) CentralWatchdogService.class));
                        int[] iArr3 = CentralWatchdogService.d2;
                        CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.g2;
                        if (centralWatchdogService2 != null) {
                            centralWatchdogService2.f2190a.post(new RunnableC0169z0(centralWatchdogService2, i3));
                        }
                    }
                    mainActivity13.f2387v.post(new V1(mainActivity13, string2, 13));
                    return;
                } catch (Exception e13) {
                    e = e13;
                    zX1 = false;
                }
                break;
            case 15:
                int i18 = MainActivity.u0;
                MainActivity mainActivity14 = this.b;
                I0.f.e(mainActivity14, "context");
                try {
                    strV = C0097m.v(O0.l.n0("\n            DST=$(pm path com.flyme.auto.launcher | sed 's/^package://')\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            am force-stop com.flyme.auto.launcher 2>/dev/null || true\n            grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo AINDA_MONTADO || echo LIVRE\n            "), 15000, null, new C0103n(i3));
                    break;
                } catch (Exception e14) {
                    strV = "ADB_FAIL: " + e14.getMessage();
                }
                mainActivity14.f2387v.post(new RunnableC0040c2(mainActivity14, O0.j.x0(strV, "LIVRE", false), 8));
                return;
            case Response.BYE /* 16 */:
                int i19 = MainActivity.u0;
                MainActivity mainActivity15 = this.b;
                String strC4 = mainActivity15.C1(8000, "[ -f '/data/local/gesture-launcher/launcher.apk' ] && echo G_YES || echo G_NO");
                mainActivity15.f2387v.post(new H2(O0.j.x0(strC4, "G_YES", false), O0.j.E0(strC4) || O0.j.x0(strC4, "Falha no ADB local", false), mainActivity15));
                return;
            case 17:
                MainActivity mainActivity16 = this.b;
                int i20 = MainActivity.u0;
                boolean zB = AbstractC0120p4.b(mainActivity16);
                StringBuilder sb4 = new StringBuilder("apply ");
                sb4.append(zB ? "OK" : "FAIL");
                sb4.append('\n');
                sb4.append(MainActivity.n2(12000, AbstractC0120p4.f1098a));
                mainActivity16.v("RVC", sb4.toString());
                mainActivity16.f2387v.post(new RunnableC0040c2(mainActivity16, zB, 9));
                return;
            case 18:
                int i21 = MainActivity.u0;
                this.b.o1();
                return;
            case 19:
                a();
                return;
            case 20:
                int i22 = MainActivity.u0;
                this.b.q2();
                return;
            case 21:
                b();
                return;
            case 22:
                int i23 = MainActivity.u0;
                MainActivity mainActivity17 = this.b;
                mainActivity17.f2387v.post(new RunnableC0040c2(mainActivity17, O0.j.x0(mainActivity17.C1(8000, "pm path com.njda.adapter"), "/data/app/", false), 11));
                return;
            case 23:
                c();
                return;
            case 24:
                d();
                return;
            case 25:
                e();
                return;
            case 26:
                MainActivity mainActivity18 = this.b;
                U.a aVar3 = mainActivity18.f2384t;
                if (aVar3 != null) {
                    aVar3.S2.setText(mainActivity18.getString(R.string.k_car_connected));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 27:
                f();
                return;
            case Response.TYPE_MASK /* 28 */:
                g();
                return;
            default:
                WifiManager wifiManager = this.b.f2348E;
                if (wifiManager != null) {
                    wifiManager.setWifiEnabled(false);
                    return;
                } else {
                    I0.f.h("wifiManager");
                    throw null;
                }
        }
    }
}
