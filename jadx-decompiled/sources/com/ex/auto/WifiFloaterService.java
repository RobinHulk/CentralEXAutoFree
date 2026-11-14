package com.ex.auto;

import I0.f;
import T.C0057f1;
import T.K3;
import T.N;
import T.Q4;
import T.S4;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class WifiFloaterService extends Service {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f2567n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2568a;
    public WifiManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f2569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f2570d;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2572g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2574i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2575j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f2571e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Q4 f2576k = new Q4(this, 0);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0057f1 f2577l = new C0057f1(this, 2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final N f2578m = new N(this, 2);

    public final void a() {
        WifiManager wifiManager = this.b;
        if (wifiManager == null) {
            f.h("wifiManager");
            throw null;
        }
        int wifiState = wifiManager.getWifiState();
        boolean z2 = wifiState == 3 || wifiState == 2;
        TextView textView = this.f2569c;
        if (textView != null) {
            textView.setText(z2 ? "📶" : "📴");
        }
        TextView textView2 = this.f2569c;
        Drawable background = textView2 != null ? textView2.getBackground() : null;
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Color.parseColor(z2 ? "#0F1722" : "#0B1521"));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2568a = (WindowManager) systemService;
        Object systemService2 = getApplicationContext().getSystemService("wifi");
        f.c(systemService2, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        this.b = (WifiManager) systemService2;
        String string = getString(R.string.k_wifi_floater_channel);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_wifi_floater_channel);
        f.d(string2, "getString(...)");
        startForeground(14, Y.I(this, "wifi_floater", string, string2, android.R.drawable.ic_menu_manage, null, 0, 48));
        int i2 = (int) (getResources().getDisplayMetrics().density * 52.0f);
        TextView textView = new TextView(this);
        textView.setText("📶");
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#0B131E"));
        textView.setBackground(gradientDrawable);
        textView.setClipToOutline(true);
        textView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        this.f2570d = new WindowManager.LayoutParams(i2, i2, 2038, 264, -3);
        K3 k3U = Y.U(this, "wifi_floater", 8388659, 80, 420);
        WindowManager.LayoutParams layoutParams = this.f2570d;
        if (layoutParams == null) {
            f.h("lp");
            throw null;
        }
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        this.f2569c = textView;
        WindowManager windowManager = this.f2568a;
        if (windowManager == null) {
            f.h("windowManager");
            throw null;
        }
        windowManager.addView(textView, layoutParams);
        textView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 9));
        a();
        int i3 = getSharedPreferences("tela_preta_prefs", 0).getInt("wifi_floater_alpha", 100);
        TextView textView2 = this.f2569c;
        if (textView2 != null) {
            textView2.setAlpha(i3 / 100.0f);
        }
        S4.f794a.a(this, this.f2577l);
        registerReceiver(this.f2578m, new IntentFilter("UPDATE_WIFI_FLOATER_ALPHA"));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f2571e.removeCallbacksAndMessages(null);
        S4.f794a.b(this, this.f2577l);
        try {
            unregisterReceiver(this.f2578m);
        } catch (Exception unused) {
        }
        TextView textView = this.f2569c;
        if (textView != null) {
            try {
                WindowManager windowManager = this.f2568a;
                if (windowManager == null) {
                    f.h("windowManager");
                    throw null;
                }
                windowManager.removeView(textView);
            } catch (Exception unused2) {
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return 1;
    }
}
