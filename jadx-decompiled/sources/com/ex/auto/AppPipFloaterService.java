package com.ex.auto;

import B.b;
import H0.a;
import I0.f;
import O0.j;
import T.A;
import T.RunnableC0153w;
import T.RunnableC0168z;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import T.r;
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
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppPipFloaterService extends Service {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile AppPipFloaterService f2114u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2115a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f2116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f2117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f2118e;
    public LinearLayout f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public WindowManager.LayoutParams f2119g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x4 f2121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public y4 f2122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public w4 f2123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2124l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2125m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f2126n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2127o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2128p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2129q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2130r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2131s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f2120h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b f2132t = new b(this, 5);

    public static final TextView a(AppPipFloaterService appPipFloaterService, String str, int i2, a aVar) {
        TextView textView = new TextView(appPipFloaterService);
        textView.setText(str);
        textView.setTextSize(16.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(appPipFloaterService.f(i2, 20));
        int iC = appPipFloaterService.c(40);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iC, iC);
        layoutParams.setMarginEnd(appPipFloaterService.c(4));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new A(aVar, 0));
        return textView;
    }

    public static w4 b(w4 w4Var, y4 y4Var) {
        int i2 = w4Var.f1197c;
        int i3 = w4Var.f1196a;
        int iO = A.b.o(i2 - i3, 260, (int) (((double) y4Var.f1225a) * 0.85d));
        int i4 = w4Var.f1198d;
        int i5 = w4Var.b;
        int i6 = y4Var.b;
        int iO2 = A.b.o(i4 - i5, 150, (int) (((double) i6) * 0.85d));
        int i7 = ((i3 + i2) / 2) - (iO / 2);
        int i8 = ((i5 + i4) / 2) - (iO2 / 2);
        if (i7 < 0) {
            i7 = 0;
        }
        if (i8 < 72) {
            i8 = 72;
        }
        int i9 = i7 + iO;
        int i10 = y4Var.f1225a;
        if (i9 > i10) {
            i7 = i10 - iO;
        }
        if (i8 + iO2 > i6) {
            i8 = i6 - iO2;
        }
        return new w4(i7, i8, iO + i7, iO2 + i8);
    }

    public final int c(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void d(String str) {
        this.f2126n = false;
        this.f2120h.post(new RunnableC0153w(this, 3));
        h(str);
    }

    public final void e(String str) {
        f.e(str, "pkg");
        if (this.f2126n) {
            String string = getString(R.string.k_toast_wait_processing);
            f.d(string, "getString(...)");
            h(string);
            return;
        }
        LinearLayout linearLayout = this.f2118e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        this.f2125m = false;
        this.f2126n = true;
        i();
        String string2 = getString(R.string.k_pip_opening);
        f.d(string2, "getString(...)");
        h(string2);
        new Thread(new r(this, str, 1)).start();
    }

    public final GradientDrawable f(int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(c(i3));
        return gradientDrawable;
    }

    public final void g(double d2) {
        w4 w4Var = this.f2123k;
        y4 y4Var = this.f2122j;
        if (this.f2121i == null || w4Var == null || y4Var == null || this.f2126n) {
            return;
        }
        int i2 = w4Var.f1197c;
        int i3 = w4Var.f1196a;
        int i4 = (int) (((double) (i2 - i3)) * d2);
        int i5 = w4Var.f1198d;
        int i6 = w4Var.b;
        int i7 = (int) (((double) (i5 - i6)) * d2);
        int i8 = (i3 + i2) / 2;
        int i9 = (i6 + i5) / 2;
        int i10 = i4 / 2;
        int i11 = i7 / 2;
        w4 w4VarB = b(new w4(i8 - i10, i9 - i11, i8 + i10, i9 + i11), y4Var);
        x4 x4Var = this.f2121i;
        if (x4Var == null) {
            return;
        }
        this.f2126n = true;
        i();
        new Thread(new RunnableC0168z(x4Var, w4VarB, this, 0)).start();
    }

    public final boolean h(String str) {
        return this.f2120h.post(new r(this, str, 2));
    }

    public final void i() {
        int i2;
        boolean z2 = this.f2121i != null;
        TextView textView = this.f2116c;
        if (textView != null) {
            textView.setText(this.f2126n ? "…" : "PIP");
        }
        TextView textView2 = this.f2116c;
        if (textView2 != null) {
            if (this.f2126n) {
                i2 = -864717451;
            } else {
                i2 = z2 ? -869368526 : -871012928;
            }
            textView2.setBackground(f(i2, 24));
        }
        LinearLayout linearLayout = this.f2117d;
        if (linearLayout != null) {
            linearLayout.setVisibility((!z2 || this.f2126n) ? 8 : 0);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2114u = this;
        String string = getString(R.string.k_pip_channel_name);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_pip_channel_active);
        f.d(string2, "getString(...)");
        startForeground(106, Y.I(this, "app_pip_floater", string, string2, android.R.drawable.ic_menu_crop, getString(R.string.k_pip_notif_text), 0, 32));
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2115a = (WindowManager) systemService;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        this.b = linearLayout;
        TextView textView = new TextView(this);
        textView.setText("PIP");
        textView.setTextSize(13.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setBackground(f(-871012928, 24));
        int iC = c(52);
        textView.setLayoutParams(new LinearLayout.LayoutParams(iC, iC));
        final int i2 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: T.x
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = 0;
                switch (i2) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        if (appPipFloaterService.f2126n) {
                            String string3 = appPipFloaterService.getString(R.string.k_toast_wait_processing);
                            I0.f.d(string3, "getString(...)");
                            appPipFloaterService.h(string3);
                        } else if (appPipFloaterService.f2125m) {
                            LinearLayout linearLayout2 = appPipFloaterService.f2118e;
                            if (linearLayout2 != null) {
                                linearLayout2.setVisibility(8);
                            }
                            appPipFloaterService.f2125m = false;
                        } else if (appPipFloaterService.f2121i != null) {
                            String string4 = appPipFloaterService.getString(R.string.k_pip_active_hint);
                            I0.f.d(string4, "getString(...)");
                            appPipFloaterService.h(string4);
                        } else {
                            LinearLayout linearLayout3 = appPipFloaterService.f;
                            if (linearLayout3 != null) {
                                linearLayout3.removeAllViews();
                                List<v0.a> listG = z4.g(appPipFloaterService);
                                if (listG.isEmpty()) {
                                    TextView textView2 = new TextView(appPipFloaterService);
                                    textView2.setText(appPipFloaterService.getString(R.string.k_no_app_found));
                                    textView2.setTextColor(-3355444);
                                    textView2.setPadding(appPipFloaterService.c(6), appPipFloaterService.c(10), appPipFloaterService.c(6), appPipFloaterService.c(10));
                                    linearLayout3.addView(textView2);
                                } else {
                                    for (v0.a aVar : listG) {
                                        String str = (String) aVar.f4155a;
                                        String str2 = (String) aVar.b;
                                        TextView textView3 = new TextView(appPipFloaterService);
                                        textView3.setText(str);
                                        textView3.setTextSize(14.0f);
                                        textView3.setTextColor(-1);
                                        textView3.setPadding(appPipFloaterService.c(12), appPipFloaterService.c(12), appPipFloaterService.c(12), appPipFloaterService.c(12));
                                        textView3.setBackground(appPipFloaterService.f(-13618892, 10));
                                        textView3.setOnClickListener(new ViewOnClickListenerC0143u(appPipFloaterService, i3, str2));
                                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                                        layoutParams.bottomMargin = appPipFloaterService.c(4);
                                        linearLayout3.addView(textView3, layoutParams);
                                    }
                                }
                            }
                            LinearLayout linearLayout4 = appPipFloaterService.f2118e;
                            if (linearLayout4 != null) {
                                linearLayout4.setVisibility(0);
                            }
                            appPipFloaterService.f2125m = true;
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        LinearLayout linearLayout5 = appPipFloaterService3.f2118e;
                        if (linearLayout5 != null) {
                            linearLayout5.setVisibility(8);
                        }
                        appPipFloaterService3.f2125m = false;
                        break;
                }
            }
        });
        this.f2116c = textView;
        textView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 0));
        LinearLayout linearLayout2 = this.b;
        f.b(linearLayout2);
        linearLayout2.addView(this.f2116c);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = c(6);
        linearLayout3.setLayoutParams(layoutParams);
        this.f2117d = linearLayout3;
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = c(4);
        linearLayout4.setLayoutParams(layoutParams2);
        final int i3 = 0;
        linearLayout4.addView(a(this, "+", -868072894, new a(this) { // from class: T.y
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                switch (i3) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                        this.b.g(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        this.b.g(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        w4 w4Var = appPipFloaterService3.f2123k;
                        y4 y4Var = appPipFloaterService3.f2122j;
                        if (appPipFloaterService3.f2121i != null && w4Var != null && y4Var != null && !appPipFloaterService3.f2126n) {
                            boolean z2 = appPipFloaterService3.f2124l;
                            appPipFloaterService3.f2124l = !z2;
                            double d2 = ((double) (w4Var.f1197c - w4Var.f1196a)) * ((double) (w4Var.f1198d - w4Var.b));
                            v0.a aVar = !z2 ? new v0.a(Double.valueOf(9.0d), Double.valueOf(16.0d)) : new v0.a(Double.valueOf(16.0d), Double.valueOf(9.0d));
                            double dDoubleValue = ((Number) aVar.f4155a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d2 / (dDoubleValue * dDoubleValue2));
                            int i4 = (int) (dDoubleValue * dSqrt);
                            int i5 = (int) (dDoubleValue2 * dSqrt);
                            int i6 = (w4Var.f1196a + w4Var.f1197c) / 2;
                            int i7 = (w4Var.b + w4Var.f1198d) / 2;
                            int i8 = i4 / 2;
                            int i9 = i5 / 2;
                            w4 w4VarB = AppPipFloaterService.b(new w4(i6 - i8, i7 - i9, i6 + i8, i7 + i9), y4Var);
                            x4 x4Var = appPipFloaterService3.f2121i;
                            if (x4Var != null) {
                                appPipFloaterService3.f2126n = true;
                                appPipFloaterService3.i();
                                new Thread(new RunnableC0168z(x4Var, w4VarB, appPipFloaterService3, 0)).start();
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService4 = this.b;
                        x4 x4Var2 = appPipFloaterService4.f2121i;
                        if (x4Var2 != null) {
                            appPipFloaterService4.f2126n = true;
                            appPipFloaterService4.i();
                            appPipFloaterService4.f2120h.removeCallbacks(appPipFloaterService4.f2132t);
                            new Thread(new RunnableC0132s(x4Var2, appPipFloaterService4, 1)).start();
                        }
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        final int i4 = 1;
        linearLayout4.addView(a(this, "−", -868072894, new a(this) { // from class: T.y
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                switch (i4) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                        this.b.g(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        this.b.g(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        w4 w4Var = appPipFloaterService3.f2123k;
                        y4 y4Var = appPipFloaterService3.f2122j;
                        if (appPipFloaterService3.f2121i != null && w4Var != null && y4Var != null && !appPipFloaterService3.f2126n) {
                            boolean z2 = appPipFloaterService3.f2124l;
                            appPipFloaterService3.f2124l = !z2;
                            double d2 = ((double) (w4Var.f1197c - w4Var.f1196a)) * ((double) (w4Var.f1198d - w4Var.b));
                            v0.a aVar = !z2 ? new v0.a(Double.valueOf(9.0d), Double.valueOf(16.0d)) : new v0.a(Double.valueOf(16.0d), Double.valueOf(9.0d));
                            double dDoubleValue = ((Number) aVar.f4155a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d2 / (dDoubleValue * dDoubleValue2));
                            int i5 = (int) (dDoubleValue * dSqrt);
                            int i6 = (int) (dDoubleValue2 * dSqrt);
                            int i7 = (w4Var.f1196a + w4Var.f1197c) / 2;
                            int i8 = (w4Var.b + w4Var.f1198d) / 2;
                            int i9 = i5 / 2;
                            int i10 = i6 / 2;
                            w4 w4VarB = AppPipFloaterService.b(new w4(i7 - i9, i8 - i10, i7 + i9, i8 + i10), y4Var);
                            x4 x4Var = appPipFloaterService3.f2121i;
                            if (x4Var != null) {
                                appPipFloaterService3.f2126n = true;
                                appPipFloaterService3.i();
                                new Thread(new RunnableC0168z(x4Var, w4VarB, appPipFloaterService3, 0)).start();
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService4 = this.b;
                        x4 x4Var2 = appPipFloaterService4.f2121i;
                        if (x4Var2 != null) {
                            appPipFloaterService4.f2126n = true;
                            appPipFloaterService4.i();
                            appPipFloaterService4.f2120h.removeCallbacks(appPipFloaterService4.f2132t);
                            new Thread(new RunnableC0132s(x4Var2, appPipFloaterService4, 1)).start();
                        }
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = c(4);
        linearLayout5.setLayoutParams(layoutParams3);
        final int i5 = 2;
        linearLayout5.addView(a(this, "⟲", -868072894, new a(this) { // from class: T.y
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                switch (i5) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                        this.b.g(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        this.b.g(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        w4 w4Var = appPipFloaterService3.f2123k;
                        y4 y4Var = appPipFloaterService3.f2122j;
                        if (appPipFloaterService3.f2121i != null && w4Var != null && y4Var != null && !appPipFloaterService3.f2126n) {
                            boolean z2 = appPipFloaterService3.f2124l;
                            appPipFloaterService3.f2124l = !z2;
                            double d2 = ((double) (w4Var.f1197c - w4Var.f1196a)) * ((double) (w4Var.f1198d - w4Var.b));
                            v0.a aVar = !z2 ? new v0.a(Double.valueOf(9.0d), Double.valueOf(16.0d)) : new v0.a(Double.valueOf(16.0d), Double.valueOf(9.0d));
                            double dDoubleValue = ((Number) aVar.f4155a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d2 / (dDoubleValue * dDoubleValue2));
                            int i6 = (int) (dDoubleValue * dSqrt);
                            int i7 = (int) (dDoubleValue2 * dSqrt);
                            int i8 = (w4Var.f1196a + w4Var.f1197c) / 2;
                            int i9 = (w4Var.b + w4Var.f1198d) / 2;
                            int i10 = i6 / 2;
                            int i11 = i7 / 2;
                            w4 w4VarB = AppPipFloaterService.b(new w4(i8 - i10, i9 - i11, i8 + i10, i9 + i11), y4Var);
                            x4 x4Var = appPipFloaterService3.f2121i;
                            if (x4Var != null) {
                                appPipFloaterService3.f2126n = true;
                                appPipFloaterService3.i();
                                new Thread(new RunnableC0168z(x4Var, w4VarB, appPipFloaterService3, 0)).start();
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService4 = this.b;
                        x4 x4Var2 = appPipFloaterService4.f2121i;
                        if (x4Var2 != null) {
                            appPipFloaterService4.f2126n = true;
                            appPipFloaterService4.i();
                            appPipFloaterService4.f2120h.removeCallbacks(appPipFloaterService4.f2132t);
                            new Thread(new RunnableC0132s(x4Var2, appPipFloaterService4, 1)).start();
                        }
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        final int i6 = 3;
        linearLayout5.addView(a(this, "✕", -860414948, new a(this) { // from class: T.y
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                switch (i6) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                        this.b.g(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        this.b.g(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        w4 w4Var = appPipFloaterService3.f2123k;
                        y4 y4Var = appPipFloaterService3.f2122j;
                        if (appPipFloaterService3.f2121i != null && w4Var != null && y4Var != null && !appPipFloaterService3.f2126n) {
                            boolean z2 = appPipFloaterService3.f2124l;
                            appPipFloaterService3.f2124l = !z2;
                            double d2 = ((double) (w4Var.f1197c - w4Var.f1196a)) * ((double) (w4Var.f1198d - w4Var.b));
                            v0.a aVar = !z2 ? new v0.a(Double.valueOf(9.0d), Double.valueOf(16.0d)) : new v0.a(Double.valueOf(16.0d), Double.valueOf(9.0d));
                            double dDoubleValue = ((Number) aVar.f4155a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d2 / (dDoubleValue * dDoubleValue2));
                            int i7 = (int) (dDoubleValue * dSqrt);
                            int i8 = (int) (dDoubleValue2 * dSqrt);
                            int i9 = (w4Var.f1196a + w4Var.f1197c) / 2;
                            int i10 = (w4Var.b + w4Var.f1198d) / 2;
                            int i11 = i7 / 2;
                            int i12 = i8 / 2;
                            w4 w4VarB = AppPipFloaterService.b(new w4(i9 - i11, i10 - i12, i9 + i11, i10 + i12), y4Var);
                            x4 x4Var = appPipFloaterService3.f2121i;
                            if (x4Var != null) {
                                appPipFloaterService3.f2126n = true;
                                appPipFloaterService3.i();
                                new Thread(new RunnableC0168z(x4Var, w4VarB, appPipFloaterService3, 0)).start();
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService4 = this.b;
                        x4 x4Var2 = appPipFloaterService4.f2121i;
                        if (x4Var2 != null) {
                            appPipFloaterService4.f2126n = true;
                            appPipFloaterService4.i();
                            appPipFloaterService4.f2120h.removeCallbacks(appPipFloaterService4.f2132t);
                            new Thread(new RunnableC0132s(x4Var2, appPipFloaterService4, 1)).start();
                        }
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        LinearLayout linearLayout6 = this.f2117d;
        f.b(linearLayout6);
        linearLayout6.addView(linearLayout4);
        LinearLayout linearLayout7 = this.f2117d;
        f.b(linearLayout7);
        linearLayout7.addView(linearLayout5);
        LinearLayout linearLayout8 = this.b;
        f.b(linearLayout8);
        linearLayout8.addView(this.f2117d);
        LinearLayout linearLayout9 = new LinearLayout(this);
        linearLayout9.setOrientation(1);
        linearLayout9.setVisibility(8);
        linearLayout9.setBackground(f(-299884252, 14));
        linearLayout9.setPadding(c(8), c(8), c(8), c(8));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(c(240), -2);
        layoutParams4.topMargin = c(6);
        linearLayout9.setLayoutParams(layoutParams4);
        this.f2118e = linearLayout9;
        LinearLayout linearLayout10 = new LinearLayout(this);
        linearLayout10.setOrientation(0);
        linearLayout10.setGravity(16);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_open_in_pip));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(-10177034);
        linearLayout10.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextSize(16.0f);
        textView3.setTextColor(-3355444);
        textView3.setPadding(c(10), c(2), c(10), c(2));
        final int i7 = 1;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: T.x
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i8 = 0;
                switch (i7) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        if (appPipFloaterService.f2126n) {
                            String string3 = appPipFloaterService.getString(R.string.k_toast_wait_processing);
                            I0.f.d(string3, "getString(...)");
                            appPipFloaterService.h(string3);
                        } else if (appPipFloaterService.f2125m) {
                            LinearLayout linearLayout11 = appPipFloaterService.f2118e;
                            if (linearLayout11 != null) {
                                linearLayout11.setVisibility(8);
                            }
                            appPipFloaterService.f2125m = false;
                        } else if (appPipFloaterService.f2121i != null) {
                            String string4 = appPipFloaterService.getString(R.string.k_pip_active_hint);
                            I0.f.d(string4, "getString(...)");
                            appPipFloaterService.h(string4);
                        } else {
                            LinearLayout linearLayout12 = appPipFloaterService.f;
                            if (linearLayout12 != null) {
                                linearLayout12.removeAllViews();
                                List<v0.a> listG = z4.g(appPipFloaterService);
                                if (listG.isEmpty()) {
                                    TextView textView4 = new TextView(appPipFloaterService);
                                    textView4.setText(appPipFloaterService.getString(R.string.k_no_app_found));
                                    textView4.setTextColor(-3355444);
                                    textView4.setPadding(appPipFloaterService.c(6), appPipFloaterService.c(10), appPipFloaterService.c(6), appPipFloaterService.c(10));
                                    linearLayout12.addView(textView4);
                                } else {
                                    for (v0.a aVar : listG) {
                                        String str = (String) aVar.f4155a;
                                        String str2 = (String) aVar.b;
                                        TextView textView5 = new TextView(appPipFloaterService);
                                        textView5.setText(str);
                                        textView5.setTextSize(14.0f);
                                        textView5.setTextColor(-1);
                                        textView5.setPadding(appPipFloaterService.c(12), appPipFloaterService.c(12), appPipFloaterService.c(12), appPipFloaterService.c(12));
                                        textView5.setBackground(appPipFloaterService.f(-13618892, 10));
                                        textView5.setOnClickListener(new ViewOnClickListenerC0143u(appPipFloaterService, i8, str2));
                                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                                        layoutParams5.bottomMargin = appPipFloaterService.c(4);
                                        linearLayout12.addView(textView5, layoutParams5);
                                    }
                                }
                            }
                            LinearLayout linearLayout13 = appPipFloaterService.f2118e;
                            if (linearLayout13 != null) {
                                linearLayout13.setVisibility(0);
                            }
                            appPipFloaterService.f2125m = true;
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f2114u;
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        LinearLayout linearLayout14 = appPipFloaterService3.f2118e;
                        if (linearLayout14 != null) {
                            linearLayout14.setVisibility(8);
                        }
                        appPipFloaterService3.f2125m = false;
                        break;
                }
            }
        });
        linearLayout10.addView(textView3);
        LinearLayout linearLayout11 = this.f2118e;
        f.b(linearLayout11);
        linearLayout11.addView(linearLayout10);
        LinearLayout linearLayout12 = new LinearLayout(this);
        linearLayout12.setOrientation(1);
        this.f = linearLayout12;
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(this.f, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout13 = this.f2118e;
        f.b(linearLayout13);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, c(300));
        layoutParams5.topMargin = c(6);
        linearLayout13.addView(scrollView, layoutParams5);
        LinearLayout linearLayout14 = this.b;
        f.b(linearLayout14);
        linearLayout14.addView(this.f2118e);
        WindowManager.LayoutParams layoutParams6 = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams6.gravity = 8388627;
        layoutParams6.x = c(8);
        layoutParams6.y = c(90);
        this.f2119g = layoutParams6;
        try {
            WindowManager windowManager = this.f2115a;
            if (windowManager != null) {
                windowManager.addView(this.b, layoutParams6);
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
            h(string3);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2114u = null;
        this.f2120h.removeCallbacks(this.f2132t);
        this.f2120h.removeCallbacksAndMessages(null);
        try {
            WindowManager windowManager = this.f2115a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.removeView(this.b);
            super.onDestroy();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        String stringExtra = intent != null ? intent.getStringExtra("pacote") : null;
        if (stringExtra == null || j.E0(stringExtra)) {
            return 2;
        }
        this.f2120h.postDelayed(new r(this, stringExtra, 0), 900L);
        return 2;
    }
}
