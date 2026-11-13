package com.ex.auto;

import B.b;
import C.a;
import I0.f;
import I0.l;
import M.d0;
import O0.s;
import T.A;
import T.B0;
import T.C;
import T.C0090k4;
import T.C0097m;
import T.C0134s1;
import T.C2;
import T.D;
import T.DialogInterfaceOnClickListenerC0055f;
import T.I1;
import T.N4;
import T.RunnableC0047d3;
import T.RunnableC0060f4;
import T.RunnableC0132s;
import T.RunnableC0137s4;
import T.RunnableC0139t0;
import T.RunnableC0159x0;
import T.RunnableC0168z;
import T.RunnableC0169z0;
import T.S4;
import T.U;
import T.U3;
import T.V3;
import T.ViewOnClickListenerC0042c4;
import T.ViewOnClickListenerC0143u;
import T.ViewOnClickListenerC0150v1;
import T.ViewOnLongClickListenerC0065g3;
import T.ViewOnTouchListenerC0138t;
import T.X3;
import T.Y;
import T.Y3;
import T.Z3;
import T.x4;
import android.app.AlertDialog;
import android.app.Service;
import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.QuickAccessFloaterService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import p007e.AbstractC0201a;
import v0.c;
import v0.d;
import w0.i;
import w0.j;
import w0.k;

/* JADX INFO: loaded from: classes.dex */
public final class QuickAccessFloaterService extends Service {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static volatile QuickAccessFloaterService f2438l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static volatile boolean f2439m0;
    public static volatile boolean n0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f2448A;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public float f2453F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f2454G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f2455H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile Car f2457J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile CarPropertyManager f2458K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public volatile boolean f2459L;
    public long P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public a f2463Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public C0090k4 f2464R;
    public LinearLayout S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public TextView f2465T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final b f2466U;
    public final Y3 V;
    public WindowManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f2474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public N4 f2476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f2478e;
    public TextView f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Integer f2480f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f2481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f2483h;
    public Integer h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f2484i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Float f2485i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f2486j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f2487k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f2488l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f2489m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f2490n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f2491o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f2492p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f2493q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TextView f2494r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f2495s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f2496t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f2497u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f2498v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f2499w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TextView f2500x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public TextView f2501y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2502z;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final List f2436j0 = j.T("wifi", "drive_regen", "aa_activate", "aa_reset", "avas", "screen_off", "aeb", "telemetry", "split_screen", "app_pip", "power_off", "close_apps", "screen_rest", "recirc_guard", "karaoke", "fullscreen", "cronometro", "regressiva");

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final Set f2437k0 = AbstractC0201a.P("telemetry", "power_off");

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final int f2440o0 = Color.parseColor("#F20B131E");

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int f2441p0 = Color.parseColor("#0F1722");

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final int f2442q0 = Color.parseColor("#0B1521");

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final int f2443r0 = Color.parseColor("#1C68EF");

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final int f2444s0 = Color.parseColor("#2E7DFF");

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final int f2445t0 = Color.parseColor("#1FBF75");
    public static final int u0 = Color.parseColor("#E85D5D");

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final int f2446v0 = Color.parseColor("#EAF2F8");

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final int f2447w0 = Color.parseColor("#7E8CA0");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2471a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final c f2449B = new c(new Y3(this, 3));

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final c f2450C = new c(new Y3(this, 7));

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final c f2451D = new c(new Y3(this, 8));

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final c f2452E = new c(new Y3(this, 9));

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final X3 f2456I = new X3(this, 10);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f2460M = 166;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f2461N = 1;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f2462O = 1;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final C0090k4 f2467W = new C0090k4(this, 1);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final C0090k4 f2468X = new C0090k4(this, 7);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final C0090k4 f2469Y = new C0090k4(this, 0);

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final C0090k4 f2470Z = new C0090k4(this, 6);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final C0090k4 f2472a0 = new C0090k4(this, 4);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final C0090k4 f2473b0 = new C0090k4(this, 2);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final C0090k4 f2475c0 = new C0090k4(this, 3);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final C0090k4 f2477d0 = new C0090k4(this, 8);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final C0090k4 f2479e0 = new C0090k4(this, 9);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int[] f2482g0 = {1, 49, 5, 0};

    public QuickAccessFloaterService() {
        int i2 = 10;
        this.f2466U = new b(this, i2);
        this.V = new Y3(this, i2);
    }

    public static String G(int i2, String str) {
        try {
            return new I1(5555).b(i2, str);
        } catch (Exception e2) {
            return "ADB_FAIL: " + e2.getMessage();
        }
    }

    public static String P(String str) {
        return "'" + s.v0(str, "'", "'\\''") + '\'';
    }

    public static void n(AlertDialog alertDialog) {
        Button button = alertDialog.getButton(-2);
        int i2 = f2443r0;
        if (button != null) {
            button.setTextColor(i2);
        }
        Button button2 = alertDialog.getButton(-1);
        if (button2 != null) {
            button2.setTextColor(i2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:74:0x0108  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final TextView A(String str) {
        String string;
        TextView textView = new TextView(this);
        float fX = x();
        switch (str.hashCode()) {
            case -2062114727:
                if (!str.equals("close_apps")) {
                    string = "?";
                } else {
                    string = getString(R.string.k_qa_close_apps_chip);
                    f.d(string, "getString(...)");
                }
                break;
            case -1658020302:
                if (!str.equals("aa_activate")) {
                    string = "?";
                } else {
                    string = "▶ AA";
                }
                break;
            case -936045084:
                if (!str.equals("karaoke")) {
                    string = "?";
                } else {
                    string = "🎤";
                }
                break;
            case -793615751:
                if (!str.equals("app_pip")) {
                    string = "?";
                } else {
                    string = "▢";
                }
                break;
            case -753149968:
                if (!str.equals("recirc_guard")) {
                    string = "?";
                } else {
                    string = "🌀";
                }
                break;
            case -417036516:
                if (!str.equals("screen_off")) {
                    string = "?";
                } else {
                    string = getString(R.string.k_qa_screen_chip);
                    f.d(string, "getString(...)");
                }
                break;
            case -179908303:
                if (!str.equals("split_screen")) {
                    string = "?";
                } else {
                    string = "◫";
                }
                break;
            case -43141177:
                if (!str.equals("screen_rest")) {
                    string = "?";
                } else {
                    string = "🕐";
                }
                break;
            case 96446:
                if (!str.equals("aeb")) {
                    string = "?";
                } else {
                    string = "AEB";
                }
                break;
            case 3006247:
                if (!str.equals("avas")) {
                    string = "?";
                } else if (!r().getBoolean("avas_muted_saved", false)) {
                    string = "AVAS\n✓";
                } else {
                    string = "AVAS\n✗";
                }
                break;
            case 3649301:
                if (!str.equals("wifi")) {
                    string = "?";
                } else {
                    string = "WiFi";
                }
                break;
            case 110066619:
                if (!str.equals("fullscreen")) {
                    string = "?";
                } else {
                    string = "⛶";
                }
                break;
            case 134853144:
                if (!str.equals("cronometro")) {
                    string = "?";
                } else {
                    string = "⏱";
                }
                break;
            case 270595184:
                if (!str.equals("aa_reset")) {
                    string = "?";
                } else {
                    string = "↺ AA";
                }
                break;
            case 780346297:
                if (!str.equals("telemetry")) {
                    string = "?";
                } else {
                    string = "📡";
                }
                break;
            case 845503285:
                if (!str.equals("power_off")) {
                    string = "?";
                } else {
                    string = "OFF";
                }
                break;
            case 1421312269:
                if (!str.equals("regressiva")) {
                    string = "?";
                } else {
                    string = "⏳";
                }
                break;
            default:
                string = "?";
                break;
        }
        textView.setText(string);
        f(textView, fX);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setGravity(17);
        textView.setTextColor(f2446v0);
        int i2 = (int) (16 * fX);
        if (i2 < 4) {
            i2 = 4;
        }
        textView.setBackground(K(f2442q0, i2, Integer.valueOf(f2441p0), 1));
        textView.setOnClickListener(new ViewOnClickListenerC0150v1(this, str, textView, 3));
        return textView;
    }

    public final TextView B(int i2, String str) {
        TextView textView = new TextView(this);
        String upperCase = str.toUpperCase(Locale.ROOT);
        f.d(upperCase, "toUpperCase(...)");
        textView.setText(upperCase);
        textView.setTextSize(x() * 10.0f);
        textView.setTextColor(i2);
        textView.setLetterSpacing(0.08f);
        textView.setTypeface(textView.getTypeface(), 1);
        return textView;
    }

    public final TextView C(String str, int i2, H0.a aVar) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(x() * 12.0f);
        textView.setGravity(17);
        textView.setTag(Integer.valueOf(i2));
        textView.setTextColor(f2446v0);
        int iX = (int) (x() * 12);
        if (iX < 4) {
            iX = 4;
        }
        textView.setBackground(K(i2, iX, null, 0));
        textView.setOnClickListener(new ViewOnClickListenerC0143u(aVar, 4, this));
        return textView;
    }

    public final void D(String str, ArrayList arrayList) {
        int i2;
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            l lVar = new l(0);
            ArrayList<LinearLayout> arrayList2 = new ArrayList(k.V(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                String str2 = (String) dVar.f4159a;
                List<Drawable> list = (List) dVar.b;
                H0.a aVar = (H0.a) dVar.f4160c;
                LinearLayout linearLayout = new LinearLayout(this);
                linearLayout.setOrientation(0);
                linearLayout.setGravity(16);
                linearLayout.setClickable(true);
                linearLayout.setFocusable(true);
                linearLayout.setBackgroundResource(R.drawable.bg_preset_chip);
                linearLayout.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface_alt)));
                linearLayout.setPadding(p(16), p(12), p(16), p(12));
                linearLayout.setOnClickListener(new ViewOnClickListenerC0150v1(lVar, this, aVar, 4));
                for (Drawable drawable : list) {
                    ImageView imageView = new ImageView(this);
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    } else {
                        imageView.setImageResource(android.R.drawable.sym_def_app_icon);
                    }
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p(56), p(56));
                    layoutParams.setMarginEnd(p(12));
                    linearLayout.addView(imageView, layoutParams);
                }
                TextView textView = new TextView(this);
                textView.setText(str2);
                textView.setTextSize(19.0f);
                textView.setTextColor(f2446v0);
                textView.setMaxLines(1);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
                arrayList2.add(linearLayout);
            }
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            linearLayout2.setPadding(p(20), p(12), p(20), p(12));
            for (LinearLayout linearLayout3 : arrayList2) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(p(460), -2);
                layoutParams2.topMargin = p(10);
                linearLayout2.addView(linearLayout3, layoutParams2);
            }
            AlertDialog.Builder customTitle = new AlertDialog.Builder(this).setCustomTitle(o(str));
            ScrollView scrollView = new ScrollView(this);
            scrollView.addView(linearLayout2);
            AlertDialog alertDialogCreate = customTitle.setView(scrollView).setNegativeButton(getString(R.string.common_cancel), (DialogInterface.OnClickListener) null).create();
            lVar.b = alertDialogCreate;
            if (alertDialogCreate == null) {
                f.h("dlg");
                throw null;
            }
            Window window = alertDialogCreate.getWindow();
            if (window != null) {
                window.setType(2038);
            }
            Object obj = lVar.b;
            if (obj == null) {
                f.h("dlg");
                throw null;
            }
            Window window2 = ((AlertDialog) obj).getWindow();
            if (window2 != null) {
                window2.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
            }
            Object obj2 = lVar.b;
            if (obj2 == null) {
                f.h("dlg");
                throw null;
            }
            Window window3 = ((AlertDialog) obj2).getWindow();
            if (window3 != null) {
                int i3 = getResources().getDisplayMetrics().heightPixels;
                try {
                    WindowManager.LayoutParams layoutParams3 = this.f2474c;
                    i2 = layoutParams3 != null ? layoutParams3.y : 0;
                } catch (Throwable unused) {
                }
                WindowManager.LayoutParams attributes = window3.getAttributes();
                attributes.gravity = i2 < i3 / 2 ? 48 : 80;
                attributes.y = p(80);
                window3.setAttributes(attributes);
            }
            Object obj3 = lVar.b;
            if (obj3 == null) {
                f.h("dlg");
                throw null;
            }
            ((AlertDialog) obj3).show();
            Object obj4 = lVar.b;
            if (obj4 == null) {
                f.h("dlg");
                throw null;
            }
            n((AlertDialog) obj4);
        } catch (Exception e2) {
            Log.w("QuickAccessFloater", "menu de atalhos: " + e2.getMessage());
            Toast.makeText(this, getString(R.string.k_atalhos_menu_falhou), 0).show();
        }
    }

    public final LinearLayout.LayoutParams E() {
        float fX = x();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p((int) (76 * fX)), p((int) (46 * fX)));
        layoutParams.setMargins(p(3), p(2), p(3), p(2));
        return layoutParams;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final void F(final TextView textView, String str) {
        Integer num;
        int i2 = 5;
        int i3 = 4;
        final int i4 = 0;
        final int i5 = 1;
        switch (str.hashCode()) {
            case -2062114727:
                if (str.equals("close_apps")) {
                    M(800L);
                    new Thread(new X3(this, 9)).start();
                    break;
                }
                break;
            case -1658020302:
                if (str.equals("aa_activate")) {
                    M(3000L);
                    if (textView != null) {
                        String string = textView.getText().toString();
                        this.f2471a.post(new Runnable() { // from class: T.e4
                            @Override // java.lang.Runnable
                            public final void run() {
                                TextView textView2 = textView;
                                switch (i4) {
                                    case 0:
                                        List list = QuickAccessFloaterService.f2436j0;
                                        textView2.setText("...");
                                        break;
                                    default:
                                        List list2 = QuickAccessFloaterService.f2436j0;
                                        textView2.setText("...");
                                        break;
                                }
                            }
                        });
                        new Thread(new RunnableC0047d3(this, P("/data/local/tmp/fixes/ca_fix.apk"), P("/system/app/ConnAdaptor/ConnAdaptor.apk"), P(" /system/app/ConnAdaptor/ConnAdaptor.apk "), textView, string)).start();
                    }
                    break;
                }
                break;
            case -936045084:
                if (str.equals("karaoke")) {
                    M(3000L);
                    boolean z2 = r().getBoolean("lyrics_floater_enabled", false);
                    r().edit().putBoolean("lyrics_floater_enabled", !z2).apply();
                    Intent intent = new Intent(this, (Class<?>) LyricsFloaterService.class);
                    if (z2) {
                        stopService(intent);
                    } else {
                        startForegroundService(intent);
                    }
                    H();
                    break;
                }
                break;
            case -793615751:
                if (str.equals("app_pip")) {
                    ArrayList arrayListR = C0097m.r(this);
                    ArrayList<C> arrayList = new ArrayList();
                    for (Object obj : arrayListR) {
                        C c2 = (C) obj;
                        if (c2.f523c && !O0.j.E0(c2.b)) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty() || AppPipFloaterService.f2114u != null) {
                        M(800L);
                        if ((AppPipFloaterService.f2114u != null) == true) {
                            AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                            if (appPipFloaterService == null) {
                                stopService(new Intent(this, (Class<?>) AppPipFloaterService.class));
                            } else {
                                x4 x4Var = appPipFloaterService.f2121i;
                                if (x4Var == null) {
                                    appPipFloaterService.stopSelf();
                                } else {
                                    appPipFloaterService.f2126n = true;
                                    appPipFloaterService.i();
                                    appPipFloaterService.f2120h.removeCallbacks(appPipFloaterService.f2132t);
                                    new Thread(new RunnableC0132s(x4Var, appPipFloaterService, i4)).start();
                                }
                            }
                        } else {
                            startForegroundService(new Intent(this, (Class<?>) AppPipFloaterService.class));
                            j();
                        }
                        TextView textView2 = this.f2501y;
                        if (textView2 != null) {
                            if (AppPipFloaterService.f2114u != null) {
                                k(textView2, f2444s0);
                            } else {
                                l(textView2);
                            }
                            textView2.setTextColor(f2446v0);
                        }
                    } else {
                        String strO = Y.O(this, "app_pip");
                        ArrayList arrayList2 = new ArrayList(k.V(arrayList));
                        for (C c3 : arrayList) {
                            String string2 = c3.b;
                            if (O0.j.E0(string2)) {
                                string2 = "";
                            } else {
                                try {
                                    PackageManager packageManager = getPackageManager();
                                    string2 = packageManager.getApplicationLabel(packageManager.getApplicationInfo(string2, 0)).toString();
                                } catch (Throwable unused) {
                                }
                            }
                            arrayList2.add(new d(string2, AbstractC0201a.G(y(c3.b)), new B0(this, c3, i2)));
                        }
                        D(strO, arrayList2);
                    }
                    break;
                }
                break;
            case -753149968:
                if (str.equals("recirc_guard")) {
                    M(3000L);
                    r().edit().putBoolean("recirc_guard_enabled", !r().getBoolean("recirc_guard_enabled", false)).apply();
                    int[] iArr = CentralWatchdogService.d2;
                    CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 11));
                    }
                    TextView textView3 = this.f2499w;
                    if (textView3 != null) {
                        W(textView3);
                    }
                    break;
                }
                break;
            case -417036516:
                if (str.equals("screen_off")) {
                    m();
                    if (r().getBoolean("screen_off_warning_seen", false)) {
                        this.f2471a.postDelayed(new X3(this, i3), 300L);
                    } else {
                        this.f2471a.postDelayed(new X3(this, i2), 300L);
                    }
                    break;
                }
                break;
            case -179908303:
                if (str.equals("split_screen")) {
                    ArrayList arrayListS = C0097m.s(this);
                    ArrayList<D> arrayList3 = new ArrayList();
                    for (Object obj2 : arrayListS) {
                        D d2 = (D) obj2;
                        if (d2.f537d && !O0.j.E0(d2.b) && !O0.j.E0(d2.f536c)) {
                            arrayList3.add(obj2);
                        }
                    }
                    if (arrayList3.isEmpty() || SplitFloaterService.f2504v != null) {
                        M(800L);
                        if ((SplitFloaterService.f2504v != null ? 1 : 0) != 0) {
                            SplitFloaterService splitFloaterService = SplitFloaterService.f2504v;
                            if (splitFloaterService == null) {
                                stopService(new Intent(this, (Class<?>) SplitFloaterService.class));
                            } else {
                                x4 x4Var2 = splitFloaterService.f2512j;
                                x4 x4Var3 = splitFloaterService.f2513k;
                                if (x4Var2 == null && x4Var3 == null) {
                                    splitFloaterService.stopSelf();
                                } else {
                                    splitFloaterService.f2517o = true;
                                    splitFloaterService.h();
                                    new Thread(new RunnableC0137s4(x4Var3, splitFloaterService, x4Var2, i5)).start();
                                }
                            }
                        } else {
                            startForegroundService(new Intent(this, (Class<?>) SplitFloaterService.class));
                            j();
                        }
                        TextView textView4 = this.f2500x;
                        if (textView4 != null) {
                            if (SplitFloaterService.f2504v != null) {
                                k(textView4, f2444s0);
                            } else {
                                l(textView4);
                            }
                            textView4.setTextColor(f2446v0);
                        }
                    } else {
                        String strO2 = Y.O(this, "split_screen");
                        ArrayList arrayList4 = new ArrayList(k.V(arrayList3));
                        for (D d3 : arrayList3) {
                            arrayList4.add(new d(C0097m.u(this, d3.b) + "  |  " + C0097m.u(this, d3.f536c), j.T(y(d3.b), y(d3.f536c)), new B0(this, d3, i3)));
                        }
                        D(strO2, arrayList4);
                    }
                    break;
                }
                break;
            case -43141177:
                if (str.equals("screen_rest")) {
                    M(800L);
                    S(true);
                    break;
                }
                break;
            case 96446:
                if (str.equals("aeb")) {
                    M(3000L);
                    Boolean bool = this.f2497u;
                    boolean z3 = !(bool != null ? bool.booleanValue() : false);
                    TextView textView5 = this.f2496t;
                    if (textView5 != null) {
                        textView5.setText("...");
                    }
                    r().edit().putBoolean("aeb_desired", z3).apply();
                    new Thread(new RunnableC0060f4(this, z3, i5)).start();
                    break;
                }
                break;
            case 3006247:
                if (str.equals("avas")) {
                    M(3000L);
                    boolean z4 = !r().getBoolean("avas_muted_saved", false);
                    r().edit().putBoolean("avas_muted_saved", z4).apply();
                    TextView textView6 = this.f2495s;
                    if (textView6 != null) {
                        V(textView6);
                    }
                    new Thread(new RunnableC0060f4(this, z4, i4)).start();
                    break;
                }
                break;
            case 3649301:
                if (str.equals("wifi")) {
                    M(800L);
                    boolean zIsWifiEnabled = u().isWifiEnabled();
                    u().setWifiEnabled(!zIsWifiEnabled);
                    if (!zIsWifiEnabled) {
                        this.f2471a.postDelayed(new X3(this, 3), 2000L);
                    }
                    break;
                }
                break;
            case 110066619:
                if (str.equals("fullscreen")) {
                    M(600L);
                    new Thread(new X3(this, 7)).start();
                    break;
                }
                break;
            case 134853144:
                if (str.equals("cronometro")) {
                    M(600L);
                    a("crono");
                    break;
                }
                break;
            case 270595184:
                if (str.equals("aa_reset")) {
                    M(3000L);
                    if (textView != null) {
                        String string3 = textView.getText().toString();
                        this.f2471a.post(new Runnable() { // from class: T.e4
                            @Override // java.lang.Runnable
                            public final void run() {
                                TextView textView7 = textView;
                                switch (i5) {
                                    case 0:
                                        List list = QuickAccessFloaterService.f2436j0;
                                        textView7.setText("...");
                                        break;
                                    default:
                                        List list2 = QuickAccessFloaterService.f2436j0;
                                        textView7.setText("...");
                                        break;
                                }
                            }
                        });
                        new Thread(new RunnableC0168z(this, textView, string3, 16)).start();
                    }
                    break;
                }
                break;
            case 726539592:
                if (str.equals("drive_regen")) {
                    boolean z5 = this.f2448A;
                    this.f2448A = !z5;
                    if (z5) {
                        LinearLayout linearLayout = this.f2484i;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(8);
                        }
                        M(3000L);
                    } else {
                        I();
                        LinearLayout linearLayout2 = this.f2484i;
                        if (linearLayout2 != null) {
                            linearLayout2.setVisibility(0);
                        }
                        M(10000L);
                    }
                    break;
                }
                break;
            case 780346297:
                if (str.equals("telemetry")) {
                    M(3000L);
                    boolean z6 = !r().getBoolean("telemetry_on", false);
                    r().edit().putBoolean("telemetry_on", z6).apply();
                    VhalProviderService.b(this, z6);
                    TextView textView7 = this.f2498v;
                    if (textView7 != null) {
                        X(textView7);
                    }
                    break;
                }
                break;
            case 845503285:
                if (str.equals("power_off")) {
                    M(800L);
                    CarPropertyManager carPropertyManager = this.f2458K;
                    if (carPropertyManager == null) {
                        z();
                        Toast.makeText(this, getString(R.string.k_carservice_unavailable), 0).show();
                    } else {
                        int[] iArr2 = {289408000, 289408001};
                        int i6 = 0;
                        while (true) {
                            if (i6 < 2) {
                                try {
                                    CarPropertyValue carPropertyValueD = U.d(carPropertyManager, iArr2[i6], 0);
                                    if (carPropertyValueD != null && carPropertyValueD.getStatus() == 0) {
                                        Object value = carPropertyValueD.getValue();
                                        num = value instanceof Integer ? (Integer) value : null;
                                        if (num == null || num.intValue() == 0) {
                                        }
                                    }
                                } catch (Throwable unused2) {
                                }
                                i6++;
                            } else {
                                num = null;
                            }
                        }
                        if (num == null) {
                            Toast.makeText(this, getString(R.string.k_carservice_unavailable), 0).show();
                        } else if (num.intValue() != 4) {
                            Toast.makeText(this, getString(R.string.k_power_off_needs_park), 1).show();
                        } else {
                            AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle(getString(R.string.k_power_off_title)).setMessage(getString(R.string.k_power_off_message)).setPositiveButton(getString(R.string.k_power_off_confirm), new DialogInterfaceOnClickListenerC0055f(this, i3, carPropertyManager)).setNegativeButton(getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                            Window window = alertDialogCreate.getWindow();
                            if (window != null) {
                                window.setType(2038);
                            }
                            try {
                                alertDialogCreate.show();
                            } catch (Exception e2) {
                                d0.n(e2, new StringBuilder("confirmPowerOffVehicle: "), "QuickAccessFloater");
                                return;
                            }
                        }
                    }
                    break;
                }
                break;
            case 1421312269:
                if (str.equals("regressiva")) {
                    M(600L);
                    a("regressiva");
                    break;
                }
                break;
        }
    }

    public final void H() {
        this.f2471a.post(new X3(this, 0));
    }

    public final void I() {
        this.f2471a.post(new RunnableC0159x0(this, s().getInt("saved_drive", 570491138), s().getInt("saved_regen", 537003266), 1));
        J();
    }

    public final void J() {
        final int i2;
        String string;
        final int i3;
        String string2;
        int i4 = s().getInt("saved_drive", 570491138);
        int i5 = s().getInt("saved_regen", 537003266);
        int i6 = f2445t0;
        int i7 = u0;
        int i8 = f2444s0;
        if (i4 != 570491137) {
            i2 = i4 != 570491139 ? i8 : i7;
        } else {
            i2 = i6;
        }
        if (i4 != 570491137) {
            string = i4 != 570491139 ? getString(R.string.k_mode_comfort_abbr) : getString(R.string.k_mode_sport_abbr);
        } else {
            string = getString(R.string.k_mode_eco_abbr);
        }
        final String str = string;
        f.b(str);
        if (i5 != 537003265) {
            i3 = i5 != 537003267 ? i8 : i6;
        } else {
            i3 = i7;
        }
        if (i5 != 537003265) {
            string2 = i5 != 537003267 ? getString(R.string.k_mode_medium_abbr) : getString(R.string.k_mode_strong_abbr);
        } else {
            string2 = getString(R.string.k_mode_weak_abbr);
        }
        final String str2 = string2;
        f.b(str2);
        int iX = (int) (x() * 14);
        final int i9 = iX < 4 ? 4 : iX;
        this.f2471a.post(new Runnable() { // from class: T.d4
            @Override // java.lang.Runnable
            public final void run() {
                QuickAccessFloaterService quickAccessFloaterService = this.f940a;
                TextView textView = quickAccessFloaterService.f2492p;
                int i10 = i9;
                if (textView != null) {
                    textView.setBackground(quickAccessFloaterService.L(i2, i10, true, true, false, false));
                }
                TextView textView2 = quickAccessFloaterService.f2492p;
                if (textView2 != null) {
                    textView2.setText(str);
                }
                TextView textView3 = quickAccessFloaterService.f2493q;
                if (textView3 != null) {
                    textView3.setBackground(quickAccessFloaterService.L(i3, i10, false, false, true, true));
                }
                TextView textView4 = quickAccessFloaterService.f2493q;
                if (textView4 != null) {
                    textView4.setText(str2);
                }
            }
        });
    }

    public final GradientDrawable K(int i2, int i3, Integer num, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(p(i3));
        if (num != null && i4 > 0) {
            gradientDrawable.setStroke(p(i4), num.intValue());
        }
        return gradientDrawable;
    }

    public final GradientDrawable L(int i2, int i3, boolean z2, boolean z3, boolean z4, boolean z5) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        float fP = p(i3);
        float f = z2 ? fP : 0.0f;
        float f2 = z2 ? fP : 0.0f;
        float f3 = z3 ? fP : 0.0f;
        float f4 = z3 ? fP : 0.0f;
        float f5 = z4 ? fP : 0.0f;
        float f6 = z4 ? fP : 0.0f;
        float f7 = z5 ? fP : 0.0f;
        if (!z5) {
            fP = 0.0f;
        }
        gradientDrawable.setCornerRadii(new float[]{f, f2, f3, f4, f5, f6, f7, fP});
        return gradientDrawable;
    }

    public final void M(long j2) {
        Handler handler = this.f2471a;
        X3 x3 = this.f2456I;
        handler.removeCallbacks(x3);
        handler.postDelayed(x3, j2);
    }

    public final void N(int i2) {
        s().edit().putInt("saved_drive", i2).apply();
        I();
        d();
    }

    public final void O(int i2) {
        s().edit().putInt("saved_regen", i2).apply();
        I();
        d();
    }

    public final void Q(TextView textView, boolean z2) {
        if (textView == null) {
            return;
        }
        Object tag = textView.getTag();
        Integer num = tag instanceof Integer ? (Integer) tag : null;
        int iIntValue = num != null ? num.intValue() : f2444s0;
        if (z2) {
            textView.setBackground(K(iIntValue, 12, null, 0));
            textView.setTextColor(f2446v0);
        } else {
            textView.setBackground(K(f2442q0, 12, Integer.valueOf(iIntValue), 1));
            textView.setTextColor(f2447w0);
        }
        textView.setAlpha(1.0f);
    }

    public final v0.a R() {
        return new v0.a(Integer.valueOf(p(A.b.o((int) ((A.b.o(t().getInt("qa_panel_width_pct", 100), 50, 200) / 100.0f) * 38), 20, 120))), Integer.valueOf(p(A.b.o((int) ((A.b.o(t().getInt("qa_panel_height_pct", 100), 50, 200) / 100.0f) * 64), 30, 200))));
    }

    public final void S(boolean z2) {
        if (this.f2459L) {
            return;
        }
        this.f2459L = true;
        new Thread(new RunnableC0060f4(this, z2, 2)).start();
    }

    public final void T() {
        a aVar = this.f2463Q;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused) {
            }
        }
        this.f2463Q = null;
        C0090k4 c0090k4 = this.f2464R;
        if (c0090k4 != null) {
            try {
                unregisterReceiver(c0090k4);
            } catch (Exception unused2) {
            }
        }
        this.f2464R = null;
    }

    public final void U(TextView textView) {
        Boolean bool = this.f2497u;
        if (f.a(bool, Boolean.TRUE)) {
            k(textView, f2445t0);
        } else if (f.a(bool, Boolean.FALSE)) {
            k(textView, u0);
        } else {
            if (bool != null) {
                throw new O.c();
            }
            l(textView);
        }
        textView.setText("AEB");
        textView.setTextColor(f2446v0);
    }

    public final void V(TextView textView) {
        boolean z2 = r().getBoolean("avas_muted_saved", false);
        k(textView, z2 ? u0 : f2445t0);
        textView.setText(z2 ? "AVAS\n✗" : "AVAS\n✓");
        textView.setTextColor(f2446v0);
    }

    public final void W(TextView textView) {
        boolean z2 = r().getBoolean("recirc_guard_enabled", false);
        if (z2) {
            k(textView, f2445t0);
        } else {
            l(textView);
        }
        textView.setText(z2 ? "🌀\n✓" : "🌀\n✗");
        textView.setTextColor(f2446v0);
    }

    public final void X(TextView textView) {
        boolean z2 = r().getBoolean("telemetry_on", false);
        if (z2) {
            k(textView, f2445t0);
        } else {
            l(textView);
        }
        textView.setText(z2 ? "📡\n✓" : "📡");
        textView.setTextColor(f2446v0);
    }

    public final void Y(TextView textView) {
        if (u().isWifiEnabled()) {
            WifiInfo connectionInfo = u().getConnectionInfo();
            if ((connectionInfo != null ? connectionInfo.getNetworkId() : -1) != -1) {
                k(textView, f2445t0);
            } else {
                k(textView, f2444s0);
            }
        } else {
            l(textView);
        }
        textView.setTextColor(f2446v0);
    }

    public final void Z() {
        T();
        v(2);
        this.f2459L = false;
        n0 = false;
        new Thread(new X3(this, 14)).start();
    }

    public final void a(String str) {
        try {
            if (TimerFloaterService.f2545o) {
                stopService(new Intent(this, (Class<?>) TimerFloaterService.class));
            } else {
                Intent intentPutExtra = new Intent(this, (Class<?>) TimerFloaterService.class).putExtra("modo", str);
                f.d(intentPutExtra, "putExtra(...)");
                startService(intentPutExtra);
            }
        } catch (Throwable unused) {
        }
    }

    public final String b(int i2, String str) {
        return C0097m.v(str, i2, null, new U3(this));
    }

    public final void c(int i2) {
        Integer numValueOf;
        int iIntValue;
        CarPropertyManager carPropertyManager = this.f2458K;
        if (carPropertyManager == null) {
            z();
            Toast.makeText(this, getString(R.string.k_carservice_unavailable), 0).show();
            return;
        }
        try {
            Integer num = this.f2480f0;
            int[] iArr = num != null ? new int[]{num.intValue()} : this.f2482g0;
            int length = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    numValueOf = null;
                    break;
                }
                int i4 = iArr[i3];
                try {
                    if (U.c(carPropertyManager, 356517120, i4) != null) {
                        this.f2480f0 = Integer.valueOf(i4);
                        numValueOf = Integer.valueOf(i4);
                        break;
                    }
                    continue;
                } catch (Throwable unused) {
                }
                i3++;
            }
            if (numValueOf == null) {
                Log.w("QuickAccessFloater", "adjustFanSpeed: nenhuma área respondeu HVAC_FAN_SPEED");
                return;
            }
            int iIntValue2 = numValueOf.intValue();
            Integer num2 = this.h0;
            if (num2 != null) {
                iIntValue = num2.intValue();
            } else {
                Integer numC = U.c(carPropertyManager, 356517120, iIntValue2);
                iIntValue = numC != null ? numC.intValue() : 3;
            }
            int iO = A.b.o(i2 + iIntValue, 0, 7);
            if (iO == iIntValue) {
                return;
            }
            carPropertyManager.setIntProperty(356517120, iIntValue2, iO);
            this.h0 = Integer.valueOf(iO);
            StringBuilder sb = new StringBuilder();
            sb.append("Gesto 2 dedos: ventoinha ");
            sb.append(iIntValue);
            sb.append(" -> ");
            sb.append(iO);
            sb.append(" (area=0x");
            A.b.i(16);
            String string = Integer.toString(iIntValue2, 16);
            f.d(string, "toString(...)");
            sb.append(string);
            sb.append(')');
            Log.i("QuickAccessFloater", sb.toString());
            Toast.makeText(this, getString(R.string.k_fan_speed_toast, Integer.valueOf(iO)), 0).show();
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("adjustFanSpeed: "), "QuickAccessFloater");
        }
    }

    public final void d() {
        int i2 = s().getInt("saved_drive", 570491138);
        int i3 = s().getInt("saved_regen", 537003266);
        sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
        int[] iArr = CentralWatchdogService.d2;
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 21));
        }
        CarPropertyManager carPropertyManager = this.f2458K;
        if (carPropertyManager == null) {
            z();
        } else {
            new Thread(new C2(carPropertyManager, i2, 1)).start();
            this.f2471a.postDelayed(new Z3(this, i3, 1), 450L);
        }
    }

    public final void e() {
        v0.a aVarR = R();
        int iIntValue = ((Number) aVarR.f4155a).intValue();
        int iIntValue2 = ((Number) aVarR.b).intValue();
        TextView textView = this.f;
        if (textView != null) {
            textView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.requestLayout();
        }
    }

    public final void f(TextView textView, float f) {
        int i2 = (int) (6 * f);
        if (i2 < 2) {
            i2 = 2;
        }
        int iP = p(i2);
        textView.setPadding(iP, iP, iP, iP);
        int i3 = (int) (8 * f);
        int i4 = i3 >= 6 ? i3 : 6;
        int i5 = (int) (34 * f);
        if (i5 < 14) {
            i5 = 14;
        }
        textView.setAutoSizeTextTypeUniformWithConfiguration(i4, i5, 1, 2);
    }

    public final LinearLayout g() {
        float fX = x();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        int i2 = (int) (14 * fX);
        if (i2 < 4) {
            i2 = 4;
        }
        int i3 = f2441p0;
        linearLayout.setBackground(K(f2442q0, i2, Integer.valueOf(i3), 1));
        int i4 = (int) (8 * fX);
        linearLayout.setPadding(p(i4), p(i4), p(i4), p((int) (10 * fX)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(p(4), 0, 0, p(5));
        String string = getString(R.string.k_qa_driving_label);
        f.d(string, "getString(...)");
        int i5 = f2444s0;
        linearLayout2.addView(B(i5, string));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        String string2 = getString(R.string.k_mode_eco);
        f.d(string2, "getString(...)");
        Y3 y3 = new Y3(this, 0);
        int i6 = f2445t0;
        this.f2486j = C(string2, i6, y3);
        String string3 = getString(R.string.k_mode_comfort);
        f.d(string3, "getString(...)");
        this.f2487k = C(string3, i5, new Y3(this, 1));
        String string4 = getString(R.string.k_mode_sport);
        f.d(string4, "getString(...)");
        Y3 y4 = new Y3(this, 2);
        int i7 = u0;
        this.f2488l = C(string4, i7, y4);
        TextView textView = this.f2486j;
        f.b(textView);
        TextView textView2 = this.f2487k;
        f.b(textView2);
        TextView textView3 = this.f2488l;
        f.b(textView3);
        Iterator it = j.T(textView, textView2, textView3).iterator();
        while (it.hasNext()) {
            linearLayout3.addView((TextView) it.next(), E());
        }
        View view = new View(this);
        view.setBackgroundColor(i3);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(p(4), p(8), 0, p(5));
        String string5 = getString(R.string.k_qa_regen_label);
        f.d(string5, "getString(...)");
        linearLayout4.addView(B(f2443r0, string5));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        String string6 = getString(R.string.k_mode_weak);
        f.d(string6, "getString(...)");
        this.f2489m = C(string6, i7, new Y3(this, 4));
        String string7 = getString(R.string.k_mode_medium);
        f.d(string7, "getString(...)");
        this.f2490n = C(string7, i5, new Y3(this, 5));
        String string8 = getString(R.string.k_mode_strong);
        f.d(string8, "getString(...)");
        this.f2491o = C(string8, i6, new Y3(this, 6));
        TextView textView4 = this.f2489m;
        f.b(textView4);
        TextView textView5 = this.f2490n;
        f.b(textView5);
        TextView textView6 = this.f2491o;
        f.b(textView6);
        Iterator it2 = j.T(textView4, textView5, textView6).iterator();
        while (it2.hasNext()) {
            linearLayout5.addView((TextView) it2.next(), E());
        }
        linearLayout.addView(linearLayout3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, p(1));
        layoutParams.setMargins(0, p(6), 0, 0);
        linearLayout.addView(view, layoutParams);
        linearLayout.addView(linearLayout4);
        linearLayout.addView(linearLayout5);
        return linearLayout;
    }

    public final LinearLayout h(ArrayList arrayList) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i2 = 0;
        for (List list : i.X(arrayList, 3)) {
            int i3 = i2 + 1;
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.topMargin = i2 == 0 ? 0 : p(14);
            linearLayout2.setLayoutParams(layoutParams);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linearLayout2.addView((View) it.next());
            }
            linearLayout.addView(linearLayout2);
            i2 = i3;
        }
        return linearLayout;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:81:0x0221  */
    public final void i() {
        TextView textViewA;
        View viewA;
        LinearLayout linearLayout = this.f2483h;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        this.f2494r = null;
        this.f2495s = null;
        this.f2492p = null;
        this.f2493q = null;
        this.f2496t = null;
        this.f2498v = null;
        this.f2500x = null;
        this.f2501y = null;
        String string = t().getString("qa_icon_order", null);
        List<String> listE0 = f2436j0;
        if (string != null && !O0.j.E0(string)) {
            List listO0 = O0.j.O0(string, new String[]{","});
            ArrayList arrayList = new ArrayList(k.V(listO0));
            Iterator it = listO0.iterator();
            while (it.hasNext()) {
                arrayList.add(O0.j.X0((String) it.next()).toString());
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (listE0.contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : listE0) {
                if (!arrayList2.contains((String) obj2)) {
                    arrayList3.add(obj2);
                }
            }
            listE0 = i.e0(arrayList2, arrayList3);
        }
        for (String str : listE0) {
            boolean z2 = !f2437k0.contains(str);
            if (t().getBoolean("qa_visible_" + str, z2)) {
                switch (str) {
                    case "karaoke":
                        textViewA = A(str);
                        if (r().getBoolean("lyrics_floater_enabled", false)) {
                            viewA = textViewA;
                            k(textViewA, -14829228);
                            viewA = textViewA;
                        }
                        break;
                    case "app_pip":
                        TextView textViewA2 = A(str);
                        this.f2501y = textViewA2;
                        if (AppPipFloaterService.f2114u != null) {
                            k(textViewA2, f2444s0);
                        } else {
                            l(textViewA2);
                        }
                        textViewA2.setTextColor(f2446v0);
                        viewA = textViewA2;
                        break;
                    case "recirc_guard":
                        TextView textViewA3 = A(str);
                        this.f2499w = textViewA3;
                        W(textViewA3);
                        viewA = textViewA3;
                        break;
                    case "split_screen":
                        TextView textViewA4 = A(str);
                        this.f2500x = textViewA4;
                        if (SplitFloaterService.f2504v != null) {
                            k(textViewA4, f2444s0);
                        } else {
                            l(textViewA4);
                        }
                        textViewA4.setTextColor(f2446v0);
                        viewA = textViewA4;
                        break;
                    case "aeb":
                        TextView textViewA5 = A(str);
                        this.f2496t = textViewA5;
                        U(textViewA5);
                        new Thread(new V3(this, textViewA5, 1)).start();
                        viewA = textViewA5;
                        break;
                    case "avas":
                        TextView textViewA6 = A(str);
                        this.f2495s = textViewA6;
                        V(textViewA6);
                        viewA = textViewA6;
                        break;
                    case "wifi":
                        TextView textViewA7 = A(str);
                        this.f2494r = textViewA7;
                        Y(textViewA7);
                        textViewA7.setOnLongClickListener(new ViewOnLongClickListenerC0065g3(this, 1));
                        viewA = textViewA7;
                        break;
                    case "drive_regen":
                        float fX = x();
                        LinearLayout linearLayout2 = new LinearLayout(this);
                        linearLayout2.setOrientation(1);
                        linearLayout2.setOnClickListener(new ViewOnClickListenerC0042c4(this, 0));
                        TextView textView = new TextView(this);
                        f(textView, fX);
                        textView.setTypeface(textView.getTypeface(), 1);
                        textView.setGravity(17);
                        int i2 = f2446v0;
                        textView.setTextColor(i2);
                        TextView textView2 = new TextView(this);
                        f(textView2, fX);
                        textView2.setTypeface(textView2.getTypeface(), 1);
                        textView2.setGravity(17);
                        textView2.setTextColor(i2);
                        this.f2492p = textView;
                        this.f2493q = textView2;
                        linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                        viewA = linearLayout2;
                        break;
                    case "telemetry":
                        TextView textViewA8 = A(str);
                        this.f2498v = textViewA8;
                        X(textViewA8);
                        viewA = textViewA8;
                        break;
                    case "power_off":
                        TextView textViewA9 = A(str);
                        k(textViewA9, u0);
                        viewA = textViewA9;
                        break;
                    default:
                        viewA = A(str);
                        break;
                }
                viewA = textViewA;
                int iP = p((int) (x() * 76));
                LinearLayout linearLayout3 = this.f2483h;
                if (linearLayout3 != null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iP, iP);
                    layoutParams.setMargins(p(4), 0, p(4), 0);
                    linearLayout3.addView(viewA, layoutParams);
                }
            }
        }
        J();
    }

    public final void j() {
        new Thread(new X3(this, 8)).start();
    }

    public final void k(TextView textView, int i2) {
        textView.setBackground(K(i2, 14, null, 0));
    }

    public final void l(TextView textView) {
        textView.setBackground(K(f2442q0, 14, Integer.valueOf(f2441p0), 1));
    }

    public final void m() {
        this.f2502z = false;
        this.f2448A = false;
        LinearLayout linearLayout = this.f2481g;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f2484i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        TextView textView = this.f;
        if (textView != null) {
            textView.setText("›");
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setAlpha(A.b.o(t().getInt("qa_tab_alpha", 90), 0, 100) / 100.0f);
        }
        this.f2471a.removeCallbacks(this.f2456I);
    }

    public final TextView o(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(22.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setPadding(p(22), p(22), p(22), p(8));
        return textView;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2439m0 = true;
        f2438l0 = this;
        String string = getString(R.string.xml_acesso_rapido);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_qa_channel_active);
        f.d(string2, "getString(...)");
        startForeground(88, Y.I(this, "quick_access_floater", string, string2, android.R.drawable.ic_menu_compass, getString(R.string.k_qa_notif_text), 0, 32));
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.b = (WindowManager) systemService;
        N4 n4 = new N4(this, null);
        n4.b = 160.0f;
        n4.setOrientation(0);
        this.f2476d = n4;
        TextView textView = new TextView(this);
        textView.setText("›");
        textView.setTextSize(22.0f);
        textView.setTextColor(f2443r0);
        textView.setGravity(17);
        int i2 = f2440o0;
        textView.setBackground(L(i2, 16, false, true, true, false));
        this.f = textView;
        textView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 6));
        v0.a aVarR = R();
        int iIntValue = ((Number) aVarR.f4155a).intValue();
        int iIntValue2 = ((Number) aVarR.b).intValue();
        N4 n5 = this.f2476d;
        f.b(n5);
        n5.addView(this.f, new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(L(i2, 18, false, true, true, false));
        linearLayout.setVisibility(8);
        this.f2481g = linearLayout;
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(p(6), p(6), p(8), p(6));
        this.f2483h = linearLayout2;
        i();
        LinearLayout linearLayout3 = this.f2481g;
        f.b(linearLayout3);
        linearLayout3.addView(this.f2483h);
        this.f2484i = g();
        LinearLayout linearLayout4 = this.f2481g;
        f.b(linearLayout4);
        linearLayout4.addView(this.f2484i);
        N4 n6 = this.f2476d;
        f.b(n6);
        n6.addView(this.f2481g, new LinearLayout.LayoutParams(-2, -2));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = 8388627;
        layoutParams.x = 0;
        layoutParams.y = t().getInt("qa_y_pos", 0);
        this.f2474c = layoutParams;
        WindowManager windowManager = this.b;
        f.b(windowManager);
        windowManager.addView(this.f2476d, this.f2474c);
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setAlpha(A.b.o(t().getInt("qa_tab_alpha", 90), 0, 100) / 100.0f);
        }
        N4 n7 = this.f2476d;
        N4 n8 = n7 != null ? n7 : null;
        if (n8 != null) {
            n8.setStepPx(n8.getResources().getDisplayMetrics().density * 48.0f);
            n8.setOnTwoFingerHorizontalSwipeListener(new U3(this));
        }
        z();
        S4.f794a.a(this, this.V);
        registerReceiver(this.f2467W, new IntentFilter("com.ex.auto.ACTION_HVAC_FAN_SWIPE"));
        registerReceiver(this.f2468X, new IntentFilter("com.ex.auto.ACTION_HVAC_TEMP_SWIPE"));
        registerReceiver(this.f2472a0, new IntentFilter("com.ex.auto.ACTION_OPEN_REAR_CAMERA"));
        registerReceiver(this.f2473b0, new IntentFilter("com.ex.auto.ACTION_GO_TO_LAST_APP"));
        registerReceiver(this.f2475c0, new IntentFilter("com.ex.auto.ACTION_OPEN_FAVORITES"));
        registerReceiver(this.f2477d0, new IntentFilter("com.ex.auto.ACTION_THREE_FINGER_H_SWIPE"));
        registerReceiver(this.f2479e0, new IntentFilter("com.ex.auto.ACTION_THREE_FINGER_V_SWIPE"));
        registerReceiver(this.f2469Y, new IntentFilter("UPDATE_DRIVE_REGEN_MODES"));
        registerReceiver(this.f2470Z, new IntentFilter("com.ex.auto.ACTION_SCREEN_OFF_COMMAND"));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2439m0 = false;
        f2438l0 = null;
        S4.f794a.b(this, this.V);
        try {
            unregisterReceiver(this.f2467W);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.f2468X);
        } catch (Exception unused2) {
        }
        try {
            unregisterReceiver(this.f2472a0);
        } catch (Exception unused3) {
        }
        try {
            unregisterReceiver(this.f2473b0);
        } catch (Exception unused4) {
        }
        try {
            unregisterReceiver(this.f2475c0);
        } catch (Exception unused5) {
        }
        try {
            unregisterReceiver(this.f2477d0);
        } catch (Exception unused6) {
        }
        try {
            unregisterReceiver(this.f2479e0);
        } catch (Exception unused7) {
        }
        try {
            unregisterReceiver(this.f2469Y);
        } catch (Exception unused8) {
        }
        try {
            unregisterReceiver(this.f2470Z);
        } catch (Exception unused9) {
        }
        if (this.f2459L) {
            Z();
        }
        T();
        this.f2471a.removeCallbacksAndMessages(null);
        try {
            Car car = this.f2457J;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused10) {
        }
        this.f2457J = null;
        this.f2458K = null;
        N4 n4 = this.f2476d;
        if (n4 != null) {
            try {
                WindowManager windowManager = this.b;
                if (windowManager != null) {
                    windowManager.removeView(n4);
                }
            } catch (Exception unused11) {
            }
        }
        LinearLayout linearLayout = this.f2478e;
        if (linearLayout != null) {
            try {
                WindowManager windowManager2 = this.b;
                if (windowManager2 != null) {
                    windowManager2.removeView(linearLayout);
                }
            } catch (Exception unused12) {
            }
        }
        this.f2478e = null;
        super.onDestroy();
    }

    public final int p(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void q() {
        this.f2502z = true;
        LinearLayout linearLayout = this.f2481g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        TextView textView = this.f;
        if (textView != null) {
            textView.setText("‹");
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setAlpha(1.0f);
        }
        I();
        TextView textView3 = this.f2495s;
        if (textView3 != null) {
            V(textView3);
        }
        M(5000L);
    }

    public final SharedPreferences r() {
        Object objA = this.f2451D.a();
        f.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final SharedPreferences s() {
        Object objA = this.f2450C.a();
        f.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final SharedPreferences t() {
        Object objA = this.f2449B.a();
        f.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final WifiManager u() {
        return (WifiManager) this.f2452E.a();
    }

    public final void v(int i2) {
        Handler handler = this.f2471a;
        handler.removeCallbacks(this.f2466U);
        LinearLayout linearLayout = this.S;
        if (linearLayout == null) {
            return;
        }
        try {
            WindowManager windowManager = this.b;
            if (windowManager != null) {
                windowManager.removeView(linearLayout);
            }
            this.S = null;
            this.f2465T = null;
        } catch (Exception e2) {
            if (i2 <= 0) {
                Log.w("QuickAccessFloater", "hideScreenOffClockOverlay: desisti após retentativas — view pode ter ficado presa");
                this.S = null;
                this.f2465T = null;
                return;
            }
            Log.w("QuickAccessFloater", "hideScreenOffClockOverlay: " + e2.getMessage() + " — retentando (" + i2 + ')');
            handler.postDelayed(new Z3(this, i2, 0), 300L);
        }
    }

    public final ViewGroup w(Drawable drawable, String str, H0.a aVar, H0.a aVar2) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        linearLayout.setBackgroundResource(R.drawable.bg_preset_chip);
        linearLayout.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface_alt)));
        linearLayout.setPadding(p(10), p(16), p(10), p(14));
        ImageView imageView = new ImageView(this);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageResource(android.R.drawable.sym_def_app_icon);
        }
        imageView.setLayoutParams(new LinearLayout.LayoutParams(p(72), p(72)));
        linearLayout.addView(imageView);
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(15.0f);
        textView.setGravity(17);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = p(8);
        textView.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.setOnClickListener(new A(aVar2, 4));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(p(150), -2);
        layoutParams2.setMarginEnd(p(12));
        if (aVar == null) {
            linearLayout.setLayoutParams(layoutParams2);
            return linearLayout;
        }
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(layoutParams2);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        frameLayout.addView(linearLayout);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextSize(14.0f);
        textView2.setGravity(17);
        textView2.setTypeface(textView2.getTypeface(), 1);
        textView2.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(getColor(R.color.cx_danger_deep));
        textView2.setBackground(gradientDrawable);
        textView2.setOnClickListener(new A(aVar, 5));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(p(28), p(28), 8388661);
        layoutParams3.topMargin = p(4);
        layoutParams3.setMarginEnd(p(4));
        frameLayout.addView(textView2, layoutParams3);
        return frameLayout;
    }

    public final float x() {
        return A.b.o(t().getInt("qa_icon_size_pct", 100), 50, 300) / 100.0f;
    }

    public final Drawable y(String str) {
        try {
            if (O0.j.E0(str)) {
                return null;
            }
            return getPackageManager().getApplicationIcon(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void z() {
        if (this.f2458K != null) {
            return;
        }
        try {
            this.f2457J = Car.createCar(this, null, 0L, new C0134s1(this, 4));
        } catch (Exception e2) {
            d0.n(e2, new StringBuilder("initDriveRegenCar: "), "QuickAccessFloater");
        }
    }
}
