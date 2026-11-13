package com.ex.auto;

import A.b;
import C.a;
import I0.f;
import M.d0;
import O0.j;
import T.I1;
import T.K;
import T.K3;
import T.N;
import T.ViewOnClickListenerC0079j;
import T.Y;
import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.ImageView;
import com.ex.auto.BlackoutFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class BlackoutFloaterService extends Service {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile boolean f2135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile boolean f2136q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2137a;
    public ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2139d;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2141g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f2143i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public N f2144j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2145k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f2146l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2147m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2148n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2149o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2140e = 166;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f2142h = new Handler(Looper.getMainLooper());

    public static boolean a() {
        try {
            if (f.a(j.X0(b.b0(new File("/sys/fs/selinux/enforce"))).toString(), "0")) {
                return true;
            }
            Log.i("BlackoutFloater", "SELinux enforcing — executando setenforce 0");
            String strB = new I1(5555).b(5000, "setenforce 0 2>/dev/null; cat /sys/fs/selinux/enforce");
            f.d(strB, "runShell(...)");
            return f.a(j.X0(strB).toString(), "0");
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("ensureSelinuxPermissive falhou: "), "BlackoutFloater");
            return false;
        }
    }

    public static boolean f(int i2) {
        try {
            b.k0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(i2));
            int i3 = Integer.parseInt(j.X0(b.b0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
            boolean z2 = i3 == i2;
            if (z2) {
                Log.i("BlackoutFloater", "Backlight → " + i2);
            } else {
                Log.w("BlackoutFloater", "Backlight escrito " + i2 + " mas lido " + i3);
            }
            return z2;
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("Falha ao escrever backlight: "), "BlackoutFloater");
            return false;
        }
    }

    public final void b() {
        if (this.f) {
            startForegroundService(new Intent(this, (Class<?>) DriveRegenFloaterService.class));
        }
        if (this.f2141g) {
            startForegroundService(new Intent(this, (Class<?>) TempStepperService.class));
        }
        this.f = false;
        this.f2141g = false;
    }

    public final void c() {
        a aVar = this.f2143i;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused) {
            }
        }
        this.f2143i = null;
        N n2 = this.f2144j;
        if (n2 != null) {
            try {
                unregisterReceiver(n2);
            } catch (Exception unused2) {
            }
        }
        this.f2144j = null;
    }

    public final void d() {
        ImageView imageView = this.b;
        if (imageView == null) {
            return;
        }
        Drawable background = imageView.getBackground();
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (this.f2138c) {
            if (gradientDrawable != null) {
                gradientDrawable.setColor(Color.parseColor("#40FFFFFF"));
            }
            imageView.setAlpha(0.18f);
            imageView.setContentDescription(getString(R.string.button_desc_on));
            return;
        }
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Color.parseColor("#CC111111"));
        }
        imageView.setAlpha(0.85f);
        imageView.setContentDescription(getString(R.string.button_desc_off));
    }

    public final void e() {
        c();
        this.f2138c = false;
        f2136q = false;
        b();
        d();
        new Thread(new K(this, this.f2140e, 0)).start();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2135p = true;
        String string = getString(R.string.blackout_floater_channel);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.app_name);
        f.d(string2, "getString(...)");
        startForeground(104, Y.H(this, "blackout_floater", string, string2, R.drawable.sapo_icon, getString(R.string.blackout_floater_notif), 2));
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2137a = (WindowManager) systemService;
        if (this.b != null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density;
        int i2 = (int) (74 * f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#70353535"));
        final ImageView imageView = new ImageView(this);
        imageView.setLayoutParams(new WindowManager.LayoutParams(i2, i2));
        imageView.setBackground(gradientDrawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(android.R.drawable.ic_lock_power_off);
        imageView.setColorFilter(-1);
        imageView.setAlpha(0.85f);
        imageView.setContentDescription(getString(R.string.button_desc_off));
        int i3 = (int) (9 * f);
        imageView.setPadding(i3, i3, i3, i3);
        imageView.setOnClickListener(new ViewOnClickListenerC0079j(this, 2));
        K3 k3U = Y.U(this, "blackout", 8388659, 1412, 794);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        imageView.setOnTouchListener(new View.OnTouchListener() { // from class: T.M
            /* JADX WARN: Code duplicated, block: B:35:0x0073  */
            /* JADX WARN: Code duplicated, block: B:38:0x007d  */
            /* JADX WARN: Code duplicated, block: B:41:0x008c  */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z2 = BlackoutFloaterService.f2135p;
                int actionMasked = motionEvent.getActionMasked();
                WindowManager.LayoutParams layoutParams2 = layoutParams;
                ImageView imageView2 = imageView;
                BlackoutFloaterService blackoutFloaterService = this.f689a;
                if (actionMasked == 0) {
                    blackoutFloaterService.f2145k = motionEvent.getRawX();
                    blackoutFloaterService.f2146l = motionEvent.getRawY();
                    blackoutFloaterService.f2147m = layoutParams2.x;
                    blackoutFloaterService.f2148n = layoutParams2.y;
                    blackoutFloaterService.f2149o = false;
                    imageView2.setAlpha(0.95f);
                } else if (actionMasked == 1) {
                    imageView2.setAlpha(blackoutFloaterService.f2138c ? 0.95f : 0.85f);
                    if (blackoutFloaterService.f2149o) {
                        Y.d0(blackoutFloaterService, "blackout", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                    if (!blackoutFloaterService.f2149o) {
                        imageView2.performClick();
                    }
                } else if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                    imageView2.setAlpha(blackoutFloaterService.f2138c ? 0.95f : 0.85f);
                    if (blackoutFloaterService.f2149o) {
                        Y.d0(blackoutFloaterService, "blackout", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                    if (!blackoutFloaterService.f2149o) {
                        imageView2.performClick();
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - blackoutFloaterService.f2145k);
                    int rawY = (int) (motionEvent.getRawY() - blackoutFloaterService.f2146l);
                    if (!blackoutFloaterService.f2149o) {
                        float fAbs = Math.abs(rawX);
                        float f2 = scaledTouchSlop;
                        if (fAbs > f2 || Math.abs(rawY) > f2) {
                            blackoutFloaterService.f2149o = true;
                        }
                    }
                    if (blackoutFloaterService.f2149o) {
                        int i4 = blackoutFloaterService.f2147m + rawX;
                        if (i4 < 0) {
                            i4 = 0;
                        }
                        layoutParams2.x = i4;
                        int i5 = blackoutFloaterService.f2148n + rawY;
                        layoutParams2.y = i5 >= 0 ? i5 : 0;
                        WindowManager windowManager = blackoutFloaterService.f2137a;
                        if (windowManager == null) {
                            I0.f.h("windowManager");
                            throw null;
                        }
                        windowManager.updateViewLayout(imageView2, layoutParams2);
                    }
                }
                return true;
            }
        });
        WindowManager windowManager = this.f2137a;
        if (windowManager == null) {
            f.h("windowManager");
            throw null;
        }
        windowManager.addView(imageView, layoutParams);
        this.b = imageView;
        d();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        stopForeground(2);
        this.f2142h.removeCallbacksAndMessages(null);
        c();
        if (this.f2138c) {
            e();
        }
        ImageView imageView = this.b;
        if (imageView != null && imageView.getParent() != null) {
            WindowManager windowManager = this.f2137a;
            if (windowManager == null) {
                f.h("windowManager");
                throw null;
            }
            windowManager.removeView(imageView);
        }
        this.b = null;
        f2135p = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return 1;
    }
}
