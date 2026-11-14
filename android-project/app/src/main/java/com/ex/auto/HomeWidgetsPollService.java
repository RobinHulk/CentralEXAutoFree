package com.ex.auto;

import B.b;
import I0.f;
import M.d0;
import T.AbstractC0126q4;
import T.C0128r1;
import T.C0134s1;
import T.H1;
import T.T0;
import T.Y;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final class HomeWidgetsPollService extends Service {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f2303r = 0;
    public Car b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CarPropertyManager f2305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f2306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f2307e;
    public Integer f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Float f2308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f2309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f2310i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f2311j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Boolean f2312k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Boolean f2313l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Boolean f2314m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Integer f2315n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Integer f2316o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Boolean f2317p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2304a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final b f2318q = new b(this, 6);

    public final void a(CarPropertyManager carPropertyManager, int i2, boolean z2) {
        Integer numJ = z2 ? this.f2315n : this.f2316o;
        int iIntValue = ((numJ == null && (numJ = H1.j(carPropertyManager, i2)) == null) ? -1 : numJ.intValue()) + 1;
        if (iIntValue > 4) {
            iIntValue = 0;
        }
        int[] iArr = H1.f606a;
        f.e(carPropertyManager, "cpm");
        try {
            carPropertyManager.setIntProperty(356517131, i2, iIntValue);
        } catch (Throwable unused) {
        }
        Integer numValueOf = Integer.valueOf(iIntValue);
        if (z2) {
            this.f2315n = numValueOf;
        } else {
            this.f2316o = numValueOf;
        }
    }

    public final String b(Integer num) {
        if (num != null && num.intValue() == 570491137) {
            String string = getString(R.string.k_widget_lbl_drive_eco);
            f.d(string, "getString(...)");
            return string;
        }
        if (num != null && num.intValue() == 570491138) {
            String string2 = getString(R.string.k_widget_lbl_drive_comfort);
            f.d(string2, "getString(...)");
            return string2;
        }
        if (num == null || num.intValue() != 570491139) {
            return "—";
        }
        String string3 = getString(R.string.k_widget_lbl_drive_sport);
        f.d(string3, "getString(...)");
        return string3;
    }

    public final void c() {
        try {
            Object systemService = getSystemService("audio");
            f.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            ((AudioManager) systemService).playSoundEffect(0);
        } catch (Exception unused) {
        }
    }

    public final void d(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) DriveRegenWidgetProvider.class);
        int i2 = DriveRegenWidgetProvider.f2245a;
        appWidgetManager.updateAppWidget(componentName, Y.j(this, this.f2306d, this.f2307e));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) DriveModeVerticalWidgetProvider.class);
        int i3 = DriveModeVerticalWidgetProvider.f2244a;
        appWidgetManager.updateAppWidget(componentName2, Y.f(this, this.f2306d));
        ComponentName componentName3 = new ComponentName(this, (Class<?>) RegenVerticalWidgetProvider.class);
        int i4 = RegenVerticalWidgetProvider.f2503a;
        appWidgetManager.updateAppWidget(componentName3, Y.k(this, this.f2307e));
    }

    public final void e(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) FanSpeedWidgetProvider.class);
        int[] iArr = FanSpeedWidgetProvider.f2259a;
        appWidgetManager.updateAppWidget(componentName, Y.g(this, this.f, R.layout.widget_fan_speed));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) FanSpeedVerticalWidgetProvider.class);
        int i2 = FanSpeedVerticalWidgetProvider.f2258a;
        appWidgetManager.updateAppWidget(componentName2, Y.g(this, this.f, R.layout.widget_fan_speed_vertical));
    }

    public final void f(AppWidgetManager appWidgetManager) {
        C0128r1 c0128r1 = new C0128r1(this.f2312k, this.f2310i, this.f2313l, this.f2314m, this.f2315n, this.f2316o);
        ComponentName componentName = new ComponentName(this, (Class<?>) HeatingTestWidgetProvider.class);
        int i2 = HeatingTestWidgetProvider.f2261a;
        appWidgetManager.updateAppWidget(componentName, Y.e(this, c0128r1));
    }

    public final void g(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) TemperatureWidgetProvider.class);
        int i2 = TemperatureWidgetProvider.f2544a;
        appWidgetManager.updateAppWidget(componentName, AbstractC0126q4.b(this, this.f2308g, R.layout.widget_temperature));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) TemperatureVerticalWidgetProvider.class);
        int i3 = TemperatureVerticalWidgetProvider.f2543a;
        appWidgetManager.updateAppWidget(componentName2, AbstractC0126q4.b(this, this.f2308g, R.layout.widget_temperature_vertical));
    }

    public final void h(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) HvacDirectionFanWidgetProvider.class);
        int[] iArr = HvacDirectionFanWidgetProvider.f2319a;
        appWidgetManager.updateAppWidget(componentName, Y.i(this, this.f2309h, this.f2311j, this.f, this.f2317p));
    }

    public final void i(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) HvacDirectionWidgetProvider.class);
        int i2 = HvacDirectionWidgetProvider.f2321a;
        appWidgetManager.updateAppWidget(componentName, Y.l(this, this.f2309h, this.f2311j));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) HvacDirectionVerticalWidgetProvider.class);
        int i3 = HvacDirectionVerticalWidgetProvider.f2320a;
        appWidgetManager.updateAppWidget(componentName2, Y.h(this, this.f2309h, this.f2311j));
    }

    public final String j(Integer num) {
        if (num != null && num.intValue() == 537003265) {
            String string = getString(R.string.k_widget_lbl_regen_low);
            f.d(string, "getString(...)");
            return string;
        }
        if (num != null && num.intValue() == 537003266) {
            String string2 = getString(R.string.k_widget_lbl_regen_mid);
            f.d(string2, "getString(...)");
            return string2;
        }
        if (num == null || num.intValue() != 537003267) {
            return "—";
        }
        String string3 = getString(R.string.k_widget_lbl_regen_high);
        f.d(string3, "getString(...)");
        return string3;
    }

    public final void k(String str) {
        try {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.toast_wheel_feedback, (ViewGroup) null);
            ((TextView) viewInflate.findViewById(R.id.txt_wheel_toast)).setText(str);
            Toast toast = new Toast(this);
            toast.setDuration(0);
            toast.setView(viewInflate);
            toast.show();
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("showWheelToast: "), "HomeWidgetsPoll");
        }
    }

    public final void l(CarPropertyManager carPropertyManager, int i2) {
        Integer numE = this.f;
        int iIntValue = (numE == null && (numE = H1.e(carPropertyManager)) == null) ? 3 : numE.intValue();
        int iO = A.b.o(i2 + iIntValue, 0, 7);
        if (iO != iIntValue) {
            H1.s(carPropertyManager, iO);
        }
        this.f = Integer.valueOf(iO);
    }

    public final void m(CarPropertyManager carPropertyManager, float f) {
        Float fK = this.f2308g;
        float fFloatValue = (fK == null && (fK = H1.k(carPropertyManager)) == null) ? 22.0f : fK.floatValue();
        float fN = A.b.n(Math.round(f + fFloatValue), 17.0f, 32.0f);
        if (fN != fFloatValue) {
            int[] iArr = H1.f606a;
            f.e(carPropertyManager, "cpm");
            try {
                carPropertyManager.setFloatProperty(624955446, 1, fN);
            } catch (Throwable unused) {
            }
            try {
                carPropertyManager.setFloatProperty(624955446, 4, fN);
            } catch (Throwable unused2) {
            }
        }
        this.f2308g = Float.valueOf(fN);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            this.b = Car.createCar(this, null, 0L, new C0134s1(this, 1));
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("connectCar: "), "HomeWidgetsPoll");
        }
        this.f2304a.post(this.f2318q);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f2304a.removeCallbacksAndMessages(null);
        try {
            Car car = this.b;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused) {
        }
        this.b = null;
        this.f2305c = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        CarPropertyManager carPropertyManager;
        String action = intent != null ? intent.getAction() : null;
        if (f.a(action, "com.ex.auto.widget.REFRESH_OPACITY")) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this);
            f.b(appWidgetManager);
            d(appWidgetManager);
            e(appWidgetManager);
            g(appWidgetManager);
            i(appWidgetManager);
            h(appWidgetManager);
            f(appWidgetManager);
        } else if (!f.a(action, "com.ex.auto.widget.WHEEL_MODE_ENTERED")) {
            boolean zA = f.a(action, "com.ex.auto.widget.WHEEL_MODE_EXITED");
            Handler handler = this.f2304a;
            if (!zA) {
                if (action != null && (carPropertyManager = this.f2305c) != null) {
                    AppWidgetManager appWidgetManager2 = AppWidgetManager.getInstance(this);
                    switch (action.hashCode()) {
                        case -2098662015:
                            if (action.equals("com.ex.auto.widget.DRIVE_NEXT")) {
                                int[] iArr = H1.f607c;
                                int i4 = iArr[H1.p(iArr, this.f2306d, 1)];
                                H1.r(this, carPropertyManager, i4);
                                this.f2306d = Integer.valueOf(i4);
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                String string = getString(R.string.k_drive_mode_toast, b(this.f2306d));
                                f.d(string, "getString(...)");
                                k(string);
                                c();
                                b bVar = this.f2318q;
                                handler.removeCallbacks(bVar);
                                handler.postDelayed(bVar, 3000L);
                            }
                            break;
                        case -2098590527:
                            if (action.equals("com.ex.auto.widget.DRIVE_PREV")) {
                                int[] iArr2 = H1.f607c;
                                int i5 = iArr2[H1.p(iArr2, this.f2306d, -1)];
                                H1.r(this, carPropertyManager, i5);
                                this.f2306d = Integer.valueOf(i5);
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                String string2 = getString(R.string.k_drive_mode_toast, b(this.f2306d));
                                f.d(string2, "getString(...)");
                                k(string2);
                                c();
                                b bVar2 = this.f2318q;
                                handler.removeCallbacks(bVar2);
                                handler.postDelayed(bVar2, 3000L);
                            }
                            break;
                        case -2040621029:
                            if (action.equals("com.ex.auto.widget.VENT_FACE_FLOOR")) {
                                H1.v(carPropertyManager, 3);
                                this.f2309h = 3;
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar3 = this.f2318q;
                                handler.removeCallbacks(bVar3);
                                handler.postDelayed(bVar3, 3000L);
                            }
                            break;
                        case -2025624646:
                            if (action.equals("com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE")) {
                                Boolean boolF = this.f2313l;
                                boolean z2 = !((boolF == null && (boolF = H1.f(carPropertyManager)) == null) ? false : boolF.booleanValue());
                                this.f2313l = Boolean.valueOf(z2);
                                int[] iArr3 = H1.f606a;
                                try {
                                    carPropertyManager.setBooleanProperty(354419975, 1, z2);
                                    break;
                                } catch (Throwable unused) {
                                }
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar4 = this.f2318q;
                                handler.removeCallbacks(bVar4);
                                handler.postDelayed(bVar4, 3000L);
                            }
                            break;
                        case -1899378174:
                            if (action.equals("com.ex.auto.widget.VENT_WINDSHIELD")) {
                                H1.v(carPropertyManager, 4);
                                this.f2309h = 4;
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar5 = this.f2318q;
                                handler.removeCallbacks(bVar5);
                                handler.postDelayed(bVar5, 3000L);
                            }
                            break;
                        case -1740637569:
                            if (action.equals("com.ex.auto.widget.FAN_PLUS")) {
                                l(carPropertyManager, 1);
                                f.b(appWidgetManager2);
                                e(appWidgetManager2);
                                h(appWidgetManager2);
                                Integer num = this.f;
                                String string3 = getString(R.string.k_fan_speed_toast, Integer.valueOf(num != null ? num.intValue() : 0));
                                f.d(string3, "getString(...)");
                                k(string3);
                                c();
                                b bVar6 = this.f2318q;
                                handler.removeCallbacks(bVar6);
                                handler.postDelayed(bVar6, 3000L);
                            }
                            break;
                        case -1393080336:
                            if (action.equals("com.ex.auto.widget.RECIRC_TOGGLE")) {
                                Boolean boolI = this.f2311j;
                                boolean zBooleanValue = true ^ ((boolI == null && (boolI = H1.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                H1.t(carPropertyManager, zBooleanValue);
                                this.f2311j = Boolean.valueOf(zBooleanValue);
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar7 = this.f2318q;
                                handler.removeCallbacks(bVar7);
                                handler.postDelayed(bVar7, 3000L);
                            }
                            break;
                        case -1262930418:
                            if (action.equals("com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE")) {
                                Boolean boolN = this.f2314m;
                                boolean zBooleanValue2 = true ^ ((boolN == null && (boolN = H1.n(carPropertyManager)) == null) ? false : boolN.booleanValue());
                                this.f2314m = Boolean.valueOf(zBooleanValue2);
                                int[] iArr4 = H1.f606a;
                                try {
                                    carPropertyManager.setBooleanProperty(270535680, 117, zBooleanValue2);
                                    break;
                                } catch (Throwable unused2) {
                                }
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar8 = this.f2318q;
                                handler.removeCallbacks(bVar8);
                                handler.postDelayed(bVar8, 3000L);
                            }
                            break;
                        case -895512040:
                            if (action.equals("com.ex.auto.widget.AC_TOGGLE")) {
                                Boolean boolD = this.f2317p;
                                boolean zBooleanValue3 = true ^ ((boolD == null && (boolD = H1.d(carPropertyManager)) == null) ? false : boolD.booleanValue());
                                H1.q(carPropertyManager, zBooleanValue3);
                                this.f2317p = Boolean.valueOf(zBooleanValue3);
                                f.b(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar9 = this.f2318q;
                                handler.removeCallbacks(bVar9);
                                handler.postDelayed(bVar9, 3000L);
                            }
                            break;
                        case -846993154:
                            if (action.equals("com.ex.auto.widget.TEMP_MINUS")) {
                                m(carPropertyManager, -1.0f);
                                f.b(appWidgetManager2);
                                g(appWidgetManager2);
                                Float f = this.f2308g;
                                String string4 = getString(R.string.k_hvac_temp_toast, Float.valueOf(f != null ? f.floatValue() : 0.0f));
                                f.d(string4, "getString(...)");
                                k(string4);
                                c();
                                b bVar10 = this.f2318q;
                                handler.removeCallbacks(bVar10);
                                handler.postDelayed(bVar10, 3000L);
                            }
                            break;
                        case -629076346:
                            if (action.equals("com.ex.auto.widget.DRIVE_SPORT")) {
                                H1.r(this, carPropertyManager, 570491139);
                                this.f2306d = 570491139;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar11 = this.f2318q;
                                handler.removeCallbacks(bVar11);
                                handler.postDelayed(bVar11, 3000L);
                            }
                            break;
                        case -581419220:
                            if (action.equals("com.ex.auto.widget.TEMP_PLUS")) {
                                m(carPropertyManager, 1.0f);
                                f.b(appWidgetManager2);
                                g(appWidgetManager2);
                                Float f2 = this.f2308g;
                                String string5 = getString(R.string.k_hvac_temp_toast, Float.valueOf(f2 != null ? f2.floatValue() : 0.0f));
                                f.d(string5, "getString(...)");
                                k(string5);
                                c();
                                b bVar12 = this.f2318q;
                                handler.removeCallbacks(bVar12);
                                handler.postDelayed(bVar12, 3000L);
                            }
                            break;
                        case -365752430:
                            if (action.equals("com.ex.auto.widget.REAR_DEFROST_TOGGLE")) {
                                Boolean boolH = this.f2310i;
                                boolean zBooleanValue4 = true ^ ((boolH == null && (boolH = H1.h(carPropertyManager)) == null) ? false : boolH.booleanValue());
                                int[] iArr5 = H1.f606a;
                                try {
                                    carPropertyManager.setBooleanProperty(354419988, 2, zBooleanValue4);
                                    break;
                                } catch (Throwable unused3) {
                                }
                                this.f2310i = Boolean.valueOf(zBooleanValue4);
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar13 = this.f2318q;
                                handler.removeCallbacks(bVar13);
                                handler.postDelayed(bVar13, 3000L);
                            }
                            break;
                        case -297972642:
                            if (action.equals("com.ex.auto.widget.DRIVE_COMFORT")) {
                                H1.r(this, carPropertyManager, 570491138);
                                this.f2306d = 570491138;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar14 = this.f2318q;
                                handler.removeCallbacks(bVar14);
                                handler.postDelayed(bVar14, 3000L);
                            }
                            break;
                        case -248536901:
                            if (action.equals("com.ex.auto.widget.VENT_FLOOR")) {
                                H1.v(carPropertyManager, 2);
                                this.f2309h = 2;
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar15 = this.f2318q;
                                handler.removeCallbacks(bVar15);
                                handler.postDelayed(bVar15, 3000L);
                            }
                            break;
                        case 331360605:
                            if (action.equals("com.ex.auto.widget.REGEN_HIGH")) {
                                H1.u(this, carPropertyManager, 537003267);
                                this.f2307e = 537003267;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar16 = this.f2318q;
                                handler.removeCallbacks(bVar16);
                                handler.postDelayed(bVar16, 3000L);
                            }
                            break;
                        case 331536046:
                            if (action.equals("com.ex.auto.widget.REGEN_NEXT")) {
                                int[] iArr6 = H1.f608d;
                                int i6 = iArr6[H1.p(iArr6, this.f2307e, 1)];
                                H1.u(this, carPropertyManager, i6);
                                this.f2307e = Integer.valueOf(i6);
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                String string6 = getString(R.string.k_regen_toast, j(this.f2307e));
                                f.d(string6, "getString(...)");
                                k(string6);
                                c();
                                b bVar17 = this.f2318q;
                                handler.removeCallbacks(bVar17);
                                handler.postDelayed(bVar17, 3000L);
                            }
                            break;
                        case 331607534:
                            if (action.equals("com.ex.auto.widget.REGEN_PREV")) {
                                int[] iArr7 = H1.f608d;
                                int i7 = iArr7[H1.p(iArr7, this.f2307e, -1)];
                                H1.u(this, carPropertyManager, i7);
                                this.f2307e = Integer.valueOf(i7);
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                String string7 = getString(R.string.k_regen_toast, j(this.f2307e));
                                f.d(string7, "getString(...)");
                                k(string7);
                                c();
                                b bVar18 = this.f2318q;
                                handler.removeCallbacks(bVar18);
                                handler.postDelayed(bVar18, 3000L);
                            }
                            break;
                        case 347934499:
                            if (action.equals("com.ex.auto.widget.DRIVE_ECO")) {
                                H1.r(this, carPropertyManager, 570491137);
                                this.f2306d = 570491137;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar19 = this.f2318q;
                                handler.removeCallbacks(bVar19);
                                handler.postDelayed(bVar19, 3000L);
                            }
                            break;
                        case 1100350382:
                            if (action.equals("com.ex.auto.widget.VENT_FACE")) {
                                H1.v(carPropertyManager, 1);
                                this.f2309h = 1;
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar110 = this.f2318q;
                                handler.removeCallbacks(bVar110);
                                handler.postDelayed(bVar110, 3000L);
                            }
                            break;
                        case 1100593220:
                            if (action.equals("com.ex.auto.widget.VENT_NEXT")) {
                                int[] iArr8 = H1.b;
                                int i8 = iArr8[H1.p(iArr8, this.f2309h, 1)];
                                H1.v(carPropertyManager, i8);
                                this.f2309h = Integer.valueOf(i8);
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar111 = this.f2318q;
                                handler.removeCallbacks(bVar111);
                                handler.postDelayed(bVar111, 3000L);
                            }
                            break;
                        case 1100664708:
                            if (action.equals("com.ex.auto.widget.VENT_PREV")) {
                                int[] iArr9 = H1.b;
                                int i9 = iArr9[H1.p(iArr9, this.f2309h, -1)];
                                H1.v(carPropertyManager, i9);
                                this.f2309h = Integer.valueOf(i9);
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar112 = this.f2318q;
                                handler.removeCallbacks(bVar112);
                                handler.postDelayed(bVar112, 3000L);
                            }
                            break;
                        case 1147541365:
                            if (action.equals("com.ex.auto.widget.VENT_FLOOR_WINDSHIELD")) {
                                H1.v(carPropertyManager, 6);
                                this.f2309h = 6;
                                f.b(appWidgetManager2);
                                i(appWidgetManager2);
                                h(appWidgetManager2);
                                c();
                                b bVar113 = this.f2318q;
                                handler.removeCallbacks(bVar113);
                                handler.postDelayed(bVar113, 3000L);
                            }
                            break;
                        case 1204109181:
                            if (action.equals("com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE")) {
                                a(carPropertyManager, 1, true);
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar114 = this.f2318q;
                                handler.removeCallbacks(bVar114);
                                handler.postDelayed(bVar114, 3000L);
                            }
                            break;
                        case 1221108851:
                            if (action.equals("com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE")) {
                                a(carPropertyManager, 4, false);
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar115 = this.f2318q;
                                handler.removeCallbacks(bVar115);
                                handler.postDelayed(bVar115, 3000L);
                            }
                            break;
                        case 1673261081:
                            if (action.equals("com.ex.auto.widget.REGEN_LOW")) {
                                H1.u(this, carPropertyManager, 537003265);
                                this.f2307e = 537003265;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar116 = this.f2318q;
                                handler.removeCallbacks(bVar116);
                                handler.postDelayed(bVar116, 3000L);
                            }
                            break;
                        case 1673261837:
                            if (action.equals("com.ex.auto.widget.REGEN_MID")) {
                                H1.u(this, carPropertyManager, 537003266);
                                this.f2307e = 537003266;
                                f.b(appWidgetManager2);
                                d(appWidgetManager2);
                                c();
                                b bVar117 = this.f2318q;
                                handler.removeCallbacks(bVar117);
                                handler.postDelayed(bVar117, 3000L);
                            }
                            break;
                        case 1871943691:
                            if (action.equals("com.ex.auto.widget.FAN_MINUS")) {
                                l(carPropertyManager, -1);
                                f.b(appWidgetManager2);
                                e(appWidgetManager2);
                                h(appWidgetManager2);
                                Integer num2 = this.f;
                                String string8 = getString(R.string.k_fan_speed_toast, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                                f.d(string8, "getString(...)");
                                k(string8);
                                c();
                                b bVar118 = this.f2318q;
                                handler.removeCallbacks(bVar118);
                                handler.postDelayed(bVar118, 3000L);
                            }
                            break;
                        case 1905687174:
                            if (action.equals("com.ex.auto.widget.WHEEL_HEAT_TOGGLE")) {
                                Boolean boolM = this.f2312k;
                                boolean z3 = !((boolM == null && (boolM = H1.m(carPropertyManager)) == null) ? false : boolM.booleanValue());
                                this.f2312k = Boolean.valueOf(z3);
                                int[] iArr10 = H1.f606a;
                                for (int i10 : H1.f615l) {
                                    try {
                                        carPropertyManager.setIntProperty(289408269, i10, z3 ? 1 : 0);
                                        f.b(appWidgetManager2);
                                        f(appWidgetManager2);
                                        c();
                                        b bVar119 = this.f2318q;
                                        handler.removeCallbacks(bVar119);
                                        handler.postDelayed(bVar119, 3000L);
                                    } catch (Throwable unused4) {
                                    }
                                    break;
                                }
                                f.b(appWidgetManager2);
                                f(appWidgetManager2);
                                c();
                                b bVar1110 = this.f2318q;
                                handler.removeCallbacks(bVar1110);
                                handler.postDelayed(bVar1110, 3000L);
                            }
                            break;
                    }
                }
            } else {
                c();
                handler.postDelayed(new T0(this, 4), 140L);
            }
        } else {
            c();
        }
        return 2;
    }
}
