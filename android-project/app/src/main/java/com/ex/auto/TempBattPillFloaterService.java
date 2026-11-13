package com.ex.auto;

import A.b;
import I0.f;
import T.C0085k;
import T.C0134s1;
import T.H4;
import T.K3;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class TempBattPillFloaterService extends Service {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile TempBattPillFloaterService f2524u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2525a;
    public SharedPreferences b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f2526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f2527d;
    public Car f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile CarPropertyManager f2529g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f2530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Float f2531i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile Integer f2533k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C0085k f2534l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2535m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2537o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2538p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2539q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2540r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2541s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f2528e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f2532j = {1, 49, 5, 0};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final H4 f2536n = new H4(this, 0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final H4 f2542t = new H4(this, 1);

    public final void a(int i2) {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putInt("pill_alpha", i2).apply();
        int iO = (b.o(i2, 0, 100) * 255) / 100;
        TextView textView = this.f2526c;
        if (textView != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(iO << 24);
            gradientDrawable.setCornerRadius(d(50));
            textView.setBackground(gradientDrawable);
        }
    }

    public final void b(int i2) {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putInt("pill_size_pct", i2).apply();
        float f = i2 / 100.0f;
        TextView textView = this.f2526c;
        if (textView != null) {
            textView.setTextSize(16.0f * f);
        }
        int i3 = (int) (18 * f);
        int i4 = (int) (10 * f);
        TextView textView2 = this.f2526c;
        if (textView2 != null) {
            textView2.setPadding(d(i3), d(i4), d(i3), d(i4));
        }
    }

    public final void c(boolean z2) {
        TextView textView;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putBoolean("pill_text_white", z2).apply();
        if (this.f2533k != null || (textView = this.f2526c) == null) {
            return;
        }
        textView.setTextColor(z2 ? -1 : -16777216);
    }

    public final int d(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void e() {
        this.f2528e.removeCallbacks(this.f2536n);
        this.f2533k = null;
        this.f2534l = null;
        TextView textView = this.f2526c;
        if (textView != null) {
            SharedPreferences sharedPreferences = this.b;
            if (sharedPreferences != null) {
                textView.setTextColor(sharedPreferences.getBoolean("pill_text_white", true) ? -1 : -16777216);
            } else {
                f.h("pillPrefs");
                throw null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    public final void f() {
        String str;
        String string;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("pillPrefs");
            throw null;
        }
        String string2 = sharedPreferences.getString("pill_mode", "both");
        String str2 = string2 != null ? string2 : "both";
        Float f = this.f2530h;
        if (f != null) {
            str = Math.round(f.floatValue()) + "°C";
            if (str == null) {
                str = "--°C";
            }
        } else {
            str = "--°C";
        }
        Float f2 = this.f2531i;
        if (f2 != null) {
            float fFloatValue = f2.floatValue();
            StringBuilder sb = new StringBuilder();
            sb.append(Math.round(fFloatValue));
            sb.append('%');
            string = sb.toString();
            if (string == null) {
                string = "--%";
            }
        } else {
            string = "--%";
        }
        TextView textView = this.f2526c;
        if (textView != null) {
            if (!str2.equals("temp")) {
                if (str2.equals("batt")) {
                    str = string;
                } else {
                    str = str + "   " + string;
                }
            }
            textView.setText(str);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2524u = this;
        this.b = getSharedPreferences("temp_batt_pill_prefs", 0);
        String string = getString(R.string.k_pill_channel_name);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_pill_channel_active);
        f.d(string2, "getString(...)");
        startForeground(109, Y.I(this, "temp_batt_pill_floater", string, string2, android.R.drawable.ic_menu_compass, null, 0, 48));
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2525a = (WindowManager) systemService;
        TextView textView = new TextView(this);
        textView.setTextSize(16.0f);
        textView.setGravity(17);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setText("…");
        this.f2526c = textView;
        textView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 8));
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("pillPrefs");
            throw null;
        }
        a(sharedPreferences.getInt("pill_alpha", 85));
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            f.h("pillPrefs");
            throw null;
        }
        b(sharedPreferences2.getInt("pill_size_pct", 100));
        SharedPreferences sharedPreferences3 = this.b;
        if (sharedPreferences3 == null) {
            f.h("pillPrefs");
            throw null;
        }
        c(sharedPreferences3.getBoolean("pill_text_white", true));
        K3 k3U = Y.U(this, "temp_batt_pill", 49, 0, d(80));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        this.f2527d = layoutParams;
        try {
            WindowManager windowManager = this.f2525a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.addView(this.f2526c, layoutParams);
            try {
                this.f = Car.createCar(this, null, 0L, new C0134s1(this, 5));
            } catch (Exception unused) {
            }
            this.f2528e.post(this.f2542t);
        } catch (Throwable unused2) {
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2524u = null;
        this.f2533k = null;
        this.f2534l = null;
        this.f2528e.removeCallbacksAndMessages(null);
        try {
            Car car = this.f;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused) {
        }
        try {
            WindowManager windowManager = this.f2525a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.removeView(this.f2526c);
            super.onDestroy();
        } catch (Throwable unused2) {
        }
    }
}
