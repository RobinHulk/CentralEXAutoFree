package com.ex.auto;

import T.C0134s1;
import T.F4;
import T.G4;
import T.L4;
import T.R0;
import T.S0;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.ex.auto.VhalProviderService;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VhalProviderService extends Service {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile boolean f2558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile int f2559k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Car f2560a;
    public G4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerSocket f2561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f2562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public S0 f2563e;
    public L4 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public S0 f2564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public R0 f2565h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile F4 f2566i;

    public static void a(JSONObject jSONObject, String str, Float f, float f2, float f3) throws JSONException {
        if (f == null || f.isNaN() || f.isInfinite() || f.floatValue() < f2 || f.floatValue() > f3) {
            return;
        }
        jSONObject.put(str, Math.round(((double) f.floatValue()) * 100.0d) / 100.0d);
    }

    public static void b(Context context, boolean z2) {
        Intent intent = new Intent(context, (Class<?>) VhalProviderService.class);
        try {
            if (z2) {
                context.startForegroundService(intent);
            } else {
                context.stopService(intent);
            }
        } catch (Exception unused) {
        }
    }

    public final String c() {
        F4 f4 = this.f2566i;
        if (f4 == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            a(jSONObject, "speed", f4.f568a, 0.0f, 320.0f);
            Integer num = f4.b;
            if (num != null) {
                jSONObject.put("gear", num.intValue());
            }
            String str = f4.f569c;
            if (str != null) {
                jSONObject.put("gearLabel", str);
            }
            a(jSONObject, "soc", f4.f570d, 0.0f, 100.0f);
            a(jSONObject, "power", f4.f572g, -400.0f, 400.0f);
            a(jSONObject, "range", f4.f571e, 0.0f, 2000.0f);
            a(jSONObject, "odo", f4.f, 1.0f, 2000000.0f);
            a(jSONObject, "driveFlow", f4.f573h, -100.0f, 100.0f);
            a(jSONObject, "battFlow", f4.f574i, -100.0f, 100.0f);
            a(jSONObject, "outTemp", f4.f578m, -60.0f, 90.0f);
            a(jSONObject, "setTemp", f4.f577l, 10.0f, 35.0f);
            a(jSONObject, "aux12v", f4.f579n, 6.0f, 18.0f);
            a(jSONObject, "chargeKw", f4.f582q, 0.0f, 400.0f);
            Boolean bool = f4.f580o;
            if (bool != null) {
                jSONObject.put("charging", bool.booleanValue());
            }
            Boolean bool2 = f4.f581p;
            if (bool2 != null) {
                jSONObject.put("dcfc", bool2.booleanValue());
            }
            Boolean bool3 = f4.f583r;
            if (bool3 != null) {
                jSONObject.put("vhalLive", bool3.booleanValue());
            }
            String str2 = f4.f584s;
            if (str2 != null && !str2.equals("unknown")) {
                jSONObject.put("carId", f4.f584s);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public final void d() {
        ((NotificationManager) getSystemService("notification")).notify(51, new Notification.Builder(this, "vhal_provider").setContentTitle("VHAL Provider (p/ celular)").setContentText("porta 47800 • clientes: " + f2559k).setSmallIcon(android.R.drawable.ic_menu_share).setOngoing(true).build());
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("vhal_provider", "VHAL Provider", 2));
        S0 s1 = new S0(getApplicationContext(), "central_trips.db", null, 2, 1);
        this.f2563e = s1;
        this.f = new L4(s1);
        S0 s2 = new S0(getApplicationContext(), "central_charges.db", null, 1, 0);
        this.f2564g = s2;
        this.f2565h = new R0(s2);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f2562d = false;
        f2558j = false;
        try {
            ServerSocket serverSocket = this.f2561c;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (Exception unused) {
        }
        Car car = this.f2560a;
        if (car != null) {
            try {
                car.disconnect();
            } catch (Exception unused2) {
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        startForeground(51, new Notification.Builder(this, "vhal_provider").setContentTitle("VHAL Provider (p/ celular)").setContentText("iniciando…").setSmallIcon(android.R.drawable.ic_menu_share).setOngoing(true).build());
        if (f2558j) {
            return 1;
        }
        f2558j = true;
        this.f2562d = true;
        try {
            this.f2560a = Car.createCar(this, null, 0L, new C0134s1(this, 6));
        } catch (Exception e2) {
            Log.e("VhalProvider", "car", e2);
        }
        final int i4 = 0;
        new Thread(new Runnable(this) { // from class: T.O4
            public final /* synthetic */ VhalProviderService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i4) {
                    case 0:
                        VhalProviderService vhalProviderService = this.b;
                        boolean z2 = VhalProviderService.f2558j;
                        vhalProviderService.getClass();
                        try {
                            ServerSocket serverSocket = new ServerSocket();
                            vhalProviderService.f2561c = serverSocket;
                            serverSocket.setReuseAddress(true);
                            vhalProviderService.f2561c.bind(new InetSocketAddress(47800));
                            vhalProviderService.d();
                            while (vhalProviderService.f2562d) {
                                new Thread(new P4(vhalProviderService, 0, vhalProviderService.f2561c.accept()), "vhal-client").start();
                            }
                        } catch (Exception e3) {
                            M.d0.n(e3, new StringBuilder("serve end: "), "VhalProvider");
                            return;
                        }
                        break;
                    default:
                        VhalProviderService vhalProviderService2 = this.b;
                        while (vhalProviderService2.f2562d) {
                            try {
                                G4 g4 = vhalProviderService2.b;
                                if (g4 != null) {
                                    F4 f4A = g4.a();
                                    vhalProviderService2.f2566i = f4A;
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    vhalProviderService2.f.b(f4A, jCurrentTimeMillis);
                                    vhalProviderService2.f2565h.c(f4A, jCurrentTimeMillis);
                                }
                                break;
                            } catch (Throwable unused) {
                            }
                            try {
                                Thread.sleep(1500L);
                            } catch (InterruptedException unused2) {
                            }
                        }
                        break;
                }
            }
        }, "vhal-server").start();
        final int i5 = 1;
        new Thread(new Runnable(this) { // from class: T.O4
            public final /* synthetic */ VhalProviderService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i5) {
                    case 0:
                        VhalProviderService vhalProviderService = this.b;
                        boolean z2 = VhalProviderService.f2558j;
                        vhalProviderService.getClass();
                        try {
                            ServerSocket serverSocket = new ServerSocket();
                            vhalProviderService.f2561c = serverSocket;
                            serverSocket.setReuseAddress(true);
                            vhalProviderService.f2561c.bind(new InetSocketAddress(47800));
                            vhalProviderService.d();
                            while (vhalProviderService.f2562d) {
                                new Thread(new P4(vhalProviderService, 0, vhalProviderService.f2561c.accept()), "vhal-client").start();
                            }
                        } catch (Exception e3) {
                            M.d0.n(e3, new StringBuilder("serve end: "), "VhalProvider");
                            return;
                        }
                        break;
                    default:
                        VhalProviderService vhalProviderService2 = this.b;
                        while (vhalProviderService2.f2562d) {
                            try {
                                G4 g4 = vhalProviderService2.b;
                                if (g4 != null) {
                                    F4 f4A = g4.a();
                                    vhalProviderService2.f2566i = f4A;
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    vhalProviderService2.f.b(f4A, jCurrentTimeMillis);
                                    vhalProviderService2.f2565h.c(f4A, jCurrentTimeMillis);
                                }
                                break;
                            } catch (Throwable unused) {
                            }
                            try {
                                Thread.sleep(1500L);
                            } catch (InterruptedException unused2) {
                            }
                        }
                        break;
                }
            }
        }, "vhal-poll").start();
        return 1;
    }
}
