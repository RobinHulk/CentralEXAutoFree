package T;

import android.app.Service;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.SplitFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.imap.IMAPStore;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B0 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f478a;
    public final /* synthetic */ Service b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f479c;

    public /* synthetic */ B0(Service service, Object obj, int i2) {
        this.f478a = i2;
        this.b = service;
        this.f479c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b5  */
    @Override // H0.a
    public final Object a() {
        Object next;
        int iIntValue;
        String str = null;
        Integer num = null;
        str = null;
        switch (this.f478a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                final CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                centralWatchdogService.getClass();
                final boolean zB = CentralWatchdogService.b();
                final boolean z2 = centralWatchdogService.f2168J0 >= centralWatchdogService.f2159E0;
                final boolean z3 = z2 && (centralWatchdogService.z1 || (centralWatchdogService.A1 && centralWatchdogService.o()));
                Handler handler = centralWatchdogService.f2190a;
                final D0 d1 = (D0) this.f479c;
                handler.post(new Runnable() { // from class: T.C0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                        boolean z4 = zB;
                        boolean z5 = z2;
                        D0 d2 = d1;
                        boolean z6 = z3;
                        int[] iArr2 = CentralWatchdogService.d2;
                        if (CentralWatchdogService.f2 && centralWatchdogService2.G0) {
                            if (z4) {
                                centralWatchdogService2.y0("projeção ativa");
                                return;
                            }
                            if (z5) {
                                if (centralWatchdogService2.f2164H0 >= centralWatchdogService2.f2155C0) {
                                    centralWatchdogService2.y0("limite de pedidos de saúde");
                                    return;
                                }
                                if (!centralWatchdogService2.M().getBoolean("boot_stable", false)) {
                                    Log.i("CentralWatchdog", "AA trigger: sem conexão, mas boot ainda não estabilizou — adiando");
                                    centralWatchdogService2.f2190a.postDelayed(d2, centralWatchdogService2.f2157D0);
                                    return;
                                }
                                if (z6) {
                                    centralWatchdogService2.y0("CarPlay em sessão");
                                    return;
                                }
                                centralWatchdogService2.f2164H0++;
                                centralWatchdogService2.f2168J0 = 0;
                                L3.f671a.b("CentralWatchdog", "AA trigger: sem conexão em ~" + ((((long) centralWatchdogService2.f2159E0) * centralWatchdogService2.f2157D0) / ((long) IMAPStore.RESPONSE)) + "s — pedindo avaliação de saúde (#" + centralWatchdogService2.f2164H0 + "); não reinicio serviços por conta própria");
                                centralWatchdogService2.f2179P0 = 0L;
                                StringBuilder sb = new StringBuilder("AA trigger #");
                                sb.append(centralWatchdogService2.f2164H0);
                                centralWatchdogService2.y(sb.toString());
                                centralWatchdogService2.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService2, 12), 20000L);
                            }
                            if (centralWatchdogService2.f2166I0 >= centralWatchdogService2.f2161F0) {
                                centralWatchdogService2.y0("timeout geral");
                            } else {
                                centralWatchdogService2.f2190a.postDelayed(d2, centralWatchdogService2.f2157D0);
                            }
                        }
                    }
                });
                return v0.e.f4161c;
            case 1:
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.b;
                centralWatchdogService2.getClass();
                try {
                    String strB = new I1(5555).b(4000, "ip neigh show dev ap0 2>/dev/null");
                    I0.f.b(strB);
                    Iterator it = O0.j.H0(strB).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            next = it.next();
                            String str2 = (String) next;
                            Pattern patternCompile = Pattern.compile("^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+.*");
                            I0.f.d(patternCompile, "compile(...)");
                            I0.f.e(str2, "input");
                            if (patternCompile.matcher(str2).matches()) {
                                if (!O0.j.x0(str2, "REACHABLE", false) && !O0.j.x0(str2, "STALE", false) && !O0.j.x0(str2, "DELAY", false)) {
                                }
                            }
                        } else {
                            next = null;
                        }
                    }
                    String str3 = (String) next;
                    if (str3 != null) {
                        str = (String) w0.i.a0(O0.j.O0(str3, new String[]{" "}));
                    }
                } catch (Exception unused) {
                }
                centralWatchdogService2.f2190a.post(new RunnableC0168z(centralWatchdogService2, str, (D0) this.f479c, 1));
                return v0.e.f4161c;
            case 2:
                CentralWatchdogService centralWatchdogService3 = (CentralWatchdogService) this.b;
                D0 d2 = (D0) this.f479c;
                String str4 = "baixando ";
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int[] iArr3 = CentralWatchdogService.d2;
                    long j2 = centralWatchdogService3.M().getLong("update_check_next_at", 0L);
                    if (jCurrentTimeMillis >= j2 || j2 - jCurrentTimeMillis >= 43200000) {
                        centralWatchdogService3.M().edit().putLong("update_check_next_at", jCurrentTimeMillis + 1200000).apply();
                        AtomicReference atomicReference = CentralWatchdogService.i2;
                        atomicReference.set("verificando…");
                        A0 a0J = CentralWatchdogService.j(centralWatchdogService3);
                        centralWatchdogService3.M().edit().putLong("update_check_next_at", jCurrentTimeMillis + 3600000).apply();
                        long longVersionCode = centralWatchdogService3.getPackageManager().getPackageInfo(centralWatchdogService3.getPackageName(), 0).getLongVersionCode();
                        long j3 = centralWatchdogService3.M().getLong("update_attempt_vc", -1L);
                        if (0 <= j3 && j3 <= longVersionCode) {
                            centralWatchdogService3.M().edit().remove("update_attempt_vc").remove("update_attempt_count").apply();
                        }
                        try {
                            if (a0J.f468a > longVersionCode) {
                                str4 = "CentralWatchdog";
                                long j4 = centralWatchdogService3.M().getLong("update_attempt_vc", -1L);
                                int i2 = centralWatchdogService3.M().getInt("update_attempt_count", 0);
                                if (j4 != a0J.f468a || i2 < centralWatchdogService3.Z1) {
                                    Log.i(str4, "Auto-update: nova versão " + a0J.b + " (vc=" + a0J.f468a + " > " + longVersionCode + ')');
                                    CentralWatchdogService.h2.set(true);
                                    StringBuilder sb = new StringBuilder("baixando ");
                                    sb.append(a0J.b);
                                    sb.append((char) 8230);
                                    atomicReference.set(sb.toString());
                                    try {
                                        try {
                                            CentralWatchdogService.i(centralWatchdogService3, a0J);
                                            try {
                                                A0 a0J2 = CentralWatchdogService.j(centralWatchdogService3);
                                                if (a0J2.f468a > a0J.f468a) {
                                                    Log.i(str4, "Auto-update: versão ainda mais recente (" + a0J2.b + ") — re-baixando");
                                                    try {
                                                        atomicReference.set("baixando " + a0J2.b + " (re-check)…");
                                                        CentralWatchdogService.i(centralWatchdogService3, a0J2);
                                                        a0J = a0J2;
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        a0J = a0J2;
                                                        Log.w(str4, "Auto-update re-check falhou: " + e.getMessage());
                                                    }
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                            }
                                            centralWatchdogService3.M().edit().putLong("update_attempt_vc", a0J.f468a).putInt("update_attempt_count", (centralWatchdogService3.M().getLong("update_attempt_vc", -1L) == a0J.f468a ? centralWatchdogService3.M().getInt("update_attempt_count", 0) : 0) + 1).commit();
                                            CentralWatchdogService.i2.set("instalando " + a0J.b + " (a central pode reiniciar)…");
                                            Log.i(str4, "Auto-update install " + a0J.b + " (destacado): " + O0.j.W0(300, CentralWatchdogService.k(centralWatchdogService3)));
                                            CentralWatchdogService.h2.set(false);
                                        } catch (Exception e4) {
                                            int[] iArr4 = CentralWatchdogService.d2;
                                            AtomicReference atomicReference2 = CentralWatchdogService.i2;
                                            StringBuilder sb2 = new StringBuilder("falha download ");
                                            sb2.append(a0J.b);
                                            sb2.append(": ");
                                            String message = e4.getMessage();
                                            sb2.append(message != null ? O0.j.V0(120, message) : e4.getClass().getSimpleName());
                                            atomicReference2.set(sb2.toString());
                                            throw e4;
                                        }
                                    } catch (Throwable th) {
                                        CentralWatchdogService.h2.set(false);
                                        throw th;
                                    }
                                } else {
                                    atomicReference.set("instalação da " + a0J.b + " falhou " + i2 + "x — pausada (aguardando nova versão; ou instale manualmente)");
                                    Log.w(str4, "Auto-update: vc=" + a0J.f468a + " pausada após " + i2 + " falhas (guard anti-loop)");
                                    if (CentralWatchdogService.f2) {
                                        centralWatchdogService3.f2190a.postDelayed(d2, 60000L);
                                    }
                                }
                            } else {
                                atomicReference.set("ok (vc=" + longVersionCode + ", latest=" + a0J.f468a + ')');
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            AtomicReference atomicReference3 = CentralWatchdogService.i2;
                            String message2 = th.getMessage();
                            atomicReference3.set("erro: ".concat(message2 != null ? O0.j.V0(160, message2) : th.getClass().getSimpleName()));
                            M.d0.r(th, new StringBuilder("Auto-update erro: "), str4);
                        }
                        if (CentralWatchdogService.f2) {
                            centralWatchdogService3.f2190a.postDelayed(d2, 60000L);
                        }
                    } else {
                        CentralWatchdogService.i2.set("aguardando a próxima janela de consulta");
                        if (CentralWatchdogService.f2) {
                            centralWatchdogService3.f2190a.postDelayed(d2, 60000L);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    str4 = "CentralWatchdog";
                }
                return v0.e.f4161c;
            case 3:
                int[] iArr5 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService4 = (CentralWatchdogService) this.b;
                centralWatchdogService4.getClass();
                int[] iArr6 = {289408000, 289408001};
                for (int i3 = 0; i3 < 2; i3++) {
                    int i4 = iArr6[i3];
                    ExecutorService executorService = U.f804a;
                    Object objE = U.e((CarPropertyManager) this.f479c, i4, 0);
                    Integer num2 = objE instanceof Integer ? (Integer) objE : null;
                    if (num2 != null && num2.intValue() != 0) {
                        num = num2;
                        if (num != null && (iIntValue = num.intValue()) != centralWatchdogService4.f2167J) {
                            centralWatchdogService4.f2167J = iIntValue;
                            Log.i("CentralWatchdog", "poll: troca de marcha (val=" + iIntValue + ") — reaplicar drive/regen");
                            if (!DriveRegenFloaterService.f2579J) {
                                Handler handler2 = centralWatchdogService4.f2190a;
                                RunnableC0116p0 runnableC0116p0 = centralWatchdogService4.Q1;
                                handler2.removeCallbacks(runnableC0116p0);
                                handler2.postDelayed(runnableC0116p0, 600L);
                            }
                        }
                        return v0.e.f4161c;
                    }
                }
                if (num != null) {
                    centralWatchdogService4.f2167J = iIntValue;
                    Log.i("CentralWatchdog", "poll: troca de marcha (val=" + iIntValue + ") — reaplicar drive/regen");
                    if (!DriveRegenFloaterService.f2579J) {
                        Handler handler3 = centralWatchdogService4.f2190a;
                        RunnableC0116p0 runnableC0116p1 = centralWatchdogService4.Q1;
                        handler3.removeCallbacks(runnableC0116p1);
                        handler3.postDelayed(runnableC0116p1, 600L);
                    }
                }
                return v0.e.f4161c;
            case 4:
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                quickAccessFloaterService.startForegroundService(new Intent(quickAccessFloaterService, (Class<?>) SplitFloaterService.class));
                quickAccessFloaterService.j();
                new Thread(new T0((D) this.f479c, 9)).start();
                return v0.e.f4161c;
            default:
                List list2 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.b;
                quickAccessFloaterService2.startForegroundService(new Intent(quickAccessFloaterService2, (Class<?>) AppPipFloaterService.class).putExtra("pacote", ((C) this.f479c).b));
                quickAccessFloaterService2.j();
                return v0.e.f4161c;
        }
    }
}
