package com.geely.driveregenfloater;

import B.b;
import T.C0134s1;
import T.K3;
import T.P4;
import T.RunnableC0169z0;
import T.T0;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import W.d;
import X.e;
import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class DriveRegenFloaterService extends Service {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static boolean f2579J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int[] f2580K = {0, 1, 16777216};

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final int[] f2581L = {0, 1};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2582A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public float f2583B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public float f2584C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f2585D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2591a;
    public View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f2592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f2593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f2594e;
    public View f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f2595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f2596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f2597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f2598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f2599k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f2600l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f2601m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f2602n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f2603o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Car f2604p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CarPropertyManager f2605q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public SharedPreferences f2606r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WindowManager.LayoutParams f2608t;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2614z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Handler f2607s = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2609u = 537003266;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2610v = 570491138;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2611w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile int f2612x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final AtomicInteger f2613y = new AtomicInteger();

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final T0 f2586E = new T0(this, 10);

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final b f2587F = new b(this, 12);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final d f2588G = new d(this, 0);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final d f2589H = new d(this, 1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final e f2590I = new e(this, 2);

    public static boolean f(int i2) {
        return i2 == 570491137 || i2 == 570491138 || i2 == 570491139;
    }

    public static boolean g(int i2) {
        return i2 == 537003265 || i2 == 537003266 || i2 == 537003267;
    }

    public static SharedPreferences h(Context context) {
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        return contextCreateDeviceProtectedStorageContext != null ? contextCreateDeviceProtectedStorageContext.getSharedPreferences("drive_regen_prefs", 0) : applicationContext.getSharedPreferences("drive_regen_prefs", 0);
    }

    public static void p(TextView textView, boolean z2) {
        textView.setAlpha(z2 ? 1.0f : 0.6f);
        textView.setTextColor(z2 ? -1 : Color.parseColor("#CCFFFFFF"));
    }

    public final void a(int i2, String str) {
        if (this.f2605q == null) {
            o("Car nao pronto");
            return;
        }
        int[] iArr = f2580K;
        boolean z2 = false;
        Exception exc = null;
        int i3 = 0;
        Exception e2 = null;
        while (true) {
            if (i3 >= 3) {
                exc = e2;
                break;
            }
            int i4 = iArr[i3];
            try {
                this.f2605q.setIntProperty(570491136, i4, i2);
                Log.i("DriveRegenFloater", "setDriveMode area=0x" + Integer.toHexString(i4) + " val=" + i2 + " ok (" + str + ")");
                z2 = true;
                break;
            } catch (Exception e3) {
                e2 = e3;
                i3++;
            }
        }
        if (z2) {
            o("Aplicado " + str);
        } else if (exc != null) {
            o("Erro drive: ".concat(exc.getClass().getSimpleName()));
            Log.e("DriveRegenFloater", "setDriveMode failed all areas val=" + i2 + " (" + str + ")", exc);
        }
    }

    public final void b(int i2, String str) {
        if (this.f2605q == null) {
            o("Car nao pronto");
            return;
        }
        int[] iArr = f2581L;
        boolean z2 = false;
        Exception exc = null;
        int i3 = 0;
        Exception e2 = null;
        while (true) {
            if (i3 >= 2) {
                exc = e2;
                break;
            }
            int i4 = iArr[i3];
            try {
                this.f2605q.setIntProperty(537003264, i4, i2);
                Log.i("DriveRegenFloater", "setRegen area=0x" + Integer.toHexString(i4) + " val=" + i2 + " ok (" + str + ")");
                z2 = true;
                break;
            } catch (Exception e3) {
                e2 = e3;
                i3++;
            }
        }
        if (z2) {
            o("Aplicado " + str);
        } else if (exc != null) {
            o("Erro regen: ".concat(exc.getClass().getSimpleName()));
            Log.e("DriveRegenFloater", "setRegen failed all areas val=" + i2 + " (" + str + ")", exc);
        }
    }

    public final void c(final String str) {
        final int i2 = 0;
        final int i3 = 1;
        final int i4 = this.f2606r.getInt("saved_regen", 537003266);
        final int i5 = this.f2606r.getInt("saved_drive", 570491138);
        final int iIncrementAndGet = this.f2613y.incrementAndGet();
        this.f2609u = i4;
        this.f2610v = i5;
        System.currentTimeMillis();
        l();
        a(i5, str.concat("_drive"));
        Handler handler = this.f2607s;
        handler.postDelayed(new Runnable() { // from class: W.c
            @Override // java.lang.Runnable
            public final void run() {
                boolean z2 = DriveRegenFloaterService.f2579J;
                DriveRegenFloaterService driveRegenFloaterService = this.f1356a;
                if (!z2) {
                    driveRegenFloaterService.getClass();
                    return;
                }
                if (iIncrementAndGet != driveRegenFloaterService.f2613y.get() || driveRegenFloaterService.f2605q == null) {
                    return;
                }
                driveRegenFloaterService.b(i4, str + "_regen");
            }
        }, 450L);
        if (f(i5)) {
            long[] jArr = {2000, 4500, 9000, 18000, 35000, 62000};
            for (int i6 = 0; i6 < 6; i6++) {
                handler.postDelayed(new Runnable(this) { // from class: W.b
                    public final /* synthetic */ DriveRegenFloaterService b;

                    {
                        this.b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                boolean z2 = DriveRegenFloaterService.f2579J;
                                DriveRegenFloaterService driveRegenFloaterService = this.b;
                                if (!z2) {
                                    driveRegenFloaterService.getClass();
                                    break;
                                } else {
                                    int i7 = driveRegenFloaterService.f2613y.get();
                                    int i8 = iIncrementAndGet;
                                    if (i8 == i7 && driveRegenFloaterService.f2605q != null) {
                                        try {
                                            int i9 = driveRegenFloaterService.i();
                                            boolean zF = DriveRegenFloaterService.f(i9);
                                            int i10 = i5;
                                            if (!zF || i9 != i10) {
                                                Log.i("DriveRegenFloater", "Reassert drive: HAL=" + i9 + " want=" + i10 + " (gen=" + i8 + ")");
                                                driveRegenFloaterService.a(i10, "drive_reassert");
                                                System.currentTimeMillis();
                                            }
                                        } catch (Exception e2) {
                                            Log.d("DriveRegenFloater", "drive readback: " + e2.getMessage());
                                            return;
                                        }
                                        break;
                                    }
                                }
                                break;
                            default:
                                boolean z3 = DriveRegenFloaterService.f2579J;
                                DriveRegenFloaterService driveRegenFloaterService2 = this.b;
                                if (!z3) {
                                    driveRegenFloaterService2.getClass();
                                    break;
                                } else {
                                    int i11 = driveRegenFloaterService2.f2613y.get();
                                    int i12 = iIncrementAndGet;
                                    if (i12 == i11 && driveRegenFloaterService2.f2605q != null) {
                                        try {
                                            int iJ = driveRegenFloaterService2.j();
                                            boolean zG = DriveRegenFloaterService.g(iJ);
                                            int i13 = i5;
                                            if (!zG || iJ != i13) {
                                                Log.i("DriveRegenFloater", "Reassert regen: HAL=" + iJ + " want=" + i13 + " (gen=" + i12 + ")");
                                                driveRegenFloaterService2.b(i13, "regen_reassert");
                                                System.currentTimeMillis();
                                            }
                                        } catch (Exception e3) {
                                            Log.d("DriveRegenFloater", "regen readback: " + e3.getMessage());
                                            return;
                                        }
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                }, jArr[i6]);
            }
        }
        if (g(i4)) {
            long[] jArr2 = {1800, 4200, 8000, 16000, 32000};
            while (i2 < 5) {
                handler.postDelayed(new Runnable(this) { // from class: W.b
                    public final /* synthetic */ DriveRegenFloaterService b;

                    {
                        this.b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                boolean z2 = DriveRegenFloaterService.f2579J;
                                DriveRegenFloaterService driveRegenFloaterService = this.b;
                                if (!z2) {
                                    driveRegenFloaterService.getClass();
                                    break;
                                } else {
                                    int i7 = driveRegenFloaterService.f2613y.get();
                                    int i8 = iIncrementAndGet;
                                    if (i8 == i7 && driveRegenFloaterService.f2605q != null) {
                                        try {
                                            int i9 = driveRegenFloaterService.i();
                                            boolean zF = DriveRegenFloaterService.f(i9);
                                            int i10 = i4;
                                            if (!zF || i9 != i10) {
                                                Log.i("DriveRegenFloater", "Reassert drive: HAL=" + i9 + " want=" + i10 + " (gen=" + i8 + ")");
                                                driveRegenFloaterService.a(i10, "drive_reassert");
                                                System.currentTimeMillis();
                                            }
                                        } catch (Exception e2) {
                                            Log.d("DriveRegenFloater", "drive readback: " + e2.getMessage());
                                            return;
                                        }
                                        break;
                                    }
                                }
                                break;
                            default:
                                boolean z3 = DriveRegenFloaterService.f2579J;
                                DriveRegenFloaterService driveRegenFloaterService2 = this.b;
                                if (!z3) {
                                    driveRegenFloaterService2.getClass();
                                    break;
                                } else {
                                    int i11 = driveRegenFloaterService2.f2613y.get();
                                    int i12 = iIncrementAndGet;
                                    if (i12 == i11 && driveRegenFloaterService2.f2605q != null) {
                                        try {
                                            int iJ = driveRegenFloaterService2.j();
                                            boolean zG = DriveRegenFloaterService.g(iJ);
                                            int i13 = i4;
                                            if (!zG || iJ != i13) {
                                                Log.i("DriveRegenFloater", "Reassert regen: HAL=" + iJ + " want=" + i13 + " (gen=" + i12 + ")");
                                                driveRegenFloaterService2.b(i13, "regen_reassert");
                                                System.currentTimeMillis();
                                            }
                                        } catch (Exception e3) {
                                            Log.d("DriveRegenFloater", "regen readback: " + e3.getMessage());
                                            return;
                                        }
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                }, jArr2[i2]);
                i2++;
            }
        }
    }

    public final void d() {
        this.f2611w = false;
        this.f2593d.setVisibility(8);
        this.f2592c.setVisibility(0);
        this.f2607s.removeCallbacks(this.f2586E);
        l();
    }

    public final void e() {
        this.f2611w = true;
        this.f2592c.setVisibility(8);
        this.f2593d.setVisibility(0);
        Handler handler = this.f2607s;
        T0 t1 = this.f2586E;
        handler.removeCallbacks(t1);
        handler.postDelayed(t1, 5000L);
        l();
    }

    public final int i() {
        if (this.f2605q == null) {
            return -1;
        }
        int[] iArr = f2580K;
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                CarPropertyValue property = this.f2605q.getProperty(Integer.class, 570491136, iArr[i2]);
                if (property != null && property.getStatus() == 0) {
                    int iIntValue = ((Integer) property.getValue()).intValue();
                    if (f(iIntValue)) {
                        return iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public final int j() {
        if (this.f2605q == null) {
            return -1;
        }
        int[] iArr = f2581L;
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                CarPropertyValue property = this.f2605q.getProperty(Integer.class, 537003264, iArr[i2]);
                if (property != null && property.getStatus() == 0) {
                    int iIntValue = ((Integer) property.getValue()).intValue();
                    if (g(iIntValue)) {
                        return iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public final void k() {
        if (this.f2605q == null) {
            return;
        }
        int i2 = this.f2612x;
        try {
            this.f2612x = this.f2605q.getIntProperty(289408000, 0);
        } catch (Exception unused) {
        }
        if (this.f2612x != i2) {
            Log.i("DriveRegenFloater", "poll: troca de marcha -> " + this.f2612x + ", reaplicando");
            c("poll_gear_change");
            l();
            return;
        }
        int iJ = j();
        if (g(iJ)) {
            this.f2609u = iJ;
        }
        int i3 = i();
        if (f(i3)) {
            this.f2610v = i3;
        }
        l();
    }

    public final void l() {
        int color;
        int color2;
        String str;
        int i2 = this.f2609u;
        if (i2 == 537003267) {
            color = Color.parseColor("#1FBF75");
        } else if (i2 == 537003266) {
            color = Color.parseColor("#2E7DFF");
        } else {
            color = i2 == 537003265 ? Color.parseColor("#D64545") : Color.parseColor("#666666");
        }
        int i3 = this.f2610v;
        if (i3 == 570491137) {
            color2 = Color.parseColor("#1FBF75");
        } else if (i3 == 570491138) {
            color2 = Color.parseColor("#2E7DFF");
        } else {
            color2 = i3 == 570491139 ? Color.parseColor("#D64545") : Color.parseColor("#666666");
        }
        this.f2594e.setBackgroundColor(color);
        this.f.setBackgroundColor(color2);
        TextView textView = this.f2595g;
        int i4 = this.f2609u;
        String str2 = "N/D";
        if (i4 == 537003267) {
            str = "FORTE";
        } else if (i4 == 537003266) {
            str = "MEDIA";
        } else {
            str = i4 == 537003265 ? "FRACA" : "N/D";
        }
        textView.setText("REGEN: ".concat(str));
        TextView textView2 = this.f2596h;
        int i5 = this.f2610v;
        if (i5 == 570491137) {
            str2 = "ECO";
        } else if (i5 == 570491138) {
            str2 = "CONFORT";
        } else if (i5 == 570491139) {
            str2 = "SPORT";
        }
        textView2.setText("DRIVE: ".concat(str2));
        p(this.f2598j, this.f2609u == 537003265);
        p(this.f2599k, this.f2609u == 537003266);
        p(this.f2600l, this.f2609u == 537003267);
        p(this.f2601m, this.f2610v == 570491137);
        p(this.f2602n, this.f2610v == 570491138);
        p(this.f2603o, this.f2610v == 570491139);
    }

    public final void m(int i2) {
        this.f2613y.incrementAndGet();
        this.f2610v = i2;
        System.currentTimeMillis();
        this.f2606r.edit().putInt("saved_drive", i2).apply();
        a(i2, "drive");
        e();
        l();
    }

    public final void n(int i2) {
        this.f2613y.incrementAndGet();
        this.f2609u = i2;
        System.currentTimeMillis();
        this.f2606r.edit().putInt("saved_regen", i2).apply();
        b(i2, "regen");
        e();
        l();
    }

    public final void o(String str) {
        this.f2607s.post(new P4(this, 2, str));
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2579J = true;
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 5));
        }
        SharedPreferences sharedPreferencesH = h(this);
        this.f2606r = sharedPreferencesH;
        this.f2609u = sharedPreferencesH.getInt("saved_regen", 537003266);
        this.f2610v = this.f2606r.getInt("saved_drive", 570491138);
        System.currentTimeMillis();
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("drive_regen_floater", "Drive/Regen Floater", 2));
        startForeground(9, new Notification.Builder(this, "drive_regen_floater").setContentTitle("Drive/Regen Floater").setContentText("Controle rapido de modo e regeneracao").setSmallIcon(R.drawable.ic_menu_compass).build());
        this.f2591a = (WindowManager) getSystemService("window");
        View viewInflate = LayoutInflater.from(this).inflate(com.ex.auto.R.layout.overlay_drive_regen, (ViewGroup) null);
        this.b = viewInflate;
        this.f2592c = viewInflate.findViewById(com.ex.auto.R.id.collapsed_circle);
        this.f2593d = this.b.findViewById(com.ex.auto.R.id.expanded_panel);
        this.f2594e = this.b.findViewById(com.ex.auto.R.id.top_half);
        this.f = this.b.findViewById(com.ex.auto.R.id.bottom_half);
        this.f2595g = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_regen_current);
        this.f2596h = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_drive_current);
        this.f2597i = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_status);
        this.f2598j = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_low);
        this.f2599k = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_mid);
        this.f2600l = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_high);
        this.f2601m = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_eco);
        this.f2602n = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_comfort);
        this.f2603o = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_sport);
        final int i2 = 0;
        this.f2598j.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i2) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        final int i3 = 1;
        this.f2599k.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i3) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        final int i4 = 2;
        this.f2600l.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i4) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        final int i5 = 3;
        this.f2601m.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i5) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        final int i6 = 4;
        this.f2602n.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i6) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        final int i7 = 5;
        this.f2603o.setOnClickListener(new View.OnClickListener(this) { // from class: W.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i7) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.n(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.f2579J;
                        driveRegenFloaterService.m(570491139);
                        break;
                }
            }
        });
        this.f2592c.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 10));
        this.f2593d.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 10));
        this.f2608t = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        K3 k3U = Y.U(this, "drive_regen", 8388659, 80, 260);
        WindowManager.LayoutParams layoutParams = this.f2608t;
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        this.f2591a.addView(this.b, layoutParams);
        View view = this.f2592c;
        view.post(new P4(this, 1, view));
        d();
        l();
        try {
            this.f2604p = Car.createCar(this, null, 0L, new C0134s1(this, 7));
        } catch (Exception e2) {
            Log.e("DriveRegenFloater", "connectCar", e2);
            o("Erro Car: " + e2.getMessage());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.f2589H, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("UPDATE_FLOATER_ALPHA");
        intentFilter2.addAction("UPDATE_DRIVE_REGEN_MODES");
        registerReceiver(this.f2588G, intentFilter2);
        int i8 = this.f2606r.getInt("floater_alpha", 100);
        View view2 = this.b;
        if (view2 != null) {
            view2.setAlpha(i8 / 100.0f);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        WindowManager windowManager;
        super.onDestroy();
        f2579J = false;
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 1));
        }
        this.f2607s.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.f2589H);
            unregisterReceiver(this.f2588G);
        } catch (Exception unused) {
        }
        try {
            CarPropertyManager carPropertyManager = this.f2605q;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.f2590I);
            }
        } catch (Exception unused2) {
        }
        View view = this.b;
        if (view != null && (windowManager = this.f2591a) != null) {
            try {
                windowManager.removeView(view);
            } catch (Exception unused3) {
            }
        }
        Car car = this.f2604p;
        if (car != null) {
            try {
                car.disconnect();
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return 2;
    }
}
