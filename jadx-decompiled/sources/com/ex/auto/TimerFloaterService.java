package com.ex.auto;

import B.b;
import H0.a;
import I0.f;
import I0.j;
import I0.k;
import T.A;
import android.app.Service;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.R;
import com.ex.auto.TimerFloaterService;
import com.sun.mail.imap.IMAPStore;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class TimerFloaterService extends Service {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile boolean f2545o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2546a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f2547c;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f2550g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f2551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2552i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2553j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2554k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f2548d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2549e = "crono";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f2555l = 300000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2556m = 1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f2557n = new b(this, 11);

    public static final void g(final TimerFloaterService timerFloaterService, String str, final long j2) {
        LinearLayout linearLayout = timerFloaterService.f2551h;
        if (linearLayout != null) {
            final int i2 = 0;
            linearLayout.addView(timerFloaterService.c("−", timerFloaterService.e(6), new a(timerFloaterService) { // from class: T.K4
                public final /* synthetic */ TimerFloaterService b;

                {
                    this.b = timerFloaterService;
                }

                @Override // H0.a
                public final Object a() {
                    switch (i2) {
                        case 0:
                            boolean z2 = TimerFloaterService.f2545o;
                            long j3 = -j2;
                            TimerFloaterService timerFloaterService2 = this.b;
                            if (!timerFloaterService2.f2554k) {
                                long jP = A.b.p(timerFloaterService2.f2555l + j3, 0L, 86399000L);
                                timerFloaterService2.f2555l = jP;
                                timerFloaterService2.f2552i = jP;
                                timerFloaterService2.b();
                            }
                            break;
                        default:
                            boolean z3 = TimerFloaterService.f2545o;
                            TimerFloaterService timerFloaterService3 = this.b;
                            if (!timerFloaterService3.f2554k) {
                                long jP2 = A.b.p(timerFloaterService3.f2555l + j2, 0L, 86399000L);
                                timerFloaterService3.f2555l = jP2;
                                timerFloaterService3.f2552i = jP2;
                                timerFloaterService3.b();
                            }
                            break;
                    }
                    return v0.e.f4161c;
                }
            }));
        }
        LinearLayout linearLayout2 = timerFloaterService.f2551h;
        if (linearLayout2 != null) {
            TextView textView = new TextView(timerFloaterService);
            textView.setText(str);
            textView.setTextColor(-5195584);
            textView.setTextSize(timerFloaterService.f2556m * 16.0f);
            textView.setPadding(timerFloaterService.e(4), 0, timerFloaterService.e(4), 0);
            linearLayout2.addView(textView);
        }
        LinearLayout linearLayout3 = timerFloaterService.f2551h;
        if (linearLayout3 != null) {
            final int i3 = 1;
            linearLayout3.addView(timerFloaterService.c("+", timerFloaterService.e(6), new a(timerFloaterService) { // from class: T.K4
                public final /* synthetic */ TimerFloaterService b;

                {
                    this.b = timerFloaterService;
                }

                @Override // H0.a
                public final Object a() {
                    switch (i3) {
                        case 0:
                            boolean z2 = TimerFloaterService.f2545o;
                            long j3 = -j2;
                            TimerFloaterService timerFloaterService2 = this.b;
                            if (!timerFloaterService2.f2554k) {
                                long jP = A.b.p(timerFloaterService2.f2555l + j3, 0L, 86399000L);
                                timerFloaterService2.f2555l = jP;
                                timerFloaterService2.f2552i = jP;
                                timerFloaterService2.b();
                            }
                            break;
                        default:
                            boolean z3 = TimerFloaterService.f2545o;
                            TimerFloaterService timerFloaterService3 = this.b;
                            if (!timerFloaterService3.f2554k) {
                                long jP2 = A.b.p(timerFloaterService3.f2555l + j2, 0L, 86399000L);
                                timerFloaterService3.f2555l = jP2;
                                timerFloaterService3.f2552i = jP2;
                                timerFloaterService3.b();
                            }
                            break;
                    }
                    return v0.e.f4161c;
                }
            }));
        }
    }

    public final long a() {
        long jElapsedRealtime = this.f2554k ? SystemClock.elapsedRealtime() - this.f2553j : 0L;
        if (!f.a(this.f2549e, "regressiva")) {
            return this.f2552i + jElapsedRealtime;
        }
        long j2 = this.f2552i - jElapsedRealtime;
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    public final void b() {
        long jA = a();
        long j2 = IMAPStore.RESPONSE;
        long j3 = jA / j2;
        long j4 = 3600;
        long j5 = j3 / j4;
        long j6 = 60;
        long j7 = (j3 % j4) / j6;
        long j8 = j3 % j6;
        long j9 = (jA % j2) / ((long) 10);
        TextView textView = this.f;
        if (textView != null) {
            textView.setText(j5 > 0 ? String.format("%d:%02d:%02d.%02d", Arrays.copyOf(new Object[]{Long.valueOf(j5), Long.valueOf(j7), Long.valueOf(j8), Long.valueOf(j9)}, 4)) : String.format("%02d:%02d.%02d", Arrays.copyOf(new Object[]{Long.valueOf(j7), Long.valueOf(j8), Long.valueOf(j9)}, 3)));
        }
        if (f.a(this.f2549e, "regressiva") && this.f2554k && jA == 0) {
            this.f2554k = false;
            this.f2552i = 0L;
            Button button = this.f2550g;
            if (button != null) {
                button.setText(getString(R.string.k_timer_iniciar));
            }
            LinearLayout linearLayout = this.f2551h;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            TextView textView2 = this.f;
            if (textView2 != null) {
                textView2.setTextColor(-44462);
            }
            Toast.makeText(this, getString(R.string.k_timer_terminou), 1).show();
        }
    }

    public final Button c(String str, int i2, a aVar) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(this.f2556m * 18.0f);
        button.setAllCaps(false);
        button.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(e(12));
        gradientDrawable.setColor(-14736080);
        button.setBackground(gradientDrawable);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(i2, e(4), i2, e(4));
        button.setLayoutParams(layoutParams);
        button.setOnClickListener(new A(aVar, 6));
        return button;
    }

    public final void d() {
        LinearLayout linearLayout = this.b;
        if (linearLayout == null) {
            return;
        }
        try {
            WindowManager windowManager = this.f2546a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.removeView(linearLayout);
            this.b = null;
            this.f2547c = null;
            this.f = null;
            this.f2550g = null;
            this.f2551h = null;
        } catch (Throwable unused) {
        }
    }

    public final int e(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void f() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(e(18));
        gradientDrawable.setColor(-435022825);
        gradientDrawable.setStroke(e(1), 872415231);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setPadding(e(18), e(12), e(18), e(12));
        if (f.a(this.f2549e, "regressiva")) {
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            this.f2551h = linearLayout2;
            String string = getString(R.string.k_timer_h);
            f.d(string, "getString(...)");
            g(this, string, 3600000L);
            String string2 = getString(R.string.k_timer_m);
            f.d(string2, "getString(...)");
            g(this, string2, 60000L);
            String string3 = getString(R.string.k_timer_s);
            f.d(string3, "getString(...)");
            g(this, string3, 1000L);
            linearLayout.addView(this.f2551h);
        }
        TextView textView = new TextView(this);
        textView.setTextColor(-1);
        textView.setTextSize(this.f2556m * 64.0f);
        textView.setTypeface(Typeface.MONOSPACE);
        textView.setPadding(0, e(4), 0, e(4));
        textView.setGravity(17);
        this.f = textView;
        linearLayout.addView(textView);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(17);
        String string4 = getString(R.string.k_timer_iniciar);
        f.d(string4, "getString(...)");
        final int i2 = 0;
        Button buttonC = c(string4, e(10), new a(this) { // from class: T.I4
            public final /* synthetic */ TimerFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                LinearLayout linearLayout4;
                LinearLayout linearLayout5;
                switch (i2) {
                    case 0:
                        TimerFloaterService timerFloaterService = this.b;
                        if (!I0.f.a(timerFloaterService.f2549e, "regressiva") || timerFloaterService.f2554k || timerFloaterService.f2552i > 0) {
                            if (timerFloaterService.f2554k) {
                                timerFloaterService.f2552i = timerFloaterService.a();
                                timerFloaterService.f2554k = false;
                                Button button = timerFloaterService.f2550g;
                                if (button != null) {
                                    button.setText(timerFloaterService.getString(R.string.k_timer_iniciar));
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout5 = timerFloaterService.f2551h) != null) {
                                    linearLayout5.setVisibility(0);
                                }
                            } else {
                                timerFloaterService.f2553j = SystemClock.elapsedRealtime();
                                timerFloaterService.f2554k = true;
                                Button button2 = timerFloaterService.f2550g;
                                if (button2 != null) {
                                    button2.setText(timerFloaterService.getString(R.string.k_timer_pausar));
                                }
                                TextView textView2 = timerFloaterService.f;
                                if (textView2 != null) {
                                    textView2.setTextColor(-1);
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout4 = timerFloaterService.f2551h) != null) {
                                    linearLayout4.setVisibility(8);
                                }
                            }
                            timerFloaterService.b();
                        }
                        break;
                    case 1:
                        TimerFloaterService timerFloaterService2 = this.b;
                        timerFloaterService2.f2554k = false;
                        timerFloaterService2.f2552i = I0.f.a(timerFloaterService2.f2549e, "regressiva") ? timerFloaterService2.f2555l : 0L;
                        Button button3 = timerFloaterService2.f2550g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                        }
                        TextView textView3 = timerFloaterService2.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        LinearLayout linearLayout6 = timerFloaterService2.f2551h;
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        timerFloaterService2.b();
                        break;
                    case 2:
                        boolean z2 = TimerFloaterService.f2545o;
                        this.b.h(-0.15f);
                        break;
                    case 3:
                        boolean z3 = TimerFloaterService.f2545o;
                        this.b.h(0.15f);
                        break;
                    default:
                        boolean z4 = TimerFloaterService.f2545o;
                        this.b.stopSelf();
                        break;
                }
                return v0.e.f4161c;
            }
        });
        this.f2550g = buttonC;
        linearLayout3.addView(buttonC);
        String string5 = getString(R.string.k_timer_reiniciar);
        f.d(string5, "getString(...)");
        final int i3 = 1;
        linearLayout3.addView(c(string5, e(10), new a(this) { // from class: T.I4
            public final /* synthetic */ TimerFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                LinearLayout linearLayout4;
                LinearLayout linearLayout5;
                switch (i3) {
                    case 0:
                        TimerFloaterService timerFloaterService = this.b;
                        if (!I0.f.a(timerFloaterService.f2549e, "regressiva") || timerFloaterService.f2554k || timerFloaterService.f2552i > 0) {
                            if (timerFloaterService.f2554k) {
                                timerFloaterService.f2552i = timerFloaterService.a();
                                timerFloaterService.f2554k = false;
                                Button button = timerFloaterService.f2550g;
                                if (button != null) {
                                    button.setText(timerFloaterService.getString(R.string.k_timer_iniciar));
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout5 = timerFloaterService.f2551h) != null) {
                                    linearLayout5.setVisibility(0);
                                }
                            } else {
                                timerFloaterService.f2553j = SystemClock.elapsedRealtime();
                                timerFloaterService.f2554k = true;
                                Button button2 = timerFloaterService.f2550g;
                                if (button2 != null) {
                                    button2.setText(timerFloaterService.getString(R.string.k_timer_pausar));
                                }
                                TextView textView2 = timerFloaterService.f;
                                if (textView2 != null) {
                                    textView2.setTextColor(-1);
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout4 = timerFloaterService.f2551h) != null) {
                                    linearLayout4.setVisibility(8);
                                }
                            }
                            timerFloaterService.b();
                        }
                        break;
                    case 1:
                        TimerFloaterService timerFloaterService2 = this.b;
                        timerFloaterService2.f2554k = false;
                        timerFloaterService2.f2552i = I0.f.a(timerFloaterService2.f2549e, "regressiva") ? timerFloaterService2.f2555l : 0L;
                        Button button3 = timerFloaterService2.f2550g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                        }
                        TextView textView3 = timerFloaterService2.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        LinearLayout linearLayout6 = timerFloaterService2.f2551h;
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        timerFloaterService2.b();
                        break;
                    case 2:
                        boolean z2 = TimerFloaterService.f2545o;
                        this.b.h(-0.15f);
                        break;
                    case 3:
                        boolean z3 = TimerFloaterService.f2545o;
                        this.b.h(0.15f);
                        break;
                    default:
                        boolean z4 = TimerFloaterService.f2545o;
                        this.b.stopSelf();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        final int i4 = 2;
        linearLayout3.addView(c("A−", e(10), new a(this) { // from class: T.I4
            public final /* synthetic */ TimerFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                LinearLayout linearLayout4;
                LinearLayout linearLayout5;
                switch (i4) {
                    case 0:
                        TimerFloaterService timerFloaterService = this.b;
                        if (!I0.f.a(timerFloaterService.f2549e, "regressiva") || timerFloaterService.f2554k || timerFloaterService.f2552i > 0) {
                            if (timerFloaterService.f2554k) {
                                timerFloaterService.f2552i = timerFloaterService.a();
                                timerFloaterService.f2554k = false;
                                Button button = timerFloaterService.f2550g;
                                if (button != null) {
                                    button.setText(timerFloaterService.getString(R.string.k_timer_iniciar));
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout5 = timerFloaterService.f2551h) != null) {
                                    linearLayout5.setVisibility(0);
                                }
                            } else {
                                timerFloaterService.f2553j = SystemClock.elapsedRealtime();
                                timerFloaterService.f2554k = true;
                                Button button2 = timerFloaterService.f2550g;
                                if (button2 != null) {
                                    button2.setText(timerFloaterService.getString(R.string.k_timer_pausar));
                                }
                                TextView textView2 = timerFloaterService.f;
                                if (textView2 != null) {
                                    textView2.setTextColor(-1);
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout4 = timerFloaterService.f2551h) != null) {
                                    linearLayout4.setVisibility(8);
                                }
                            }
                            timerFloaterService.b();
                        }
                        break;
                    case 1:
                        TimerFloaterService timerFloaterService2 = this.b;
                        timerFloaterService2.f2554k = false;
                        timerFloaterService2.f2552i = I0.f.a(timerFloaterService2.f2549e, "regressiva") ? timerFloaterService2.f2555l : 0L;
                        Button button3 = timerFloaterService2.f2550g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                        }
                        TextView textView3 = timerFloaterService2.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        LinearLayout linearLayout6 = timerFloaterService2.f2551h;
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        timerFloaterService2.b();
                        break;
                    case 2:
                        boolean z2 = TimerFloaterService.f2545o;
                        this.b.h(-0.15f);
                        break;
                    case 3:
                        boolean z3 = TimerFloaterService.f2545o;
                        this.b.h(0.15f);
                        break;
                    default:
                        boolean z4 = TimerFloaterService.f2545o;
                        this.b.stopSelf();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        final int i5 = 3;
        linearLayout3.addView(c("A+", e(10), new a(this) { // from class: T.I4
            public final /* synthetic */ TimerFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                LinearLayout linearLayout4;
                LinearLayout linearLayout5;
                switch (i5) {
                    case 0:
                        TimerFloaterService timerFloaterService = this.b;
                        if (!I0.f.a(timerFloaterService.f2549e, "regressiva") || timerFloaterService.f2554k || timerFloaterService.f2552i > 0) {
                            if (timerFloaterService.f2554k) {
                                timerFloaterService.f2552i = timerFloaterService.a();
                                timerFloaterService.f2554k = false;
                                Button button = timerFloaterService.f2550g;
                                if (button != null) {
                                    button.setText(timerFloaterService.getString(R.string.k_timer_iniciar));
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout5 = timerFloaterService.f2551h) != null) {
                                    linearLayout5.setVisibility(0);
                                }
                            } else {
                                timerFloaterService.f2553j = SystemClock.elapsedRealtime();
                                timerFloaterService.f2554k = true;
                                Button button2 = timerFloaterService.f2550g;
                                if (button2 != null) {
                                    button2.setText(timerFloaterService.getString(R.string.k_timer_pausar));
                                }
                                TextView textView2 = timerFloaterService.f;
                                if (textView2 != null) {
                                    textView2.setTextColor(-1);
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout4 = timerFloaterService.f2551h) != null) {
                                    linearLayout4.setVisibility(8);
                                }
                            }
                            timerFloaterService.b();
                        }
                        break;
                    case 1:
                        TimerFloaterService timerFloaterService2 = this.b;
                        timerFloaterService2.f2554k = false;
                        timerFloaterService2.f2552i = I0.f.a(timerFloaterService2.f2549e, "regressiva") ? timerFloaterService2.f2555l : 0L;
                        Button button3 = timerFloaterService2.f2550g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                        }
                        TextView textView3 = timerFloaterService2.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        LinearLayout linearLayout6 = timerFloaterService2.f2551h;
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        timerFloaterService2.b();
                        break;
                    case 2:
                        boolean z2 = TimerFloaterService.f2545o;
                        this.b.h(-0.15f);
                        break;
                    case 3:
                        boolean z3 = TimerFloaterService.f2545o;
                        this.b.h(0.15f);
                        break;
                    default:
                        boolean z4 = TimerFloaterService.f2545o;
                        this.b.stopSelf();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        final int i6 = 4;
        linearLayout3.addView(c("✕", e(10), new a(this) { // from class: T.I4
            public final /* synthetic */ TimerFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.a
            public final Object a() {
                LinearLayout linearLayout4;
                LinearLayout linearLayout5;
                switch (i6) {
                    case 0:
                        TimerFloaterService timerFloaterService = this.b;
                        if (!I0.f.a(timerFloaterService.f2549e, "regressiva") || timerFloaterService.f2554k || timerFloaterService.f2552i > 0) {
                            if (timerFloaterService.f2554k) {
                                timerFloaterService.f2552i = timerFloaterService.a();
                                timerFloaterService.f2554k = false;
                                Button button = timerFloaterService.f2550g;
                                if (button != null) {
                                    button.setText(timerFloaterService.getString(R.string.k_timer_iniciar));
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout5 = timerFloaterService.f2551h) != null) {
                                    linearLayout5.setVisibility(0);
                                }
                            } else {
                                timerFloaterService.f2553j = SystemClock.elapsedRealtime();
                                timerFloaterService.f2554k = true;
                                Button button2 = timerFloaterService.f2550g;
                                if (button2 != null) {
                                    button2.setText(timerFloaterService.getString(R.string.k_timer_pausar));
                                }
                                TextView textView2 = timerFloaterService.f;
                                if (textView2 != null) {
                                    textView2.setTextColor(-1);
                                }
                                if (I0.f.a(timerFloaterService.f2549e, "regressiva") && (linearLayout4 = timerFloaterService.f2551h) != null) {
                                    linearLayout4.setVisibility(8);
                                }
                            }
                            timerFloaterService.b();
                        }
                        break;
                    case 1:
                        TimerFloaterService timerFloaterService2 = this.b;
                        timerFloaterService2.f2554k = false;
                        timerFloaterService2.f2552i = I0.f.a(timerFloaterService2.f2549e, "regressiva") ? timerFloaterService2.f2555l : 0L;
                        Button button3 = timerFloaterService2.f2550g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                        }
                        TextView textView3 = timerFloaterService2.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        LinearLayout linearLayout6 = timerFloaterService2.f2551h;
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        timerFloaterService2.b();
                        break;
                    case 2:
                        boolean z2 = TimerFloaterService.f2545o;
                        this.b.h(-0.15f);
                        break;
                    case 3:
                        boolean z3 = TimerFloaterService.f2545o;
                        this.b.h(0.15f);
                        break;
                    default:
                        boolean z4 = TimerFloaterService.f2545o;
                        this.b.stopSelf();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        linearLayout.addView(linearLayout3);
        final k kVar = new k();
        final k kVar2 = new k();
        final j jVar = new j();
        final j jVar2 = new j();
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setOnTouchListener(new View.OnTouchListener() { // from class: T.J4
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    TimerFloaterService timerFloaterService = this.f640a;
                    WindowManager.LayoutParams layoutParams = timerFloaterService.f2547c;
                    if (layoutParams == null) {
                        return false;
                    }
                    int action = motionEvent.getAction();
                    I0.k kVar3 = kVar;
                    I0.k kVar4 = kVar2;
                    I0.j jVar3 = jVar;
                    I0.j jVar4 = jVar2;
                    if (action == 0) {
                        kVar3.f124a = layoutParams.x;
                        kVar4.f124a = layoutParams.y;
                        jVar3.f123a = motionEvent.getRawX();
                        jVar4.f123a = motionEvent.getRawY();
                    } else {
                        if (action != 2) {
                            return false;
                        }
                        layoutParams.x = kVar3.f124a + ((int) (motionEvent.getRawX() - jVar3.f123a));
                        layoutParams.y = kVar4.f124a + ((int) (motionEvent.getRawY() - jVar4.f123a));
                        try {
                            WindowManager windowManager = timerFloaterService.f2546a;
                            if (windowManager == null) {
                                I0.f.h("wm");
                                throw null;
                            }
                            windowManager.updateViewLayout(timerFloaterService.b, layoutParams);
                        } catch (Throwable unused) {
                        }
                    }
                    return true;
                }
            });
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = 17;
        this.b = linearLayout;
        this.f2547c = layoutParams;
        try {
            WindowManager windowManager = this.f2546a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.addView(linearLayout, layoutParams);
            b();
            this.f2548d.post(this.f2557n);
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            Toast.makeText(this, getString(R.string.k_overlay_failure, message), 1).show();
            stopSelf();
        }
    }

    public final void h(float f) {
        LinearLayout linearLayout;
        this.f2556m = A.b.n(this.f2556m + f, 0.6f, 3.0f);
        getSharedPreferences("timer_floater", 0).edit().putFloat("escala", this.f2556m).apply();
        boolean z2 = this.f2554k;
        long j2 = this.f2552i;
        long j3 = this.f2553j;
        d();
        f();
        this.f2552i = j2;
        this.f2553j = j3;
        this.f2554k = z2;
        Button button = this.f2550g;
        if (button != null) {
            button.setText(getString(z2 ? R.string.k_timer_pausar : R.string.k_timer_iniciar));
        }
        if (f.a(this.f2549e, "regressiva") && this.f2554k && (linearLayout = this.f2551h) != null) {
            linearLayout.setVisibility(8);
        }
        b();
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
        this.f2546a = (WindowManager) systemService;
        this.f2556m = getSharedPreferences("timer_floater", 0).getFloat("escala", 1.0f);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f2548d.removeCallbacksAndMessages(null);
        d();
        f2545o = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        String stringExtra;
        if (intent == null || (stringExtra = intent.getStringExtra("modo")) == null) {
            stringExtra = "crono";
        }
        if (this.b != null && stringExtra.equals(this.f2549e)) {
            return 2;
        }
        if (this.b != null) {
            d();
        }
        this.f2549e = stringExtra;
        this.f2552i = stringExtra.equals("regressiva") ? this.f2555l : 0L;
        this.f2554k = false;
        f();
        f2545o = true;
        return 2;
    }
}
