package com.ex.auto;

import A.b;
import I0.f;
import I0.l;
import M.d0;
import O0.a;
import O0.d;
import O0.e;
import O0.j;
import O0.r;
import O0.s;
import T.A0;
import T.A4;
import T.AbstractC0121q;
import T.AbstractC0123q1;
import T.B3;
import T.B4;
import T.C0025a;
import T.C0032b0;
import T.C0050e0;
import T.C0097m;
import T.C0103n;
import T.C0115p;
import T.C0117p1;
import T.C0122q0;
import T.D0;
import T.E0;
import T.EnumC0031b;
import T.G0;
import T.H;
import T.I0;
import T.I1;
import T.J0;
import T.J3;
import T.L3;
import T.Q0;
import T.Q3;
import T.RunnableC0044d0;
import T.RunnableC0068h0;
import T.RunnableC0074i0;
import T.RunnableC0086k0;
import T.RunnableC0092l0;
import T.RunnableC0104n0;
import T.RunnableC0110o0;
import T.RunnableC0116p0;
import T.RunnableC0139t0;
import T.RunnableC0144u0;
import T.RunnableC0154w0;
import T.RunnableC0164y0;
import T.RunnableC0169z0;
import T.S4;
import T.ServiceConnectionC0037c;
import T.U;
import T.V0;
import T.Y;
import T.Y0;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Icon;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelUuid;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.imap.IMAPStore;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import v0.c;
import w0.g;
import w0.h;
import w0.i;
import w0.k;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public final class CentralWatchdogService extends Service {
    public static volatile boolean f2;
    public static volatile CentralWatchdogService g2;
    public static volatile long j2;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2150A;
    public volatile boolean A1;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f2152B;
    public G0 B1;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public volatile long f2154C;
    public volatile int C1;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public volatile Car f2156D;
    public volatile long D1;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public volatile CarPropertyManager f2158E;
    public final long E1;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2160F;
    public Object F1;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Integer f2162G;
    public boolean G0;
    public int G1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2163H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public int f2164H0;
    public int H1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2165I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public int f2166I0;
    public final E0 I1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f2167J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public int f2168J0;
    public final Q0 J1;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public G0 f2170K0;
    public final D0 K1;
    public final E0 L1;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public String f2174M0;
    public RunnableC0169z0 M1;
    public final E0 N1;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public volatile boolean f2178O0;
    public final Set O1;
    public volatile long P;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public volatile long f2179P0;
    public final E0 P1;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f2180Q;
    public final RunnableC0116p0 Q1;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final RunnableC0116p0 f2182R;
    public final D0 R1;
    public volatile boolean S;
    public final E0 S1;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final G0 f2184T;
    public final int T1;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public volatile Boolean f2185U;
    public final long U1;
    public String V;
    public volatile boolean V0;
    public final long V1;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f2186W;
    public G0 W0;
    public volatile boolean W1;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f2187X;
    public volatile boolean X1;
    public final D0 Y1;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public long f2189Z;
    public volatile long Z0;
    public final int Z1;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public volatile boolean f2191a0;
    public final long a2;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2192b0;
    public volatile CountDownLatch b1;
    public final D0 b2;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public volatile boolean f2194c0;
    public final D0 c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager f2195d;
    public volatile boolean d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f2197e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public I0 f2198e0;
    public volatile long e1;
    public volatile Car f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile CarPropertyManager f2200g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f2201g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile Car f2202h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile CarPropertyManager f2203i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile Car f2205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile CarPropertyManager f2207k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Car f2213n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile CarPropertyManager f2214o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public long f2215o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2216p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f2217p0;
    public final g p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile Car f2218q;
    public final String q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile CarPropertyManager f2220r;
    public final int r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2222s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f2223s0;
    public final int s1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Boolean f2224t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f2225t0;
    public volatile long t1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f2226u;
    public volatile long u1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Boolean f2227v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public J0 f2228v0;
    public final long v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Boolean f2229w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public G0 f2230w0;
    public final long w1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f2231x;
    public volatile long x1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile Car f2233y;
    public final long y1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile CarPropertyManager f2234z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public volatile long f2235z0;
    public volatile boolean z1;
    public static final int[] d2 = {0, 1};
    public static final int[] e2 = {0, 1, 16777216};
    public static final AtomicBoolean h2 = new AtomicBoolean(false);
    public static final AtomicReference i2 = new AtomicReference("idle");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2190a = new Handler(Looper.getMainLooper());
    public final AtomicInteger b = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f2193c = new c(new C0050e0(this, 1));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap f2209l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final HashMap f2211m = new HashMap();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f2169K = 4000;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f2171L = 30000;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final G0 f2173M = new G0(this, 7);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile long f2175N = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final long f2177O = 60000;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public long f2188Y = 5000;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public volatile String f2196d0 = "boot";

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final D0 f2199f0 = new D0(this, 9);
    public final D0 h0 = new D0(this, 5);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final D0 f2204i0 = new D0(this, 3);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final String f2206j0 = "hxcommon";

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final long f2208k0 = 2000;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final String f2210l0 = "com.flyme.auto.launcher";

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final String f2212m0 = "AppListActivity";
    public long n0 = -1;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final l f2219q0 = new l("\\d+");

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final D0 f2221r0 = new D0(this, 8);
    public int u0 = 166;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final G0 f2232x0 = new G0(this, 5);
    public final C0050e0 y0 = new C0050e0(this, 2);

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final long f2151A0 = 12000;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public final G0 f2153B0 = new G0(this, 6);

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final int f2155C0 = 2;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public final long f2157D0 = 3000;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public final int f2159E0 = 14;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final int f2161F0 = 60;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public final D0 f2172L0 = new D0(this, 0);

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public final AtomicBoolean f2176N0 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public final long f2181Q0 = 60000;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public final long f2183R0 = 90000;
    public final long S0 = 15000;
    public final long T0 = 5000;
    public final long U0 = 75000;
    public final int X0 = 6;
    public final long Y0 = 10000;
    public final Object a1 = new Object();
    public final String c1 = "for p in $(ip rule show 2>/dev/null | grep -wE 'ap0|wlan1' | awk -F: '{print $1}'); do ip rule del prio $p 2>/dev/null; done; ip link show wlan1 >/dev/null 2>&1 || { MAC=$(cat /sys/class/net/ap0/address); ip link add wlan1 type veth peer name wlan1_p; ip link set wlan1 address $MAC; ip addr add 192.168.20.1/32 dev wlan1; ip link set wlan1 up; }; ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao";
    public volatile long f1 = SystemClock.elapsedRealtime();
    public final long g1 = 300000;
    public final long h1 = 60000;
    public final G0 i1 = new G0(this, 0);
    public final HashMap j1 = new HashMap();
    public final long k1 = 75000;
    public final long l1 = 5000;
    public final long m1 = 3000;
    public final int n1 = 4;
    public final long o1 = 60000;

    public CentralWatchdogService() {
        int i3 = 8;
        this.f2182R = new RunnableC0116p0(this, i3);
        this.f2184T = new G0(this, i3);
        g gVar = new g();
        gVar.b = g.f4186d;
        this.p1 = gVar;
        this.q1 = "00000000-deca-fade-deca-deafdecacafe";
        this.r1 = 8000;
        this.s1 = 12000;
        this.v1 = 300000L;
        this.w1 = 12000L;
        this.y1 = 20000L;
        this.C1 = -1;
        this.E1 = 30000L;
        this.I1 = new E0(this, 4);
        this.J1 = new Q0();
        this.K1 = new D0(this, 7);
        this.L1 = new E0(this, 3);
        this.N1 = new E0(this, 2);
        this.O1 = Collections.synchronizedSet(new LinkedHashSet());
        this.P1 = new E0(this, 1);
        this.Q1 = new RunnableC0116p0(this, 26);
        this.R1 = new D0(this, 4);
        this.S1 = new E0(this, 0);
        this.T1 = 5;
        this.U1 = 8000L;
        this.V1 = 12000L;
        this.Y1 = new D0(this, 1);
        this.Z1 = 2;
        this.a2 = 600000L;
        this.b2 = new D0(this, 6);
        this.c2 = new D0(this, 2);
    }

    public static void A0(CentralWatchdogService centralWatchdogService) {
        if (!f2) {
            centralWatchdogService.getClass();
            return;
        }
        if (centralWatchdogService.m()) {
            centralWatchdogService.v0();
            return;
        }
        L3.f671a.b("CentralWatchdog", "AA trigger: não armo — Android Auto sem fio não habilitado (" + centralWatchdogService.G() + ')');
    }

    public static HttpURLConnection B0(String str) throws IOException {
        String string;
        if (j.y0(str)) {
            StringBuilder sbI = d0.i(str, "&nocache=");
            sbI.append(System.currentTimeMillis());
            string = sbI.toString();
        } else {
            StringBuilder sbI2 = d0.i(str, "?nocache=");
            sbI2.append(System.currentTimeMillis());
            string = sbI2.toString();
        }
        URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
        f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
        httpURLConnection.setRequestProperty("Pragma", "no-cache");
        return httpURLConnection;
    }

    public static String C0(int i3, String str) {
        try {
            String strV = C0097m.v(str, i3, null, new C0103n(0));
            return j.E0(strV) ? "sem saída" : strV;
        } catch (Exception e3) {
            return "Falha no ADB local: " + e3.getMessage();
        }
    }

    public static String D0(String str) {
        return "'" + s.v0(str, "'", "'\\''") + '\'';
    }

    public static String E0(File file) throws IllegalAccessException, NoSuchAlgorithmException, IOException, InvocationTargetException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 < 0) {
                    b.m(fileInputStream, null);
                    byte[] bArrDigest = messageDigest.digest();
                    f.d(bArrDigest, "digest(...)");
                    return h.X(bArrDigest, new C0103n(15));
                }
                messageDigest.update(bArr, 0, i3);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                b.m(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static String F0() {
        return O0.l.n0("\n            for _d in " + D0("/data/local/tmp") + ' ' + D0("/data/local/tmp/apks") + ' ' + D0("/data/local/tmp/sons") + ' ' + D0("/data/local/tmp/fixes") + "; do\n              mkdir -p \"$_d\" 2>/dev/null || true\n              chmod 755 \"$_d\" 2>/dev/null || true\n            done\n        ");
    }

    public static final String I(String str, String str2) {
        String str3;
        String string;
        String strConcat = str2.concat("=(.*)");
        f.e(strConcat, "pattern");
        Pattern patternCompile = Pattern.compile(strConcat);
        f.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        f.d(matcher, "matcher(...)");
        e eVarE = b.e(matcher, 0, str);
        return (eVarE == null || (str3 = (String) ((d) eVarE.a()).get(1)) == null || (string = j.X0(str3).toString()) == null) ? "" : string;
    }

    public static boolean I0() {
        try {
            return f.a(j.X0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim");
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean J0() {
        Integer numP0 = r.p0(j.X0(c(6000, "netstat -tn 2>/dev/null | grep -E ':3051[56] ' | grep -c ESTABLISHED")).toString());
        return (numP0 != null ? numP0.intValue() : 0) > 0;
    }

    public static boolean Z() {
        try {
            String strC = c(6000, "dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity");
            return j.x0(strC, "AutoMainActivity", true) || j.x0(strC, "com.njda.aauto", true) || j.x0(strC, "com.njda.carplay", true);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a0() {
        if (!p()) {
            return false;
        }
        Integer numP0 = r.p0(j.X0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
        return (numP0 != null ? numP0.intValue() : 0) > 0;
    }

    public static boolean b() {
        return j.x0(c(6000, "dumpsys activity activities 2>/dev/null | grep -i AutoMainActivity"), "AutoMainActivity", true);
    }

    public static String c(int i3, String str) {
        try {
            return new I1(5555).b(i3, str);
        } catch (Exception e3) {
            Log.w("CentralWatchdog", "AA trigger: aaShell falhou (\"" + j.V0(40, str) + "\"): " + e3.getMessage());
            return "";
        }
    }

    public static final void e(CentralWatchdogService centralWatchdogService) {
        if (centralWatchdogService.f2203i != null) {
            return;
        }
        try {
            centralWatchdogService.f2202h = Car.createCar(centralWatchdogService, null, 0L, new C0122q0(centralWatchdogService, 6));
        } catch (Exception e3) {
            d0.n(e3, new StringBuilder("initStatusTempCar: "), "CentralWatchdog");
        }
    }

    public static final void f(CentralWatchdogService centralWatchdogService, boolean z2) {
        centralWatchdogService.V = null;
        centralWatchdogService.f2186W = null;
        centralWatchdogService.f2187X = null;
        centralWatchdogService.f2188Y = 5000L;
        centralWatchdogService.f2189Z = 0L;
        centralWatchdogService.f2192b0 = 0;
        if (centralWatchdogService.M().getBoolean("auto_proxy_enabled", false)) {
            new Thread(new RunnableC0104n0(0, centralWatchdogService, z2)).start();
        }
    }

    public static final boolean g(CentralWatchdogService centralWatchdogService, String str) {
        centralWatchdogService.getClass();
        try {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(str, 8080), 1500);
                socket.setSoTimeout(2000);
                OutputStream outputStream = socket.getOutputStream();
                Charset charset = a.f412a;
                byte[] bytes = "GET http://connectivitycheck.gstatic.com/generate_204 HTTP/1.1\r\nHost: connectivitycheck.gstatic.com\r\nConnection: close\r\n\r\n".getBytes(charset);
                f.d(bytes, "getBytes(...)");
                outputStream.write(bytes);
                outputStream.flush();
                InputStream inputStream = socket.getInputStream();
                f.d(inputStream, "getInputStream(...)");
                String line = new BufferedReader(new InputStreamReader(inputStream, charset), 8192).readLine();
                if (line == null) {
                    b.m(socket, null);
                    return false;
                }
                boolean zX0 = j.x0(line, "204", false);
                b.m(socket, null);
                return zX0;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    b.m(socket, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return false;
        }
        return false;
    }

    public static final void h(CentralWatchdogService centralWatchdogService, String str) {
        CarPropertyManager carPropertyManager = centralWatchdogService.f2220r;
        if (carPropertyManager == null) {
            return;
        }
        if (f.a(centralWatchdogService.f2229w, Boolean.TRUE)) {
            new Thread(new H(carPropertyManager, 1, str)).start();
            return;
        }
        Log.i("CentralWatchdog", "recircGuard(" + str + "): recirc não estava ligada (ou desconhecida) — nada a fazer");
    }

    public static final void i(CentralWatchdogService centralWatchdogService, A0 a1) {
        centralWatchdogService.getClass();
        C0(8000, F0());
        File file = new File(centralWatchdogService.getCacheDir(), "CentralEXAuto-update-staging.apk");
        Exception e3 = null;
        for (int i3 = 1; i3 < 4; i3++) {
            try {
                file.delete();
                HttpURLConnection httpURLConnectionB0 = B0(a1.f469c);
                long contentLengthLong = httpURLConnectionB0.getContentLengthLong();
                try {
                    if (httpURLConnectionB0.getResponseCode() != 200) {
                        throw new IllegalStateException("HTTP " + httpURLConnectionB0.getResponseCode());
                    }
                    InputStream inputStream = httpURLConnectionB0.getInputStream();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                        try {
                            f.b(inputStream);
                            b.t(inputStream, fileOutputStream);
                            b.m(fileOutputStream, null);
                            b.m(inputStream, null);
                            try {
                                httpURLConnectionB0.disconnect();
                            } catch (Exception unused) {
                            }
                            long length = file.length();
                            if (length <= 0) {
                                throw new IllegalStateException("download vazio");
                            }
                            if (contentLengthLong > 0 && length != contentLengthLong) {
                                throw new IllegalStateException("download truncado (" + length + '/' + contentLengthLong + ')');
                            }
                            E0(file);
                            centralWatchdogService.G0(file, a1);
                            String absolutePath = file.getAbsolutePath();
                            f.d(absolutePath, "getAbsolutePath(...)");
                            String strD0 = D0(absolutePath);
                            String strD1 = D0("/data/local/tmp/CentralEXAuto-update.apk");
                            StringBuilder sb = new StringBuilder("\n            setenforce 0 2>/dev/null || true\n            ");
                            sb.append(F0());
                            sb.append("\n            chmod 644 ");
                            sb.append(strD0);
                            sb.append(" 2>/dev/null || true\n            rm -f ");
                            sb.append(strD1);
                            sb.append(" 2>/dev/null || true\n            cp -f ");
                            sb.append(strD0);
                            sb.append(' ');
                            sb.append(strD1);
                            d0.q(sb, " 2>&1 || exit 47\n            sync 2>/dev/null || true\n            chown root:root ", strD1, " 2>&1 || true\n            chmod 644 ", strD1);
                            d0.q(sb, " 2>&1 || true\n            restorecon -v ", strD1, " 2>/dev/null || true\n            ls -l ", strD1);
                            sb.append(" 2>&1\n        ");
                            String strC0 = C0(120000, O0.l.n0(sb.toString()));
                            if (j.x0(strC0, "exit 47", false) || j.x0(strC0, "Falha no ADB", false)) {
                                file.delete();
                                throw new IllegalStateException("Cópia para tmp falhou: ".concat(j.W0(200, strC0)));
                            }
                            File file2 = new File("/data/local/tmp/CentralEXAuto-update.apk");
                            if (file2.isFile() && file2.length() == file.length()) {
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder("Tamanho staging=");
                            sb2.append(file.length());
                            sb2.append(" dest=");
                            sb2.append(file2.isFile() ? file2.length() : -1L);
                            throw new IllegalStateException(sb2.toString());
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                b.m(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            b.m(inputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        httpURLConnectionB0.disconnect();
                    } catch (Exception unused2) {
                    }
                    throw th5;
                }
            } catch (Exception e4) {
                e3 = e4;
                file.delete();
                StringBuilder sb3 = new StringBuilder("auto-update download tentativa ");
                sb3.append(i3);
                sb3.append("/3: ");
                d0.n(e3, sb3, "CentralWatchdog");
                if (i3 < 3) {
                    try {
                        Thread.sleep(((long) i3) * 2000);
                    } catch (InterruptedException unused3) {
                    }
                }
            }
        }
        if (e3 == null) {
            throw new IllegalStateException("download falhou após 3 tentativas");
        }
    }

    public static final A0 j(CentralWatchdogService centralWatchdogService) {
        centralWatchdogService.getClass();
        byte[] bArr = AbstractC0123q1.f1105a;
        SharedPreferences sharedPreferencesM = centralWatchdogService.M();
        String packageName = centralWatchdogService.getPackageName();
        f.d(packageName, "getPackageName(...)");
        C0117p1 c0117p1A = AbstractC0123q1.a(centralWatchdogService, sharedPreferencesM, packageName, centralWatchdogService.getPackageManager().getPackageInfo(centralWatchdogService.getPackageName(), 0).getLongVersionCode());
        return new A0(c0117p1A.f1089a, c0117p1A.b, c0117p1A.f1090c);
    }

    public static final String k(CentralWatchdogService centralWatchdogService) {
        centralWatchdogService.getClass();
        File file = new File("/data/local/tmp/CentralEXAuto-update.apk");
        if (!file.isFile()) {
            return "apk ausente";
        }
        if (!j.E0("")) {
            try {
                String strE0 = E0(file);
                if (!strE0.equalsIgnoreCase("")) {
                    return "sha_mismatch got=" + j.V0(12, strE0) + " esp=" + j.V0(12, "") + " — install abortado";
                }
            } catch (Exception e3) {
                return "sha erro: " + e3.getMessage();
            }
        }
        String strD0 = D0("/data/local/tmp/CentralEXAuto-update.apk");
        String str = "pm install -r -g -d " + strD0 + " > " + D0("/data/local/tmp/last_update_install.log") + " 2>&1; sleep 3; monkey -p com.ex.auto -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1";
        StringBuilder sb = new StringBuilder("\n            setenforce 0 2>/dev/null || true\n            ");
        sb.append(F0());
        sb.append("\n            ls -l ");
        sb.append(strD0);
        sb.append(" 2>&1 || exit 50\n            chown root:root ");
        sb.append(strD0);
        d0.q(sb, " 2>/dev/null || true\n            chmod 644 ", strD0, " 2>/dev/null || true\n            restorecon -v ", strD0);
        sb.append(" 2>/dev/null || true\n            setsid sh -c \"");
        sb.append(str);
        sb.append("\" </dev/null >/dev/null 2>&1 &\n            echo \"install_detached_launched\"\n        ");
        return C0(30000, O0.l.n0(sb.toString()));
    }

    public static boolean p() {
        try {
            NetworkInterface byName = NetworkInterface.getByName("ap0");
            return byName != null && byName.isUp() && byName.getInetAddresses().hasMoreElements();
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean A(String str) {
        boolean z2 = true;
        try {
            this.W1 = true;
            String strV = Y.v();
            L3 l3 = L3.f671a;
            l3.b("CentralWatchdog", "bind do monitor: início (" + str + ") — comando de " + strV.length() + " bytes");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strC = c(90000, strV);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            if (j.E0(strC)) {
                l3.b("CentralWatchdog", "bind do monitor: saída VAZIA em " + jElapsedRealtime2 + "ms — o adbd local não executou");
                this.W1 = false;
                return false;
            }
            N0.d dVar = new N0.d(new N0.c(new N0.c(j.G0(strC), new C0103n(6), 3), new C0103n(7), 1));
            while (dVar.hasNext()) {
                Log.i("CentralWatchdog", "monitor: " + ((String) dVar.next()));
            }
            if (!j.x0(strC, "MONITOR_BIND_OK", false) && !j.x0(strC, "MONITOR_JA_PATCHADO_EM_EXECUCAO", false) && !j.x0(strC, "MONITOR_JA_MONTADO", false)) {
                z2 = false;
            }
            String strD0 = i.d0(N0.h.n0(new N0.c(new N0.c(j.G0(strC), new C0103n(8), 3), new C0103n(9), 1)), " | ", null, null, null, 62);
            if (strD0.length() == 0) {
                strD0 = s.v0(j.W0(160, j.X0(strC).toString()), "\n", " ");
            }
            L3 l4 = L3.f671a;
            StringBuilder sb = new StringBuilder();
            sb.append("bind do monitor: ");
            sb.append(z2 ? "OK" : "NÃO confirmado");
            sb.append(" em ");
            sb.append(jElapsedRealtime2);
            sb.append("ms — ");
            sb.append(strD0);
            l4.b("CentralWatchdog", sb.toString());
            if (z2) {
                M().edit().putLong("bootscript_epoch_ok", System.currentTimeMillis() - SystemClock.elapsedRealtime()).apply();
            }
            this.W1 = false;
            return z2;
        } catch (Throwable th) {
            try {
                L3.f671a.b("CentralWatchdog", "bind do monitor: exceção " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                this.W1 = false;
            }
        }
    }

    public final String B(String str) {
        return O0.l.n0("\n        setenforce 0 2>/dev/null || true\n        PHONE=\"" + str + "\"\n        FWMARK=$(ip rule show 2>/dev/null | awk '/^19[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n        [ -z \"${FWMARK}\" ] && FWMARK=\"0x64/0x1ffff\"\n        NETID=$(printf '%d' $(echo \"${FWMARK}\" | cut -d'/' -f1) 2>/dev/null || echo 100)\n        EXPLICIT_FWMARK=$(ip rule show 2>/dev/null | awk '/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n        if [ -z \"${EXPLICIT_FWMARK}\" ]; then\n          EXPLICIT_DEC=$(( $(printf '%d' $(echo \"${FWMARK}\" | cut -d'/' -f1)) | 65536 ))\n          EXPLICIT_FWMARK=$(printf '0x%x/0x1ffff' ${EXPLICIT_DEC})\n        fi\n        ip rule del prio 12500 2>/dev/null; true\n        ip rule del prio 18500 2>/dev/null; true\n        ip rule del prio 21000 2>/dev/null; true\n        ip route flush table 200 2>/dev/null; true\n        ip rule add prio 12500 from all fwmark ${EXPLICIT_FWMARK} iif lo lookup 200 2>&1\n        ip rule add prio 18500 from all fwmark ${FWMARK} iif lo lookup 200 2>&1\n        ip rule add prio 21000 from all fwmark 0x0/0xffff iif lo lookup 200 2>&1\n        ip route replace default via ${PHONE} dev ap0 table 200 2>&1\n        ip route add 192.168.43.0/24 dev ap0 table 200 2>/dev/null; true\n        settings put global captive_portal_mode 0 2>&1\n        " + (M().getBoolean("auto_proxy_enabled", false) ? "" : "settings delete global http_proxy 2>&1; settings delete global global_http_proxy_host 2>&1; settings delete global global_http_proxy_port 2>&1") + "\n        setprop net.dns1 8.8.8.8; setprop net.dns2 8.8.4.4\n        ndc resolver setnetdns ${NETID} '' 8.8.8.8 8.8.4.4 2>&1\n        OUR_12500=$(ip rule show 2>/dev/null | awk '/^12500:.*fwmark/{print $5; exit}')\n        TBOX_13000=$(ip rule show 2>/dev/null | awk '/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}')\n        if [ \"${OUR_12500}\" = \"${TBOX_13000}\" ]; then echo \"FWMARK_MATCH=OK\"; else echo \"FWMARK_MATCH=MISMATCH\"; fi\n    ");
    }

    public final boolean C() {
        if (E()) {
            int[] iArr = AbstractC0121q.f1100a;
            if (AbstractC0121q.a(M())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [w0.q] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.ArrayList] */
    public final void D() {
        ?? arrayList;
        boolean zBooleanValue;
        if (m()) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    i0("adapter nulo");
                    return;
                }
                int profileConnectionState = defaultAdapter.getProfileConnectionState(11);
                int profileConnectionState2 = defaultAdapter.getProfileConnectionState(16);
                if (profileConnectionState != 2 && profileConnectionState2 != 2) {
                    Log.i("CentralWatchdog", "AA trigger: BT não conectado ao iniciar (a2dp_sink=" + profileConnectionState + " headset_client=" + profileConnectionState2 + ", tentativa " + (this.G1 + 1) + ')');
                    i0("ainda desconectado");
                    return;
                }
                try {
                    Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                    if (bondedDevices == null) {
                        bondedDevices = w0.s.f4192a;
                    }
                    arrayList = new ArrayList();
                    for (Object obj : bondedDevices) {
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
                        boolean z2 = false;
                        try {
                            Object objInvoke = BluetoothDevice.class.getMethod("isConnected", null).invoke(bluetoothDevice, null);
                            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                            zBooleanValue = bool != null ? bool.booleanValue() : false;
                        } catch (Throwable unused) {
                        }
                        if (zBooleanValue) {
                            f.b(bluetoothDevice);
                            if (X(bluetoothDevice)) {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            arrayList.add(obj);
                        }
                    }
                } catch (Throwable unused2) {
                    arrayList = q.f4190a;
                }
                if (!arrayList.isEmpty()) {
                    L3.f671a.b("CentralWatchdog", "AA trigger: BT já conectado ao iniciar, mas o aparelho é Apple — não armo o gatilho do Android Auto (ele adiaria as injeções de CarPlay)");
                    return;
                }
                L3.f671a.b("CentralWatchdog", "AA trigger: BT já conectado ao iniciar o serviço (a2dp_sink=" + profileConnectionState + " headset_client=" + profileConnectionState2 + ", tentativa " + (this.G1 + 1) + ')');
                this.f2190a.postDelayed(new RunnableC0139t0(this, 2), 1500L);
            } catch (Exception e3) {
                Log.w("CentralWatchdog", "checkAlreadyConnectedAaBt: " + e3.getMessage());
                i0("exceção");
            }
        }
    }

    public final boolean E() {
        try {
            String str = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            f.d(str, "sourceDir");
            return j.x0(str, "/data/app/", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void F() {
        this.f2190a.removeCallbacks(this.R1);
        this.f2190a.removeCallbacks(this.Q1);
        this.f2167J = 0;
        try {
            CarPropertyManager carPropertyManager = this.f2200g;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.P1);
            }
        } catch (Throwable unused) {
        }
        try {
            Car car = this.f;
            if (car != null) {
                car.disconnect();
            }
        } catch (Throwable unused2) {
        }
        this.f = null;
        this.f2200g = null;
    }

    public final String G() {
        String string = M().getString("connadaptor_modo", "ambos");
        StringBuilder sbJ = d0.j("modo=", string != null ? string : "ambos", " ativado=");
        sbJ.append(E());
        sbJ.append(" carplay=");
        sbJ.append(C());
        sbJ.append(" androidauto=");
        sbJ.append(m());
        return sbJ.toString();
    }

    public final void G0(File file, A0 a1) {
        PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 64);
        if (packageArchiveInfo == null) {
            throw new IllegalStateException("APK ilegivel");
        }
        if (!f.a(packageArchiveInfo.packageName, getPackageName())) {
            throw new IllegalStateException("APK de outro pacote: " + packageArchiveInfo.packageName);
        }
        long longVersionCode = packageArchiveInfo.getLongVersionCode();
        long j3 = a1.f468a;
        if (longVersionCode != j3) {
            throw new IllegalStateException("APK e vc=" + longVersionCode + ", manifesto prometeu " + j3);
        }
        Signature[] signatureArr = packageArchiveInfo.signatures;
        if (signatureArr == null) {
            signatureArr = new Signature[0];
        }
        ArrayList arrayList = new ArrayList(signatureArr.length);
        for (Signature signature : signatureArr) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
            f.d(bArrDigest, "digest(...)");
            arrayList.add(h.X(bArrDigest, new C0103n(14)));
        }
        if (!arrayList.contains("c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8")) {
            throw new IllegalStateException("APK nao assinado com a nossa chave de plataforma");
        }
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0327  */
    /* JADX WARN: Code duplicated, block: B:125:0x033d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x033f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:127:0x0341 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0343  */
    /* JADX WARN: Code duplicated, block: B:129:0x0348  */
    /* JADX WARN: Code duplicated, block: B:132:0x036f  */
    /* JADX WARN: Code duplicated, block: B:135:0x0377  */
    /* JADX WARN: Code duplicated, block: B:137:0x037a  */
    /* JADX WARN: Code duplicated, block: B:140:0x0382  */
    /* JADX WARN: Code duplicated, block: B:142:0x0385  */
    /* JADX WARN: Code duplicated, block: B:144:0x038e  */
    /* JADX WARN: Code duplicated, block: B:184:0x0471 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:185:0x0473  */
    /* JADX WARN: Code duplicated, block: B:186:0x0476 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:187:0x0478  */
    /* JADX WARN: Code duplicated, block: B:188:0x0494  */
    /* JADX WARN: Code duplicated, block: B:195:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:210:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x01f2  */
    /* JADX WARN: Instruction removed from duplicated block: B:187:0x0478, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final void H(String str) throws InterruptedException {
        boolean z2;
        boolean zX0;
        String str2;
        String str3;
        boolean z3;
        int i3;
        String string;
        int i4;
        String str4;
        String string2;
        int i5;
        int i6;
        String str5;
        String str6;
        String str7;
        Boolean boolValueOf;
        Integer numP0;
        Integer numP1;
        List list;
        int i7 = 0;
        while (this.W1 && i7 < 40000) {
            Thread.sleep(2000L);
            i7 += 2000;
        }
        if (i7 > 0) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("saúde (", str, "): esperei ");
            sbJ.append(i7 / IMAPStore.RESPONSE);
            sbJ.append("s o bind do monitor terminar");
            l3.b("CentralWatchdog", sbJ.toString());
        }
        String strC = c(20000, "echo WPP=$(netstat -tln 2>/dev/null | grep -cE '3051[56]'); echo UDC=$(cat /sys/class/udc/*/state 2>/dev/null | head -1); echo HOSTS=$(ls /sys/bus/usb/devices/ 2>/dev/null | wc -l); echo WLAN1=$(ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao); echo CPMNT=$(grep -cF ' /system/bin/CarplayMonitor ' /proc/mounts); echo CPMD5=$(md5sum /system/bin/CarplayMonitor 2>/dev/null | awk '{print $1}')");
        Pattern patternCompile = Pattern.compile("WPP=\\d+");
        f.d(patternCompile, "compile(...)");
        f.e(strC, "input");
        if (!patternCompile.matcher(strC).find()) {
            L3 l4 = L3.f671a;
            StringBuilder sbJ2 = d0.j("saúde (", str, "): sem resposta do canal ADB — não decido nada (saída: ");
            sbJ2.append(j.V0(80, s.v0(strC, "\n", " ")));
            sbJ2.append(')');
            l4.b("CentralWatchdog", sbJ2.toString());
            return;
        }
        Integer numP2 = r.p0(I(strC, "WPP"));
        boolean z4 = (numP2 != null ? numP2.intValue() : 0) > 0;
        boolean z5 = I(strC, "UDC").equals("configured") && I(strC, "HOSTS").equals("0");
        if (!I(strC, "CPMNT").equals("0") && ((list = AbstractC0121q.f1103e) == null || !list.isEmpty())) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                } else if (((C0115p) it.next()).f1087d.equals(I(strC, "CPMD5"))) {
                    z2 = true;
                    break;
                }
            }
        } else {
            z2 = false;
            break;
        }
        try {
            String str8 = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            f.d(str8, "sourceDir");
            zX0 = j.x0(str8, "/data/app/", false);
        } catch (Throwable unused) {
            zX0 = false;
        }
        L3 l5 = L3.f671a;
        StringBuilder sbJ3 = d0.j("saúde (", str, "): WPP=");
        sbJ3.append(z4 ? "ok" : "FORA");
        sbJ3.append(" CarplayMonitor=");
        sbJ3.append(z2 ? "ok" : "FORA");
        sbJ3.append(" ConnAdaptor=");
        sbJ3.append(zX0 ? "instalado" : "de fábrica");
        sbJ3.append(z5 ? " · ADB/cabo em modo device" : "");
        l5.b("CentralWatchdog", sbJ3.toString());
        boolean zEquals = I(strC, "WLAN1").equals("sim");
        if (z4) {
            this.f2178O0 = false;
        }
        if (z4 && s.w0(str, "AA trigger")) {
            long j3 = this.t1;
            if (j3 == 0 || System.currentTimeMillis() - j3 < this.w1) {
                boolValueOf = null;
            } else {
                List listO0 = j.O0(j.X0(c(15000, "logcat -d -v time -t '" + new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US).format(new Date(j3 - 1000)) + "' 2>/dev/null | awk '{n++} /DADAO_AASDK/{d++} END{print n+0, d+0}'")).toString(), new String[]{" "});
                String str9 = (String) i.b0(listO0, 0);
                if (str9 != null && (numP0 = r.p0(str9)) != null) {
                    int iIntValue = numP0.intValue();
                    String str10 = (String) i.b0(listO0, 1);
                    if (str10 != null && (numP1 = r.p0(str10)) != null) {
                        int iIntValue2 = numP1.intValue();
                        if (iIntValue >= 50) {
                            boolValueOf = Boolean.valueOf(iIntValue2 == 0);
                        }
                    }
                }
                boolValueOf = null;
            }
            if (f.a(boolValueOf, Boolean.TRUE)) {
                str3 = "CentralWatchdog";
                long jCurrentTimeMillis = (System.currentTimeMillis() - this.t1) / ((long) IMAPStore.RESPONSE);
                if (SystemClock.elapsedRealtime() - this.u1 < this.v1) {
                    str2 = "saúde (";
                    l5.b(str3, str2 + str + "): daemon do AA segue mudo (convite há " + jCurrentTimeMillis + "s), mas já reiniciei por isso há menos de 5 min — não insisto");
                } else {
                    str2 = "saúde (";
                    this.u1 = SystemClock.elapsedRealtime();
                    l5.b(str3, str2 + str + "): WPP=ok, mas o daemon do AA não escreveu nada desde o convite de " + jCurrentTimeMillis + "s atrás (zero linhas de DADAO_AASDK) — vivo e mudo; trato como sem WPP");
                    z3 = true;
                }
                if (!z4 || zEquals) {
                    i3 = 0;
                    string = null;
                } else {
                    string = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                    d0.o(str2, str, "): wlan1 NÃO existe — o WPP não tem onde bindar. Recriando pelo ConnAdaptor", l5, str3);
                    c(15000, "setenforce 0 2>/dev/null; am force-stop com.njda.adapter");
                    Thread.sleep(1500L);
                    String string3 = j.X0(c(20000, "am startservice com.njda.adapter/.core.AdapterService 2>&1 || monkey -p com.njda.adapter -c android.intent.category.LAUNCHER 1 2>&1")).toString();
                    StringBuilder sbJ4 = d0.j(str2, str, "): pedindo subida do ConnAdaptor — ");
                    sbJ4.append(j.V0(160, string3));
                    l5.b(str3, sbJ4.toString());
                    int i8 = 0;
                    while (i8 < 20000) {
                        Thread.sleep(1000L);
                        i8 += IMAPStore.RESPONSE;
                        if (f.a(j.X0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim")) {
                            break;
                        }
                    }
                    boolean zA = f.a(j.X0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim");
                    L3 l6 = L3.f671a;
                    StringBuilder sbJ5 = d0.j(str2, str, "): wlan1 ");
                    if (zA) {
                        str7 = "criada em " + (i8 / IMAPStore.RESPONSE) + 's';
                    } else {
                        str7 = "NÃO nasceu";
                    }
                    sbJ5.append(str7);
                    l6.b(str3, sbJ5.toString());
                    i3 = 0;
                    if (zA) {
                        this.f2178O0 = false;
                    }
                }
                if (z4 && !zEquals && !I0()) {
                    d0.o(str2, str, "): sem wlan1 não reinicio o AAutoMonitor — o WPP não teria onde bindar", L3.f671a, str3);
                } else if (z4 || z3) {
                    if (string != null) {
                        str4 = string;
                        i4 = 10000;
                    } else {
                        i4 = 10000;
                        String string4 = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                        Thread.sleep(6000L);
                        str4 = string4;
                    }
                    string2 = j.X0(c(i4, "pidof AAutoMonitor")).toString();
                    if (str4.length() == 0 || string2.length() != 0) {
                        i5 = i3;
                    } else {
                        i5 = 1;
                    }
                    if (i5 == 0 || str4.equals(string2)) {
                        i6 = i3;
                    } else {
                        i6 = 1;
                    }
                    if (i5 != 0) {
                        d0.o(str2, str, "): AAutoMonitor MORTO (sem pid) — reiniciando", L3.f671a, str3);
                    }
                    if (!z5 || this.f2178O0 || (i5 == 0 && i6 != 0)) {
                        if (z5) {
                            str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (i6 != 0) {
                            str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                        } else {
                            str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
                    } else {
                        L3 l7 = L3.f671a;
                        StringBuilder sbJ6 = d0.j(str2, str, "): AAutoMonitor ");
                        sbJ6.append(z3 ? "vivo e mudo" : "sem WPP");
                        sbJ6.append(" — reiniciando");
                        l7.b(str3, sbJ6.toString());
                        int i9 = 10000;
                        c(10000, "setprop ctl.restart AAutoMonitor");
                        int i10 = i3;
                        while (i10 < 15000) {
                            Thread.sleep(1000L);
                            i10 += IMAPStore.RESPONSE;
                            Integer numP3 = r.p0(j.X0(c(i9, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                            if ((numP3 != null ? numP3.intValue() : i3) > 0) {
                                i9 = 10000;
                                break;
                            }
                            i9 = 10000;
                        }
                        Integer numP4 = r.p0(j.X0(c(i9, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                        int i11 = (numP4 != null ? numP4.intValue() : i3) > 0 ? 1 : i3;
                        this.f2178O0 = i11 ^ 1;
                        L3 l8 = L3.f671a;
                        StringBuilder sbJ7 = d0.j(str2, str, "): WPP ");
                        if (i11 != 0) {
                            str6 = "subiu em " + (i10 / IMAPStore.RESPONSE) + 's';
                        } else {
                            str6 = "NÃO subiu — não insisto até o próximo boot";
                        }
                        sbJ7.append(str6);
                        l8.b(str3, sbJ7.toString());
                        if (i11 != 0) {
                            Integer numP5 = r.p0(j.X0(c(10000, "grep -cE '[[:space:]]ap0$' /proc/net/arp")).toString());
                            if ((numP5 != null ? numP5.intValue() : i3) > 0 && m()) {
                                d0.o(str2, str, "): há celular no ap0 — cutucando o Android Auto", l8, str3);
                                this.f2190a.post(new RunnableC0139t0(this, 17));
                            }
                        }
                    }
                }
                if (!z2 || !C()) {
                    if (z2) {
                    }
                    L3 l9 = L3.f671a;
                    StringBuilder sbJ8 = d0.j(str2, str, "): CarplayMonitor fora, mas não conserto — ");
                    sbJ8.append(G());
                    l9.b(str3, sbJ8.toString());
                }
                L3.f671a.b(str3, str2 + str + "): CarplayMonitor sem o patch — refazendo o bind");
                StringBuilder sb = new StringBuilder("saúde/");
                sb.append(str);
                A(sb.toString());
                return;
            }
            str3 = "CentralWatchdog";
            str2 = "saúde (";
            if (f.a(boolValueOf, Boolean.FALSE)) {
                d0.o(str2, str, "): daemon do AA reagiu ao convite — a demora não é dele", l5, str3);
            } else if (boolValueOf != null) {
                throw new O.c();
            }
        } else {
            str2 = "saúde (";
            str3 = "CentralWatchdog";
        }
        z3 = false;
        if (z4) {
            i3 = 0;
            string = null;
        } else {
            i3 = 0;
            string = null;
        }
        if (z4) {
            if (z4) {
                if (string != null) {
                    str4 = string;
                    i4 = 10000;
                } else {
                    i4 = 10000;
                    String string5 = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                    str4 = string5;
                }
                string2 = j.X0(c(i4, "pidof AAutoMonitor")).toString();
                if (str4.length() == 0) {
                    i5 = i3;
                } else {
                    i5 = i3;
                }
                if (i5 == 0) {
                    i6 = i3;
                } else {
                    i6 = i3;
                }
                if (i5 != 0) {
                    d0.o(str2, str, "): AAutoMonitor MORTO (sem pid) — reiniciando", L3.f671a, str3);
                }
                if (z5) {
                    if (z5) {
                        str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (i6 != 0) {
                        str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                    } else {
                        str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
                } else {
                    if (z5) {
                        str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (i6 != 0) {
                        str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                    } else {
                        str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
                }
            } else {
                if (string != null) {
                    str4 = string;
                    i4 = 10000;
                } else {
                    i4 = 10000;
                    String string6 = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                    str4 = string6;
                }
                string2 = j.X0(c(i4, "pidof AAutoMonitor")).toString();
                if (str4.length() == 0) {
                    i5 = i3;
                } else {
                    i5 = i3;
                }
                if (i5 == 0) {
                    i6 = i3;
                } else {
                    i6 = i3;
                }
                if (i5 != 0) {
                    d0.o(str2, str, "): AAutoMonitor MORTO (sem pid) — reiniciando", L3.f671a, str3);
                }
                if (z5) {
                    if (z5) {
                        str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (i6 != 0) {
                        str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                    } else {
                        str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
                } else {
                    if (z5) {
                        str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (i6 != 0) {
                        str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                    } else {
                        str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
                }
            }
        } else if (z4) {
            if (string != null) {
                str4 = string;
                i4 = 10000;
            } else {
                i4 = 10000;
                String string7 = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                Thread.sleep(6000L);
                str4 = string7;
            }
            string2 = j.X0(c(i4, "pidof AAutoMonitor")).toString();
            if (str4.length() == 0) {
                i5 = i3;
            } else {
                i5 = i3;
            }
            if (i5 == 0) {
                i6 = i3;
            } else {
                i6 = i3;
            }
            if (i5 != 0) {
                d0.o(str2, str, "): AAutoMonitor MORTO (sem pid) — reiniciando", L3.f671a, str3);
            }
            if (z5) {
                if (z5) {
                    str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (i6 != 0) {
                    str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                } else {
                    str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
            } else {
                if (z5) {
                    str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (i6 != 0) {
                    str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                } else {
                    str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
            }
        } else {
            if (string != null) {
                str4 = string;
                i4 = 10000;
            } else {
                i4 = 10000;
                String string8 = j.X0(c(10000, "pidof AAutoMonitor")).toString();
                Thread.sleep(6000L);
                str4 = string8;
            }
            string2 = j.X0(c(i4, "pidof AAutoMonitor")).toString();
            if (str4.length() == 0) {
                i5 = i3;
            } else {
                i5 = i3;
            }
            if (i5 == 0) {
                i6 = i3;
            } else {
                i6 = i3;
            }
            if (i5 != 0) {
                d0.o(str2, str, "): AAutoMonitor MORTO (sem pid) — reiniciando", L3.f671a, str3);
            }
            if (z5) {
                if (z5) {
                    str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (i6 != 0) {
                    str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                } else {
                    str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
            } else {
                if (z5) {
                    str5 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (i6 != 0) {
                    str5 = "está em crash-loop (pid " + str4 + " → " + string2 + ')';
                } else {
                    str5 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                L3.f671a.b(str3, str2 + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str5);
            }
        }
        if (!z2) {
        }
        if (z2) {
            L3 l10 = L3.f671a;
            StringBuilder sbJ9 = d0.j(str2, str, "): CarplayMonitor fora, mas não conserto — ");
            sbJ9.append(G());
            l10.b(str3, sbJ9.toString());
        }
    }

    public final boolean H0() {
        try {
            Object systemService = getApplicationContext().getSystemService("wifi");
            f.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager wifiManager = (WifiManager) systemService;
            return wifiManager.isWifiEnabled() || wifiManager.getWifiState() == 2;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void J(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = jElapsedRealtime - this.f2175N;
        if (j3 < this.f2177O) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("despertar (", str, "): ignorado — outro despertar/boot há ");
            sbJ.append(j3 / ((long) IMAPStore.RESPONSE));
            sbJ.append('s');
            l3.b("CentralWatchdog", sbJ.toString());
            return;
        }
        this.f2175N = jElapsedRealtime;
        this.f1 = jElapsedRealtime;
        this.d1 = false;
        d0.o("despertar (", str, "): janela de arranque reaberta (AP/WiFi/BT conforme os toggles)", L3.f671a, "CentralWatchdog");
        this.f2190a.postDelayed(new RunnableC0116p0(this, 11), 5000L);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 15), 8000L);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 16), 500L);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 17), 8000L);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 18), this.S0);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 19), this.f2183R0);
        if (m() && !this.G0) {
            this.G1 = 0;
            this.f2190a.postDelayed(new RunnableC0116p0(this, 20), 3000L);
        }
        if (C()) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, 21), 3000L);
        }
        this.V = null;
        this.f2186W = null;
        this.f2187X = null;
        if (n()) {
            this.f2190a.removeCallbacks(this.Y1);
            this.f2190a.postDelayed(this.Y1, 5000L);
        }
        if (!M().getBoolean("auto_apply_paused", false)) {
            if (M().getBoolean("avas_muted_saved", false)) {
                this.f2190a.postDelayed(new RunnableC0116p0(this, 22), 5000L);
            }
            if (M().getInt("avas_sound_type_saved", -1) > 0) {
                this.f2190a.postDelayed(new RunnableC0116p0(this, 23), 5000L);
            }
            if (M().getBoolean("aeb_restore_on_boot", false)) {
                this.f2190a.postDelayed(new RunnableC0116p0(this, 12), 8000L);
            }
            if (!DriveRegenFloaterService.f2579J) {
                this.f2190a.postDelayed(new RunnableC0116p0(this, 13), 6000L);
            }
        }
        if (M().getBoolean("remember_brightness", false)) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, 14), 4000L);
        }
    }

    public final boolean K(String str) {
        CountDownLatch countDownLatch;
        CountDownLatch countDownLatch2;
        String str2;
        int i3;
        boolean z2;
        String str3;
        if (p()) {
            return true;
        }
        if (H0()) {
            L3.f671a.b("CentralWatchdog", str + ": AP fechado, mas o WiFi cliente está ligado — não vou disputar o rádio com quem ligou à mão");
            return false;
        }
        synchronized (this.a1) {
            countDownLatch = this.b1;
            if (countDownLatch != null) {
                countDownLatch2 = null;
            } else {
                CountDownLatch countDownLatch3 = new CountDownLatch(1);
                this.b1 = countDownLatch3;
                countDownLatch2 = countDownLatch3;
                countDownLatch = null;
            }
        }
        if (countDownLatch != null) {
            L3.f671a.b("CentralWatchdog", str + ": AP já sendo aberto por outro pedido — espero o mesmo resultado");
            try {
                countDownLatch.await(25L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
            }
            boolean zP = p();
            L3 l3 = L3.f671a;
            StringBuilder sbI = d0.i(str, ": AP ");
            sbI.append(zP ? "no ar (aberto pelo outro pedido)" : "NÃO subiu (pelo outro pedido)");
            l3.b("CentralWatchdog", sbI.toString());
            return zP;
        }
        int i4 = 1;
        while (true) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                L3 l4 = L3.f671a;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(": AP fechado — abrindo");
                if (i4 > 1) {
                    str2 = " (tentativa " + i4 + ')';
                } else {
                    str2 = "";
                }
                sb.append(str2);
                l4.b("CentralWatchdog", sb.toString());
                d(str);
                try {
                    sendBroadcast(new Intent("com.bd.systemui.aa.foreground"));
                    while (true) {
                        if (i3 >= 20000 || p()) {
                            z2 = false;
                            break;
                        }
                        Thread.sleep(1000L);
                        i3 += IMAPStore.RESPONSE;
                        if (this.Z0 > jElapsedRealtime) {
                            z2 = true;
                            break;
                        }
                    }
                } catch (Exception e3) {
                    Log.w("CentralWatchdog", str + ": broadcast de abrir AP falhou: " + e3.getMessage());
                }
                i3 = 0;
                if (p()) {
                    L3 l5 = L3.f671a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(": AP no ar após ");
                    sb2.append(i3 / IMAPStore.RESPONSE);
                    sb2.append('s');
                    if (i4 > 1) {
                        str3 = " (tentativa " + i4 + ')';
                    } else {
                        str3 = "";
                    }
                    sb2.append(str3);
                    l5.b("CentralWatchdog", sb2.toString());
                    synchronized (this.a1) {
                        if (this.b1 == countDownLatch2) {
                            this.b1 = null;
                        }
                    }
                    f.b(countDownLatch2);
                    countDownLatch2.countDown();
                    return true;
                }
                if (!z2 || i4 >= 3) {
                    break;
                }
                L3.f671a.b("CentralWatchdog", str + ": o sistema respondeu FAILED em " + (i3 / IMAPStore.RESPONSE) + "s — rádio ainda não pronto? espero 2s e tento de novo");
                Thread.sleep(2000L);
                i4++;
            } catch (Throwable th) {
                synchronized (this.a1) {
                    if (this.b1 == countDownLatch2) {
                        this.b1 = null;
                    }
                    f.b(countDownLatch2);
                    countDownLatch2.countDown();
                    throw th;
                }
            }
        }
        L3 l6 = L3.f671a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(": AP NÃO subiu");
        sb3.append(z2 ? " (FAILED de novo)" : " em 20s");
        sb3.append(" — entregando ao ConnAdaptor (connectDevice abre o AP pelo caminho dele)");
        l6.b("CentralWatchdog", sb3.toString());
        if (m()) {
            try {
                a(false);
            } catch (Throwable unused2) {
            }
        }
        synchronized (this.a1) {
            if (this.b1 == countDownLatch2) {
                this.b1 = null;
            }
        }
        f.b(countDownLatch2);
        countDownLatch2.countDown();
        return false;
    }

    public final void L(int i3, String str) {
        BluetoothAdapter defaultAdapter;
        if (this.V0) {
            d0.o("BT (", str, "): desligamento foi intencional (usuário ou CarPlay) — respeitando", L3.f671a, "CentralWatchdog");
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        if (defaultAdapter == null) {
            d0.o("BT (", str, "): sem adaptador neste aparelho", L3.f671a, "CentralWatchdog");
            return;
        }
        boolean zEnable = false;
        if (defaultAdapter.isEnabled()) {
            if (i3 > 1) {
                L3.f671a.b("CentralWatchdog", "BT (" + str + "): ligado na tentativa " + i3);
            }
            M().edit().putBoolean("bt_desligado_por_nos", false).apply();
            return;
        }
        try {
            SystemClock.elapsedRealtime();
            L3.f671a.b("CentralWatchdog", "BT (" + str + "): RELIGANDO (tentativa " + i3 + ')');
            zEnable = defaultAdapter.enable();
        } catch (Throwable th) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("BT (", str, "): enable() lançou ");
            sbJ.append(th.getClass().getSimpleName());
            sbJ.append(": ");
            sbJ.append(th.getMessage());
            l3.b("CentralWatchdog", sbJ.toString());
        }
        L3 l4 = L3.f671a;
        StringBuilder sbJ2 = d0.j("BT (", str, "): estava desligado — enable() ");
        sbJ2.append(zEnable ? "aceito" : "recusado");
        sbJ2.append(" (tentativa ");
        sbJ2.append(i3);
        sbJ2.append(')');
        l4.b("CentralWatchdog", sbJ2.toString());
        if (i3 < this.X0) {
            this.f2190a.postDelayed(new RunnableC0086k0(this, str, i3, 1), this.Y0);
        }
    }

    public final SharedPreferences M() {
        Object objA = this.f2193c.a();
        f.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final void N() {
        if (M().getBoolean("aeb_restore_on_boot", false) && this.f2234z == null) {
            try {
                this.f2233y = Car.createCar(this, null, 0L, new C0122q0(this, 5));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initAebObserver: " + th.getMessage());
                h0();
            }
        }
    }

    public final void O() {
        if (this.f2200g != null) {
            return;
        }
        try {
            this.f = Car.createCar(this, null, 0L, new C0122q0(this, 2));
        } catch (Throwable th) {
            d0.r(th, new StringBuilder("initDriveRegenCar falhou: "), "CentralWatchdog");
        }
    }

    public final void P() {
        if (M().getBoolean("rear_cam_turn_signal_enabled", false) && this.f2158E == null) {
            Log.i("CentralWatchdog", "rearCamTurnSignal: conectando ao Car... (tentativa " + (this.f2160F + 1) + ')');
            try {
                this.f2156D = Car.createCar(this, null, 0L, new C0122q0(this, 3));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initRearCamTurnSignal: " + th.getMessage());
                j0();
            }
        }
    }

    public final void Q() {
        if (M().getBoolean("recirc_guard_enabled", false) && this.f2220r == null) {
            Log.i("CentralWatchdog", "recircGuard: conectando ao Car... (tentativa " + (this.f2222s + 1) + ')');
            try {
                this.f2218q = Car.createCar(this, null, 0L, new C0122q0(this, 1));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initRecircGuard: " + th.getMessage());
                k0();
            }
        }
    }

    public final void R() {
        if (M().getBoolean("keyserver_bind_enabled", false) && this.f2214o == null) {
            Log.i("CentralWatchdog", "swcModes: conectando ao Car... (tentativa " + (this.f2216p + 1) + ')');
            try {
                this.f2213n = Car.createCar(this, null, 0L, new C0122q0(this, 0));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initSwcModesControl: " + th.getMessage());
                l0();
            }
        }
    }

    public final void S() {
        if (this.f2207k != null) {
            return;
        }
        Log.i("CentralWatchdog", "windowDriver: conectando ao Car... (tentativa " + (this.H1 + 1) + ')');
        try {
            this.f2205j = Car.createCar(this, null, 0L, new C0122q0(this, 4));
        } catch (Throwable th) {
            Log.w("CentralWatchdog", "initWindowDriverTrigger: " + th.getMessage());
            m0();
        }
    }

    public final void T(BluetoothDevice bluetoothDevice, String str) {
        String address;
        String name;
        g gVar;
        long j3;
        String str2;
        if (!C()) {
            Log.i("CentralWatchdog", "CarPlay identity (" + str + "): não roda — CarPlay desligado no modo/toggle");
            return;
        }
        try {
            address = bluetoothDevice.getAddress();
        } catch (Throwable unused) {
            address = null;
        }
        if (address == null) {
            return;
        }
        try {
            name = bluetoothDevice.getName();
        } catch (Throwable unused2) {
            name = null;
        }
        String string = M().getString("auto_connect_preferred_bt", null);
        if (string != null) {
            j.E0(string);
        }
        if (!X(bluetoothDevice)) {
            Log.i("CentralWatchdog", "CarPlay identity (" + str + "): " + address + " não parece Apple — ignorado");
            return;
        }
        if (this.G0 && (str2 = this.f2174M0) != null && !str2.equalsIgnoreCase(address)) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("CarPlay identity (", str, "): adiado — Android Auto em sessão com ");
            sbJ.append(this.f2174M0);
            l3.b("CentralWatchdog", sbJ.toString());
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            gVar = this.p1;
            boolean zIsEmpty = gVar.isEmpty();
            j3 = this.o1;
            if (zIsEmpty) {
                break;
            }
            if (!gVar.isEmpty()) {
                if (jElapsedRealtime - ((Number) gVar.b[gVar.f4187a]).longValue() <= j3) {
                    break;
                } else {
                    gVar.k();
                }
            } else {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
        }
        if (gVar.f4188c >= this.n1) {
            L3 l4 = L3.f671a;
            StringBuilder sbJ2 = d0.j("CarPlay identity (", str, "): recusado — ");
            sbJ2.append(gVar.f4188c);
            sbJ2.append(" injeções em ");
            sbJ2.append(j3 / ((long) IMAPStore.RESPONSE));
            sbJ2.append("s (teto anti-loop)");
            l4.b("CentralWatchdog", sbJ2.toString());
            return;
        }
        HashMap map = this.j1;
        Long l2 = (Long) map.get(address);
        long jLongValue = jElapsedRealtime - (l2 != null ? l2.longValue() : 0L);
        if (jLongValue >= (f.a(str, "ACTION_UUID") ? this.m1 : this.k1)) {
            map.put(address, Long.valueOf(jElapsedRealtime));
            gVar.c(Long.valueOf(jElapsedRealtime));
            new Thread(new RunnableC0164y0(this, address, name, str, 0)).start();
        } else {
            L3 l5 = L3.f671a;
            StringBuilder sbJ3 = d0.j("CarPlay identity (", str, "): ignorado — injeção há ");
            sbJ3.append(jLongValue / ((long) IMAPStore.RESPONSE));
            sbJ3.append("s ");
            sbJ3.append(f.a(str, "ACTION_UUID") ? "(debounce do UUID)" : "(carência anti-colisão)");
            l5.b("CentralWatchdog", sbJ3.toString());
        }
    }

    public final void U(int i3, String str) {
        BluetoothAdapter defaultAdapter;
        boolean zC = C();
        if (i3 == 0) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("CarPlay identity (", str, "): entrada, ");
            sbJ.append(G());
            l3.b("CentralWatchdog", sbJ.toString());
        }
        if (zC) {
            Set<BluetoothDevice> bondedDevices = null;
            try {
                defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            } catch (Throwable unused) {
                defaultAdapter = null;
            }
            if (defaultAdapter != null) {
                try {
                    if (defaultAdapter.isEnabled()) {
                        bondedDevices = defaultAdapter.getBondedDevices();
                    }
                } catch (Throwable unused2) {
                }
            }
            if (bondedDevices == null || bondedDevices.isEmpty()) {
                if (i3 >= 18) {
                    d0.o("CarPlay identity (", str, "): DESISTINDO — Bluetooth nunca ficou pronto em ~3 min. O CarPlay vai depender do próximo ACTION_UUID do iPhone.", L3.f671a, "CentralWatchdog");
                    return;
                }
                if (i3 == 0 || i3 % 6 == 0) {
                    L3 l4 = L3.f671a;
                    StringBuilder sbJ2 = d0.j("CarPlay identity (", str, "): Bluetooth ainda não pronto (tentativa ");
                    sbJ2.append(i3 + 1);
                    sbJ2.append("), aguardando");
                    l4.b("CentralWatchdog", sbJ2.toString());
                }
                this.f2190a.postDelayed(new RunnableC0086k0(i3, this, str), 10000L);
                return;
            }
            ArrayList<BluetoothDevice> arrayList = new ArrayList();
            for (Object obj : bondedDevices) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
                f.b(bluetoothDevice);
                if (X(bluetoothDevice)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                L3 l5 = L3.f671a;
                StringBuilder sbJ3 = d0.j("CarPlay identity (", str, "): nenhum aparelho Apple pareado (pareados=");
                sbJ3.append(bondedDevices.size());
                sbJ3.append(')');
                l5.b("CentralWatchdog", sbJ3.toString());
                return;
            }
            for (BluetoothDevice bluetoothDevice2 : arrayList) {
                f.b(bluetoothDevice2);
                T(bluetoothDevice2, str);
            }
        }
    }

    public final void V(int i3, String str, boolean z2) {
        BluetoothAdapter defaultAdapter;
        if (H0()) {
            d0.o("BT (", str, "): não ligo sozinho — o WiFi cliente está no ar e a rádio é uma só", L3.f671a, "CentralWatchdog");
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        if (defaultAdapter == null || (defaultAdapter.isEnabled() && !z2)) {
            L(1, str);
        } else if (E()) {
            new Thread(new RunnableC0068h0(this, i3, str, z2, 1)).start();
        } else {
            L(1, str);
        }
    }

    public final void W(String str) {
        if (M().getBoolean("ap_sempre_aberto", false)) {
            if (!str.equals("conexão BT") && M().getBoolean("wifi_auto_enable_on_wake", false)) {
                d0.o("AP sempre aberto (", str, "): pulado — 'Ligar WiFi ao abrir o carro' está ligado e a rádio é uma só", L3.f671a, "CentralWatchdog");
            } else if (H0()) {
                d0.o("AP sempre aberto (", str, "): pulado — o WiFi cliente está ligado e a rádio é uma só; não vou disputar com quem ligou", L3.f671a, "CentralWatchdog");
            } else {
                new Thread(new RunnableC0110o0(3, this, str)).start();
            }
        }
    }

    public final boolean X(BluetoothDevice bluetoothDevice) {
        String name;
        UUID uuid;
        String string;
        try {
            ParcelUuid[] uuids = bluetoothDevice.getUuids();
            if (uuids != null) {
                for (ParcelUuid parcelUuid : uuids) {
                    if (parcelUuid != null && (uuid = parcelUuid.getUuid()) != null && (string = uuid.toString()) != null && string.equalsIgnoreCase(this.q1)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        try {
            name = bluetoothDevice.getName();
        } catch (Throwable unused2) {
            name = null;
        }
        if (name == null || !j.x0(name, "iphone", true)) {
            return name != null && j.x0(name, "ipad", true);
        }
        return true;
    }

    public final boolean Y(String str) throws InterruptedException {
        String string;
        String string2 = j.X0(c(5000, "setenforce 0 2>/dev/null; getenforce")).toString();
        if (!p()) {
            L3.f671a.b("CentralWatchdog", "wlan1 (" + str + "): ausente e ap0 fechado (SELinux=" + string2 + ") — o adapter cria quando o AP subir");
            return false;
        }
        String string3 = j.X0(c(15000, this.c1)).toString();
        boolean zR0 = s.r0(string3, "sim", false);
        L3 l3 = L3.f671a;
        if (zR0) {
            string = "wlan1 (" + str + "): criada por nós com o script do adapter (MAC do ap0 clonado, SELinux=" + string2 + ')';
        } else {
            StringBuilder sbK = d0.k("wlan1 (", str, "): o script não criou (SELinux=", string2, ", saída: ");
            sbK.append(j.V0(80, string3));
            sbK.append(") — caio no conserto pelo adapter");
            string = sbK.toString();
        }
        l3.b("CentralWatchdog", string);
        if (zR0) {
            e0(str);
        }
        return zR0;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0042  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v19 */
    public final void a(boolean z2) throws InterruptedException {
        boolean zBindService;
        ?? r8;
        ?? r9;
        ?? r10;
        EnumC0031b enumC0031b = EnumC0031b.f887c;
        int i3 = 0;
        while (z2 && i3 < 30000 && !a0()) {
            Thread.sleep(1000L);
            i3 += IMAPStore.RESPONSE;
        }
        boolean zA0 = a0();
        if (zA0 && z2) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.r1) {
                    r8 = false;
                    r9 = false;
                    break;
                }
                Thread.sleep(1000L);
                i4 += IMAPStore.RESPONSE;
                if (J0() || b()) {
                    r9 = false;
                    r8 = true;
                    break;
                }
                if (this.C1 < 0) {
                    Integer numP0 = r.p0(j.X0(c(6000, "grep -cE '[[:space:]]ap0$' /proc/net/arp")).toString());
                    if ((numP0 != null ? numP0.intValue() : 0) > 0) {
                        r10 = true;
                    } else {
                        r10 = false;
                    }
                } else if (this.C1 > 0) {
                    r10 = true;
                } else {
                    r10 = false;
                }
                if (r10 != false) {
                    r8 = false;
                    r9 = true;
                    break;
                }
            }
            if (r8 == false && r9 != false) {
                int i5 = 0;
                while (i5 < this.s1 && r8 == false) {
                    Thread.sleep(1000L);
                    i5 += IMAPStore.RESPONSE;
                    r8 = J0() || b();
                }
                i4 += i5;
            }
            if (r8 == true) {
                L3.f671a.b("CentralWatchdog", "AA trigger: o celular conectou sozinho em " + (i4 / IMAPStore.RESPONSE) + "s — sem convite");
                return;
            }
            L3 l3 = L3.f671a;
            StringBuilder sb = new StringBuilder("AA trigger: ");
            StringBuilder sb2 = r9 != false ? new StringBuilder("celular no ap0 mas sem conexão em ") : new StringBuilder("nenhum celular no ap0 em ");
            sb2.append(i4 / IMAPStore.RESPONSE);
            sb2.append('s');
            sb.append(sb2.toString());
            sb.append(" — convidando");
            l3.b("CentralWatchdog", sb.toString());
        }
        L3 l4 = L3.f671a;
        StringBuilder sb3 = new StringBuilder("AA trigger: convite ao celular ");
        sb3.append(zA0 ? "com AP e WPP prontos" : "SEM a casa pronta (esperei " + (i3 / IMAPStore.RESPONSE) + "s) — vai assim mesmo");
        sb3.append((i3 <= 0 || !zA0) ? "" : " após " + (i3 / IMAPStore.RESPONSE) + "s de espera");
        l4.b("CentralWatchdog", sb3.toString());
        String string = this.f2174M0;
        ServiceConnectionC0037c serviceConnectionC0037c = null;
        Object obj = null;
        if (string == null && ((string = M().getString("auto_connect_preferred_bt", null)) == null || j.E0(string))) {
            string = null;
        }
        try {
            try {
                ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
                ServiceConnectionC0037c serviceConnectionC0037c2 = new ServiceConnectionC0037c(arrayBlockingQueue, 0);
                try {
                    Intent intent = new Intent("androidauto.device.service").setPackage("com.njda.adapter");
                    f.d(intent, "setPackage(...)");
                    try {
                        zBindService = bindService(intent, serviceConnectionC0037c2, 1);
                    } catch (Throwable th) {
                        Log.w("AaDeviceBinder", "bindService lançou: " + th.getMessage());
                        zBindService = false;
                    }
                    if (zBindService) {
                        IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
                        if (iBinder == null) {
                            Log.w("AaDeviceBinder", "serviço não conectou em 6000ms");
                        } else {
                            List listK = Y.K(iBinder);
                            if (listK != null) {
                                if (listK.isEmpty()) {
                                    Log.i("AaDeviceBinder", "getDeviceList vazio — celular não pareado/reconhecido; nada a conectar");
                                    enumC0031b = EnumC0031b.b;
                                } else {
                                    for (Object obj2 : listK) {
                                        if ((string != null && s.s0(((C0025a) obj2).b, string)) != false) {
                                            obj = obj2;
                                            break;
                                        }
                                    }
                                    C0025a c0025a = (C0025a) obj;
                                    if (c0025a == null) {
                                        c0025a = (C0025a) i.Z(listK);
                                    }
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("conectando '");
                                    sb4.append(c0025a.f877d);
                                    sb4.append("' (");
                                    sb4.append(c0025a.b);
                                    sb4.append(") — ");
                                    sb4.append(listK.size());
                                    sb4.append(" na lista, alvo do ACL=");
                                    if (string == null) {
                                        string = "(qualquer)";
                                    }
                                    sb4.append(string);
                                    Log.i("AaDeviceBinder", sb4.toString());
                                    if (Y.x(iBinder, c0025a)) {
                                        enumC0031b = EnumC0031b.f886a;
                                    }
                                }
                            }
                        }
                        unbindService(serviceConnectionC0037c2);
                    } else {
                        Log.w("AaDeviceBinder", "bindService recusou (androidauto.device.service em com.njda.adapter)");
                    }
                } catch (Throwable th2) {
                    th = th2;
                    serviceConnectionC0037c = serviceConnectionC0037c2;
                    try {
                        Log.w("AaDeviceBinder", "connect falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                        if (serviceConnectionC0037c != null) {
                            unbindService(serviceConnectionC0037c);
                        }
                    } catch (Throwable th3) {
                        if (serviceConnectionC0037c != null) {
                            try {
                                unbindService(serviceConnectionC0037c);
                            } catch (Throwable unused) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
        int iOrdinal = enumC0031b.ordinal();
        if (iOrdinal == 0) {
            this.t1 = System.currentTimeMillis();
            L3.f671a.b("CentralWatchdog", "AA trigger: connectDevice aceito por binder (sem broadcast)");
            return;
        }
        if (iOrdinal == 1) {
            L3.f671a.b("CentralWatchdog", "AA trigger: lista do ConnAdaptor vazia — caindo pro broadcast mesmo assim");
        } else {
            if (iOrdinal != 2) {
                throw new O.c();
            }
            L3.f671a.b("CentralWatchdog", "AA trigger: binder não serviu — caindo pro broadcast");
        }
        try {
            sendBroadcast(new Intent("com.bd.systemui.aa.foreground"));
            L3.f671a.b("CentralWatchdog", "AA trigger: broadcast com.bd.systemui.aa.foreground enviado");
        } catch (Exception e3) {
            d0.n(e3, new StringBuilder("AA trigger: broadcast falhou: "), "CentralWatchdog");
        }
    }

    public final void b0() {
        if (!M().getBoolean("status_brightness_enabled", false)) {
            NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.cancel(15022);
                return;
            }
            return;
        }
        if (J3.a(this)) {
            return;
        }
        Context applicationContext = getApplicationContext();
        NotificationManager notificationManager2 = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
        if (notificationManager2 == null) {
            return;
        }
        String string = applicationContext.getString(R.string.k_brightness_icon_channel);
        f.d(string, "getString(...)");
        NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_brightness", string, 2);
        notificationChannel.setShowBadge(false);
        notificationManager2.createNotificationChannel(notificationChannel);
        int i3 = (int) (36 * applicationContext.getResources().getDisplayMetrics().density);
        if (i3 < 1) {
            i3 = 1;
        }
        float f = i3;
        int i4 = (int) (f / 0.61f);
        if (i4 < 1) {
            i4 = 1;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        int i5 = -1;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(0.06f * f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        float f3 = i4 / 2.0f;
        float f4 = f * 0.22f;
        float f5 = f * 0.32f;
        float f6 = f * 0.46f;
        int i6 = 0;
        while (i6 < 8) {
            double radians = Math.toRadians(i6 * 45);
            float fCos = (float) Math.cos(radians);
            float fSin = (float) Math.sin(radians);
            paint = paint;
            canvas.drawLine((fCos * f5) + f3, (fSin * f5) + f3, (fCos * f6) + f3, (fSin * f6) + f3, paint);
            i6++;
            i5 = -1;
            f4 = f4;
        }
        Paint paint2 = new Paint(1);
        paint2.setColor(i5);
        paint2.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f3, f3, f4, paint2);
        f.b(bitmapCreateBitmap);
        Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
        f.d(iconCreateWithBitmap, "createWithBitmap(...)");
        Notification notificationBuild = new Notification.Builder(applicationContext, "central_ex_status_brightness").setSmallIcon(iconCreateWithBitmap).setContentTitle(applicationContext.getString(R.string.k_brightness_icon_title)).setContentText(applicationContext.getString(R.string.k_brightness_icon_text)).setContentIntent(PendingIntent.getBroadcast(applicationContext, 99, new Intent("com.ex.auto.ACTION_APPLY_STATUS_BRIGHTNESS"), 201326592)).setOngoing(true).setShowWhen(false).build();
        f.d(notificationBuild, "build(...)");
        Bundle bundle = notificationBuild.extras;
        bundle.putBoolean("flag_status_icon_notification", true);
        bundle.putInt("flag_status_icon_id", 99);
        bundle.putString("flag_status_icon_describe", "StatusIcon_BrightnessApply");
        bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
        bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
        bundle.putBoolean("flag_status_icon_hide", false);
        bundle.putInt("flag_status_icon_rank", 30);
        bundle.putInt("flag_status_icon_space_x", 1);
        bundle.putBoolean("flag_status_icon_is_pick_on", false);
        bundle.putInt("flag_status_icon_specific_width", 0);
        try {
            notificationManager2.notify(15022, notificationBuild);
        } catch (Throwable unused) {
        }
    }

    public final void c0() {
        boolean z2 = M().getBoolean("status_wifi_enabled", false);
        Log.i("CentralWatchdog", "refreshStatusWifiIcon: pref=" + z2);
        C0050e0 c0050e0 = this.y0;
        if (z2) {
            S4.f794a.a(this, c0050e0);
            d0();
            return;
        }
        S4.f794a.b(this, c0050e0);
        NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15024);
        }
    }

    public final void d(String str) {
        try {
            Object systemService = getApplicationContext().getSystemService("wifi");
            f.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager wifiManager = (WifiManager) systemService;
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("startSoftAp", Class.forName("android.net.wifi.WifiConfiguration"));
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(wifiManager, null);
            L3.f671a.b("CentralWatchdog", str + ": startSoftAp chamado (mesmo caminho do ConnAdaptor)");
        } catch (Throwable th) {
            L3 l3 = L3.f671a;
            StringBuilder sbI = d0.i(str, ": startSoftAp FALHOU — ");
            sbI.append(th.getClass().getSimpleName());
            sbI.append(": ");
            sbI.append(th.getMessage());
            l3.b("CentralWatchdog", sbI.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    public final void d0() {
        B4 b4;
        int i3;
        int iArgb;
        String string;
        if (M().getBoolean("status_wifi_enabled", false)) {
            Log.i("CentralWatchdog", "refreshStatusWifiIconAppearance: chamando StatusWifiIcon.show");
            if (J3.a(this)) {
                return;
            }
            Context applicationContext = getApplicationContext();
            f.b(applicationContext);
            Object systemService = applicationContext.getApplicationContext().getSystemService("wifi");
            WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
            int i4 = 1;
            B4 b5 = B4.b;
            B4 b6 = B4.f516a;
            int i5 = 3;
            if (wifiManager != null && wifiManager.isWifiEnabled()) {
                Object systemService2 = applicationContext.getApplicationContext().getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService2 instanceof ConnectivityManager ? (ConnectivityManager) systemService2 : null;
                NetworkInfo networkInfo = connectivityManager != null ? connectivityManager.getNetworkInfo(1) : null;
                if (networkInfo == null || !networkInfo.isConnected()) {
                    b4 = b5;
                } else {
                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                    b4 = B4.f520g;
                    if (connectionInfo != null) {
                        int rssi = connectionInfo.getRssi();
                        if (rssi <= -100 || rssi >= 0) {
                            b4 = b5;
                        } else {
                            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(rssi, 5);
                            if (iCalculateSignalLevel == 0) {
                                b4 = B4.f517c;
                            } else if (iCalculateSignalLevel == 1) {
                                b4 = B4.f518d;
                            } else if (iCalculateSignalLevel == 2) {
                                b4 = B4.f519e;
                            } else if (iCalculateSignalLevel == 3) {
                                b4 = B4.f;
                            }
                        }
                    }
                }
            } else {
                b4 = b6;
            }
            NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_wifi", applicationContext.getString(R.string.k_wifi_icon_channel), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
            int i6 = (int) (36 * applicationContext.getResources().getDisplayMetrics().density);
            if (i6 < 1) {
                i6 = 1;
            }
            float f = i6;
            int i7 = (int) (f / 0.61f);
            if (i7 < 1) {
                i7 = 1;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i7, i7, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            float f3 = i7 / 2.0f;
            float f4 = (0.3f * f) + f3;
            switch (b4.ordinal()) {
                case 0:
                case 1:
                case 2:
                    i5 = 0;
                    break;
                case 3:
                    i5 = 1;
                    break;
                case 4:
                    i5 = 2;
                    break;
                case 5:
                    break;
                case 6:
                    i5 = 4;
                    break;
                default:
                    throw new O.c();
            }
            int iArgb2 = Color.argb(70, 255, 255, 255);
            int iOrdinal = b4.ordinal();
            if (iOrdinal != 0) {
                iArgb = iOrdinal != 1 ? -1 : -7829368;
                i3 = 255;
            } else {
                i3 = 255;
                iArgb = Color.argb(140, 255, 255, 255);
            }
            int iArgb3 = b4 == b6 ? Color.argb(140, i3, i3, i3) : -1;
            Paint paint = new Paint(1);
            paint.setColor(iArgb);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(f3, f4, 0.07f * f, paint);
            Paint paint2 = new Paint(1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(0.075f * f);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            while (i4 < 5) {
                float f5 = ((i4 * 0.105f) + 0.1f) * f;
                int i8 = iArgb3;
                int i9 = iArgb2;
                float f6 = f;
                NotificationManager notificationManager2 = notificationManager;
                RectF rectF = new RectF(f3 - f5, f4 - f5, f3 + f5, f5 + f4);
                paint2.setColor((b4 == b5 || i4 > i5) ? i9 : i8);
                canvas.drawArc(rectF, 215.0f, 110.0f, false, paint2);
                i4++;
                f4 = f4;
                canvas = canvas;
                iArgb3 = i8;
                iArgb2 = i9;
                f = f6;
                notificationManager = notificationManager2;
            }
            NotificationManager notificationManager3 = notificationManager;
            f.b(bitmapCreateBitmap);
            Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
            f.d(iconCreateWithBitmap, "createWithBitmap(...)");
            PendingIntent broadcast = PendingIntent.getBroadcast(applicationContext, 98, new Intent("com.ex.auto.ACTION_APPLY_STATUS_WIFI"), 201326592);
            Notification.Builder contentTitle = new Notification.Builder(applicationContext, "central_ex_status_wifi").setSmallIcon(iconCreateWithBitmap).setContentTitle(applicationContext.getString(R.string.k_wifi_icon_title));
            int iOrdinal2 = b4.ordinal();
            if (iOrdinal2 == 0) {
                string = applicationContext.getString(R.string.k_wifi_icon_text_off);
                f.d(string, "getString(...)");
            } else if (iOrdinal2 != 1) {
                string = applicationContext.getString(R.string.k_wifi_icon_text_on);
                f.d(string, "getString(...)");
            } else {
                string = applicationContext.getString(R.string.k_wifi_icon_text_searching);
                f.d(string, "getString(...)");
            }
            Notification notificationBuild = contentTitle.setContentText(string).setContentIntent(broadcast).setOngoing(true).setShowWhen(false).build();
            f.d(notificationBuild, "build(...)");
            Bundle bundle = notificationBuild.extras;
            bundle.putBoolean("flag_status_icon_notification", true);
            bundle.putInt("flag_status_icon_id", 98);
            bundle.putString("flag_status_icon_describe", "StatusIcon_WifiApply");
            bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
            bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
            bundle.putBoolean("flag_status_icon_hide", false);
            bundle.putInt("flag_status_icon_rank", 31);
            bundle.putInt("flag_status_icon_space_x", 1);
            bundle.putBoolean("flag_status_icon_is_pick_on", false);
            bundle.putInt("flag_status_icon_specific_width", 0);
            try {
                notificationManager3.notify(15024, notificationBuild);
            } catch (Throwable th) {
                Log.w("StatusWifiIcon", "notify falhou", th);
            }
        }
    }

    public final void e0(String str) throws InterruptedException {
        String str2;
        if (this.d1) {
            return;
        }
        int i3 = 0;
        while (i3 < 8000 && !I0()) {
            Thread.sleep(1000L);
            i3 += IMAPStore.RESPONSE;
        }
        if (!I0()) {
            L3 l3 = L3.f671a;
            StringBuilder sbJ = d0.j("wlan1 (", str, "): não nasceu em ");
            sbJ.append(i3 / IMAPStore.RESPONSE);
            sbJ.append("s — não reinicio o daemon");
            l3.b("CentralWatchdog", sbJ.toString());
            return;
        }
        this.d1 = true;
        c(10000, "setprop ctl.restart AAutoMonitor");
        int i4 = 0;
        while (i4 < 10000) {
            Thread.sleep(1000L);
            i4 += IMAPStore.RESPONSE;
            Integer numP0 = r.p0(j.X0(c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
            if ((numP0 != null ? numP0.intValue() : 0) > 0) {
                break;
            }
        }
        Integer numP1 = r.p0(j.X0(c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
        boolean z2 = (numP1 != null ? numP1.intValue() : 0) > 0;
        L3 l4 = L3.f671a;
        StringBuilder sbJ2 = d0.j("wlan1 (", str, "): daemon nasceu antes da interface — reiniciado; WPP ");
        if (z2) {
            str2 = "no ar em " + (i4 / IMAPStore.RESPONSE) + 's';
        } else {
            str2 = "NÃO subiu em 10s";
        }
        sbJ2.append(str2);
        l4.b("CentralWatchdog", sbJ2.toString());
    }

    public final void f0(String str) throws InterruptedException {
        String str2;
        if (m()) {
            synchronized (this) {
                if (SystemClock.elapsedRealtime() - this.x1 < this.y1) {
                    return;
                }
                this.x1 = SystemClock.elapsedRealtime();
                if (!I0()) {
                    d0.o("daemon do AA (", str, "): sem wlan1 — a saúde precoce cuida", L3.f671a, "CentralWatchdog");
                    return;
                }
                if (J0() || b()) {
                    d0.o("daemon do AA (", str, "): já há conexão/projeção — não renovo", L3.f671a, "CentralWatchdog");
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                c(10000, "setprop ctl.restart AAutoMonitor");
                int i3 = 0;
                while (i3 < 10000) {
                    Thread.sleep(1000L);
                    i3 += IMAPStore.RESPONSE;
                    Integer numP0 = r.p0(j.X0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    if ((numP0 != null ? numP0.intValue() : 0) > 0) {
                        break;
                    }
                }
                Integer numP1 = r.p0(j.X0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                boolean z2 = (numP1 != null ? numP1.intValue() : 0) > 0;
                L3 l3 = L3.f671a;
                StringBuilder sbJ = d0.j("daemon do AA (", str, "): renovado antes de o celular fechar a conexão — WPP ");
                if (z2) {
                    str2 = "no ar em " + ((SystemClock.elapsedRealtime() - jElapsedRealtime) / ((long) IMAPStore.RESPONSE)) + 's';
                } else {
                    str2 = "NÃO subiu em 10s";
                }
                sbJ.append(str2);
                l3.b("CentralWatchdog", sbJ.toString());
            }
        }
    }

    public final void g0() {
        this.f2223s0 = false;
        this.f2225t0 = 0;
        z0();
        new Thread(new RunnableC0154w0(this.u0, 0)).start();
    }

    public final void h0() {
        this.f2233y = null;
        this.f2234z = null;
        int i3 = this.f2150A;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "aebObserver: desisti após 5 tentativas");
        } else {
            this.f2150A = i3 + 1;
            this.f2190a.postDelayed(new RunnableC0044d0(this, 0), 30000L);
        }
    }

    public final void i0(String str) {
        int i3 = this.G1;
        if (i3 >= 3) {
            return;
        }
        this.G1 = i3 + 1;
        StringBuilder sbJ = d0.j("AA trigger: retentando checkAlreadyConnectedAaBt (", str, "), tentativa ");
        sbJ.append(this.G1 + 1);
        sbJ.append("/4");
        Log.i("CentralWatchdog", sbJ.toString());
        this.f2190a.postDelayed(new RunnableC0139t0(this, 10), 3000L);
    }

    public final void j0() {
        this.f2156D = null;
        this.f2158E = null;
        int i3 = this.f2160F;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "rearCamTurnSignal: desisti após 5 tentativas");
        } else {
            this.f2160F = i3 + 1;
            this.f2190a.postDelayed(new RunnableC0139t0(this, 9), 30000L);
        }
    }

    public final void k0() {
        this.f2218q = null;
        this.f2220r = null;
        int i3 = this.f2222s;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "recircGuard: desisti após 5 tentativas");
        } else {
            this.f2222s = i3 + 1;
            this.f2190a.postDelayed(new RunnableC0139t0(this, 19), 30000L);
        }
    }

    public final void l(int i3) {
        this.f2190a.postDelayed(new RunnableC0092l0(this, i3, 1), i3 == 1 ? this.U1 : this.V1);
    }

    public final void l0() {
        this.f2213n = null;
        this.f2214o = null;
        int i3 = this.f2216p;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "swcModes: desisti após 5 tentativas");
        } else {
            this.f2216p = i3 + 1;
            this.f2190a.postDelayed(new RunnableC0044d0(this, 8), 30000L);
        }
    }

    public final boolean m() {
        if (E()) {
            int[] iArr = AbstractC0121q.f1100a;
            String string = M().getString("connadaptor_modo", "ambos");
            if (string == null) {
                string = "ambos";
            }
            if (string.equals("aa") || string.equals("ambos")) {
                return true;
            }
        }
        return false;
    }

    public final void m0() {
        this.f2205j = null;
        this.f2207k = null;
        int i3 = this.H1;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "windowDriver: desisti após 5 tentativas");
        } else {
            this.H1 = i3 + 1;
            this.f2190a.postDelayed(new RunnableC0139t0(this, 18), 30000L);
        }
    }

    public final boolean n() {
        return M().getBoolean("auto_route_on_aa_connect", false) || M().getBoolean("auto_proxy_enabled", false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0049  */
    public final boolean n0(String str, boolean z2) throws InterruptedException {
        Boolean boolValueOf;
        AtomicBoolean atomicBoolean;
        boolean zA;
        if (z2) {
            int i3 = 0;
            while (true) {
                atomicBoolean = this.f2176N0;
                if (!atomicBoolean.get() || i3 >= 60000) {
                    break;
                }
                Thread.sleep(2000L);
                i3 += 2000;
            }
            if (i3 > 0) {
                L3 l3 = L3.f671a;
                StringBuilder sbJ = d0.j("bind do monitor (", str, "): esperei ");
                sbJ.append(i3 / IMAPStore.RESPONSE);
                sbJ.append("s a avaliação de saúde terminar");
                l3.b("CentralWatchdog", sbJ.toString());
                if (atomicBoolean.get()) {
                    d0.o("bind do monitor (", str, "): desisto desta vez — a saúde não terminou em 60s e rodar junto já derrubou a central antes", l3, "CentralWatchdog");
                    zA = false;
                } else {
                    zA = A(str);
                }
            } else {
                zA = A(str);
            }
            boolValueOf = Boolean.valueOf(zA);
        } else {
            boolValueOf = null;
        }
        try {
            String strN0 = Y.n0(this, false);
            if (strN0 == null) {
                L3.f671a.b("CentralWatchdog", "script de boot: não consegui gravar o arquivo, pulando o resto");
                if (boolValueOf != null) {
                    return boolValueOf.booleanValue();
                }
                return false;
            }
            L3 l4 = L3.f671a;
            l4.b("CentralWatchdog", "script de boot: executando (" + str + ") — log em " + Y.f853k);
            String strC = c(120000, strN0);
            if (j.E0(strC)) {
                l4.b("CentralWatchdog", "script de boot: saída VAZIA — o shell não executou");
                if (boolValueOf != null) {
                    return boolValueOf.booleanValue();
                }
                return false;
            }
            N0.d dVar = new N0.d(new N0.c(new N0.c(j.G0(strC), new C0103n(10), 3), new C0103n(11), 1));
            while (dVar.hasNext()) {
                Log.i("CentralWatchdog", "boot: " + ((String) dVar.next()));
            }
            boolean z3 = boolValueOf == null;
            boolean zA2 = f.a(boolValueOf, Boolean.TRUE);
            if (zA2) {
                M().edit().putLong("bootscript_epoch_ok", System.currentTimeMillis() - SystemClock.elapsedRealtime()).apply();
            }
            if (z3) {
                L3.f671a.b("CentralWatchdog", "script de boot: rodou sem a seção do monitor (não se aplica a esta central/modo) — nada a confirmar");
            } else if (zA2) {
                L3.f671a.b("CentralWatchdog", "script de boot: patch do monitor CONFIRMADO");
            } else {
                List listN0 = N0.h.n0(new N0.c(new N0.c(j.G0(strC), new C0103n(12), 3), new C0103n(13), 1));
                String strD0 = !listN0.isEmpty() ? i.d0(listN0, " | ", null, null, null, 62) : s.v0(j.W0(200, j.X0(strC).toString()), "\n", " ");
                L3.f671a.b("CentralWatchdog", "script de boot: rodou mas NÃO confirmou o patch — " + strD0);
            }
            if (zA2) {
                this.f2190a.post(new RunnableC0044d0(this, 16));
            }
            return !f.a(boolValueOf, Boolean.FALSE);
        } catch (Throwable th) {
            L3.f671a.b("CentralWatchdog", "script de boot falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
            return false;
        }
    }

    public final boolean o() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.D1;
        if (this.D1 > 0 && jCurrentTimeMillis < this.E1) {
            L3.f671a.b("CentralWatchdog", "ap0: estação saiu há " + (jCurrentTimeMillis / ((long) IMAPStore.RESPONSE)) + "s — dentro da carência, trato como sessão em curso");
            return true;
        }
        if (this.C1 >= 0) {
            return this.C1 > 0;
        }
        try {
            File file = new File("/sys/class/net/ap0/statistics/rx_packets");
            if (!file.exists()) {
                return false;
            }
            Long lQ0 = r.q0(j.X0(b.b0(file)).toString());
            if (lQ0 == null) {
                return true;
            }
            long jLongValue = lQ0.longValue();
            Thread.sleep(2000L);
            Long lQ1 = r.q0(j.X0(b.b0(file)).toString());
            return lQ1 == null || lQ1.longValue() - jLongValue > 20;
        } catch (Throwable unused) {
            return true;
        }
    }

    public final void o0() {
        boolean z2;
        if (x("script de boot (patch do CarplayMonitor)")) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        long j3 = M().getLong("bootscript_epoch_ok", 0L);
        if (j3 != 0 && Math.abs(jCurrentTimeMillis - j3) < 60000) {
            boolean z3 = false;
            try {
                String string = j.X0(c(15000, "grep -F ' /system/bin/CarplayMonitor ' /proc/mounts >/dev/null 2>&1 && md5sum /system/bin/CarplayMonitor | awk '{print $1}' || echo NAO_MONTADO")).toString();
                List list = AbstractC0121q.f1103e;
                if (list != null && list.isEmpty()) {
                    z2 = false;
                    break;
                }
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    } else if (j.x0(string, ((C0115p) it.next()).f1087d, false)) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    L3.f671a.b("CentralWatchdog", "bind do monitor ausente ou desconhecido (" + string + ") — vai refazer");
                }
                z3 = z2;
            } catch (Throwable th) {
                L3.f671a.b("CentralWatchdog", "não deu pra conferir o bind do monitor: " + th.getMessage());
            }
            if (z3) {
                Log.i("CentralWatchdog", "script de boot: já confirmado neste boot e bind presente — não repete");
                return;
            }
        }
        l(1);
        this.f2190a.postDelayed(new RunnableC0116p0(this, 29), 25000L);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        boolean z2;
        boolean z3;
        String absolutePath;
        int i3 = 4;
        int i4 = 3;
        int i5 = 2;
        int i6 = 0;
        super.onCreate();
        L3 l3 = L3.f671a;
        L3.a(this);
        int i7 = 1;
        f2 = true;
        g2 = this;
        String string = getString(R.string.k_watchdog_channel);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.app_name);
        f.d(string2, "getString(...)");
        startForeground(77, Y.I(this, "central_watchdog", string, string2, android.R.drawable.ic_menu_compass, getString(R.string.k_watchdog_active), 0, 32));
        try {
            Object systemService = getSystemService("window");
            f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.f2195d = (WindowManager) systemService;
            View view = new View(this);
            view.setBackgroundColor(0);
            this.f2197e = view;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(1, 1, 2038, 280, -2);
            layoutParams.gravity = 8388659;
            layoutParams.x = 0;
            layoutParams.y = 0;
            WindowManager windowManager = this.f2195d;
            f.b(windowManager);
            windowManager.addView(this.f2197e, layoutParams);
        } catch (Exception e3) {
            d0.n(e3, new StringBuilder("Overlay invisível falhou (sem SYSTEM_ALERT_WINDOW?): "), "CentralWatchdog");
        }
        registerReceiver(this.f2173M, new IntentFilter("android.intent.action.SCREEN_ON"));
        registerReceiver(this.f2184T, new IntentFilter("android.net.wifi.STATE_CHANGE"));
        if (this.W0 == null) {
            G0 g1 = new G0(this, i3);
            try {
                registerReceiver(g1, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
                this.W0 = g1;
            } catch (Throwable th) {
                L3.f671a.b("CentralWatchdog", "não deu pra observar o estado do Bluetooth: " + th.getMessage());
            }
        }
        this.V0 = false;
        this.f2190a.postDelayed(new RunnableC0139t0(this, 7), 4000L);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 23), 5000L);
        if (M().getBoolean("bt_desligado_por_nos", false)) {
            L3.f671a.b("CentralWatchdog", "BT: havia marca de desligamento nosso pendente — devolvendo agora");
            this.f2190a.postDelayed(new RunnableC0044d0(this, 28), 2000L);
        } else {
            this.f2190a.postDelayed(new RunnableC0044d0(this, 29), 8000L);
        }
        this.f2190a.postDelayed(new RunnableC0116p0(this, i6), 2000L);
        if (M().getBoolean("ttl_65_ativo", false)) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, i7), 30000L);
        }
        this.f2190a.postDelayed(new RunnableC0116p0(this, i5), this.S0);
        this.f2190a.postDelayed(new RunnableC0116p0(this, i4), this.f2183R0);
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        long j3 = M().getLong("last_boot_epoch", 0L);
        if (j3 == 0 || Math.abs(jCurrentTimeMillis - j3) > 60000) {
            boolean z4 = M().getBoolean("boot_stable", true);
            List listT = w0.j.T("sys.boot.reason", "persist.sys.boot.reason", "ro.boot.bootreason");
            ArrayList arrayList = new ArrayList(k.V(listT));
            Iterator it = listT.iterator();
            while (true) {
                String str = "";
                if (!it.hasNext()) {
                    break;
                }
                try {
                    Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, (String) it.next());
                    String str2 = objInvoke instanceof String ? (String) objInvoke : null;
                    if (str2 != null) {
                        str = str2;
                    }
                } catch (Throwable unused) {
                }
                arrayList.add(str);
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                String str3 = (String) obj;
                if (!j.E0(str3) && !str3.equals("0")) {
                    arrayList2.add(obj);
                }
            }
            String lowerCase = i.d0(arrayList2, ",", null, null, null, 62).toLowerCase(Locale.ROOT);
            f.d(lowerCase, "toLowerCase(...)");
            if (!z4 && j3 != 0) {
                int i8 = M().getInt("boots_curtos_seguidos", 0) + 1;
                List listT2 = w0.j.T("panic", "watchdog", "hw_reset", "wdt", "hard_reset");
                if (listT2.isEmpty()) {
                    z3 = false;
                    break;
                }
                Iterator it2 = listT2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (j.x0(lowerCase, (String) it2.next(), false)) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                if (i8 >= 2 || z3) {
                    M().edit().putBoolean("crash_detected", true).putBoolean("auto_apply_paused", true).putInt("boots_estaveis_seguidos", 0).putInt("boots_curtos_seguidos", i8).apply();
                    L3 l4 = L3.f671a;
                    StringBuilder sbH = d0.h("TRAVA ARMADA: ", i8, " boot(s) curto(s) seguidos");
                    sbH.append(z3 ? " + motivo indica queda" : "");
                    sbH.append(" (motivo='");
                    if (j.E0(lowerCase)) {
                        lowerCase = "(vazio)";
                    }
                    sbH.append(lowerCase);
                    sbH.append("') — aplicação automática suspensa");
                    l4.b("CentralWatchdog", sbH.toString());
                } else {
                    M().edit().putInt("boots_curtos_seguidos", i8).apply();
                    L3 l5 = L3.f671a;
                    StringBuilder sbH2 = d0.h("boot anterior foi curto (", i8, "/2, motivo='");
                    if (j.E0(lowerCase)) {
                        lowerCase = "(vazio)";
                    }
                    sbH2.append(lowerCase);
                    sbH2.append("') — isolado ainda não arma a trava");
                    l5.b("CentralWatchdog", sbH2.toString());
                }
            } else if (M().getBoolean("auto_apply_paused", false)) {
                int i9 = M().getInt("boots_estaveis_seguidos", 0) + 1;
                if (i9 >= 3) {
                    M().edit().putBoolean("auto_apply_paused", false).putBoolean("crash_detected", false).putInt("boots_estaveis_seguidos", 0).putInt("boots_curtos_seguidos", 0).apply();
                    L3.f671a.b("CentralWatchdog", "TRAVA SOLTA sozinha: " + i9 + " boots estáveis seguidos — aplicação automática religada");
                } else {
                    M().edit().putInt("boots_estaveis_seguidos", i9).apply();
                    L3.f671a.b("CentralWatchdog", "trava ainda armada: " + i9 + "/3 boots estáveis");
                }
            } else {
                if (z4) {
                    z2 = false;
                    if (M().getInt("boots_curtos_seguidos", 0) != 0) {
                        M().edit().putInt("boots_curtos_seguidos", 0).apply();
                    }
                }
                M().edit().putLong("last_boot_epoch", jCurrentTimeMillis).putBoolean("boot_stable", z2).apply();
            }
            z2 = false;
            M().edit().putLong("last_boot_epoch", jCurrentTimeMillis).putBoolean("boot_stable", z2).apply();
        }
        new Thread(new RunnableC0139t0(this, 3)).start();
        Y0 y0 = Y0.f854a;
        new Handler(Looper.getMainLooper()).postDelayed(new V0(M(), 0), 12000L);
        Y0.m(this, M());
        this.f2190a.postDelayed(new RunnableC0116p0(this, 4), 18000L);
        registerReceiver(this.f2232x0, new IntentFilter("com.ex.auto.ACTION_APPLY_STATUS_BRIGHTNESS"));
        b0();
        registerReceiver(this.f2153B0, new IntentFilter("com.ex.auto.ACTION_APPLY_STATUS_WIFI"));
        try {
            registerReceiver(this.i1, new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
        } catch (Throwable th2) {
            L3.f671a.b("CentralWatchdog", "não deu pra ouvir o estado do AP: " + th2.getMessage());
        }
        c0();
        if (this.f2170K0 == null) {
            G0 g3 = new G0(this, 1);
            this.f2170K0 = g3;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.UUID");
            intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            try {
                registerReceiver(g3, intentFilter);
            } catch (Exception e4) {
                d0.n(e4, new StringBuilder("aaBtReceiver: "), "CentralWatchdog");
                this.f2170K0 = null;
            }
        }
        if (this.B1 == null) {
            G0 g4 = new G0(this, 2);
            this.B1 = g4;
            try {
                registerReceiver(g4, new IntentFilter("com.njda.carplay.broadcast"));
            } catch (Exception e5) {
                d0.n(e5, new StringBuilder("carplayStateReceiver: "), "CentralWatchdog");
                this.B1 = null;
            }
        }
        if (this.F1 == null) {
            try {
                Object systemService2 = getSystemService("wifi");
                f.c(systemService2, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                Class<?> cls = Class.forName("android.net.wifi.WifiManager$SoftApCallback");
                Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: T.s0
                    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj2, Method method, Object[] objArr) {
                        CentralWatchdogService centralWatchdogService = this.f1141a;
                        int[] iArr = CentralWatchdogService.d2;
                        String name = method.getName();
                        if (name == null) {
                            return null;
                        }
                        switch (name.hashCode()) {
                            case -1815233389:
                                if (!name.equals("onNumClientsChanged")) {
                                    return null;
                                }
                                Object objW = objArr != null ? w0.h.W(0, objArr) : null;
                                Integer num = objW instanceof Integer ? (Integer) objW : null;
                                int iIntValue = num != null ? num.intValue() : 0;
                                if (iIntValue != centralWatchdogService.C1) {
                                    L3.f671a.b("CentralWatchdog", "hotspot: " + iIntValue + " celular(es) associado(s)");
                                }
                                if (iIntValue == 0 && centralWatchdogService.C1 > 0) {
                                    centralWatchdogService.D1 = System.currentTimeMillis();
                                }
                                centralWatchdogService.C1 = iIntValue;
                                return null;
                            case -1776922004:
                                if (name.equals("toString")) {
                                    return "SoftApCallbackProxy";
                                }
                                return null;
                            case -1415467934:
                                if (!name.equals("onStateChanged")) {
                                    return null;
                                }
                                Object objW2 = objArr != null ? w0.h.W(0, objArr) : null;
                                Integer num2 = objW2 instanceof Integer ? (Integer) objW2 : null;
                                if (num2 == null || num2.intValue() != 11) {
                                    return null;
                                }
                                centralWatchdogService.C1 = 0;
                                return null;
                            case -1295482945:
                                if (name.equals("equals")) {
                                    return Boolean.FALSE;
                                }
                                return null;
                            case 147696667:
                                if (name.equals("hashCode")) {
                                    return Integer.valueOf(System.identityHashCode(centralWatchdogService));
                                }
                                return null;
                            default:
                                return null;
                        }
                    }
                });
                WifiManager.class.getMethod("registerSoftApCallback", cls, Handler.class).invoke((WifiManager) systemService2, objNewProxyInstance, this.f2190a);
                this.F1 = objNewProxyInstance;
                Log.i("CentralWatchdog", "SoftApCallback registrado (contagem de clientes do hotspot por evento)");
            } catch (Throwable th3) {
                L3.f671a.b("CentralWatchdog", "SoftApCallback indisponível (" + th3.getClass().getSimpleName() + ") — usando tráfego do ap0");
            }
        }
        this.f2190a.postDelayed(new RunnableC0116p0(this, 5), 3000L);
        this.f2190a.postDelayed(new RunnableC0139t0(this, 15), 5000L);
        this.f2190a.postDelayed(new RunnableC0139t0(this, 20), 20000L);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 6), 20000L);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 11), 20000L);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 15), 20000L);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 18), 20000L);
        this.f2154C = SystemClock.elapsedRealtime();
        this.f2190a.postDelayed(new RunnableC0044d0(this, 19), 20000L);
        if (M().getBoolean("rvc_black_bg", false)) {
            this.f2190a.postDelayed(new RunnableC0044d0(this, 20), 25000L);
        }
        new Thread(new RunnableC0044d0(this, 21)).start();
        t0();
        this.f2190a.postDelayed(new RunnableC0044d0(this, 22), 33000L);
        Handler handler = this.f2190a;
        D0 d1 = this.f2204i0;
        handler.removeCallbacks(d1);
        handler.postDelayed(d1, 10000L);
        if (this.f2198e0 == null) {
            Object systemService3 = getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService3 instanceof ConnectivityManager ? (ConnectivityManager) systemService3 : null;
            if (connectivityManager != null) {
                I0 i1 = new I0(this);
                this.f2198e0 = i1;
                try {
                    connectivityManager.registerDefaultNetworkCallback(i1);
                } catch (Exception e6) {
                    d0.n(e6, new StringBuilder("netCallback: "), "CentralWatchdog");
                    this.f2198e0 = null;
                }
            }
        }
        this.f2190a.postDelayed(new RunnableC0044d0(this, 24), 20000L);
        w0();
        if (n()) {
            this.f2190a.postDelayed(this.Y1, 6000L);
        }
        q0();
        r0();
        p0();
        s0();
        o0();
        if (!x("condução/regeneração")) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, 10), 20000L);
        }
        if (M().getBoolean("telemetry_autostart", false)) {
            this.f2190a.postDelayed(new RunnableC0044d0(this, 25), 15000L);
        }
        try {
            File externalFilesDir = getExternalFilesDir(null);
            Y.f852j = externalFilesDir == null;
            if (externalFilesDir == null) {
                externalFilesDir = getFilesDir();
            }
            absolutePath = new File(externalFilesDir, "central_boot.log").getAbsolutePath();
        } catch (Throwable unused2) {
            absolutePath = "/data/local/tmp/fixes/central_boot.log";
        }
        Y.f853k = absolutePath;
        Q3.f768a.b(this);
        if (M().getBoolean("phone_sync_enabled", false)) {
            this.f2190a.postDelayed(new RunnableC0044d0(this, 26), 12000L);
        }
        this.f2190a.postDelayed(this.c2, 60000L);
        this.f2190a.postDelayed(this.b2, this.a2);
        this.f2190a.postDelayed(new RunnableC0044d0(this, 27), 60000L);
        List listT3 = w0.j.T("carplay_identity_inject", "auto_carplay_trigger", "auto_aa_trigger");
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listT3) {
            if (M().contains((String) obj2)) {
                arrayList3.add(obj2);
            }
        }
        if (!arrayList3.isEmpty()) {
            SharedPreferences.Editor editorEdit = M().edit();
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                editorEdit.remove((String) it3.next());
            }
            editorEdit.apply();
            L3.f671a.b("CentralWatchdog", "limpeza: chaves-sombra removidas (" + i.d0(arrayList3, null, null, null, null, 63) + ") — quem decide CarPlay/Android Auto agora é só o modo");
        }
        L3 l6 = L3.f671a;
        l6.b("CentralWatchdog", "anúncio SDP CarPlay: " + G());
        if (C()) {
            C0032b0.f889a.b();
        }
        J3.g(this);
        J3.l(this);
        if (!J3.f639d) {
            J3.f639d = true;
            boolean z5 = !J3.a(this);
            try {
                if ((getPackageManager().getComponentEnabledSetting(J3.b) != 2) != z5) {
                    l6.b("ModoOficina", "ícone fora de sincronia (deveria=" + z5 + ") — corrigindo");
                    J3.c(this, z5);
                }
            } catch (Throwable unused3) {
            }
        }
        this.f2190a.post(this.f2221r0);
        Log.i("CentralWatchdog", "CentralWatchdogService iniciado");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2 = false;
        g2 = null;
        this.f2190a.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.f2173M);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.f2184T);
        } catch (Exception unused2) {
        }
        try {
            unregisterReceiver(this.f2232x0);
        } catch (Exception unused3) {
        }
        z0();
        try {
            unregisterReceiver(this.f2153B0);
        } catch (Exception unused4) {
        }
        try {
            unregisterReceiver(this.i1);
        } catch (Exception unused5) {
        }
        S4.f794a.b(this, this.y0);
        I0 i1 = this.f2198e0;
        if (i1 != null) {
            try {
                Object systemService = getSystemService("connectivity");
                f.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                ((ConnectivityManager) systemService).unregisterNetworkCallback(i1);
            } catch (Exception unused6) {
            }
        }
        this.f2198e0 = null;
        G0 g1 = this.f2170K0;
        if (g1 != null) {
            try {
                unregisterReceiver(g1);
            } catch (Exception unused7) {
            }
        }
        this.f2170K0 = null;
        G0 g3 = this.B1;
        if (g3 != null) {
            try {
                unregisterReceiver(g3);
            } catch (Exception unused8) {
            }
        }
        this.B1 = null;
        this.f2190a.removeCallbacks(this.f2172L0);
        this.G0 = false;
        this.f2164H0 = 0;
        this.f2166I0 = 0;
        this.f2168J0 = 0;
        C0032b0.f889a.c();
        F();
        try {
            Car car = this.f2202h;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused9) {
        }
        this.f2202h = null;
        this.f2203i = null;
        try {
            CarPropertyManager carPropertyManager = this.f2207k;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.I1);
            }
        } catch (Exception unused10) {
        }
        try {
            Car car2 = this.f2205j;
            if (car2 != null) {
                car2.disconnect();
            }
        } catch (Exception unused11) {
        }
        this.f2205j = null;
        this.f2207k = null;
        try {
            B3.f492a.p();
        } catch (Throwable unused12) {
        }
        try {
            CarPropertyManager carPropertyManager2 = this.f2214o;
            if (carPropertyManager2 != null) {
                carPropertyManager2.unregisterCallback(this.J1);
            }
        } catch (Exception unused13) {
        }
        try {
            Car car3 = this.f2213n;
            if (car3 != null) {
                car3.disconnect();
            }
        } catch (Exception unused14) {
        }
        this.f2213n = null;
        this.f2214o = null;
        Y.f = false;
        Handler handler = Y.f849g;
        if (handler != null) {
            handler.removeCallbacks(Y.f851i);
        }
        Log.i("SwcModeCtrl", "stop");
        this.f2190a.removeCallbacks(this.K1);
        try {
            CarPropertyManager carPropertyManager3 = this.f2220r;
            if (carPropertyManager3 != null) {
                carPropertyManager3.unregisterCallback(this.L1);
            }
        } catch (Exception unused15) {
        }
        try {
            Car car4 = this.f2218q;
            if (car4 != null) {
                car4.disconnect();
            }
        } catch (Exception unused16) {
        }
        this.f2218q = null;
        this.f2220r = null;
        try {
            CarPropertyManager carPropertyManager4 = this.f2234z;
            if (carPropertyManager4 != null) {
                carPropertyManager4.unregisterCallback(this.S1);
            }
        } catch (Exception unused17) {
        }
        try {
            Car car5 = this.f2233y;
            if (car5 != null) {
                car5.disconnect();
            }
        } catch (Exception unused18) {
        }
        this.f2233y = null;
        this.f2234z = null;
        try {
            CarPropertyManager carPropertyManager5 = this.f2158E;
            if (carPropertyManager5 != null) {
                carPropertyManager5.unregisterCallback(this.N1);
            }
        } catch (Exception unused19) {
        }
        try {
            Car car6 = this.f2156D;
            if (car6 != null) {
                car6.disconnect();
            }
        } catch (Exception unused20) {
        }
        this.f2156D = null;
        this.f2158E = null;
        RunnableC0169z0 runnableC0169z0 = this.M1;
        if (runnableC0169z0 != null) {
            this.f2190a.removeCallbacks(runnableC0169z0);
            this.M1 = null;
        }
        View view = this.f2197e;
        if (view != null) {
            try {
                WindowManager windowManager = this.f2195d;
                if (windowManager != null) {
                    windowManager.removeView(view);
                }
            } catch (Exception unused21) {
            }
        }
        Log.i("CentralWatchdog", "CentralWatchdogService destruído");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        String stringExtra;
        String stringExtra2;
        if (intent != null && (stringExtra2 = intent.getStringExtra("motivo_inicio")) != null) {
            this.f2196d0 = stringExtra2;
        }
        if (intent != null) {
            if (intent.hasExtra("auto_proxy_changed")) {
                if (intent.getBooleanExtra("auto_proxy_changed", false)) {
                    this.V = null;
                    this.f2187X = null;
                    this.f2190a.removeCallbacks(this.Y1);
                    this.f2190a.post(this.Y1);
                } else {
                    this.f2190a.removeCallbacks(this.Y1);
                    this.V = null;
                    this.f2186W = null;
                    this.f2187X = null;
                }
            } else if (intent.hasExtra("auto_route_changed")) {
                if (intent.getBooleanExtra("auto_route_changed", false)) {
                    this.f2186W = null;
                    this.f2190a.removeCallbacks(this.Y1);
                    this.f2190a.post(this.Y1);
                } else {
                    this.f2190a.removeCallbacks(this.Y1);
                    this.f2186W = null;
                }
            } else if (intent.hasExtra("reaplicar_patch_monitor")) {
                L3.f671a.b("CentralWatchdog", "patch do monitor pedido pelo toggle do CarPlay sem fio");
                M().edit().putLong("bootscript_epoch_ok", 0L).apply();
                l(1);
            } else if (intent.hasExtra("zerar_viagem")) {
                A.c cVar = new A.c(this, 2);
                CentralWatchdogService centralWatchdogService = g2;
                if (centralWatchdogService == null) {
                    cVar.b(Boolean.FALSE);
                } else {
                    new Thread(new H(centralWatchdogService, 2, cVar)).start();
                }
            } else if (intent.hasExtra("crash_action") && (stringExtra = intent.getStringExtra("crash_action")) != null) {
                int iHashCode = stringExtra.hashCode();
                if (iHashCode != -934426579) {
                    if (iHashCode == 1353652170 && stringExtra.equals("disable_all")) {
                        M().edit().putBoolean("crash_detected", false).putBoolean("auto_apply_paused", false).putBoolean("avas_muted_saved", false).putInt("avas_sound_type_saved", -1).putBoolean("aeb_restore_on_boot", false).putBoolean("gestures_restore_on_boot", false).apply();
                        M().edit().putInt("boots_curtos_seguidos", 0).apply();
                        this.O1.clear();
                        L3.f671a.b("CentralWatchdog", "desativar tudo: o usuário optou por NÃO reaplicar (AVAS, AEB e gestos desligados; trava solta)");
                    }
                } else if (stringExtra.equals("resume")) {
                    M().edit().putBoolean("crash_detected", false).putBoolean("auto_apply_paused", false).apply();
                    q0();
                    r0();
                    p0();
                    s0();
                    if (!x("condução/regeneração")) {
                        this.f2190a.postDelayed(new RunnableC0116p0(this, 10), 20000L);
                    }
                    o0();
                    t0();
                    M().edit().putInt("boots_estaveis_seguidos", 0).putInt("boots_curtos_seguidos", 0).apply();
                    this.O1.clear();
                    L3.f671a.b("CentralWatchdog", "continuar aplicando: restores reagendados (Ar Digital, script de boot, AVAS, AEB, gestos, drive/regen)");
                }
            }
            if (n()) {
                this.f2190a.removeCallbacks(this.Y1);
                this.f2190a.post(this.Y1);
            }
        }
        return 1;
    }

    public final void p0() {
        this.f2154C = SystemClock.elapsedRealtime();
        if (!x("AEB") && M().getBoolean("aeb_restore_on_boot", false)) {
            this.f2190a.postDelayed(new RunnableC0139t0(this, 0), 15000L);
        }
    }

    public final void q() {
        boolean zX0;
        if (x("ConnAdaptor / AA WiFi")) {
            return;
        }
        boolean z2 = false;
        try {
            String str = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            f.d(str, "sourceDir");
            zX0 = j.x0(str, "/data/app/", false);
        } catch (Throwable unused) {
            zX0 = false;
        }
        try {
            ArrayList arrayListZ = b.Z(new File("/proc/mounts"));
            if (!arrayListZ.isEmpty()) {
                Iterator it = arrayListZ.iterator();
                while (it.hasNext()) {
                    if (j.x0((String) it.next(), " /system/app/ConnAdaptor/ConnAdaptor.apk ", false)) {
                        z2 = true;
                        break;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            if (zX0) {
                Log.i("CentralWatchdog", "ConnAdaptor: instalado como update (pm) — nada a fazer");
            } else if (z2) {
                Log.w("CentralWatchdog", "ConnAdaptor: há um bind LEGADO montado sobre o /system. Isso derruba a instalação na próxima varredura de pacotes — use Desativar e Ativar.");
            } else {
                L3.f671a.b("CentralWatchdog", "ConnAdaptor está de FÁBRICA. Não reinstalamos sozinhos: use o botão Ativar. (Se você não desativou: ou o sistema reverteu a atualização, ou este boot desfez um bind legado — procure CONNADAPTOR=LIMPANDO_BIND_LEGADO.)");
            }
        } catch (Throwable th) {
            d0.r(th, new StringBuilder("checagem do ConnAdaptor falhou: "), "CentralWatchdog");
        }
    }

    public final void q0() {
        if (!x("AVAS (mudo)") && M().getBoolean("avas_muted_saved", false)) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, 9), 12000L);
        }
    }

    public final void r() {
        if (!M().getBoolean("aeb_restore_on_boot", false)) {
            return;
        }
        boolean z2 = M().getBoolean("aeb_desired", M().getBoolean("aeb_state_saved", false));
        Car car = null;
        Object objValueOf = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("property");
                    CarPropertyManager carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    Integer numC = U.c(carPropertyManager, 557858874, 0);
                    if (numC != null) {
                        objValueOf = Boolean.valueOf(numC.intValue() != 0);
                    }
                    if (f.a(objValueOf, Boolean.valueOf(z2))) {
                        Log.i("CentralWatchdog", "AEB já em " + z2 + ", nenhuma ação necessária");
                    } else {
                        carPropertyManager.setIntProperty(557858874, 0, z2 ? 1 : 0);
                        Log.i("CentralWatchdog", "AEB restaurado para " + z2 + " (era " + objValueOf + ')');
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th) {
                    th = th;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAebIfNeeded falhou: " + th.getMessage());
                        if (car == null) {
                        } else {
                            car.disconnect();
                        }
                    } catch (Throwable th2) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Exception unused3) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void r0() {
        if (!x("AVAS (som)") && M().getInt("avas_sound_type_saved", -1) > 0) {
            this.f2190a.postDelayed(new RunnableC0139t0(this, 4), 12000L);
        }
    }

    public final void s() {
        if (!M().getBoolean("avas_muted_saved", false)) {
            return;
        }
        Car car = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("audio");
                    CarAudioManager carAudioManager = carManager instanceof CarAudioManager ? (CarAudioManager) carManager : null;
                    if (carAudioManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    Object objInvoke = carAudioManager.getClass().getMethod("getAVASMode", null).invoke(carAudioManager, null);
                    Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
                    if (num == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                    int iIntValue = num.intValue();
                    if (iIntValue != 0) {
                        carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, 0);
                        Log.i("CentralWatchdog", "AVAS restaurado para mudo após boot (era modo=" + iIntValue + ')');
                    } else {
                        Log.i("CentralWatchdog", "AVAS já estava mudo, nenhuma ação necessária");
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th) {
                    th = th;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAvasMuteIfNeeded falhou: " + th.getMessage());
                        if (car == null) {
                        } else {
                            car.disconnect();
                        }
                    } catch (Throwable th2) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused4) {
        }
    }

    public final void s0() {
        if (!x("gestos do volante") && M().getBoolean("gestures_restore_on_boot", false) && M().getBoolean("gestures_enabled", false)) {
            this.f2190a.postDelayed(new RunnableC0116p0(this, 25), 25000L);
        }
    }

    public final void t() {
        int i3 = M().getInt("avas_sound_type_saved", -1);
        if (i3 <= 0) {
            return;
        }
        Car car = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("property");
                    CarPropertyManager carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    for (int i4 : AbstractC0121q.f1100a) {
                        try {
                            Integer numC = U.c(carPropertyManager, 557871191, i4);
                            if (numC != null) {
                                int iIntValue = numC.intValue();
                                if (iIntValue != i3) {
                                    carPropertyManager.setIntProperty(557871191, i4, i3);
                                    Log.i("CentralWatchdog", "AVAS tipo de som restaurado para " + i3 + " após boot (era " + iIntValue + ')');
                                } else {
                                    Log.i("CentralWatchdog", "AVAS tipo de som já em " + i3 + ", nenhuma ação necessária");
                                }
                                try {
                                    carCreateCar.disconnect();
                                    return;
                                } catch (Exception unused2) {
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            Log.w("CentralWatchdog", "applyAvasSoundTypeIfNeeded area=" + i4 + ": " + th.getMessage());
                        }
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAvasSoundTypeIfNeeded falhou: " + th.getMessage());
                        if (car != null) {
                            car.disconnect();
                        }
                    } catch (Throwable th3) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Exception unused4) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void t0() {
        if (x("Ar Digital")) {
            return;
        }
        boolean z2 = M().getBoolean("hvac_digital_temp", false);
        boolean z3 = M().getBoolean("hvac_digital_batt", false);
        M().getBoolean("hvac_digital_ext_temp", false);
        if (z2 || z3) {
            this.f2190a.postDelayed(new RunnableC0139t0(this, 1), 25000L);
        }
    }

    public final boolean u() {
        if (x("patch do CarplayMonitor")) {
            return true;
        }
        String string = M().getString("connadaptor_modo", "ambos");
        String str = string != null ? string : "ambos";
        if (AbstractC0121q.d(str)) {
            if (C()) {
                return n0("passada única (bind + reinício)", true);
            }
            L3.f671a.b("CentralWatchdog", "script de boot: sem CarPlay — rodando SEM a seção do monitor (" + G() + ')');
            return n0("sem CarPlay (sem monitor)", false);
        }
        L3.f671a.b("CentralWatchdog", "script de boot: modo " + str + " — rodando SEM a seção do CarplayMonitor");
        return n0("modo " + str + " (sem monitor)", false);
    }

    public final void u0(boolean z2) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("br.com.central.dualdashcam", "br.com.central.dualdashcam.camera.RearCamPipService"));
            intent.setAction(z2 ? "br.com.central.dualdashcam.action.SHOW_REAR_PIP" : "br.com.central.dualdashcam.action.HIDE_REAR_PIP");
            startService(intent);
            StringBuilder sb = new StringBuilder("rearCamTurnSignal: enviado ");
            sb.append(z2 ? "SHOW" : "HIDE");
            sb.append(" pro DualDashcam");
            Log.i("CentralWatchdog", sb.toString());
        } catch (Throwable th) {
            d0.r(th, new StringBuilder("rearCamTurnSignal: falha ao acionar DualDashcam (RearCamPipService ainda não existe? não instalado?): "), "CentralWatchdog");
        }
    }

    public final void v(String str) {
        SharedPreferences sharedPreferences;
        CarPropertyManager carPropertyManager = this.f2200g;
        if (carPropertyManager == null) {
            return;
        }
        boolean z2 = false;
        try {
            sharedPreferences = createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
        } catch (Exception unused) {
            sharedPreferences = getSharedPreferences("drive_regen_prefs", 0);
        }
        final boolean zContains = sharedPreferences.contains("saved_drive");
        final boolean zContains2 = sharedPreferences.contains("saved_regen");
        if (!zContains && !zContains2) {
            d0.o("condução/regeneração (", str, "): nada salvo — não imponho padrão por cima do que está no carro", L3.f671a, "CentralWatchdog");
            return;
        }
        final int i3 = sharedPreferences.getInt("saved_drive", 570491138);
        final int i4 = sharedPreferences.getInt("saved_regen", 537003266);
        final int iIncrementAndGet = this.b.incrementAndGet();
        Log.i("CentralWatchdog", "applyDriveRegenSavedModes: drive=" + i3 + " regen=" + i4 + " reason=" + str + " gen=" + iIncrementAndGet);
        if (zContains) {
            int[] iArr = e2;
            for (int i5 = 0; i5 < 3; i5++) {
                try {
                    carPropertyManager.setIntProperty(570491136, iArr[i5], i3);
                    z2 = true;
                    break;
                } catch (Throwable unused2) {
                }
            }
        }
        Log.i("CentralWatchdog", "drive write ok=" + z2 + " reason=" + str + " gen=" + iIncrementAndGet);
        this.f2190a.postDelayed(new RunnableC0074i0(iIncrementAndGet, this, zContains2, i4, str), 450L);
        for (Iterator it = w0.j.T(1800L, 4200L, 8000L, 16000L).iterator(); it.hasNext(); it = it) {
            final int i6 = 0;
            this.f2190a.postDelayed(new Runnable() { // from class: T.c0
                @Override // java.lang.Runnable
                public final void run() {
                    CarPropertyManager carPropertyManager2;
                    CarPropertyManager carPropertyManager3;
                    switch (i6) {
                        case 0:
                            int i7 = iIncrementAndGet;
                            CentralWatchdogService centralWatchdogService = this;
                            int i8 = i4;
                            boolean z3 = zContains2;
                            if (CentralWatchdogService.f2 && i7 == centralWatchdogService.b.get() && (carPropertyManager2 = centralWatchdogService.f2200g) != null) {
                                new Thread(new RunnableC0074i0(i7, centralWatchdogService, carPropertyManager2, i8, z3, 1)).start();
                                break;
                            }
                            break;
                        default:
                            int i9 = iIncrementAndGet;
                            CentralWatchdogService centralWatchdogService2 = this;
                            int i10 = i4;
                            boolean z4 = zContains2;
                            if (CentralWatchdogService.f2 && i9 == centralWatchdogService2.b.get() && (carPropertyManager3 = centralWatchdogService2.f2200g) != null) {
                                new Thread(new RunnableC0074i0(i9, centralWatchdogService2, carPropertyManager3, i10, z4, 0)).start();
                                break;
                            }
                            break;
                    }
                }
            }, ((Number) it.next()).longValue());
        }
        Iterator it2 = w0.j.T(2000L, 4500L, 9000L, 18000L).iterator();
        while (it2.hasNext()) {
            final int i7 = 1;
            this.f2190a.postDelayed(new Runnable() { // from class: T.c0
                @Override // java.lang.Runnable
                public final void run() {
                    CarPropertyManager carPropertyManager2;
                    CarPropertyManager carPropertyManager3;
                    switch (i7) {
                        case 0:
                            int i8 = iIncrementAndGet;
                            CentralWatchdogService centralWatchdogService = this;
                            int i9 = i3;
                            boolean z3 = zContains;
                            if (CentralWatchdogService.f2 && i8 == centralWatchdogService.b.get() && (carPropertyManager2 = centralWatchdogService.f2200g) != null) {
                                new Thread(new RunnableC0074i0(i8, centralWatchdogService, carPropertyManager2, i9, z3, 1)).start();
                                break;
                            }
                            break;
                        default:
                            int i10 = iIncrementAndGet;
                            CentralWatchdogService centralWatchdogService2 = this;
                            int i11 = i3;
                            boolean z4 = zContains;
                            if (CentralWatchdogService.f2 && i10 == centralWatchdogService2.b.get() && (carPropertyManager3 = centralWatchdogService2.f2200g) != null) {
                                new Thread(new RunnableC0074i0(i10, centralWatchdogService2, carPropertyManager3, i11, z4, 0)).start();
                                break;
                            }
                            break;
                    }
                }
            }, ((Number) it2.next()).longValue());
        }
    }

    public final void v0() {
        if (this.G0) {
            return;
        }
        this.G0 = true;
        this.f2164H0 = 0;
        this.f2166I0 = 0;
        this.f2168J0 = 0;
        L3.f671a.b("CentralWatchdog", "AA trigger: sessão iniciada (BT conectado)");
        new Thread(new RunnableC0044d0(this, 2)).start();
    }

    public final void w(int i3, String str) {
        Pattern patternCompile = Pattern.compile("^\\d{1,3}(\\.\\d{1,3}){3}$");
        f.d(patternCompile, "compile(...)");
        f.e(str, "input");
        if (patternCompile.matcher(str).matches()) {
            new Thread(new RunnableC0086k0(this, str, i3, 0)).start();
        }
    }

    public final void w0() {
        Handler handler = this.f2190a;
        D0 d1 = this.h0;
        handler.removeCallbacks(d1);
        this.f2201g0 = 0;
        boolean zIsEmpty = Y.V(this).isEmpty();
        new Thread(new RunnableC0144u0(0, !zIsEmpty)).start();
        if (zIsEmpty) {
            return;
        }
        handler.post(d1);
    }

    public final boolean x(String str) {
        if (!M().getBoolean("auto_apply_paused", false)) {
            return false;
        }
        if (!this.O1.add(str)) {
            return true;
        }
        L3.f671a.b("CentralWatchdog", "SUPRIMIDO pela trava de aplicação automática: ".concat(str));
        return true;
    }

    public final void x0() {
        Handler handler = this.f2190a;
        D0 d1 = this.f2199f0;
        handler.removeCallbacks(d1);
        if (M().getBoolean("status_temp_ext_enabled", false) || M().getBoolean("status_battery_enabled", false) || M().getBoolean("status_total_km_enabled", false) || M().getBoolean("status_trip_km_enabled", false) || M().getBoolean("status_signal_enabled", false)) {
            handler.post(d1);
            return;
        }
        HashMap map = A4.f474a;
        A4.c(this);
        A4.f(this);
        A4.g(this);
        NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15030);
        }
    }

    public final void y(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = jElapsedRealtime - this.f2179P0;
        if (j3 >= this.f2181Q0) {
            this.f2179P0 = jElapsedRealtime;
            new Thread(new RunnableC0110o0(4, this, str)).start();
            return;
        }
        L3 l3 = L3.f671a;
        StringBuilder sbJ = d0.j("saúde (", str, "): pulada — a anterior terminou há ");
        long j4 = IMAPStore.RESPONSE;
        sbJ.append(j3 / j4);
        sbJ.append("s (carência de ");
        sbJ.append(this.f2181Q0 / j4);
        sbJ.append("s)");
        l3.b("CentralWatchdog", sbJ.toString());
    }

    public final void y0(String str) {
        this.G0 = false;
        this.f2190a.removeCallbacks(this.f2172L0);
        L3 l3 = L3.f671a;
        StringBuilder sbJ = d0.j("AA trigger: parado (", str, ") após ");
        sbJ.append((((long) this.f2166I0) * this.f2157D0) / ((long) IMAPStore.RESPONSE));
        sbJ.append("s, ");
        sbJ.append(this.f2164H0);
        sbJ.append(" pedido(s) de saúde");
        l3.b("CentralWatchdog", sbJ.toString());
    }

    public final void z(String str) throws InterruptedException {
        if (!E()) {
            d0.o("saúde (", str, "): pulada — ConnAdaptor de fábrica, não há projeção sem fio nossa para consertar (e o force-stop derrubaria o Android Auto com fio)", L3.f671a, "CentralWatchdog");
            return;
        }
        if (Z()) {
            d0.o("saúde (", str, "): adiada — há projeção em primeiro plano; não vou derrubá-la para consertar a sem fio", L3.f671a, "CentralWatchdog");
            return;
        }
        int i3 = 0;
        boolean z2 = false;
        if (this.f2176N0.compareAndSet(false, true)) {
            try {
                H(str);
                return;
            } finally {
                this.f2179P0 = SystemClock.elapsedRealtime();
                this.f2176N0.set(false);
            }
        }
        while (this.f2176N0.get() && i3 < 90000) {
            Thread.sleep(2000L);
            i3 += 2000;
        }
        L3 l3 = L3.f671a;
        StringBuilder sbJ = d0.j("saúde (", str, "): já havia uma avaliação em curso — esperei ");
        sbJ.append(i3 / IMAPStore.RESPONSE);
        sbJ.append("s em vez de rodar em paralelo");
        l3.b("CentralWatchdog", sbJ.toString());
    }

    public final void z0() {
        J0 j1 = this.f2228v0;
        if (j1 != null) {
            try {
                getContentResolver().unregisterContentObserver(j1);
            } catch (Exception unused) {
            }
        }
        this.f2228v0 = null;
        G0 g1 = this.f2230w0;
        if (g1 != null) {
            try {
                unregisterReceiver(g1);
            } catch (Exception unused2) {
            }
        }
        this.f2230w0 = null;
    }
}
