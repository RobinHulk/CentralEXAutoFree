package com.ex.auto;

import A.b;
import H0.a;
import I0.f;
import I0.i;
import I0.j;
import I0.k;
import M.d0;
import T.A;
import T.C0033b1;
import T.C0057f1;
import T.C0097m;
import T.C0105n1;
import T.InterfaceC0087k1;
import T.K3;
import T.SurfaceHolderCallbackC0063g1;
import T.ViewOnTouchListenerC0075i1;
import T.ViewOnTouchListenerC0138t;
import T.Y;
import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.ExSapoCastFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class ExSapoCastFloaterService extends Service implements InterfaceC0087k1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f2250j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2251a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SurfaceView f2252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f2253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2254e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2257i = 0.6f;

    public static final TextView e(ExSapoCastFloaterService exSapoCastFloaterService, String str, a aVar) {
        TextView textView = new TextView(exSapoCastFloaterService);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(17.0f);
        textView.setGravity(17);
        int iH = exSapoCastFloaterService.h(30);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iH, iH);
        layoutParams.setMarginStart(exSapoCastFloaterService.h(2));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new A(aVar, 2));
        return textView;
    }

    @Override // T.InterfaceC0087k1
    public final void a(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        if (i2 == this.f2255g && i3 == this.f2256h) {
            return;
        }
        this.f2255g = i2;
        this.f2256h = i3;
        c();
    }

    @Override // T.InterfaceC0087k1
    public final void b() {
        stopSelf();
    }

    public final void c() {
        v0.a aVarG = g(this.f2255g, this.f2256h);
        int iIntValue = ((Number) aVarG.f4155a).intValue();
        int iIntValue2 = ((Number) aVarG.b).intValue();
        SurfaceView surfaceView = this.f2252c;
        if (surfaceView != null) {
            surfaceView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        }
        SurfaceView surfaceView2 = this.f2252c;
        if (surfaceView2 != null) {
            surfaceView2.requestLayout();
        }
        WindowManager.LayoutParams layoutParams = this.f2253d;
        if (layoutParams == null) {
            f.h("lp");
            throw null;
        }
        layoutParams.width = iIntValue;
        if (layoutParams == null) {
            f.h("lp");
            throw null;
        }
        int i2 = this.f2254e;
        int i3 = this.f;
        layoutParams.height = i2 + iIntValue2 + i3;
        f(iIntValue, i2 + iIntValue2 + i3);
        try {
            WindowManager windowManager = this.f2251a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            LinearLayout linearLayout = this.b;
            WindowManager.LayoutParams layoutParams2 = this.f2253d;
            if (layoutParams2 != null) {
                windowManager.updateViewLayout(linearLayout, layoutParams2);
            } else {
                f.h("lp");
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    public final void d() {
        if (this.b != null) {
            return;
        }
        v0.a aVarG = g(this.f2255g, this.f2256h);
        int iIntValue = ((Number) aVarG.f4155a).intValue();
        int iIntValue2 = ((Number) aVarG.b).intValue();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(h(12));
        gradientDrawable.setColor(-301068012);
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f2254e));
        linearLayout2.setPadding(h(8), 0, h(4), 0);
        TextView textView = new TextView(this);
        textView.setText("⠿  ExSapoCast");
        textView.setTextColor(-1711276033);
        textView.setTextSize(12.0f);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
        textView.setGravity(16);
        linearLayout2.addView(textView);
        linearLayout2.addView(e(this, "‹", new C0033b1(4)));
        linearLayout2.addView(e(this, "○", new C0033b1(5)));
        linearLayout2.addView(e(this, "▢", new C0033b1(6)));
        linearLayout2.addView(e(this, "✕", new C0057f1(this, 1)));
        linearLayout.addView(linearLayout2);
        SurfaceView surfaceView = new SurfaceView(this);
        surfaceView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        surfaceView.setZOrderOnTop(true);
        surfaceView.getHolder().addCallback(new SurfaceHolderCallbackC0063g1(1));
        surfaceView.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 3));
        linearLayout.addView(surfaceView);
        this.f2252c = surfaceView;
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        linearLayout3.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f));
        View view = new View(this);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, h(1), 1.0f));
        linearLayout3.addView(view);
        TextView textView2 = new TextView(this);
        textView2.setText("◢");
        textView2.setTextColor(-855638017);
        textView2.setTextSize(16.0f);
        textView2.setGravity(17);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(h(52), this.f));
        textView2.setOnTouchListener(new ViewOnTouchListenerC0075i1(new j(), new j(), new j(), this, 0));
        linearLayout3.addView(textView2);
        linearLayout.addView(linearLayout3);
        K3 k3U = Y.U(this, "exsapocast_pip", 8388659, h(60), h(60));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iIntValue, this.f2254e + iIntValue2 + this.f, 2038, 264, -3);
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        this.f2253d = layoutParams;
        final j jVar = new j();
        final j jVar2 = new j();
        final k kVar = new k();
        final k kVar2 = new k();
        final i iVar = new i();
        linearLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: T.h1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                int i2 = ExSapoCastFloaterService.f2250j;
                int action = motionEvent.getAction();
                I0.j jVar3 = jVar;
                I0.j jVar4 = jVar2;
                I0.k kVar3 = kVar;
                ExSapoCastFloaterService exSapoCastFloaterService = this;
                I0.k kVar4 = kVar2;
                I0.i iVar2 = iVar;
                if (action == 0) {
                    jVar3.f123a = motionEvent.getRawX();
                    jVar4.f123a = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams2 = exSapoCastFloaterService.f2253d;
                    if (layoutParams2 == null) {
                        I0.f.h("lp");
                        throw null;
                    }
                    kVar3.f124a = layoutParams2.x;
                    kVar4.f124a = layoutParams2.y;
                    iVar2.f122a = false;
                } else if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    int rawX = (int) (motionEvent.getRawX() - jVar3.f123a);
                    int rawY = (int) (motionEvent.getRawY() - jVar4.f123a);
                    if (Math.abs(rawX) > exSapoCastFloaterService.h(6) || Math.abs(rawY) > exSapoCastFloaterService.h(6)) {
                        iVar2.f122a = true;
                    }
                    WindowManager.LayoutParams layoutParams3 = exSapoCastFloaterService.f2253d;
                    if (layoutParams3 == null) {
                        I0.f.h("lp");
                        throw null;
                    }
                    layoutParams3.x = kVar3.f124a + rawX;
                    layoutParams3.y = kVar4.f124a + rawY;
                    try {
                        WindowManager windowManager = exSapoCastFloaterService.f2251a;
                        if (windowManager == null) {
                            I0.f.h("wm");
                            throw null;
                        }
                        windowManager.updateViewLayout(exSapoCastFloaterService.b, layoutParams3);
                    } catch (Throwable unused) {
                    }
                } else if (iVar2.f122a) {
                    WindowManager.LayoutParams layoutParams4 = exSapoCastFloaterService.f2253d;
                    if (layoutParams4 == null) {
                        I0.f.h("lp");
                        throw null;
                    }
                    Y.d0(exSapoCastFloaterService, "exsapocast_pip", layoutParams4.gravity, layoutParams4.x, layoutParams4.y);
                }
                return true;
            }
        });
        f(iIntValue, this.f2254e + iIntValue2 + this.f);
        this.b = linearLayout;
        try {
            WindowManager windowManager = this.f2251a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f2253d;
            if (layoutParams2 != null) {
                windowManager.addView(linearLayout, layoutParams2);
            } else {
                f.h("lp");
                throw null;
            }
        } catch (Throwable th) {
            d0.r(th, new StringBuilder("addView: "), "ExSapoCast");
        }
    }

    public final void f(int i2, int i3) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        WindowManager.LayoutParams layoutParams = this.f2253d;
        if (layoutParams == null) {
            f.h("lp");
            throw null;
        }
        if (layoutParams == null) {
            f.h("lp");
            throw null;
        }
        int i4 = layoutParams.x;
        int i5 = displayMetrics.widthPixels - i2;
        if (i5 < 0) {
            i5 = 0;
        }
        layoutParams.x = b.o(i4, 0, i5);
        WindowManager.LayoutParams layoutParams2 = this.f2253d;
        if (layoutParams2 == null) {
            f.h("lp");
            throw null;
        }
        if (layoutParams2 == null) {
            f.h("lp");
            throw null;
        }
        int i6 = layoutParams2.y;
        int i7 = displayMetrics.heightPixels - i3;
        if (i7 < 0) {
            i7 = 0;
        }
        layoutParams2.y = b.o(i6, 0, i7);
    }

    public final v0.a g(int i2, int i3) {
        v0.a aVarI = i(i2, i3);
        float fFloatValue = ((Number) aVarI.f4155a).floatValue();
        float fFloatValue2 = ((Number) aVarI.b).floatValue();
        int i4 = (int) (fFloatValue * this.f2257i);
        int iH = h(120);
        if (i4 < iH) {
            i4 = iH;
        }
        int i5 = (int) (fFloatValue2 * this.f2257i);
        int iH2 = h(120);
        if (i5 < iH2) {
            i5 = iH2;
        }
        return new v0.a(Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public final int h(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public final v0.a i(int i2, int i3) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = i2;
        float f2 = i3;
        float fMin = Math.min((displayMetrics.widthPixels * 0.92f) / f, (((displayMetrics.heightPixels * 0.9f) - this.f2254e) - this.f) / f2);
        return new v0.a(Float.valueOf(f * fMin), Float.valueOf(f2 * fMin));
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
        this.f2251a = (WindowManager) systemService;
        this.f2254e = h(34);
        this.f = h(34);
        this.f2257i = b.n(getSharedPreferences("tela_preta_prefs", 0).getFloat("exsapocast_pip_scale", 0.6f), 0.3f, 1.0f);
        C0105n1 c0105n1 = C0097m.f1049i;
        int[] iArr = null;
        if (c0105n1 != null && c0105n1.f1065g > 0 && c0105n1.f1066h > 0) {
            iArr = new int[]{c0105n1.f1065g, c0105n1.f1066h};
        }
        if (iArr == null) {
            iArr = new int[]{9, 20};
        }
        this.f2255g = iArr[0];
        this.f2256h = iArr[1];
        d();
        C0097m.f1044c = this;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        if (C0097m.f1044c == this) {
            C0097m.f1044c = null;
        }
        C0105n1 c0105n1 = C0097m.f1049i;
        if (c0105n1 != null) {
            c0105n1.f1064e = null;
        }
        try {
            LinearLayout linearLayout = this.b;
            if (linearLayout != null) {
                WindowManager windowManager = this.f2251a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(linearLayout);
            }
        } catch (Throwable unused) {
        }
        this.b = null;
        this.f2252c = null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        if (this.b != null) {
            return 2;
        }
        d();
        return 2;
    }
}
