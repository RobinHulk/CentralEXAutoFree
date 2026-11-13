package T;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class D0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f538a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ D0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f538a = i2;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        F3 f3;
        F3 f4;
        F3 f5;
        String strConcat;
        String str;
        CarPropertyManager carPropertyManager;
        int i2 = 3;
        int i3 = 1;
        Object[] objArr = 0;
        switch (this.f538a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    CentralWatchdogService centralWatchdogService = this.b;
                    if (centralWatchdogService.G0) {
                        centralWatchdogService.f2166I0++;
                        centralWatchdogService.f2168J0++;
                        U0.a(new B0(centralWatchdogService, this, objArr == true ? 1 : 0));
                        return;
                    }
                    return;
                }
                return;
            case 1:
                int[] iArr2 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    if (this.b.n()) {
                        ExecutorService executorService = U0.f805a;
                        U0.a(new B0(this.b, this, i3));
                        return;
                    } else {
                        CentralWatchdogService centralWatchdogService2 = this.b;
                        centralWatchdogService2.V = null;
                        centralWatchdogService2.f2186W = null;
                        centralWatchdogService2.f2187X = null;
                        return;
                    }
                }
                return;
            case 2:
                int[] iArr3 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    List list = J3.f637a;
                    J3.l(this.b);
                    if (this.b.M().getBoolean("auto_update_enabled", true)) {
                        ExecutorService executorService2 = U0.f805a;
                        U0.a(new B0(this.b, this, 2));
                        return;
                    } else {
                        CentralWatchdogService.i2.set("auto-update desligado (Config → Atualizações)");
                        this.b.f2190a.postDelayed(this, 60000L);
                        return;
                    }
                }
                return;
            case 3:
                int[] iArr4 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    if (this.b.M().getBoolean("remember_brightness", false)) {
                        ExecutorService executorService3 = U0.f805a;
                        U0.b("brightness-memory", new C0050e0(this.b, 4));
                    }
                    this.b.f2190a.postDelayed(this, 8000L);
                    return;
                }
                return;
            case 4:
                int[] iArr5 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    CarPropertyManager carPropertyManager2 = this.b.f2200g;
                    if (carPropertyManager2 != null && !DriveRegenFloaterService.f2579J) {
                        ExecutorService executorService4 = U0.f805a;
                        U0.b("drive-regen-gear", new B0(this.b, carPropertyManager2, i2));
                    }
                    CentralWatchdogService centralWatchdogService3 = this.b;
                    int i4 = centralWatchdogService3.f2167J;
                    long j2 = (i4 != 8 && (i4 < 16 || i4 > 4096)) ? centralWatchdogService3.f2169K : centralWatchdogService3.f2171L;
                    if (CentralWatchdogService.f2) {
                        this.b.f2190a.postDelayed(this, j2);
                        return;
                    }
                    return;
                }
                return;
            case 5:
                int[] iArr6 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    final List listV = Y.V(this.b);
                    if (listV.isEmpty()) {
                        return;
                    }
                    CentralWatchdogService centralWatchdogService4 = this.b;
                    int i5 = centralWatchdogService4.f2201g0;
                    final boolean z2 = i5 % 3 == 0;
                    centralWatchdogService4.f2201g0 = i5 + 1;
                    U0.b("keep-alive", new H0.a() { // from class: T.H0
                        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, java.util.List] */
                        @Override // H0.a
                        public final Object a() {
                            boolean z3;
                            StringBuilder sb = new StringBuilder("setenforce 0 2>/dev/null || true\n");
                            Iterator it = listV.iterator();
                            while (true) {
                                boolean zHasNext = it.hasNext();
                                z3 = z2;
                                if (zHasNext) {
                                    String str2 = (String) it.next();
                                    sb.append("pid=$(pidof '" + str2 + "' 2>/dev/null)\n");
                                    sb.append("if [ -n \"$pid\" ]; then\n  for p in $pid; do echo -900 > /proc/$p/oom_score_adj 2>/dev/null; done\n");
                                    sb.append("  echo \"KeepAliveProbe " + str2 + " pid=$pid adj=$(cat /proc/$(echo $pid | cut -d' ' -f1)/oom_score_adj 2>&1)\"\n");
                                    sb.append("else\n");
                                    sb.append("  echo \"KeepAliveProbe " + str2 + " not_running\"\n");
                                    sb.append("fi\n");
                                    if (z3) {
                                        sb.append("dumpsys deviceidle whitelist +'" + str2 + "' 2>&1\n");
                                        sb.append("am set-standby-bucket '" + str2 + "' active 2>&1\n");
                                        sb.append("cmd appops set '" + str2 + "' RUN_ANY_IN_BACKGROUND allow 2>&1\n");
                                        sb.append("cmd appops set '" + str2 + "' RUN_IN_BACKGROUND allow 2>&1\n");
                                    }
                                } else {
                                    try {
                                        break;
                                    } catch (Exception e2) {
                                        M.d0.n(e2, new StringBuilder("keepAlive: "), "CentralWatchdog");
                                    }
                                }
                            }
                            String string = sb.toString();
                            I0.f.d(string, "toString(...)");
                            String strV = C0097m.v(string, 8000, null, new C0103n(0));
                            if (z3) {
                                Log.i("CentralWatchdog", "keepAlive: " + O0.j.X0(strV).toString());
                            }
                            return v0.e.f4161c;
                        }
                    });
                    this.b.f2190a.postDelayed(this, 10000L);
                    return;
                }
                return;
            case 6:
                int[] iArr7 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    G3 g3 = G3.f592a;
                    synchronized (g3) {
                        f3 = G3.f593c;
                        long j3 = f3.b;
                        f4 = G3.f594d;
                        long j4 = j3 + f4.b;
                        f5 = G3.f595e;
                        i3 = j4 + f5.b <= 0 ? 0 : 1;
                    }
                    if (i3 != 0) {
                        L3 l3 = L3.f671a;
                        synchronized (g3) {
                            try {
                                HashMap map = G3.f;
                                if (map.isEmpty()) {
                                    strConcat = "";
                                } else {
                                    Set setEntrySet = map.entrySet();
                                    I0.f.d(setEntrySet, "<get-entries>(...)");
                                    strConcat = " · filas máx: ".concat(w0.i.d0(setEntrySet, " ", null, null, new C0029a3(7), 30));
                                }
                                str = G3.a(f3) + " · " + G3.a(f4) + " · " + G3.a(f5) + strConcat;
                                for (F3 f6 : w0.j.T(f3, f4, f5)) {
                                    f6.b = 0L;
                                    f6.f565c = 0L;
                                    f6.f566d = 0L;
                                    f6.f567e = 0L;
                                    long[] jArr = f6.f;
                                    Arrays.fill(jArr, 0, jArr.length, 0L);
                                }
                                G3.f.clear();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        l3.b("Metricas", str);
                    }
                    CentralWatchdogService centralWatchdogService5 = this.b;
                    centralWatchdogService5.f2190a.postDelayed(this, centralWatchdogService5.a2);
                    return;
                }
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int[] iArr8 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2 && (carPropertyManager = this.b.f2220r) != null) {
                    if (!this.b.f2231x) {
                        this.b.f2231x = true;
                        try {
                            U0.f805a.execute(new H(this.b, i2, carPropertyManager));
                        } catch (RejectedExecutionException unused) {
                            this.b.f2231x = false;
                        }
                        break;
                    }
                    this.b.f2190a.postDelayed(this, 2500L);
                    return;
                }
                return;
            case Response.NO /* 8 */:
                int[] iArr9 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    final int i6 = this.b.M().getInt("screen_rest_timeout_sec", 0);
                    if (i6 <= 0) {
                        CentralWatchdogService centralWatchdogService6 = this.b;
                        centralWatchdogService6.n0 = -1L;
                        centralWatchdogService6.f2190a.postDelayed(this, centralWatchdogService6.f2208k0);
                        return;
                    }
                    List list2 = QuickAccessFloaterService.f2436j0;
                    if (!QuickAccessFloaterService.n0) {
                        ExecutorService executorService5 = U0.f805a;
                        final CentralWatchdogService centralWatchdogService7 = this.b;
                        U0.a(new H0.a() { // from class: T.K0
                            @Override // H0.a
                            public final Object a() {
                                int[] iArr10 = CentralWatchdogService.d2;
                                StringBuilder sb = new StringBuilder("grep ");
                                final CentralWatchdogService centralWatchdogService8 = centralWatchdogService7;
                                sb.append(centralWatchdogService8.f2206j0);
                                sb.append(" /proc/interrupts");
                                String strC = CentralWatchdogService.c(3000, sb.toString());
                                I0.l lVar = centralWatchdogService8.f2219q0;
                                lVar.getClass();
                                I0.f.e(strC, "input");
                                if (strC.length() < 0) {
                                    throw new IndexOutOfBoundsException("Start index out of bounds: 0, input length: " + strC.length());
                                }
                                N0.e eVar = new N0.e(new F0.b(new O0.f(lVar, strC, 0)));
                                long jLongValue = 0;
                                while (eVar.hasNext()) {
                                    String strGroup = ((O0.e) eVar.next()).f421a.group();
                                    I0.f.d(strGroup, "group(...)");
                                    Long lQ0 = O0.r.q0(strGroup);
                                    jLongValue += lQ0 != null ? lQ0.longValue() : 0L;
                                }
                                Handler handler = centralWatchdogService8.f2190a;
                                final int i7 = i6;
                                final D0 d1 = this;
                                final long j5 = jLongValue;
                                handler.post(new Runnable() { // from class: T.L0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final CentralWatchdogService centralWatchdogService9 = centralWatchdogService8;
                                        long j6 = j5;
                                        final int i8 = i7;
                                        D0 d2 = d1;
                                        int[] iArr11 = CentralWatchdogService.d2;
                                        if (CentralWatchdogService.f2) {
                                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                                            long j7 = centralWatchdogService9.n0;
                                            if (j7 < 0 || j6 != j7) {
                                                centralWatchdogService9.f2215o0 = jElapsedRealtime;
                                                centralWatchdogService9.f2217p0 = false;
                                            }
                                            centralWatchdogService9.n0 = j6;
                                            long j8 = jElapsedRealtime - centralWatchdogService9.f2215o0;
                                            if (!centralWatchdogService9.f2217p0 && j8 >= ((long) i8) * 1000) {
                                                U0.a(new H0.a() { // from class: T.M0
                                                    /* JADX WARN: Code duplicated, block: B:12:0x0043  */
                                                    @Override // H0.a
                                                    public final Object a() {
                                                        final CentralWatchdogService centralWatchdogService10 = centralWatchdogService9;
                                                        String str2 = centralWatchdogService10.f2212m0;
                                                        String str3 = centralWatchdogService10.f2210l0;
                                                        final boolean z3 = false;
                                                        try {
                                                            Object systemService = centralWatchdogService10.getSystemService("activity");
                                                            I0.f.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                                                            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                                                            I0.f.d(runningTasks, "getRunningTasks(...)");
                                                            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) w0.i.a0(runningTasks);
                                                            ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                                                            if (componentName != null) {
                                                                String strFlattenToShortString = componentName.flattenToShortString();
                                                                I0.f.d(strFlattenToShortString, "flattenToShortString(...)");
                                                                if (O0.j.x0(strFlattenToShortString, str3, false) && !O0.j.x0(strFlattenToShortString, str2, false)) {
                                                                    z3 = true;
                                                                }
                                                            } else {
                                                                String strC2 = CentralWatchdogService.c(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                                                                if (O0.j.x0(strC2, str3, false) && !O0.j.x0(strC2, str2, false)) {
                                                                    z3 = true;
                                                                }
                                                            }
                                                        } catch (Throwable unused2) {
                                                        }
                                                        Handler handler2 = centralWatchdogService10.f2190a;
                                                        final int i9 = i8;
                                                        handler2.post(new Runnable() { // from class: T.N0
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                boolean z4 = z3;
                                                                CentralWatchdogService centralWatchdogService11 = centralWatchdogService10;
                                                                int i10 = i9;
                                                                int[] iArr12 = CentralWatchdogService.d2;
                                                                if (CentralWatchdogService.f2) {
                                                                    if (!z4) {
                                                                        Log.i("CentralWatchdog", "Descanso de Tela: " + i10 + "s sem toque, mas fora da tela principal — não aciona");
                                                                        return;
                                                                    }
                                                                    centralWatchdogService11.f2217p0 = true;
                                                                    Log.i("CentralWatchdog", "Descanso de Tela: " + i10 + "s sem toque físico na tela principal — acionando overlay");
                                                                    List list3 = QuickAccessFloaterService.f2436j0;
                                                                    QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                                                                    if (quickAccessFloaterService != null) {
                                                                        quickAccessFloaterService.S(true);
                                                                    }
                                                                }
                                                            }
                                                        });
                                                        return v0.e.f4161c;
                                                    }
                                                });
                                            }
                                            centralWatchdogService9.f2190a.postDelayed(d2, centralWatchdogService9.f2208k0);
                                        }
                                    }
                                });
                                return v0.e.f4161c;
                            }
                        });
                        return;
                    } else {
                        this.b.f2215o0 = SystemClock.elapsedRealtime();
                        CentralWatchdogService centralWatchdogService8 = this.b;
                        centralWatchdogService8.f2217p0 = false;
                        centralWatchdogService8.f2190a.postDelayed(this, centralWatchdogService8.f2208k0);
                        return;
                    }
                }
                return;
            default:
                int[] iArr10 = CentralWatchdogService.d2;
                if (CentralWatchdogService.f2) {
                    List list3 = J3.f637a;
                    if (this.b.M().getBoolean("modo_oficina", false)) {
                        J3.j(this.b);
                        J3.l(this.b);
                        this.b.f2190a.postDelayed(this, 15000L);
                        return;
                    }
                    final boolean z3 = this.b.M().getBoolean("status_temp_ext_enabled", false);
                    final boolean z4 = this.b.M().getBoolean("status_battery_enabled", false);
                    final boolean z5 = this.b.M().getBoolean("status_total_km_enabled", false);
                    final boolean z6 = this.b.M().getBoolean("status_trip_km_enabled", false);
                    final boolean z7 = this.b.M().getBoolean("status_signal_enabled", false);
                    if (z3 || z4 || z5 || z6 || z7) {
                        if (this.b.f2203i == null) {
                            CentralWatchdogService.e(this.b);
                        }
                        ExecutorService executorService6 = U0.f805a;
                        final CentralWatchdogService centralWatchdogService9 = this.b;
                        U0.b("status-icons", new H0.a() { // from class: T.O0
                            /* JADX WARN: Code duplicated, block: B:29:0x0071  */
                            /* JADX WARN: Code duplicated, block: B:37:0x0084  */
                            @Override // H0.a
                            public final Object a() {
                                final Float fL;
                                final Float fM;
                                int level;
                                boolean z8;
                                final boolean z9 = z3;
                                final CentralWatchdogService centralWatchdogService10 = centralWatchdogService9;
                                final boolean z10 = z4;
                                final boolean z11 = z5;
                                final boolean z12 = z6;
                                final boolean z13 = z7;
                                Float fK = null;
                                if (z9) {
                                    HashMap map2 = A4.f474a;
                                    fL = A4.l(centralWatchdogService10.f2203i);
                                } else {
                                    fL = null;
                                }
                                if (z10) {
                                    HashMap map3 = A4.f474a;
                                    fM = A4.m(centralWatchdogService10.f2203i);
                                } else {
                                    fM = null;
                                }
                                if (z11 || z12) {
                                    HashMap map4 = A4.f474a;
                                    CarPropertyManager carPropertyManager3 = centralWatchdogService10.f2203i;
                                    if (carPropertyManager3 != null && (fK = A4.k(carPropertyManager3, 289407492)) == null && (fK = A4.k(carPropertyManager3, 291504644)) == null) {
                                        fK = A4.k(carPropertyManager3, 557885100);
                                    }
                                }
                                final Float f = fK;
                                final I0.k kVar = new I0.k();
                                final I0.i iVar = new I0.i();
                                if (z13) {
                                    try {
                                        TelephonyManager telephonyManager = (TelephonyManager) centralWatchdogService10.getSystemService(TelephonyManager.class);
                                        if (telephonyManager != null) {
                                            try {
                                                SignalStrength signalStrength = telephonyManager.getSignalStrength();
                                                if (signalStrength != null) {
                                                    level = signalStrength.getLevel();
                                                } else {
                                                    level = 0;
                                                }
                                            } catch (Throwable unused2) {
                                            }
                                        } else {
                                            level = 0;
                                        }
                                        kVar.f124a = level;
                                        if (telephonyManager != null) {
                                            try {
                                                ServiceState serviceState = telephonyManager.getServiceState();
                                                if (serviceState == null || serviceState.getState() != 0) {
                                                    z8 = false;
                                                } else {
                                                    z8 = true;
                                                }
                                            } catch (Throwable unused3) {
                                            }
                                        } else {
                                            z8 = false;
                                        }
                                        iVar.f122a = z8;
                                    } catch (Throwable unused4) {
                                    }
                                }
                                Log.i("KmIconProbe", "totalKmOn=" + z11 + " tripKmOn=" + z12 + " odo=" + f);
                                final I0.l lVar = new I0.l(0);
                                if (z12 && f != null && f.floatValue() > 0.0f) {
                                    int[] iArr11 = CentralWatchdogService.d2;
                                    float f2 = centralWatchdogService10.M().getFloat("trip_start_odometer_km", -1.0f);
                                    if (f2 <= 0.0f) {
                                        centralWatchdogService10.M().edit().putFloat("trip_start_odometer_km", f.floatValue()).apply();
                                        L3.f671a.b("CentralWatchdog", "viagem: início gravado pela primeira vez em " + ((int) f.floatValue()) + " km");
                                        lVar.b = Float.valueOf(0.0f);
                                    } else if (f2 > f.floatValue()) {
                                        lVar.b = Float.valueOf(0.0f);
                                        if (!centralWatchdogService10.X1) {
                                            centralWatchdogService10.X1 = true;
                                            L3.f671a.b("CentralWatchdog", "viagem: odômetro (" + ((int) f.floatValue()) + ") < início guardado (" + ((int) f2) + ") — leitura suspeita, mantendo o início");
                                        }
                                    } else {
                                        lVar.b = Float.valueOf(f.floatValue() - f2);
                                        centralWatchdogService10.X1 = false;
                                    }
                                }
                                centralWatchdogService10.f2190a.post(new Runnable() { // from class: T.P0
                                    /* JADX WARN: Code duplicated, block: B:24:0x0094  */
                                    /* JADX WARN: Code duplicated, block: B:25:0x00b0  */
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        String str2;
                                        boolean z14;
                                        String strI;
                                        String str3;
                                        int i7;
                                        String str4;
                                        String strValueOf;
                                        int i8;
                                        String string;
                                        CentralWatchdogService centralWatchdogService11 = centralWatchdogService10;
                                        boolean z15 = z9;
                                        Float f7 = fL;
                                        boolean z16 = z10;
                                        Float f8 = fM;
                                        boolean z17 = z11;
                                        Float f9 = f;
                                        boolean z18 = z12;
                                        I0.l lVar2 = lVar;
                                        boolean z19 = z13;
                                        I0.k kVar2 = kVar;
                                        I0.i iVar2 = iVar;
                                        List list4 = J3.f637a;
                                        int[] iArr12 = CentralWatchdogService.d2;
                                        if (!centralWatchdogService11.M().getBoolean("modo_oficina", false) && CentralWatchdogService.f2) {
                                            if (z15) {
                                                HashMap map5 = A4.f474a;
                                                if (J3.a(centralWatchdogService11)) {
                                                    str2 = "";
                                                    z14 = z19;
                                                } else {
                                                    if (f7 != null) {
                                                        int iRound = Math.round(f7.floatValue());
                                                        if (iRound < -100 || iRound > 100) {
                                                            str4 = "";
                                                            str2 = str4;
                                                            i8 = -65536;
                                                            strValueOf = "X";
                                                        } else {
                                                            strValueOf = String.valueOf(iRound);
                                                            str2 = "";
                                                            str4 = "°C";
                                                        }
                                                        String string2 = centralWatchdogService11.getString(R.string.k_temp_icon_title);
                                                        I0.f.d(string2, "getString(...)");
                                                        if (f7 != null) {
                                                            string = centralWatchdogService11.getString(R.string.k_temp_icon_text, Integer.valueOf(Math.round(f7.floatValue())));
                                                        } else {
                                                            string = centralWatchdogService11.getString(R.string.k_status_unavailable);
                                                        }
                                                        I0.f.b(string);
                                                        Context applicationContext = centralWatchdogService11.getApplicationContext();
                                                        I0.f.d(applicationContext, "getApplicationContext(...)");
                                                        z14 = z19;
                                                        A4.j(centralWatchdogService11, 15021, 15, 22, "StatusIcon_OutsideTemperature", string2, string, A4.a(applicationContext, strValueOf, str4, i8, 10, true, false, 0.82f), null);
                                                    } else {
                                                        str4 = "";
                                                        str2 = str4;
                                                        strValueOf = "?";
                                                    }
                                                    i8 = -1;
                                                    String string3 = centralWatchdogService11.getString(R.string.k_temp_icon_title);
                                                    I0.f.d(string3, "getString(...)");
                                                    if (f7 != null) {
                                                        string = centralWatchdogService11.getString(R.string.k_temp_icon_text, Integer.valueOf(Math.round(f7.floatValue())));
                                                    } else {
                                                        string = centralWatchdogService11.getString(R.string.k_status_unavailable);
                                                    }
                                                    I0.f.b(string);
                                                    Context applicationContext2 = centralWatchdogService11.getApplicationContext();
                                                    I0.f.d(applicationContext2, "getApplicationContext(...)");
                                                    z14 = z19;
                                                    A4.j(centralWatchdogService11, 15021, 15, 22, "StatusIcon_OutsideTemperature", string3, string, A4.a(applicationContext2, strValueOf, str4, i8, 10, true, false, 0.82f), null);
                                                }
                                            } else {
                                                str2 = "";
                                                z14 = z19;
                                                HashMap map6 = A4.f474a;
                                                A4.e(centralWatchdogService11);
                                            }
                                            if (z16) {
                                                HashMap map7 = A4.f474a;
                                                if (!J3.a(centralWatchdogService11)) {
                                                    if (f8 != null) {
                                                        int iRound2 = Math.round(f8.floatValue());
                                                        strI = A4.i(f8.floatValue());
                                                        if (iRound2 >= 80) {
                                                            i7 = -14696587;
                                                        } else {
                                                            i7 = iRound2 < 20 ? -30208 : -1;
                                                        }
                                                        str3 = "%";
                                                    } else {
                                                        strI = "?";
                                                        str3 = str2;
                                                        i7 = -1;
                                                    }
                                                    String string4 = centralWatchdogService11.getString(R.string.k_battery_icon_title);
                                                    I0.f.d(string4, "getString(...)");
                                                    String string5 = f8 != null ? centralWatchdogService11.getString(R.string.k_battery_icon_text, A4.i(f8.floatValue())) : centralWatchdogService11.getString(R.string.k_status_unavailable);
                                                    I0.f.b(string5);
                                                    Context applicationContext3 = centralWatchdogService11.getApplicationContext();
                                                    I0.f.d(applicationContext3, "getApplicationContext(...)");
                                                    A4.j(centralWatchdogService11, 15020, 97, 32, "StatusIcon_BatteryPercent", string4, string5, A4.a(applicationContext3, strI, str3, i7, 10, true, false, 0.82f), null);
                                                }
                                            } else {
                                                HashMap map8 = A4.f474a;
                                                A4.d(centralWatchdogService11);
                                            }
                                            if (z17) {
                                                HashMap map9 = A4.f474a;
                                                if (!J3.a(centralWatchdogService11)) {
                                                    String strValueOf2 = f9 != 0 ? String.valueOf(Math.round(f9.floatValue())) : "?";
                                                    String string6 = centralWatchdogService11.getString(R.string.k_total_km_icon_title);
                                                    I0.f.d(string6, r12);
                                                    String string7 = f9 != 0 ? centralWatchdogService11.getString(R.string.k_total_km_icon_text, Integer.valueOf(Math.round(f9.floatValue()))) : centralWatchdogService11.getString(R.string.k_status_unavailable);
                                                    I0.f.b(string7);
                                                    Context applicationContext4 = centralWatchdogService11.getApplicationContext();
                                                    I0.f.d(applicationContext4, "getApplicationContext(...)");
                                                    A4.j(centralWatchdogService11, 15028, 96, 33, "StatusIcon_TotalMileage", string6, string7, A4.a(applicationContext4, strValueOf2, "km", -1, 0, false, true, 0.55f), null);
                                                }
                                            } else {
                                                HashMap map10 = A4.f474a;
                                                A4.f(centralWatchdogService11);
                                            }
                                            if (z18) {
                                                HashMap map11 = A4.f474a;
                                                Float f10 = (Float) lVar2.b;
                                                if (!J3.a(centralWatchdogService11)) {
                                                    String strValueOf3 = f10 != null ? String.valueOf(Math.round(f10.floatValue())) : "?";
                                                    PendingIntent foregroundService = PendingIntent.getForegroundService(centralWatchdogService11.getApplicationContext(), 94, new Intent(centralWatchdogService11.getApplicationContext(), (Class<?>) CentralWatchdogService.class).putExtra("zerar_viagem", true), 201326592);
                                                    String string8 = centralWatchdogService11.getString(R.string.k_trip_km_icon_title);
                                                    I0.f.d(string8, r12);
                                                    String string9 = f10 != null ? centralWatchdogService11.getString(R.string.k_trip_km_icon_text, Integer.valueOf(Math.round(f10.floatValue()))) : centralWatchdogService11.getString(R.string.k_status_unavailable);
                                                    I0.f.b(string9);
                                                    Context applicationContext5 = centralWatchdogService11.getApplicationContext();
                                                    I0.f.d(applicationContext5, "getApplicationContext(...)");
                                                    A4.j(centralWatchdogService11, 15026, 94, 23, "StatusIcon_TripMileage", string8, string9, A4.a(applicationContext5, strValueOf3, "km", -1, 0, false, true, 0.55f), foregroundService);
                                                }
                                            } else {
                                                HashMap map12 = A4.f474a;
                                                A4.g(centralWatchdogService11);
                                            }
                                            Class<NotificationManager> cls = NotificationManager.class;
                                            if (!z14) {
                                                NotificationManager notificationManager = (NotificationManager) centralWatchdogService11.getApplicationContext().getSystemService(cls);
                                                if (notificationManager != null) {
                                                    notificationManager.cancel(15030);
                                                    return;
                                                }
                                                return;
                                            }
                                            int i9 = kVar2.f124a;
                                            boolean z20 = iVar2.f122a;
                                            if (J3.a(centralWatchdogService11)) {
                                                return;
                                            }
                                            int iO = z20 ? A.b.o(i9, 0, 4) : 0;
                                            Context applicationContext6 = centralWatchdogService11.getApplicationContext();
                                            I0.f.d(applicationContext6, "getApplicationContext(...)");
                                            int iD = (int) (AbstractC0126q4.d(applicationContext6, 56) / 0.61f);
                                            if (iD < 1) {
                                                iD = 1;
                                            }
                                            int iD2 = AbstractC0126q4.d(applicationContext6, 8);
                                            int iD3 = AbstractC0126q4.d(applicationContext6, 10);
                                            int iD4 = AbstractC0126q4.d(applicationContext6, 6);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((3 * iD4) + (iD3 * 4) + (iD2 * 2), iD, Bitmap.Config.ARGB_8888);
                                            Canvas canvas = new Canvas(bitmapCreateBitmap);
                                            Paint paint = new Paint(1);
                                            float fD = AbstractC0126q4.d(applicationContext6, 2);
                                            float f11 = iD;
                                            float f12 = 0.92f * f11;
                                            float f13 = 0.55f * f11;
                                            float f14 = f11 * 0.1f;
                                            int i10 = 4;
                                            int i11 = 0;
                                            while (i11 < i10) {
                                                float f15 = iD2;
                                                int i12 = iD2;
                                                float f16 = i11;
                                                Class<NotificationManager> cls2 = cls;
                                                float f17 = ((iD3 + iD4) * f16) + f15;
                                                float f18 = f14;
                                                int i13 = iD4;
                                                float f19 = f13 - ((f16 / (4 - 1.0f)) * (f13 - f14));
                                                paint.setColor(i11 < iO ? -1 : 1090519039);
                                                canvas.drawRoundRect(new RectF(f17, f19, iD3 + f17, f12), fD, fD, paint);
                                                i11++;
                                                i10 = 4;
                                                iD4 = i13;
                                                iD2 = i12;
                                                cls = cls2;
                                                f14 = f18;
                                            }
                                            Class<NotificationManager> cls3 = cls;
                                            Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
                                            I0.f.d(iconCreateWithBitmap, "createWithBitmap(...)");
                                            String string10 = !z20 ? centralWatchdogService11.getString(R.string.k_signal_icon_no_service) : centralWatchdogService11.getString(R.string.k_signal_icon_text, Integer.valueOf(iO));
                                            I0.f.b(string10);
                                            String string11 = centralWatchdogService11.getString(R.string.k_signal_icon_title);
                                            I0.f.d(string11, r12);
                                            Context applicationContext7 = centralWatchdogService11.getApplicationContext();
                                            NotificationManager notificationManager2 = (NotificationManager) applicationContext7.getSystemService(cls3);
                                            if (notificationManager2 == null) {
                                                return;
                                            }
                                            NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_signal", applicationContext7.getString(R.string.k_signal_icon_channel), 2);
                                            notificationChannel.setShowBadge(false);
                                            notificationManager2.createNotificationChannel(notificationChannel);
                                            Notification notificationBuild = new Notification.Builder(applicationContext7, "central_ex_status_signal").setSmallIcon(iconCreateWithBitmap).setContentTitle(string11).setContentText(string10).setContentIntent(PendingIntent.getActivity(applicationContext7, 93, new Intent(applicationContext7, (Class<?>) MainActivity.class), 201326592)).setOngoing(true).setShowWhen(false).build();
                                            I0.f.d(notificationBuild, "build(...)");
                                            Bundle bundle = notificationBuild.extras;
                                            bundle.putBoolean("flag_status_icon_notification", true);
                                            bundle.putInt("flag_status_icon_id", 93);
                                            bundle.putString("flag_status_icon_describe", "StatusIcon_PhoneSignal");
                                            bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
                                            bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
                                            bundle.putBoolean("flag_status_icon_hide", false);
                                            bundle.putInt("flag_status_icon_rank", 33);
                                            bundle.putInt("flag_status_icon_space_x", 1);
                                            bundle.putBoolean("flag_status_icon_is_pick_on", false);
                                            bundle.putInt("flag_status_icon_specific_width", 0);
                                            try {
                                                notificationManager2.notify(15030, notificationBuild);
                                            } catch (Throwable unused5) {
                                            }
                                        }
                                    }
                                });
                                return v0.e.f4161c;
                            }
                        });
                        this.b.f2190a.postDelayed(this, 15000L);
                        return;
                    }
                    HashMap map2 = A4.f474a;
                    A4.c(this.b);
                    A4.f(this.b);
                    A4.g(this.b);
                    CentralWatchdogService centralWatchdogService10 = this.b;
                    I0.f.e(centralWatchdogService10, "context");
                    NotificationManager notificationManager = (NotificationManager) centralWatchdogService10.getApplicationContext().getSystemService(NotificationManager.class);
                    if (notificationManager != null) {
                        notificationManager.cancel(15030);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
