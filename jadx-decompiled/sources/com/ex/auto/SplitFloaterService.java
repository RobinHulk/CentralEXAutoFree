package com.ex.auto;

import I0.f;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import T.t4;
import T.u4;
import T.w4;
import T.x4;
import T.y4;
import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class SplitFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile SplitFloaterService f2504v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2505a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f2506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f2507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f2508e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f2509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowManager.LayoutParams f2510h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public x4 f2512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public x4 f2513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public y4 f2514l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f2517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2518p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f2519q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2520r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2521s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2522t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Handler f2511i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2515m = 0.5f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f2523u = 72;

    public static final TextView a(final SplitFloaterService splitFloaterService, String str, final float f) {
        TextView textView = new TextView(splitFloaterService);
        textView.setText(str);
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(splitFloaterService.f(-868072894, 20));
        int iB = splitFloaterService.b(40);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iB, iB);
        layoutParams.setMarginEnd(splitFloaterService.b(4));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new View.OnClickListener() { // from class: T.v4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitFloaterService splitFloaterService2 = this.f1187a;
                float f2 = f;
                y4 y4Var = splitFloaterService2.f2514l;
                x4 x4Var = splitFloaterService2.f2512j;
                x4 x4Var2 = splitFloaterService2.f2513k;
                if (y4Var == null || x4Var == null || x4Var2 == null || splitFloaterService2.f2517o) {
                    return;
                }
                splitFloaterService2.f2515m = A.b.n(splitFloaterService2.f2515m + f2, 0.15f, 0.85f);
                splitFloaterService2.f2517o = true;
                splitFloaterService2.h();
                new Thread(new RunnableC0164y0(x4Var, splitFloaterService2, y4Var, x4Var2, 7)).start();
            }
        });
        return textView;
    }

    public final int b(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void c(String str) {
        this.f2517o = false;
        this.f2511i.post(new t4(this, 1));
        g(str);
    }

    public final w4 d(y4 y4Var) {
        return new w4(0, this.f2523u, (int) (y4Var.f1225a * this.f2515m), y4Var.b);
    }

    public final w4 e(y4 y4Var) {
        int i2 = y4Var.f1225a;
        return new w4((int) (i2 * this.f2515m), this.f2523u, i2, y4Var.b);
    }

    public final GradientDrawable f(int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(b(i3));
        return gradientDrawable;
    }

    public final void g(String str) {
        this.f2511i.post(new u4(this, str, 1));
    }

    public final void h() {
        int i2;
        String str;
        boolean z2 = (this.f2512j == null || this.f2513k == null) ? false : true;
        TextView textView = this.f2506c;
        if (textView != null) {
            if (this.f2517o) {
                str = "…";
            } else {
                str = z2 ? "✕" : "⧉";
            }
            textView.setText(str);
        }
        TextView textView2 = this.f2506c;
        if (textView2 != null) {
            if (this.f2517o) {
                i2 = -864717451;
            } else {
                i2 = z2 ? -869368526 : -871012928;
            }
            textView2.setBackground(f(i2, 24));
        }
        LinearLayout linearLayout = this.f2507d;
        if (linearLayout != null) {
            linearLayout.setVisibility((!z2 || this.f2517o) ? 8 : 0);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2504v = this;
        String string = getString(R.string.k_split_channel_name);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_split_channel_active);
        f.d(string2, "getString(...)");
        startForeground(105, Y.I(this, "split_floater", string, string2, android.R.drawable.ic_menu_add, getString(R.string.k_split_notif_text), 0, 32));
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2505a = (WindowManager) systemService;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        this.b = linearLayout;
        TextView textView = new TextView(this);
        textView.setText("⧉");
        textView.setTextSize(26.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(f(-871012928, 24));
        int iB = b(52);
        textView.setLayoutParams(new LinearLayout.LayoutParams(iB, iB));
        final int i2 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: T.r4
            public final /* synthetic */ SplitFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = 0;
                switch (i2) {
                    case 0:
                        SplitFloaterService splitFloaterService = this.b;
                        if (splitFloaterService.f2517o) {
                            String string3 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                            I0.f.d(string3, "getString(...)");
                            splitFloaterService.g(string3);
                        } else if (!splitFloaterService.f2516n) {
                            x4 x4Var = splitFloaterService.f2512j;
                            if (x4Var == null && splitFloaterService.f2513k == null) {
                                splitFloaterService.f2517o = true;
                                splitFloaterService.h();
                                new Thread(new t4(splitFloaterService, 6)).start();
                            } else {
                                x4 x4Var2 = splitFloaterService.f2513k;
                                splitFloaterService.f2517o = true;
                                splitFloaterService.h();
                                new Thread(new RunnableC0137s4(x4Var2, splitFloaterService, x4Var, i3)).start();
                            }
                        } else {
                            LinearLayout linearLayout2 = splitFloaterService.f2508e;
                            if (linearLayout2 != null) {
                                linearLayout2.setVisibility(8);
                            }
                            splitFloaterService.f2516n = false;
                        }
                        break;
                    default:
                        SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                        SplitFloaterService splitFloaterService3 = this.b;
                        LinearLayout linearLayout3 = splitFloaterService3.f2508e;
                        if (linearLayout3 != null) {
                            linearLayout3.setVisibility(8);
                        }
                        splitFloaterService3.f2516n = false;
                        break;
                }
            }
        });
        this.f2506c = textView;
        textView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 7));
        LinearLayout linearLayout2 = this.b;
        f.b(linearLayout2);
        linearLayout2.addView(this.f2506c);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = b(6);
        linearLayout3.setLayoutParams(layoutParams);
        this.f2507d = linearLayout3;
        linearLayout3.addView(a(this, "◀", -0.05f));
        LinearLayout linearLayout4 = this.f2507d;
        f.b(linearLayout4);
        linearLayout4.addView(a(this, "▶", 0.05f));
        LinearLayout linearLayout5 = this.b;
        f.b(linearLayout5);
        linearLayout5.addView(this.f2507d);
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(1);
        linearLayout6.setVisibility(8);
        linearLayout6.setBackground(f(-299884252, 14));
        linearLayout6.setPadding(b(8), b(8), b(8), b(8));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(b(240), -2);
        layoutParams2.topMargin = b(6);
        linearLayout6.setLayoutParams(layoutParams2);
        this.f2508e = linearLayout6;
        LinearLayout linearLayout7 = new LinearLayout(this);
        linearLayout7.setOrientation(0);
        linearLayout7.setGravity(16);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_open_on_right));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(-10177034);
        this.f = textView2;
        linearLayout7.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextSize(16.0f);
        textView3.setTextColor(-3355444);
        textView3.setPadding(b(10), b(2), b(10), b(2));
        final int i3 = 1;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: T.r4
            public final /* synthetic */ SplitFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = 0;
                switch (i3) {
                    case 0:
                        SplitFloaterService splitFloaterService = this.b;
                        if (splitFloaterService.f2517o) {
                            String string3 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                            I0.f.d(string3, "getString(...)");
                            splitFloaterService.g(string3);
                        } else if (!splitFloaterService.f2516n) {
                            x4 x4Var = splitFloaterService.f2512j;
                            if (x4Var == null && splitFloaterService.f2513k == null) {
                                splitFloaterService.f2517o = true;
                                splitFloaterService.h();
                                new Thread(new t4(splitFloaterService, 6)).start();
                            } else {
                                x4 x4Var2 = splitFloaterService.f2513k;
                                splitFloaterService.f2517o = true;
                                splitFloaterService.h();
                                new Thread(new RunnableC0137s4(x4Var2, splitFloaterService, x4Var, i4)).start();
                            }
                        } else {
                            LinearLayout linearLayout8 = splitFloaterService.f2508e;
                            if (linearLayout8 != null) {
                                linearLayout8.setVisibility(8);
                            }
                            splitFloaterService.f2516n = false;
                        }
                        break;
                    default:
                        SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                        SplitFloaterService splitFloaterService3 = this.b;
                        LinearLayout linearLayout9 = splitFloaterService3.f2508e;
                        if (linearLayout9 != null) {
                            linearLayout9.setVisibility(8);
                        }
                        splitFloaterService3.f2516n = false;
                        break;
                }
            }
        });
        linearLayout7.addView(textView3);
        LinearLayout linearLayout8 = this.f2508e;
        f.b(linearLayout8);
        linearLayout8.addView(linearLayout7);
        LinearLayout linearLayout9 = new LinearLayout(this);
        linearLayout9.setOrientation(1);
        this.f2509g = linearLayout9;
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(this.f2509g, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout10 = this.f2508e;
        f.b(linearLayout10);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, b(300));
        layoutParams3.topMargin = b(6);
        linearLayout10.addView(scrollView, layoutParams3);
        LinearLayout linearLayout11 = this.b;
        f.b(linearLayout11);
        linearLayout11.addView(this.f2508e);
        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams4.gravity = 8388627;
        layoutParams4.x = b(8);
        layoutParams4.y = 0;
        this.f2510h = layoutParams4;
        try {
            WindowManager windowManager = this.f2505a;
            if (windowManager != null) {
                windowManager.addView(this.b, layoutParams4);
            } else {
                f.h("wm");
                throw null;
            }
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            String string3 = getString(R.string.k_overlay_failure, message);
            f.d(string3, "getString(...)");
            g(string3);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2504v = null;
        this.f2511i.removeCallbacksAndMessages(null);
        try {
            WindowManager windowManager = this.f2505a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.removeView(this.b);
            super.onDestroy();
        } catch (Throwable unused) {
        }
    }
}
