package com.geely.hvacstepperv2;

import M.d0;
import T.C0134s1;
import T.K3;
import T.N;
import T.RunnableC0159x0;
import T.S3;
import T.ViewOnClickListenerC0073i;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import X.a;
import X.b;
import X.d;
import X.e;
import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TempStepperService extends Service {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final int[] f2615X = {1, 4, 0, 7};

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final int[] f2616Y = {0, 1, 4, 7};

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static boolean f2617Z = false;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f2620C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f2621D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public float f2622E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public float f2623F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f2624G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float f2625H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f2626I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f2627J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public View f2629L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f2631N;
    public boolean P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f2634R;
    public RunnableC0159x0 S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public e f2635T;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f2637W;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager f2639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f2640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f2641e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f2642g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f2643h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f2644i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Car f2645j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CarPropertyManager f2646k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2650o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2651p;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2657v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2660y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f2638a = 16.0f;
    public float b = 30.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2647l = f2615X[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2648m = 22.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f2649n = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2652q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2653r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2654s = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2655t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f2656u = Float.NaN;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2658w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2659x = Float.NaN;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final d f2661z = new d(this, 0);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f2618A = false;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final d f2619B = new d(this, 1);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final d f2628K = new d(this, 2);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final TextView[] f2630M = new TextView[3];

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final b f2632O = new b(this, 7);

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f2633Q = -1;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final e f2636U = new e(this, 0);
    public final N V = new N(this, 3);

    public final void a() {
        RunnableC0159x0 runnableC0159x0 = this.S;
        if (runnableC0159x0 != null) {
            this.f2649n.removeCallbacks(runnableC0159x0);
            this.S = null;
        }
        this.P = false;
        this.f2633Q = -1;
        this.f2634R = 0L;
    }

    public final void b() {
        this.f2649n.removeCallbacks(this.f2632O);
        this.f2631N = false;
        View view = this.f2629L;
        if (view != null) {
            view.setVisibility(8);
        }
        f();
    }

    public final void c(int i2) {
        a aVarJ = A.b.J(this, i2);
        if (aVarJ == null) {
            return;
        }
        if (this.f2646k == null) {
            Toast.makeText(this, "CarService indisponível", 0).show();
            return;
        }
        int i3 = aVarJ.f1360a;
        int i4 = aVarJ.b;
        if ((i3 * 60) + i4 < 10) {
            Toast.makeText(this, "Programa inválido ou tempo demasiado curto", 0).show();
            return;
        }
        i();
        j();
        a();
        int iG = g();
        int iMax = Math.max(1, Math.min(this.f2654s, Math.max(1, Math.min(8, aVarJ.f1361c))));
        int iMax2 = Math.max(1, Math.min(this.f2654s, Math.max(1, Math.min(8, aVarJ.f1362d))));
        try {
            this.f2646k.setIntProperty(356517120, iG, iMax);
            this.P = true;
            this.f2633Q = iMax;
            this.f2634R = SystemClock.uptimeMillis() + 750;
            RunnableC0159x0 runnableC0159x0 = new RunnableC0159x0(this, iG, iMax2, 2);
            this.S = runnableC0159x0;
            Handler handler = this.f2649n;
            handler.postDelayed(runnableC0159x0, ((long) ((i3 * 60) + i4)) * 1000);
            Log.i("HvacStepperV2", "Programa ventoinha: " + aVarJ.a() + " → após " + ((i3 * 60) + i4) + "s nível " + iMax2);
            handler.post(new b(this, 4));
            b();
            Toast.makeText(this, aVarJ.a(), 0).show();
        } catch (Exception e2) {
            Log.e("HvacStepperV2", "Ventoinha inicial: " + e2.getMessage());
            Toast.makeText(this, "Não foi possível definir ventoinha", 0).show();
        }
    }

    public final Float d(int i2) {
        CarPropertyManager carPropertyManager = this.f2646k;
        if (carPropertyManager == null) {
            return null;
        }
        try {
            float floatProperty = carPropertyManager.getFloatProperty(291505923, i2);
            if (!Float.isNaN(floatProperty)) {
                return Float.valueOf(floatProperty);
            }
        } catch (Exception e2) {
            Log.d("HvacStepperV2", String.format("exterior float area 0x%x: %s", Integer.valueOf(i2), e2.getMessage()));
        }
        try {
            int intProperty = this.f2646k.getIntProperty(291505923, i2);
            if (intProperty > -550 && intProperty < 700) {
                return Float.valueOf(intProperty / 10.0f);
            }
            if (intProperty >= -45 && intProperty <= 65) {
                return Float.valueOf(intProperty);
            }
            return null;
        } catch (Exception e3) {
            Log.d("HvacStepperV2", String.format("exterior int area 0x%x: %s", Integer.valueOf(i2), e3.getMessage()));
        }
    }

    public final void e() {
        TextView[] textViewArr = this.f2630M;
        if (textViewArr[0] == null) {
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            a aVarJ = A.b.J(this, i2);
            if (aVarJ != null) {
                textViewArr[i2].setVisibility(0);
                textViewArr[i2].setText(aVarJ.a());
            } else {
                textViewArr[i2].setVisibility(8);
            }
        }
    }

    public final void f() {
        View view = this.f2640d;
        if (view == null || this.f2639c == null) {
            return;
        }
        try {
            this.f2639c.updateViewLayout(this.f2640d, (WindowManager.LayoutParams) view.getLayoutParams());
        } catch (Exception unused) {
        }
    }

    public final int g() {
        int i2 = this.f2653r;
        if (i2 >= 0) {
            return i2;
        }
        int[] iArr = new int[5];
        iArr[0] = this.f2647l;
        int[] iArr2 = f2615X;
        int i3 = 1;
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = iArr2[i4];
            int i6 = 0;
            while (true) {
                if (i6 >= i3) {
                    iArr[i3] = i5;
                    i3++;
                    break;
                }
                if (iArr[i6] == i5) {
                    break;
                }
                i6++;
            }
        }
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = iArr[i7];
            try {
                int intProperty = this.f2646k.getIntProperty(356517120, i8);
                if (intProperty >= 0 && intProperty <= this.f2654s + 2) {
                    this.f2653r = i8;
                    Log.i("HvacStepperV2", String.format("HVAC_FAN_SPEED legível area=0x%x → %d", Integer.valueOf(i8), Integer.valueOf(intProperty)));
                    return this.f2653r;
                }
            } catch (Exception unused) {
            }
        }
        return this.f2647l;
    }

    public final void h(float f) {
        float fMax = (Math.max(0, Math.min(Math.round(((this.f2648m + f) - this.f2638a) / 0.5f), Math.round((this.b - this.f2638a) / 0.5f))) * 0.5f) + this.f2638a;
        if (fMax == this.f2648m) {
            return;
        }
        this.f2648m = fMax;
        k("btn");
        CarPropertyManager carPropertyManager = this.f2646k;
        if (carPropertyManager == null) {
            Toast.makeText(this, "CarService não disponível", 0).show();
            return;
        }
        try {
            carPropertyManager.setFloatProperty(358614275, this.f2647l, fMax);
            Log.i("HvacStepperV2", String.format("Enviado HAL=%.1f UI=%.1f°C invert=%s (area=0x%x)", Float.valueOf(fMax), Float.valueOf(fMax), Boolean.FALSE, Integer.valueOf(this.f2647l)));
            m(fMax);
        } catch (Exception e2) {
            Log.e("HvacStepperV2", "Erro ao definir temperatura: " + e2.getMessage());
            Toast.makeText(this, "Erro ao enviar temperatura", 0).show();
        }
    }

    public final void i() {
        CarPropertyManager carPropertyManager;
        this.f2649n.removeCallbacks(this.f2661z);
        if (this.f2650o || this.f2660y) {
            this.f2650o = false;
            if (this.f2660y && (carPropertyManager = this.f2646k) != null) {
                try {
                    carPropertyManager.setBooleanProperty(354419978, this.f2647l, false);
                } catch (Exception unused) {
                }
                try {
                    this.f2646k.setBooleanProperty(354419978, 0, false);
                } catch (Exception unused2) {
                }
                this.f2660y = false;
                Log.i("HvacStepperV2", "AUTO OEM desligado");
            }
            this.f2655t = -1;
        }
    }

    public final void j() {
        TextView textView = this.f2642g;
        if (textView == null) {
            return;
        }
        if (this.f2650o) {
            textView.setText(this.f2660y ? "AUTO (sist.)" : "AUTO ●");
            this.f2642g.setTextColor(-11870592);
        } else {
            textView.setText("AUTO");
            this.f2642g.setTextColor(-855638017);
        }
    }

    public final void k(String str) {
        if (this.f2641e == null) {
            return;
        }
        l();
        float fRound = Math.round(this.f2648m * 2.0f) / 2.0f;
        this.f2641e.setText(fRound % 1.0f == 0.0f ? String.format(Locale.US, "%.0f°", Float.valueOf(fRound)) : String.format(Locale.US, "%.1f°", Float.valueOf(fRound)));
        if (this.f != null) {
            StringBuilder sb = new StringBuilder(str);
            if (this.f2650o) {
                sb.append(this.f2660y ? " ·AUTO-OEM" : " ·AUTO");
                if (!this.f2660y && this.f2651p && !Float.isNaN(this.f2656u)) {
                    sb.append(String.format(Locale.US, " ·cab %.0f°", Float.valueOf(this.f2656u)));
                    int i2 = this.f2655t;
                    if (i2 >= 0) {
                        sb.append(" ·vent " + i2);
                    }
                }
            } else if (this.f2651p && !Float.isNaN(this.f2656u)) {
                sb.append(String.format(Locale.US, " ·cab %.0f°", Float.valueOf(this.f2656u)));
            }
            this.f.setText(sb.toString());
        }
    }

    public final void l() {
        if (this.f2643h == null || this.f2644i == null) {
            return;
        }
        if (!this.f2651p || Float.isNaN(this.f2656u)) {
            this.f2643h.setText("n/d");
            this.f2643h.setTextColor(-1426093944);
        } else {
            this.f2643h.setText(String.format(Locale.US, "%.1f °C", Float.valueOf(this.f2656u)));
            this.f2643h.setTextColor(-11870592);
        }
        if (!this.f2657v || Float.isNaN(this.f2659x)) {
            this.f2644i.setText("n/d");
            this.f2644i.setTextColor(-1426093944);
        } else {
            this.f2644i.setText(String.format(Locale.US, "%.1f °C", Float.valueOf(this.f2659x)));
            this.f2644i.setTextColor(-11870592);
        }
    }

    public final void m(float f) {
        CarPropertyManager carPropertyManager = this.f2646k;
        if (carPropertyManager == null) {
            return;
        }
        try {
            float floatProperty = carPropertyManager.getFloatProperty(358614275, this.f2647l);
            float fAbs = Math.abs(floatProperty - f);
            if (fAbs < 0.2f) {
                Log.i("HvacStepperV2", String.format("Readback OK: HAL raw=%.2f → UI %.1f°C (pedido %.1f°C)", Float.valueOf(floatProperty), Float.valueOf(floatProperty), Float.valueOf(f)));
            } else {
                Log.w("HvacStepperV2", String.format("Readback DIVERGENTE: pedido UI=%.1f°C mas HAL devolve raw=%.2f → UI %.1f°C (Δ=%.1f). Possível escrita int (wheel/XSF) ou outra zona.", Float.valueOf(f), Float.valueOf(floatProperty), Float.valueOf(floatProperty), Float.valueOf(fAbs)));
                Toast.makeText(this, String.format(Locale.getDefault(), "HAL leu %.1f°C (pediste %.1f) — ver logcat", Float.valueOf(floatProperty), Float.valueOf(f)), 1).show();
            }
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("Readback pós-set indisponível: "), "HvacStepperV2");
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2617Z = true;
        NotificationChannel notificationChannel = new NotificationChannel("hvac_stepper_v2", "HVAC Stepper V2", 2);
        notificationChannel.setDescription("Controlo de temperatura HVAC (com polling)");
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        startForeground(2, new Notification.Builder(this, "hvac_stepper_v2").setContentTitle("HVAC Stepper V2 activo").setContentText("Stepper com polling de 3 s").setSmallIcon(R.drawable.ic_menu_compass).build());
        try {
            registerReceiver(this.V, new IntentFilter("com.geely.hvacstepperv2.PRESETS_CHANGED"));
            this.f2637W = true;
        } catch (Exception e2) {
            Log.e("HvacStepperV2", "registerReceiver PRESETS_CHANGED", e2);
            this.f2637W = false;
        }
        try {
            this.f2645j = Car.createCar(this, null, 0L, new C0134s1(this, 8));
        } catch (Exception e3) {
            Log.e("HvacStepperV2", "Erro ao conectar ao CarService: " + e3.getMessage());
        }
        this.f2639c = (WindowManager) getSystemService("window");
        View viewInflate = LayoutInflater.from(this).inflate(com.ex.auto.R.layout.overlay_stepper, (ViewGroup) null);
        this.f2640d = viewInflate;
        this.f2641e = (TextView) viewInflate.findViewById(com.ex.auto.R.id.tv_temp);
        this.f = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.tv_source);
        this.f2642g = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.btn_auto);
        this.f2643h = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.tv_sensor_inside);
        this.f2644i = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.tv_sensor_outside);
        View viewFindViewById = this.f2640d.findViewById(com.ex.auto.R.id.btn_minus);
        View viewFindViewById2 = this.f2640d.findViewById(com.ex.auto.R.id.btn_plus);
        final int i2 = 0;
        viewFindViewById.setOnClickListener(new View.OnClickListener(this) { // from class: X.c
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TempStepperService tempStepperService = this.b;
                switch (i2) {
                    case 0:
                        int[] iArr = TempStepperService.f2615X;
                        tempStepperService.h(-0.5f);
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f2615X;
                        tempStepperService.h(0.5f);
                        break;
                    case 2:
                        if (tempStepperService.f2646k == null) {
                            Toast.makeText(tempStepperService, "CarService não disponível", 0).show();
                        } else if (tempStepperService.f2650o) {
                            tempStepperService.i();
                            tempStepperService.j();
                            tempStepperService.k("init");
                        } else {
                            tempStepperService.a();
                            if (!tempStepperService.f2651p || tempStepperService.f2652q < 0) {
                                try {
                                    try {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, tempStepperService.f2647l, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    } catch (Exception unused) {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, 0, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true (area global)");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    }
                                } catch (Exception e4) {
                                    Log.e("HvacStepperV2", "AUTO indisponível: " + e4.getMessage());
                                    Toast.makeText(tempStepperService, "AUTO indisponível (sensor e OEM não responderam)", 1).show();
                                    return;
                                }
                            } else {
                                tempStepperService.f2660y = false;
                                tempStepperService.f2650o = true;
                                tempStepperService.f2655t = -1;
                                Handler handler = tempStepperService.f2649n;
                                d dVar = tempStepperService.f2661z;
                                handler.removeCallbacks(dVar);
                                handler.post(dVar);
                                Toast.makeText(tempStepperService, "AUTO: ventoinha conforme sensor cabina", 0).show();
                            }
                            tempStepperService.j();
                            tempStepperService.k("init");
                        }
                        break;
                    default:
                        if (tempStepperService.f2631N) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.f2629L != null) {
                            tempStepperService.e();
                            int i3 = 0;
                            for (int i4 = 0; i4 < 3; i4++) {
                                if (A.b.J(tempStepperService, i4) != null) {
                                    i3++;
                                }
                            }
                            if (i3 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                            } else {
                                tempStepperService.f2631N = true;
                                tempStepperService.f2629L.setVisibility(0);
                                Handler handler2 = tempStepperService.f2649n;
                                b bVar = tempStepperService.f2632O;
                                handler2.removeCallbacks(bVar);
                                handler2.postDelayed(bVar, 5000L);
                                tempStepperService.f();
                            }
                            break;
                        }
                        break;
                }
            }
        });
        final int i3 = 1;
        viewFindViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: X.c
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TempStepperService tempStepperService = this.b;
                switch (i3) {
                    case 0:
                        int[] iArr = TempStepperService.f2615X;
                        tempStepperService.h(-0.5f);
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f2615X;
                        tempStepperService.h(0.5f);
                        break;
                    case 2:
                        if (tempStepperService.f2646k == null) {
                            Toast.makeText(tempStepperService, "CarService não disponível", 0).show();
                        } else if (tempStepperService.f2650o) {
                            tempStepperService.i();
                            tempStepperService.j();
                            tempStepperService.k("init");
                        } else {
                            tempStepperService.a();
                            if (!tempStepperService.f2651p || tempStepperService.f2652q < 0) {
                                try {
                                    try {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, tempStepperService.f2647l, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    } catch (Exception unused) {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, 0, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true (area global)");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    }
                                } catch (Exception e4) {
                                    Log.e("HvacStepperV2", "AUTO indisponível: " + e4.getMessage());
                                    Toast.makeText(tempStepperService, "AUTO indisponível (sensor e OEM não responderam)", 1).show();
                                    return;
                                }
                            } else {
                                tempStepperService.f2660y = false;
                                tempStepperService.f2650o = true;
                                tempStepperService.f2655t = -1;
                                Handler handler = tempStepperService.f2649n;
                                d dVar = tempStepperService.f2661z;
                                handler.removeCallbacks(dVar);
                                handler.post(dVar);
                                Toast.makeText(tempStepperService, "AUTO: ventoinha conforme sensor cabina", 0).show();
                            }
                            tempStepperService.j();
                            tempStepperService.k("init");
                        }
                        break;
                    default:
                        if (tempStepperService.f2631N) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.f2629L != null) {
                            tempStepperService.e();
                            int i4 = 0;
                            for (int i5 = 0; i5 < 3; i5++) {
                                if (A.b.J(tempStepperService, i5) != null) {
                                    i4++;
                                }
                            }
                            if (i4 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                            } else {
                                tempStepperService.f2631N = true;
                                tempStepperService.f2629L.setVisibility(0);
                                Handler handler2 = tempStepperService.f2649n;
                                b bVar = tempStepperService.f2632O;
                                handler2.removeCallbacks(bVar);
                                handler2.postDelayed(bVar, 5000L);
                                tempStepperService.f();
                            }
                            break;
                        }
                        break;
                }
            }
        });
        TextView textView = this.f2642g;
        if (textView != null) {
            final int i4 = 2;
            textView.setOnClickListener(new View.OnClickListener(this) { // from class: X.c
                public final /* synthetic */ TempStepperService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TempStepperService tempStepperService = this.b;
                    switch (i4) {
                        case 0:
                            int[] iArr = TempStepperService.f2615X;
                            tempStepperService.h(-0.5f);
                            break;
                        case 1:
                            int[] iArr2 = TempStepperService.f2615X;
                            tempStepperService.h(0.5f);
                            break;
                        case 2:
                            if (tempStepperService.f2646k == null) {
                                Toast.makeText(tempStepperService, "CarService não disponível", 0).show();
                            } else if (tempStepperService.f2650o) {
                                tempStepperService.i();
                                tempStepperService.j();
                                tempStepperService.k("init");
                            } else {
                                tempStepperService.a();
                                if (!tempStepperService.f2651p || tempStepperService.f2652q < 0) {
                                    try {
                                        try {
                                            tempStepperService.f2646k.setBooleanProperty(354419978, tempStepperService.f2647l, true);
                                            tempStepperService.f2660y = true;
                                            tempStepperService.f2650o = true;
                                            Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true");
                                            Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                        } catch (Exception unused) {
                                            tempStepperService.f2646k.setBooleanProperty(354419978, 0, true);
                                            tempStepperService.f2660y = true;
                                            tempStepperService.f2650o = true;
                                            Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true (area global)");
                                            Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                        }
                                    } catch (Exception e4) {
                                        Log.e("HvacStepperV2", "AUTO indisponível: " + e4.getMessage());
                                        Toast.makeText(tempStepperService, "AUTO indisponível (sensor e OEM não responderam)", 1).show();
                                        return;
                                    }
                                } else {
                                    tempStepperService.f2660y = false;
                                    tempStepperService.f2650o = true;
                                    tempStepperService.f2655t = -1;
                                    Handler handler = tempStepperService.f2649n;
                                    d dVar = tempStepperService.f2661z;
                                    handler.removeCallbacks(dVar);
                                    handler.post(dVar);
                                    Toast.makeText(tempStepperService, "AUTO: ventoinha conforme sensor cabina", 0).show();
                                }
                                tempStepperService.j();
                                tempStepperService.k("init");
                            }
                            break;
                        default:
                            if (tempStepperService.f2631N) {
                                tempStepperService.b();
                                break;
                            } else if (tempStepperService.f2629L != null) {
                                tempStepperService.e();
                                int i5 = 0;
                                for (int i6 = 0; i6 < 3; i6++) {
                                    if (A.b.J(tempStepperService, i6) != null) {
                                        i5++;
                                    }
                                }
                                if (i5 == 0) {
                                    Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                                } else {
                                    tempStepperService.f2631N = true;
                                    tempStepperService.f2629L.setVisibility(0);
                                    Handler handler2 = tempStepperService.f2649n;
                                    b bVar = tempStepperService.f2632O;
                                    handler2.removeCallbacks(bVar);
                                    handler2.postDelayed(bVar, 5000L);
                                    tempStepperService.f();
                                }
                                break;
                            }
                            break;
                    }
                }
            });
        }
        this.f2629L = this.f2640d.findViewById(com.ex.auto.R.id.preset_panel);
        TextView textView2 = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.preset_chip_0);
        TextView[] textViewArr = this.f2630M;
        textViewArr[0] = textView2;
        textViewArr[1] = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.preset_chip_1);
        textViewArr[2] = (TextView) this.f2640d.findViewById(com.ex.auto.R.id.preset_chip_2);
        for (int i5 = 0; i5 < 3; i5++) {
            TextView textView3 = textViewArr[i5];
            if (textView3 != null) {
                textView3.setOnClickListener(new ViewOnClickListenerC0073i(this, i5, 4));
            }
        }
        final int i6 = 3;
        this.f2641e.setOnClickListener(new View.OnClickListener(this) { // from class: X.c
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TempStepperService tempStepperService = this.b;
                switch (i6) {
                    case 0:
                        int[] iArr = TempStepperService.f2615X;
                        tempStepperService.h(-0.5f);
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f2615X;
                        tempStepperService.h(0.5f);
                        break;
                    case 2:
                        if (tempStepperService.f2646k == null) {
                            Toast.makeText(tempStepperService, "CarService não disponível", 0).show();
                        } else if (tempStepperService.f2650o) {
                            tempStepperService.i();
                            tempStepperService.j();
                            tempStepperService.k("init");
                        } else {
                            tempStepperService.a();
                            if (!tempStepperService.f2651p || tempStepperService.f2652q < 0) {
                                try {
                                    try {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, tempStepperService.f2647l, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    } catch (Exception unused) {
                                        tempStepperService.f2646k.setBooleanProperty(354419978, 0, true);
                                        tempStepperService.f2660y = true;
                                        tempStepperService.f2650o = true;
                                        Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true (area global)");
                                        Toast.makeText(tempStepperService, "AUTO: modo climatização do sistema", 0).show();
                                    }
                                } catch (Exception e4) {
                                    Log.e("HvacStepperV2", "AUTO indisponível: " + e4.getMessage());
                                    Toast.makeText(tempStepperService, "AUTO indisponível (sensor e OEM não responderam)", 1).show();
                                    return;
                                }
                            } else {
                                tempStepperService.f2660y = false;
                                tempStepperService.f2650o = true;
                                tempStepperService.f2655t = -1;
                                Handler handler = tempStepperService.f2649n;
                                d dVar = tempStepperService.f2661z;
                                handler.removeCallbacks(dVar);
                                handler.post(dVar);
                                Toast.makeText(tempStepperService, "AUTO: ventoinha conforme sensor cabina", 0).show();
                            }
                            tempStepperService.j();
                            tempStepperService.k("init");
                        }
                        break;
                    default:
                        if (tempStepperService.f2631N) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.f2629L != null) {
                            tempStepperService.e();
                            int i7 = 0;
                            for (int i8 = 0; i8 < 3; i8++) {
                                if (A.b.J(tempStepperService, i8) != null) {
                                    i7++;
                                }
                            }
                            if (i7 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                            } else {
                                tempStepperService.f2631N = true;
                                tempStepperService.f2629L.setVisibility(0);
                                Handler handler2 = tempStepperService.f2649n;
                                b bVar = tempStepperService.f2632O;
                                handler2.removeCallbacks(bVar);
                                handler2.postDelayed(bVar, 5000L);
                                tempStepperService.f();
                            }
                            break;
                        }
                        break;
                }
            }
        });
        e();
        this.f2627J = ViewConfiguration.get(this).getScaledTouchSlop() * 3;
        View viewFindViewById3 = this.f2640d.findViewById(com.ex.auto.R.id.drag_handle_end);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 11));
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.ex.auto.R.dimen.overlay_bottom_offset);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 8, -3);
        K3 k3U = Y.U(this, "hvac_stepper", 81, 0, dimensionPixelSize);
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        try {
            this.f2639c.addView(this.f2640d, layoutParams);
            j();
            k("init");
        } catch (Exception e4) {
            Log.e("HvacStepperV2", "addView overlay falhou (permissão SYSTEM_ALERT_WINDOW?)", e4);
            Toast.makeText(this, "Overlay não exibido — conceda sobreposição e reinicie o serviço", 1).show();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f2617Z = false;
        this.f2618A = false;
        Handler handler = this.f2649n;
        handler.removeCallbacks(this.f2619B);
        Log.d("HvacStepperV2", "Polling parado");
        i();
        a();
        handler.removeCallbacks(this.f2632O);
        handler.removeCallbacks(this.f2628K);
        if (this.f2637W) {
            try {
                unregisterReceiver(this.V);
            } catch (Exception unused) {
            }
            this.f2637W = false;
        }
        handler.removeCallbacksAndMessages(null);
        CarPropertyManager carPropertyManager = this.f2646k;
        if (carPropertyManager != null) {
            try {
                carPropertyManager.unregisterCallback(this.f2636U);
            } catch (Exception unused2) {
            }
            e eVar = this.f2635T;
            if (eVar != null) {
                try {
                    this.f2646k.unregisterCallback(eVar);
                } catch (Exception unused3) {
                }
                this.f2635T = null;
            }
        }
        View view = this.f2640d;
        if (view != null) {
            try {
                this.f2639c.removeView(view);
            } catch (Exception unused4) {
            }
        }
        Car car = this.f2645j;
        if (car != null) {
            try {
                car.disconnect();
            } catch (Exception unused5) {
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        int intExtra;
        if (intent == null || !"com.geely.hvacstepperv2.RUN_PRESET".equals(intent.getAction()) || (intExtra = intent.getIntExtra("preset_slot", -1)) < 0 || intExtra >= 3) {
            return 2;
        }
        this.f2649n.postDelayed(new S3(this, intExtra, 1), 300L);
        return 2;
    }
}
