package com.ex.auto;

import I0.f;
import T.K3;
import T.ViewOnClickListenerC0073i;
import T.Y;
import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.IBinder;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.GridLayout;
import android.widget.TextView;
import com.ex.auto.DpadFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class DpadFloaterService extends Service {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f2237i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2238a;
    public GridLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f2239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2241e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2243h;

    public static void a(View view, int i2, int i3) {
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i2), GridLayout.spec(i3));
        layoutParams.width = 76;
        layoutParams.height = 76;
        layoutParams.setMargins(6, 6, 6, 6);
        view.setLayoutParams(layoutParams);
    }

    public final void b(TextView textView, String str, int i2) {
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(14.0f);
        gradientDrawable.setColor(-869650893);
        gradientDrawable.setStroke(2, 872415231);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new ViewOnClickListenerC0073i(this, i2, 2));
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
        this.f2238a = (WindowManager) systemService;
        startForeground(15073, Y.I(this, "dpad_floater", "Controle TV (D-pad)", "Setas na tela p/ apps de TV", android.R.drawable.ic_media_ff, null, 1, 16));
        if (this.b != null) {
            return;
        }
        GridLayout gridLayout = new GridLayout(this);
        gridLayout.setRowCount(3);
        gridLayout.setColumnCount(3);
        gridLayout.setPadding(6, 6, 6, 6);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(22.0f);
        gradientDrawable.setColor(-1728053248);
        gridLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        textView.setText("⠿");
        textView.setTextColor(-1711276033);
        textView.setTextSize(20.0f);
        textView.setGravity(17);
        TextView textView2 = new TextView(this);
        b(textView2, "▲", 19);
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextColor(-855676053);
        textView3.setTextSize(18.0f);
        textView3.setGravity(17);
        final int i2 = 0;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: T.Z0
            public final /* synthetic */ DpadFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        DpadFloaterService dpadFloaterService = this.b;
                        if (!dpadFloaterService.f2243h) {
                            dpadFloaterService.stopSelf();
                        }
                        break;
                    default:
                        if (!this.b.f2243h) {
                            new Thread(new RunnableC0154w0(23, 1)).start();
                        }
                        break;
                }
            }
        });
        TextView textView4 = new TextView(this);
        b(textView4, "◀", 21);
        TextView textView5 = new TextView(this);
        textView5.setText("OK");
        textView5.setTextColor(-1);
        textView5.setTextSize(16.0f);
        textView5.setGravity(17);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(-869306389);
        textView5.setBackground(gradientDrawable2);
        final int i3 = 1;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: T.Z0
            public final /* synthetic */ DpadFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        DpadFloaterService dpadFloaterService = this.b;
                        if (!dpadFloaterService.f2243h) {
                            dpadFloaterService.stopSelf();
                        }
                        break;
                    default:
                        if (!this.b.f2243h) {
                            new Thread(new RunnableC0154w0(23, 1)).start();
                        }
                        break;
                }
            }
        });
        TextView textView6 = new TextView(this);
        b(textView6, "▶", 22);
        TextView textView7 = new TextView(this);
        b(textView7, "↩", 4);
        TextView textView8 = new TextView(this);
        b(textView8, "▼", 20);
        View view = new View(this);
        a(textView, 0, 0);
        a(textView2, 0, 1);
        a(textView3, 0, 2);
        a(textView4, 1, 0);
        a(textView5, 1, 1);
        a(textView6, 1, 2);
        a(textView7, 2, 0);
        a(textView8, 2, 1);
        a(view, 2, 2);
        gridLayout.addView(textView);
        gridLayout.addView(textView2);
        gridLayout.addView(textView3);
        gridLayout.addView(textView4);
        gridLayout.addView(textView5);
        gridLayout.addView(textView6);
        gridLayout.addView(textView7);
        gridLayout.addView(textView8);
        gridLayout.addView(view);
        K3 k3U = Y.U(this, "dpad_floater", 8388693, 40, 120);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = k3U.f659a;
        layoutParams.x = k3U.b;
        layoutParams.y = k3U.f660c;
        this.f2239c = layoutParams;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: T.a1
            /* JADX WARN: Code duplicated, block: B:40:0x0079  */
            /* JADX WARN: Code duplicated, block: B:42:0x007d  */
            /* JADX WARN: Code duplicated, block: B:43:0x0089  */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                WindowManager.LayoutParams layoutParams2;
                int i4 = DpadFloaterService.f2237i;
                int actionMasked = motionEvent.getActionMasked();
                DpadFloaterService dpadFloaterService = this.f880a;
                if (actionMasked == 0) {
                    dpadFloaterService.f2240d = motionEvent.getRawX();
                    dpadFloaterService.f2241e = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams3 = dpadFloaterService.f2239c;
                    if (layoutParams3 == null) {
                        I0.f.h("lp");
                        throw null;
                    }
                    dpadFloaterService.f = layoutParams3.x;
                    dpadFloaterService.f2242g = layoutParams3.y;
                    dpadFloaterService.f2243h = false;
                } else if (actionMasked == 1) {
                    if (dpadFloaterService.f2243h) {
                        layoutParams2 = dpadFloaterService.f2239c;
                        if (layoutParams2 != null) {
                            I0.f.h("lp");
                            throw null;
                        }
                        Y.d0(dpadFloaterService, "dpad_floater", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                } else if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                    if (dpadFloaterService.f2243h) {
                        layoutParams2 = dpadFloaterService.f2239c;
                        if (layoutParams2 != null) {
                            I0.f.h("lp");
                            throw null;
                        }
                        Y.d0(dpadFloaterService, "dpad_floater", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - dpadFloaterService.f2240d);
                    int rawY = (int) (motionEvent.getRawY() - dpadFloaterService.f2241e);
                    if (!dpadFloaterService.f2243h) {
                        float fAbs = Math.abs(rawX);
                        float f = scaledTouchSlop;
                        if (fAbs > f || Math.abs(rawY) > f) {
                            dpadFloaterService.f2243h = true;
                        }
                    }
                    if (dpadFloaterService.f2243h) {
                        WindowManager.LayoutParams layoutParams4 = dpadFloaterService.f2239c;
                        if (layoutParams4 == null) {
                            I0.f.h("lp");
                            throw null;
                        }
                        int i5 = dpadFloaterService.f - rawX;
                        if (i5 < 0) {
                            i5 = 0;
                        }
                        layoutParams4.x = i5;
                        int i6 = dpadFloaterService.f2242g - rawY;
                        layoutParams4.y = i6 >= 0 ? i6 : 0;
                        GridLayout gridLayout2 = dpadFloaterService.b;
                        if (gridLayout2 != null) {
                            WindowManager windowManager = dpadFloaterService.f2238a;
                            if (windowManager == null) {
                                I0.f.h("wm");
                                throw null;
                            }
                            windowManager.updateViewLayout(gridLayout2, layoutParams4);
                        }
                    }
                }
                return true;
            }
        });
        try {
            WindowManager windowManager = this.f2238a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f2239c;
            if (layoutParams2 == null) {
                f.h("lp");
                throw null;
            }
            windowManager.addView(gridLayout, layoutParams2);
            this.b = gridLayout;
        } catch (Throwable th) {
            Log.e("DpadFloater", "addView falhou: " + th.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        GridLayout gridLayout = this.b;
        if (gridLayout != null && gridLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f2238a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(gridLayout);
            } catch (Throwable unused) {
            }
        }
        this.b = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return 1;
    }
}
