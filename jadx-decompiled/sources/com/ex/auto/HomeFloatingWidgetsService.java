package com.ex.auto;

import A.b;
import I0.f;
import I0.i;
import I0.k;
import M.d0;
import T.AbstractC0126q4;
import T.C0134s1;
import T.C0145u1;
import T.D1;
import T.E1;
import T.F1;
import T.G1;
import T.H1;
import T.K3;
import T.N;
import T.ViewOnClickListenerC0140t1;
import T.ViewOnClickListenerC0150v1;
import T.ViewOnClickListenerC0165y1;
import T.Y;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p034y.C0272f;
import w0.j;

/* JADX INFO: loaded from: classes.dex */
public final class HomeFloatingWidgetsService extends Service {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final List f2262Q = j.T("widget_float_drive_regen_enabled", "widget_float_fan_enabled", "widget_float_temp_enabled", "widget_float_vent_enabled", "widget_float_vent_fan_enabled", "widget_float_heating_enabled", "widget_float_apps_enabled", "widget_float_volume_enabled", "widget_float_sysinfo_enabled");

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static volatile HomeFloatingWidgetsService f2263R;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public GridLayout f2264A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public LinearLayout f2265B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public LinearLayout f2266C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public FrameLayout f2267D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public G1 f2268E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public TextView f2269F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public TextView f2270G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public F1 f2271H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SeekBar f2272I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public D1 f2273J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C0272f f2274K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public N f2275L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2279a;
    public SharedPreferences b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Car f2281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile CarPropertyManager f2282e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2283g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f2284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f2285i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Integer f2286j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Float f2287k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Integer f2288l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Boolean f2289m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Boolean f2290n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Boolean f2291o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Boolean f2292p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Boolean f2293q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Integer f2294r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Integer f2295s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Boolean f2296t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f2297u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f2298v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f2299w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public View f2300x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public View f2301y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f2302z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f2280c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final F1 f2276M = new F1(this, 1);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int[] f2277N = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int[] f2278O = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};
    public final F1 P = new F1(this, 0);

    public static void D(View view, int... iArr) {
        for (int i2 : iArr) {
            View viewFindViewById = view.findViewById(i2);
            if (viewFindViewById != null) {
                ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null) {
                    layoutParams2.width = -2;
                    layoutParams2.weight = 0.0f;
                    viewFindViewById.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    public static final void a(HomeFloatingWidgetsService homeFloatingWidgetsService) {
        GridLayout gridLayout;
        View view;
        View view2;
        View view3;
        View view4;
        View view5;
        View view6;
        boolean z2 = homeFloatingWidgetsService.z("widget_float_drive_regen_enabled", "widget_float_drive_regen_pinned");
        if (z2 && homeFloatingWidgetsService.f2297u == null) {
            homeFloatingWidgetsService.c();
        }
        if (!z2 && (view6 = homeFloatingWidgetsService.f2297u) != null) {
            homeFloatingWidgetsService.s(view6);
            homeFloatingWidgetsService.f2297u = null;
        }
        boolean z3 = homeFloatingWidgetsService.z("widget_float_fan_enabled", "widget_float_fan_pinned");
        if (z3 && homeFloatingWidgetsService.f2298v == null) {
            homeFloatingWidgetsService.d();
        }
        if (!z3 && (view5 = homeFloatingWidgetsService.f2298v) != null) {
            homeFloatingWidgetsService.s(view5);
            homeFloatingWidgetsService.f2298v = null;
        }
        boolean z4 = homeFloatingWidgetsService.z("widget_float_temp_enabled", "widget_float_temp_pinned");
        if (z4 && homeFloatingWidgetsService.f2299w == null) {
            homeFloatingWidgetsService.h();
        }
        if (!z4 && (view4 = homeFloatingWidgetsService.f2299w) != null) {
            homeFloatingWidgetsService.s(view4);
            homeFloatingWidgetsService.f2299w = null;
        }
        boolean z5 = homeFloatingWidgetsService.z("widget_float_vent_enabled", "widget_float_vent_pinned");
        if (z5 && homeFloatingWidgetsService.f2300x == null) {
            homeFloatingWidgetsService.j();
        }
        if (!z5 && (view3 = homeFloatingWidgetsService.f2300x) != null) {
            homeFloatingWidgetsService.s(view3);
            homeFloatingWidgetsService.f2300x = null;
        }
        boolean z6 = homeFloatingWidgetsService.z("widget_float_vent_fan_enabled", "widget_float_vent_fan_pinned");
        if (z6 && homeFloatingWidgetsService.f2301y == null) {
            homeFloatingWidgetsService.i();
        }
        if (!z6 && (view2 = homeFloatingWidgetsService.f2301y) != null) {
            homeFloatingWidgetsService.s(view2);
            homeFloatingWidgetsService.f2301y = null;
        }
        boolean z7 = homeFloatingWidgetsService.z("widget_float_heating_enabled", "widget_float_heating_pinned");
        if (z7 && homeFloatingWidgetsService.f2302z == null) {
            homeFloatingWidgetsService.e();
        }
        if (!z7 && (view = homeFloatingWidgetsService.f2302z) != null) {
            homeFloatingWidgetsService.s(view);
            homeFloatingWidgetsService.f2302z = null;
        }
        boolean z8 = homeFloatingWidgetsService.z("widget_float_apps_enabled", "widget_float_apps_pinned");
        if (z8 && homeFloatingWidgetsService.f2264A == null) {
            homeFloatingWidgetsService.b();
        }
        if (!z8 && (gridLayout = homeFloatingWidgetsService.f2264A) != null) {
            homeFloatingWidgetsService.s(gridLayout);
            homeFloatingWidgetsService.f2264A = null;
        }
        boolean z9 = homeFloatingWidgetsService.z("widget_float_volume_enabled", "widget_float_volume_pinned");
        if (z9 && homeFloatingWidgetsService.f2265B == null) {
            homeFloatingWidgetsService.k();
        }
        if (!z9 && homeFloatingWidgetsService.f2265B != null) {
            homeFloatingWidgetsService.t();
        }
        boolean z10 = homeFloatingWidgetsService.z("widget_float_sysinfo_enabled", "widget_float_sysinfo_pinned");
        if (z10 && homeFloatingWidgetsService.f2266C == null) {
            homeFloatingWidgetsService.g();
        }
        if (!z10 && homeFloatingWidgetsService.f2266C != null) {
            F1 f1 = homeFloatingWidgetsService.f2271H;
            if (f1 != null) {
                homeFloatingWidgetsService.f2280c.removeCallbacks(f1);
            }
            homeFloatingWidgetsService.f2271H = null;
            homeFloatingWidgetsService.p();
            homeFloatingWidgetsService.s(homeFloatingWidgetsService.f2266C);
            homeFloatingWidgetsService.f2266C = null;
            homeFloatingWidgetsService.f2269F = null;
            homeFloatingWidgetsService.f2270G = null;
        }
        if (Y.a(homeFloatingWidgetsService)) {
            return;
        }
        homeFloatingWidgetsService.stopSelf();
    }

    public static void f(final HomeFloatingWidgetsService homeFloatingWidgetsService, final View view, final String str, int i2, int i3, int i4, C0145u1 c0145u1, int i5) {
        int i6 = (i5 & 32) != 0 ? -2 : i4;
        final C0145u1 c0145u2 = (i5 & 64) != 0 ? null : c0145u1;
        homeFloatingWidgetsService.getClass();
        K3 k3U = Y.U(homeFloatingWidgetsService, str, 8388659, i2, i3);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i6, -2, 2038, 264, -3);
        int i7 = k3U.f659a;
        layoutParams.gravity = i7;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        if ((i7 & 48) == 48) {
            int identifier = homeFloatingWidgetsService.getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? homeFloatingWidgetsService.getResources().getDimensionPixelSize(identifier) : homeFloatingWidgetsService.q(24);
            if (layoutParams.y < dimensionPixelSize) {
                layoutParams.y = dimensionPixelSize;
            }
        }
        View viewFindViewById = view.findViewById(R.id.widget_bg_layer);
        f.b(viewFindViewById);
        final I0.j jVar = new I0.j();
        final I0.j jVar2 = new I0.j();
        final k kVar = new k();
        final k kVar2 = new k();
        final i iVar = new i();
        final i iVar2 = new i();
        viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: T.z1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                H0.a aVar;
                View view3 = view;
                List list = HomeFloatingWidgetsService.f2262Q;
                int action = motionEvent.getAction();
                I0.i iVar3 = iVar2;
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = homeFloatingWidgetsService;
                I0.j jVar3 = jVar;
                I0.j jVar4 = jVar2;
                I0.k kVar3 = kVar;
                WindowManager.LayoutParams layoutParams2 = layoutParams;
                I0.k kVar4 = kVar2;
                I0.i iVar4 = iVar;
                boolean z2 = false;
                if (action == 0) {
                    SharedPreferences sharedPreferences = homeFloatingWidgetsService2.b;
                    if (sharedPreferences == null) {
                        I0.f.h("prefs");
                        throw null;
                    }
                    iVar3.f122a = sharedPreferences.getBoolean("widgets_poslock_all", false);
                    jVar3.f123a = motionEvent.getRawX();
                    jVar4.f123a = motionEvent.getRawY();
                    kVar3.f124a = layoutParams2.x;
                    kVar4.f124a = layoutParams2.y;
                    iVar4.f122a = false;
                } else {
                    if (action != 1) {
                        if (action == 2) {
                            if (iVar3.f122a) {
                                return true;
                            }
                            int rawX = (int) (motionEvent.getRawX() - jVar3.f123a);
                            int rawY = (int) (motionEvent.getRawY() - jVar4.f123a);
                            if (Math.abs(rawX) > homeFloatingWidgetsService2.q(6) || Math.abs(rawY) > homeFloatingWidgetsService2.q(6)) {
                                iVar4.f122a = true;
                            }
                            layoutParams2.x = kVar3.f124a + rawX;
                            layoutParams2.y = kVar4.f124a + rawY;
                            try {
                                WindowManager windowManager = homeFloatingWidgetsService2.f2279a;
                                if (windowManager == null) {
                                    I0.f.h("wm");
                                    throw null;
                                }
                                windowManager.updateViewLayout(view3, layoutParams2);
                            } catch (Throwable unused) {
                            }
                        }
                        return z2;
                    }
                    if (!iVar3.f122a && iVar4.f122a) {
                        Y.d0(homeFloatingWidgetsService2, str, layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    } else if (!iVar4.f122a && (aVar = c0145u2) != null) {
                        aVar.a();
                    }
                }
                z2 = true;
                return z2;
            }
        });
        try {
            WindowManager windowManager = homeFloatingWidgetsService.f2279a;
            if (windowManager != null) {
                windowManager.addView(view, layoutParams);
            } else {
                f.h("wm");
                throw null;
            }
        } catch (Throwable th) {
            d0.r(th, d0.j("addOverlayView(", str, "): "), "HomeFloatingWidgets");
        }
    }

    public static final void l(C0272f c0272f, ImageView imageView) {
        boolean zI = c0272f.i();
        imageView.setImageResource(zI ? R.drawable.ic_widget_volume_mute : R.drawable.ic_widget_volume);
        imageView.setColorFilter(zI ? -44462 : -1);
    }

    public static final TextView m(HomeFloatingWidgetsService homeFloatingWidgetsService, float f, boolean z2, C0272f c0272f, ImageView imageView, String str, int i2) {
        TextView textView = new TextView(homeFloatingWidgetsService);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(26.0f * f);
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        textView.setPadding(0, 0, 0, 0);
        int iQ = (int) (homeFloatingWidgetsService.q(48) * f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iQ, iQ);
        if (z2) {
            layoutParams.topMargin = homeFloatingWidgetsService.q(10);
        } else {
            layoutParams.setMarginStart(homeFloatingWidgetsService.q(10));
        }
        textView.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(0);
        int iQ2 = (int) (homeFloatingWidgetsService.q(2) * f);
        gradientDrawable.setStroke(iQ2 >= 2 ? iQ2 : 2, -1711276033);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new ViewOnClickListenerC0165y1(c0272f, i2, imageView, 0));
        return textView;
    }

    public final void A(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        Integer numE = this.f2286j;
        int iIntValue = (numE == null && (numE = H1.e(carPropertyManager)) == null) ? 3 : numE.intValue();
        int iO = b.o(i2 + iIntValue, 0, 7);
        if (iO != iIntValue) {
            H1.s(carPropertyManager, iO);
        }
        this.f2286j = Integer.valueOf(iO);
        F();
    }

    public final void B(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        Integer numE = this.f2286j;
        int iIntValue = (numE == null && (numE = H1.e(carPropertyManager)) == null) ? 3 : numE.intValue();
        int iO = b.o(i2 + iIntValue, 0, 7);
        if (iO != iIntValue) {
            H1.s(carPropertyManager, iO);
        }
        this.f2286j = Integer.valueOf(iO);
        I();
        F();
    }

    public final void C(float f) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        Float fK = this.f2287k;
        float fFloatValue = (fK == null && (fK = H1.k(carPropertyManager)) == null) ? 22.0f : fK.floatValue();
        float fN = b.n(Math.round(f + fFloatValue), 17.0f, 32.0f);
        if (fN != fFloatValue) {
            int[] iArr = H1.f606a;
            try {
                carPropertyManager.setFloatProperty(624955446, 1, fN);
            } catch (Throwable unused) {
            }
            try {
                carPropertyManager.setFloatProperty(624955446, 4, fN);
            } catch (Throwable unused2) {
            }
        }
        this.f2287k = Float.valueOf(fN);
        H();
    }

    public final void E() {
        View view = this.f2297u;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("drive_regen"));
        Integer num = this.f2284h;
        boolean z2 = false;
        n(view, R.id.chip_drive_eco, R.id.txt_drive_eco, num != null && num.intValue() == 570491137);
        Integer num2 = this.f2284h;
        n(view, R.id.chip_drive_comfort, R.id.txt_drive_comfort, num2 != null && num2.intValue() == 570491138);
        Integer num3 = this.f2284h;
        n(view, R.id.chip_drive_sport, R.id.txt_drive_sport, num3 != null && num3.intValue() == 570491139);
        Integer num4 = this.f2285i;
        n(view, R.id.chip_regen_low, R.id.txt_regen_low, num4 != null && num4.intValue() == 537003265);
        Integer num5 = this.f2285i;
        n(view, R.id.chip_regen_mid, R.id.txt_regen_mid, num5 != null && num5.intValue() == 537003266);
        Integer num6 = this.f2285i;
        if (num6 != null && num6.intValue() == 537003267) {
            z2 = true;
        }
        n(view, R.id.chip_regen_high, R.id.txt_regen_high, z2);
    }

    public final void F() {
        String string;
        View view = this.f2298v;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("fan"));
        TextView textView = (TextView) view.findViewById(R.id.tv_fan_value);
        Integer num = this.f2286j;
        if (num == null || (string = num.toString()) == null) {
            string = "—";
        }
        textView.setText(string);
        Integer num2 = this.f2286j;
        int[] iArr = this.f2277N;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i3 + 1;
            view.findViewById(iArr[i2]).setBackgroundResource(num2 != null && i3 < num2.intValue() ? R.drawable.widget_dot_on : R.drawable.widget_dot_off);
            i2++;
            i3 = i4;
        }
    }

    public final void G() {
        String strM;
        View view = this.f2302z;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("heating"));
        Boolean bool = this.f2291o;
        Boolean bool2 = Boolean.TRUE;
        n(view, R.id.chip_wheel_heat, R.id.txt_wheel_heat, f.a(bool, bool2));
        ((TextView) view.findViewById(R.id.txt_wheel_heat)).setText(M(R.string.k_widget_lbl_heat_wheel));
        n(view, R.id.chip_front_rear_defrost, R.id.txt_front_rear_defrost, f.a(this.f2290n, bool2));
        ((TextView) view.findViewById(R.id.txt_front_rear_defrost)).setText(M(R.string.k_widget_lbl_rear_defrost));
        n(view, R.id.chip_front_max_defrost, R.id.txt_front_max_defrost, f.a(this.f2292p, bool2));
        ((TextView) view.findViewById(R.id.txt_front_max_defrost)).setText(M(R.string.k_widget_lbl_heat_front_max));
        n(view, R.id.chip_windshield_heat, R.id.txt_windshield_heat, f.a(this.f2293q, bool2));
        ((TextView) view.findViewById(R.id.txt_windshield_heat)).setText(M(R.string.k_widget_lbl_heat_windshield));
        Integer num = this.f2294r;
        n(view, R.id.chip_seat_heat_driver, R.id.txt_seat_heat_driver, (num != null ? num.intValue() : 0) > 0);
        TextView textView = (TextView) view.findViewById(R.id.txt_seat_heat_driver);
        StringBuilder sb = new StringBuilder();
        sb.append(M(R.string.k_widget_lbl_heat_seat_driver));
        sb.append(' ');
        Integer num2 = this.f2294r;
        String strM2 = "—";
        if (num2 == null) {
            strM = "—";
        } else {
            strM = num2.intValue() >= 4 ? M(R.string.k_widget_lbl_heat_auto) : num2.toString();
        }
        sb.append(strM);
        textView.setText(sb.toString());
        Integer num3 = this.f2295s;
        n(view, R.id.chip_seat_heat_passenger, R.id.txt_seat_heat_passenger, (num3 != null ? num3.intValue() : 0) > 0);
        TextView textView2 = (TextView) view.findViewById(R.id.txt_seat_heat_passenger);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(M(R.string.k_widget_lbl_heat_seat_passenger));
        sb2.append(' ');
        Integer num4 = this.f2295s;
        if (num4 != null) {
            strM2 = num4.intValue() >= 4 ? M(R.string.k_widget_lbl_heat_auto) : num4.toString();
        }
        sb2.append(strM2);
        textView2.setText(sb2.toString());
    }

    public final void H() {
        String strValueOf;
        View view = this.f2299w;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("temp"));
        TextView textView = (TextView) view.findViewById(R.id.tv_temp_value);
        Float f = this.f2287k;
        if (f == null || (strValueOf = String.valueOf(Math.round(f.floatValue()))) == null) {
            strValueOf = "—";
        }
        textView.setText(strValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0101  */
    public final void I() {
        String string;
        boolean z2;
        View view = this.f2301y;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("vent_fan"));
        Integer num = this.f2288l;
        n(view, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        Integer num2 = this.f2288l;
        n(view, R.id.chip_vent_floor, R.id.txt_vent_floor, num2 != null && num2.intValue() == 2);
        Integer num3 = this.f2288l;
        n(view, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num3 != null && num3.intValue() == 3);
        Integer num4 = this.f2288l;
        n(view, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num4 != null && num4.intValue() == 4);
        Integer num5 = this.f2288l;
        n(view, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, num5 != null && num5.intValue() == 6);
        Boolean bool = this.f2289m;
        Boolean bool2 = Boolean.TRUE;
        n(view, R.id.chip_recirc, R.id.txt_recirc, f.a(bool, bool2));
        TextView textView = (TextView) view.findViewById(R.id.tv_fan_value);
        Integer num6 = this.f2286j;
        if (num6 == null || (string = num6.toString()) == null) {
            string = "—";
        }
        textView.setText(string);
        boolean zA = f.a(this.f2296t, bool2);
        view.findViewById(R.id.chip_fan_ac).setBackgroundResource(zA ? R.drawable.widget_chip_active : R.drawable.widget_chip_ac_off);
        ((TextView) view.findViewById(R.id.tv_fan_value)).setTextColor(getColor(zA ? R.color.cx_on_accent : R.color.cx_text_primary));
        int[] iArr = this.f2278O;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            Integer num7 = this.f2286j;
            if (num7 != null) {
                f.b(num7);
                if (i3 < num7.intValue()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            view.findViewById(i4).setBackgroundResource(z2 ? R.drawable.widget_dot_on : R.drawable.widget_dot_off);
            i2++;
            i3 = i5;
        }
    }

    public final void J() {
        View view = this.f2300x;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(K("vent"));
        Integer num = this.f2288l;
        boolean z2 = false;
        n(view, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        Integer num2 = this.f2288l;
        n(view, R.id.chip_vent_floor, R.id.txt_vent_floor, num2 != null && num2.intValue() == 2);
        Integer num3 = this.f2288l;
        n(view, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num3 != null && num3.intValue() == 3);
        Integer num4 = this.f2288l;
        n(view, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num4 != null && num4.intValue() == 4);
        Integer num5 = this.f2288l;
        if (num5 != null && num5.intValue() == 6) {
            z2 = true;
        }
        n(view, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, z2);
        n(view, R.id.chip_recirc, R.id.txt_recirc, f.a(this.f2289m, Boolean.TRUE));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    public final int K(String str) {
        String str2;
        int[] iArr = H1.f606a;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        switch (str) {
            case "vent_fan":
                str2 = "widget_float_vent_fan_alpha_pct";
                break;
            case "sysinfo":
                str2 = "widget_float_sysinfo_alpha_pct";
                break;
            case "volume":
                str2 = "widget_float_volume_alpha_pct";
                break;
            case "fan":
                str2 = "widget_float_fan_alpha_pct";
                break;
            case "apps":
                str2 = "widget_float_apps_alpha_pct";
                break;
            case "temp":
                str2 = "widget_float_temp_alpha_pct";
                break;
            case "vent":
                str2 = "widget_float_vent_alpha_pct";
                break;
            case "drive_regen":
                str2 = "widget_float_drive_regen_alpha_pct";
                break;
            default:
                str2 = "widget_float_heating_alpha_pct";
                break;
        }
        return H1.b(sharedPreferences.getInt(str2, 100));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    public final float L(String str) {
        String str2;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        switch (str) {
            case "vent_fan":
                str2 = "widget_float_vent_fan_size_pct";
                break;
            case "sysinfo":
                str2 = "widget_float_sysinfo_size_pct";
                break;
            case "volume":
                str2 = "widget_float_volume_size_pct";
                break;
            case "fan":
                str2 = "widget_float_fan_size_pct";
                break;
            case "apps":
                str2 = "widget_float_apps_size_pct";
                break;
            case "temp":
                str2 = "widget_float_temp_size_pct";
                break;
            case "vent":
                str2 = "widget_float_vent_size_pct";
                break;
            case "drive_regen":
                str2 = "widget_float_drive_regen_size_pct";
                break;
            default:
                str2 = "widget_float_heating_size_pct";
                break;
        }
        return (b.o(sharedPreferences.getInt(str2, 100), 50, 200) / 100.0f) * 1.6f;
    }

    public final String M(int i2) {
        String string = H1.o(this).getString(i2);
        f.d(string, "getString(...)");
        return string;
    }

    public final void b() {
        String string;
        int i2;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        String string2 = sharedPreferences.getString("widget_apps_list", "");
        List listO0 = O0.j.O0(string2 != null ? string2 : "", new String[]{","});
        ArrayList arrayList = new ArrayList(w0.k.V(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(O0.j.X0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            f.h("prefs");
            throw null;
        }
        int i3 = 1;
        int iO = b.o(sharedPreferences2.getInt("widget_apps_rows", 2), 1, 6);
        SharedPreferences sharedPreferences3 = this.b;
        if (sharedPreferences3 == null) {
            f.h("prefs");
            throw null;
        }
        int iO2 = b.o(sharedPreferences3.getInt("widget_apps_cols", 3), 1, 6);
        PackageManager packageManager = getPackageManager();
        int iQ = q(46);
        int iQ2 = q(74);
        SharedPreferences sharedPreferences4 = this.b;
        if (sharedPreferences4 == null) {
            f.h("prefs");
            throw null;
        }
        int i4 = 0;
        int iO3 = b.o(sharedPreferences4.getInt("widget_float_apps_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences5 = this.b;
        if (sharedPreferences5 == null) {
            f.h("prefs");
            throw null;
        }
        float fO = b.o(sharedPreferences5.getInt("widget_float_apps_size_pct", 100), 50, 200) / 100.0f;
        GridLayout gridLayout = new GridLayout(this);
        gridLayout.setId(R.id.widget_bg_layer);
        gridLayout.setRowCount(iO);
        gridLayout.setColumnCount(iO2);
        int iQ3 = q(8);
        gridLayout.setPadding(iQ3, iQ3, iQ3, iQ3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(q(18));
        int color = getColor(R.color.widget_apps_bg_base);
        gradientDrawable.setColor(Color.argb((iO3 * 230) / 100, Color.red(color), Color.green(color), Color.blue(color)));
        gridLayout.setBackground(gradientDrawable);
        Iterator it2 = arrayList2.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (i5 >= iO * iO2) {
                break;
            }
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                i2 = i3;
            } else {
                try {
                    Drawable applicationIcon = packageManager.getApplicationIcon(str);
                    f.b(applicationIcon);
                    try {
                        string = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, i4)).toString();
                    } catch (Exception unused) {
                        string = str;
                    }
                    LinearLayout linearLayout = new LinearLayout(this);
                    linearLayout.setOrientation(i3);
                    linearLayout.setGravity(i3);
                    linearLayout.setPadding(q(4), q(6), q(4), q(6));
                    linearLayout.setBackground(new RippleDrawable(ColorStateList.valueOf(872415231), null, null));
                    i2 = 1;
                    linearLayout.setClickable(true);
                    linearLayout.setOnClickListener(new ViewOnClickListenerC0150v1(launchIntentForPackage, this, str, 0));
                    ImageView imageView = new ImageView(this);
                    imageView.setImageDrawable(applicationIcon);
                    imageView.setContentDescription(string);
                    imageView.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
                    linearLayout.addView(imageView);
                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i5 / iO2), GridLayout.spec(i5 % iO2));
                    layoutParams.width = iQ2;
                    layoutParams.setMargins(q(2), q(2), q(2), q(2));
                    gridLayout.addView(linearLayout, layoutParams);
                    i5++;
                } catch (Exception unused2) {
                    i2 = i3;
                }
            }
            i3 = i2;
            packageManager = packageManager;
            it2 = it2;
            iO = iO;
            fO = fO;
            i4 = 0;
        }
        float f = fO;
        if (i5 == 0) {
            TextView textView = new TextView(this);
            textView.setText(M(R.string.k_widget_apps_empty));
            textView.setTextColor(-1);
            textView.setTextSize(12.0f);
            textView.setPadding(q(16), q(16), q(16), q(16));
            gridLayout.addView(textView);
        }
        if (f != 1.0f) {
            u(gridLayout, f);
        }
        f(this, gridLayout, "widget_float_apps", q(40), q(120), 0, null, 96);
        this.f2264A = gridLayout;
    }

    public final void c() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_drive_regen_float, (ViewGroup) null);
        f.b(viewInflate);
        D(viewInflate, R.id.chip_drive_eco, R.id.chip_drive_comfort, R.id.chip_drive_sport, R.id.chip_regen_low, R.id.chip_regen_mid, R.id.chip_regen_high);
        u(viewInflate, L("drive_regen"));
        ((TextView) viewInflate.findViewById(R.id.txt_drive_header)).setText(M(R.string.k_widget_lbl_drive_header));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_header)).setText(M(R.string.k_widget_lbl_regen_header));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_low)).setText(M(R.string.k_widget_lbl_regen_low));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_mid)).setText(M(R.string.k_widget_lbl_regen_mid));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_high)).setText(M(R.string.k_widget_lbl_regen_high));
        viewInflate.findViewById(R.id.chip_drive_eco).setOnClickListener(new ViewOnClickListenerC0140t1(this, 12));
        viewInflate.findViewById(R.id.chip_drive_comfort).setOnClickListener(new ViewOnClickListenerC0140t1(this, 13));
        viewInflate.findViewById(R.id.chip_drive_sport).setOnClickListener(new ViewOnClickListenerC0140t1(this, 14));
        viewInflate.findViewById(R.id.chip_regen_low).setOnClickListener(new ViewOnClickListenerC0140t1(this, 15));
        viewInflate.findViewById(R.id.chip_regen_mid).setOnClickListener(new ViewOnClickListenerC0140t1(this, 16));
        viewInflate.findViewById(R.id.chip_regen_high).setOnClickListener(new ViewOnClickListenerC0140t1(this, 17));
        f(this, viewInflate, "widget_float_drive_regen", q(24), q(120), 0, null, 96);
        this.f2297u = viewInflate;
        E();
    }

    public final void d() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_fan_speed_float, (ViewGroup) null);
        f.b(viewInflate);
        D(viewInflate, R.id.fan_mid_col);
        viewInflate.findViewById(R.id.fan_icon).setVisibility(8);
        u(viewInflate, L("fan"));
        ((TextView) viewInflate.findViewById(R.id.tv_fan_label)).setText(M(R.string.k_widget_lbl_fan));
        viewInflate.findViewById(R.id.btn_fan_minus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 10));
        viewInflate.findViewById(R.id.btn_fan_plus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 11));
        f(this, viewInflate, "widget_float_fan", q(24), q(280), 0, null, 96);
        this.f2298v = viewInflate;
        F();
    }

    public final void e() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_heating_test_float, (ViewGroup) null);
        f.b(viewInflate);
        u(viewInflate, L("heating"));
        ((TextView) viewInflate.findViewById(R.id.txt_heat_header)).setText(M(R.string.k_widget_lbl_heat_header));
        viewInflate.findViewById(R.id.chip_wheel_heat).setOnClickListener(new ViewOnClickListenerC0140t1(this, 18));
        viewInflate.findViewById(R.id.chip_front_rear_defrost).setOnClickListener(new ViewOnClickListenerC0140t1(this, 19));
        viewInflate.findViewById(R.id.chip_front_max_defrost).setOnClickListener(new ViewOnClickListenerC0140t1(this, 20));
        viewInflate.findViewById(R.id.chip_windshield_heat).setOnClickListener(new ViewOnClickListenerC0140t1(this, 21));
        viewInflate.findViewById(R.id.chip_seat_heat_driver).setOnClickListener(new ViewOnClickListenerC0140t1(this, 22));
        viewInflate.findViewById(R.id.chip_seat_heat_passenger).setOnClickListener(new ViewOnClickListenerC0140t1(this, 23));
        f(this, viewInflate, "widget_float_heating", q(24), q(760), q((int) (L("heating") * 230)), null, 64);
        this.f2302z = viewInflate;
        G();
    }

    public final void g() {
        AbstractC0126q4.f1111a = null;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        int iO = b.o(sharedPreferences.getInt("widget_float_sysinfo_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            f.h("prefs");
            throw null;
        }
        float fO = b.o(sharedPreferences2.getInt("widget_float_sysinfo_size_pct", 100), 50, 200) / 100.0f;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(R.id.widget_bg_layer);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(q(16), q(12), q(16), q(12));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(q(18));
        gradientDrawable.setColor(Color.argb((iO * 230) / 100, 20, 24, 28));
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        textView.setTextColor(-1);
        float f = 22.0f * fO;
        textView.setTextSize(f);
        textView.setIncludeFontPadding(false);
        textView.setText("🌡 --°C");
        TextView textView2 = new TextView(this);
        textView2.setTextColor(-1);
        textView2.setTextSize(f);
        textView2.setIncludeFontPadding(false);
        textView2.setText("CPU --%");
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart((int) (q(16) * fO));
        textView2.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        this.f2269F = textView;
        this.f2270G = textView2;
        f(this, linearLayout, "widget_float_sysinfo", q(40), q(500), 0, new C0145u1(this, 0), 32);
        this.f2266C = linearLayout;
        F1 f1 = this.f2271H;
        if (f1 != null) {
            this.f2280c.removeCallbacks(f1);
        }
        F1 f2 = new F1(this, 2);
        this.f2271H = f2;
        this.f2280c.post(f2);
    }

    public final void h() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_temperature_float, (ViewGroup) null);
        f.b(viewInflate);
        D(viewInflate, R.id.temp_mid_col);
        viewInflate.findViewById(R.id.temp_icon).setVisibility(8);
        u(viewInflate, L("temp"));
        ((TextView) viewInflate.findViewById(R.id.tv_temp_label)).setText(M(R.string.k_widget_lbl_temp));
        viewInflate.findViewById(R.id.btn_temp_minus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 26));
        viewInflate.findViewById(R.id.btn_temp_plus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 27));
        f(this, viewInflate, "widget_float_temp", q(24), q(440), 0, null, 96);
        this.f2299w = viewInflate;
        H();
    }

    public final void i() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_hvac_direction_fan_float, (ViewGroup) null);
        f.b(viewInflate);
        u(viewInflate, L("vent_fan"));
        viewInflate.findViewById(R.id.chip_vent_face).setOnClickListener(new ViewOnClickListenerC0140t1(this, 1));
        viewInflate.findViewById(R.id.chip_vent_floor).setOnClickListener(new ViewOnClickListenerC0140t1(this, 2));
        viewInflate.findViewById(R.id.chip_vent_face_floor).setOnClickListener(new ViewOnClickListenerC0140t1(this, 3));
        viewInflate.findViewById(R.id.chip_vent_windshield).setOnClickListener(new ViewOnClickListenerC0140t1(this, 4));
        viewInflate.findViewById(R.id.chip_vent_floor_windshield).setOnClickListener(new ViewOnClickListenerC0140t1(this, 5));
        viewInflate.findViewById(R.id.chip_recirc).setOnClickListener(new ViewOnClickListenerC0140t1(this, 6));
        viewInflate.findViewById(R.id.btn_fan_minus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 7));
        viewInflate.findViewById(R.id.btn_fan_plus).setOnClickListener(new ViewOnClickListenerC0140t1(this, 8));
        viewInflate.findViewById(R.id.chip_fan_ac).setOnClickListener(new ViewOnClickListenerC0140t1(this, 9));
        f(this, viewInflate, "widget_float_vent_fan", q(24), q(880), q((int) (L("vent_fan") * 260)), null, 64);
        this.f2301y = viewInflate;
        I();
    }

    public final void j() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_hvac_direction_float, (ViewGroup) null);
        f.b(viewInflate);
        D(viewInflate, R.id.chip_vent_face, R.id.chip_vent_floor, R.id.chip_vent_face_floor, R.id.chip_vent_windshield, R.id.chip_vent_floor_windshield, R.id.chip_recirc);
        u(viewInflate, L("vent"));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_header)).setText(M(R.string.k_widget_lbl_vent_header));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_face)).setText(M(R.string.k_widget_lbl_vent_face));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_floor)).setText(M(R.string.k_widget_lbl_vent_floor));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_face_floor)).setText(M(R.string.k_widget_lbl_vent_face_floor));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_windshield)).setText(M(R.string.k_widget_lbl_vent_windshield));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_floor_windshield)).setText(M(R.string.k_widget_lbl_vent_floor_windshield));
        ((TextView) viewInflate.findViewById(R.id.txt_recirc)).setText(M(R.string.k_widget_lbl_recirc));
        viewInflate.findViewById(R.id.chip_vent_face).setOnClickListener(new ViewOnClickListenerC0140t1(this, 28));
        viewInflate.findViewById(R.id.chip_vent_floor).setOnClickListener(new ViewOnClickListenerC0140t1(this, 29));
        final int i2 = 0;
        viewInflate.findViewById(R.id.chip_vent_face_floor).setOnClickListener(new View.OnClickListener(this) { // from class: T.A1
            public final /* synthetic */ HomeFloatingWidgetsService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                switch (i2) {
                    case 0:
                        List list = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(3);
                        break;
                    case 1:
                        List list2 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(4);
                        break;
                    default:
                        List list3 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(6);
                        break;
                }
            }
        });
        final int i3 = 1;
        viewInflate.findViewById(R.id.chip_vent_windshield).setOnClickListener(new View.OnClickListener(this) { // from class: T.A1
            public final /* synthetic */ HomeFloatingWidgetsService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                switch (i3) {
                    case 0:
                        List list = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(3);
                        break;
                    case 1:
                        List list2 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(4);
                        break;
                    default:
                        List list3 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(6);
                        break;
                }
            }
        });
        final int i4 = 2;
        viewInflate.findViewById(R.id.chip_vent_floor_windshield).setOnClickListener(new View.OnClickListener(this) { // from class: T.A1
            public final /* synthetic */ HomeFloatingWidgetsService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                switch (i4) {
                    case 0:
                        List list = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(3);
                        break;
                    case 1:
                        List list2 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(4);
                        break;
                    default:
                        List list3 = HomeFloatingWidgetsService.f2262Q;
                        homeFloatingWidgetsService.x(6);
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.chip_recirc).setOnClickListener(new ViewOnClickListenerC0140t1(this, 0));
        f(this, viewInflate, "widget_float_vent", q(24), q(600), 0, null, 96);
        this.f2300x = viewInflate;
        J();
    }

    public final void k() {
        final C0272f c0272f = this.f2274K;
        if (c0272f == null) {
            c0272f = new C0272f(this);
            this.f2274K = c0272f;
            final C0145u1 c0145u1 = new C0145u1(this, 1);
            try {
                c0272f.f4251e = Car.createCar(this, null, 0L, new Car.CarServiceLifecycleListener() { // from class: T.P
                    @Override // android.car.Car.CarServiceLifecycleListener
                    public final void onLifecycleChanged(Car car, boolean z2) {
                        Object carManager;
                        int iIntValue;
                        int iIntValue2;
                        int iIntValue3;
                        if (z2) {
                            C0272f c0272f2 = c0272f;
                            if (car != null) {
                                try {
                                    carManager = car.getCarManager("audio");
                                } catch (Throwable unused) {
                                    c0272f2.f = null;
                                    c0272f2.f4249c = -1;
                                }
                            } else {
                                carManager = null;
                            }
                            c0272f2.f = carManager;
                            if (carManager == null) {
                                iIntValue = -1;
                            } else {
                                Integer numA = C0272f.a(carManager, "getVolumeGroupIdForUsage", new int[]{1});
                                if (numA == null || (iIntValue = numA.intValue()) < 0) {
                                    iIntValue = 0;
                                    Integer numA2 = C0272f.a(carManager, "getVolumeGroupIdForUsage", new int[]{0, 1});
                                    if (numA2 == null || (iIntValue3 = numA2.intValue()) < 0) {
                                        Integer numA3 = C0272f.a(carManager, "getVolumeGroupIdForStreamType", new int[]{3});
                                        if (numA3 != null && (iIntValue2 = numA3.intValue()) >= 0) {
                                            iIntValue = iIntValue2;
                                        }
                                    } else {
                                        iIntValue = iIntValue3;
                                    }
                                }
                            }
                            c0272f2.f4249c = iIntValue;
                        }
                        c0145u1.a();
                    }
                });
            } catch (Throwable unused) {
                c0145u1.a();
            }
        }
        C0272f c0272f2 = c0272f;
        int iD = c0272f2.d();
        if (iD < 1) {
            iD = 1;
        }
        int iF = c0272f2.f();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        boolean z2 = sharedPreferences.getBoolean("widget_volume_vertical", false);
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            f.h("prefs");
            throw null;
        }
        int iO = b.o(sharedPreferences2.getInt("widget_float_volume_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences3 = this.b;
        if (sharedPreferences3 == null) {
            f.h("prefs");
            throw null;
        }
        float fO = b.o(sharedPreferences3.getInt("widget_float_volume_size_pct", 100), 50, 200) / 100.0f;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(R.id.widget_bg_layer);
        linearLayout.setOrientation(z2 ? 1 : 0);
        linearLayout.setGravity(17);
        linearLayout.setPadding(q(14), q(12), q(14), q(12));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(q(18));
        gradientDrawable.setColor(Color.argb((iO * 230) / 100, 20, 24, 28));
        linearLayout.setBackground(gradientDrawable);
        int iQ = (int) (q(28) * fO);
        ImageView imageView = new ImageView(this);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
        l(c0272f2, imageView);
        imageView.setOnClickListener(new ViewOnClickListenerC0150v1(c0272f2, this, imageView, 1));
        this.f2273J = new D1(c0272f2, imageView);
        SharedPreferences sharedPreferences4 = this.b;
        if (sharedPreferences4 == null) {
            f.h("prefs");
            throw null;
        }
        if (sharedPreferences4.getBoolean("widget_volume_signs", false)) {
            linearLayout.addView(imageView);
            if (z2) {
                linearLayout.addView(m(this, fO, z2, c0272f2, imageView, "+", 1));
                linearLayout.addView(m(this, fO, z2, c0272f2, imageView, "−", -1));
            } else {
                linearLayout.addView(m(this, fO, z2, c0272f2, imageView, "−", -1));
                linearLayout.addView(m(this, fO, z2, c0272f2, imageView, "+", 1));
            }
            this.f2272I = null;
        } else {
            SeekBar.OnSeekBarChangeListener e1 = new E1(c0272f2, imageView);
            int iQ2 = (int) (q(210) * fO);
            int iQ3 = (int) (q(48) * fO);
            if (z2) {
                FrameLayout frameLayout = new FrameLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iQ3, iQ2);
                layoutParams.topMargin = q(10);
                frameLayout.setLayoutParams(layoutParams);
                SeekBar seekBar = new SeekBar(this);
                seekBar.setMax(iD);
                seekBar.setProgress(iF);
                seekBar.setRotation(270.0f);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iQ2, iQ3);
                layoutParams2.gravity = 17;
                seekBar.setLayoutParams(layoutParams2);
                seekBar.setOnSeekBarChangeListener(e1);
                frameLayout.addView(seekBar);
                linearLayout.addView(imageView);
                linearLayout.addView(frameLayout);
                this.f2272I = seekBar;
            } else {
                SeekBar seekBar2 = new SeekBar(this);
                seekBar2.setMax(iD);
                seekBar2.setProgress(iF);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iQ2, -2);
                layoutParams3.setMarginStart(q(10));
                seekBar2.setLayoutParams(layoutParams3);
                seekBar2.setOnSeekBarChangeListener(e1);
                linearLayout.addView(imageView);
                linearLayout.addView(seekBar2);
                this.f2272I = seekBar2;
            }
        }
        if (this.f2275L == null) {
            N n2 = new N(this, 1);
            this.f2275L = n2;
            try {
                registerReceiver(n2, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            } catch (Exception unused2) {
            }
        }
        f(this, linearLayout, "widget_float_volume", q(40), q(300), 0, null, 96);
        this.f2265B = linearLayout;
    }

    public final void n(View view, int i2, int i3, boolean z2) {
        view.findViewById(i2).setBackgroundResource(z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        ((TextView) view.findViewById(i3)).setTextColor(getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public final void o(boolean z2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        int i2 = z2 ? 1 : 4;
        Integer numJ = z2 ? this.f2294r : this.f2295s;
        int iIntValue = ((numJ == null && (numJ = H1.j(carPropertyManager, i2)) == null) ? -1 : numJ.intValue()) + 1;
        if (iIntValue > 4) {
            iIntValue = 0;
        }
        int[] iArr = H1.f606a;
        try {
            carPropertyManager.setIntProperty(356517131, i2, iIntValue);
        } catch (Throwable unused) {
        }
        if (z2) {
            this.f2294r = Integer.valueOf(iIntValue);
        } else {
            this.f2295s = Integer.valueOf(iIntValue);
        }
        G();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f2263R = this;
        this.b = getSharedPreferences("tela_preta_prefs", 0);
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2279a = (WindowManager) systemService;
        String string = getString(R.string.k_widgets_float_channel);
        f.d(string, "getString(...)");
        String string2 = getString(R.string.k_widgets_float_active);
        f.d(string2, "getString(...)");
        startForeground(118, Y.I(this, "home_floating_widgets", string, string2, android.R.drawable.ic_menu_compass, null, 0, 48));
        try {
            this.f2281d = Car.createCar(this, null, 0L, new C0134s1(this, 0));
        } catch (Exception unused) {
        }
        this.f2280c.post(this.P);
        this.f2280c.post(this.f2276M);
        Log.i("HomeFloatingWidgets", "HomeFloatingWidgetsService iniciado");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f2263R = null;
        this.f2280c.removeCallbacksAndMessages(null);
        N n2 = this.f2275L;
        if (n2 != null) {
            try {
                unregisterReceiver(n2);
            } catch (Exception unused) {
            }
        }
        this.f2275L = null;
        try {
            Car car = this.f2281d;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused2) {
        }
        p();
        s(this.f2297u);
        this.f2297u = null;
        s(this.f2298v);
        this.f2298v = null;
        s(this.f2299w);
        this.f2299w = null;
        s(this.f2300x);
        this.f2300x = null;
        s(this.f2301y);
        this.f2301y = null;
        s(this.f2302z);
        this.f2302z = null;
        super.onDestroy();
    }

    public final void p() {
        G1 g1 = this.f2268E;
        if (g1 != null) {
            this.f2280c.removeCallbacks(g1);
        }
        this.f2268E = null;
        FrameLayout frameLayout = this.f2267D;
        if (frameLayout != null) {
            try {
                WindowManager windowManager = this.f2279a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f2267D = null;
    }

    public final int q(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final void r() {
        C0272f c0272f = this.f2274K;
        if (c0272f == null) {
            return;
        }
        SeekBar seekBar = this.f2272I;
        if (seekBar != null) {
            int iD = c0272f.d();
            if (iD < 1) {
                iD = 1;
            }
            seekBar.setMax(iD);
            if (!seekBar.isPressed()) {
                seekBar.setProgress(c0272f.f());
            }
        }
        D1 d1 = this.f2273J;
        if (d1 != null) {
            d1.a();
        }
    }

    public final void s(View view) {
        if (view == null) {
            return;
        }
        try {
            WindowManager windowManager = this.f2279a;
            if (windowManager != null) {
                windowManager.removeView(view);
            } else {
                f.h("wm");
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    public final void t() {
        s(this.f2265B);
        this.f2265B = null;
        this.f2272I = null;
        this.f2273J = null;
        N n2 = this.f2275L;
        if (n2 != null) {
            try {
                unregisterReceiver(n2);
            } catch (Exception unused) {
            }
        }
        this.f2275L = null;
        C0272f c0272f = this.f2274K;
        if (c0272f != null) {
            try {
                Car car = (Car) c0272f.f4251e;
                if (car != null) {
                    car.disconnect();
                }
            } catch (Throwable unused2) {
            }
            c0272f.f4251e = null;
            c0272f.f = null;
            c0272f.f4249c = -1;
        }
        this.f2274K = null;
    }

    public final void u(View view, float f) {
        boolean z2;
        if (f != 1.0f) {
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                textView.setTextSize((textView.getTextSize() / getResources().getDisplayMetrics().scaledDensity) * f);
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                int i2 = layoutParams.width;
                boolean z3 = true;
                if (i2 > 0) {
                    layoutParams.width = (int) (i2 * f);
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i3 = layoutParams.height;
                if (i3 > 0) {
                    layoutParams.height = (int) (i3 * f);
                } else {
                    z3 = z2;
                }
                if (z3) {
                    view.setLayoutParams(layoutParams);
                }
            }
            if (view.getPaddingLeft() > 0 || view.getPaddingTop() > 0 || view.getPaddingRight() > 0 || view.getPaddingBottom() > 0) {
                view.setPadding((int) (view.getPaddingLeft() * f), (int) (view.getPaddingTop() * f), (int) (view.getPaddingRight() * f), (int) (view.getPaddingBottom() * f));
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                f.d(childAt, "getChildAt(...)");
                u(childAt, f);
            }
        }
    }

    public final void v(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        H1.r(this, carPropertyManager, i2);
        this.f2284h = Integer.valueOf(i2);
        E();
    }

    public final void w(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        H1.u(this, carPropertyManager, i2);
        this.f2285i = Integer.valueOf(i2);
        E();
    }

    public final void x(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        H1.v(carPropertyManager, i2);
        this.f2288l = Integer.valueOf(i2);
        J();
    }

    public final void y(int i2) {
        CarPropertyManager carPropertyManager = this.f2282e;
        if (carPropertyManager == null) {
            return;
        }
        H1.v(carPropertyManager, i2);
        this.f2288l = Integer.valueOf(i2);
        I();
        J();
    }

    public final boolean z(String str, String str2) {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            f.h("prefs");
            throw null;
        }
        if (!sharedPreferences.getBoolean(str, false) || this.f2283g) {
            return false;
        }
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 != null) {
            return sharedPreferences2.getBoolean(str2, false) || this.f;
        }
        f.h("prefs");
        throw null;
    }
}
