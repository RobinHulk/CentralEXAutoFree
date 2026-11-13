package com.ex.auto;

import H0.a;
import I0.f;
import T.A;
import T.C0033b1;
import T.C0057f1;
import T.C0097m;
import T.C0105n1;
import T.InterfaceC0087k1;
import T.RunnableC0051e1;
import T.SurfaceHolderCallbackC0063g1;
import T.ViewOnTouchListenerC0138t;
import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class ExSapoCastActivity extends Activity implements InterfaceC0087k1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f2246e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f2247a;
    public SurfaceView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2249d;

    public static final TextView c(ExSapoCastActivity exSapoCastActivity, String str, a aVar) {
        TextView textView = new TextView(exSapoCastActivity);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        int iD = exSapoCastActivity.d(48);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iD, iD);
        layoutParams.topMargin = exSapoCastActivity.d(8);
        textView.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1440734168);
        gradientDrawable.setStroke(exSapoCastActivity.d(1), 1728053247);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new A(aVar, 1));
        return textView;
    }

    @Override // T.InterfaceC0087k1
    public final void a(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.f2248c = i2;
        this.f2249d = i3;
        FrameLayout frameLayout = this.f2247a;
        if (frameLayout != null) {
            frameLayout.post(new RunnableC0051e1(this, 0));
        } else {
            f.h("root");
            throw null;
        }
    }

    @Override // T.InterfaceC0087k1
    public final void b() {
        runOnUiThread(new RunnableC0051e1(this, 1));
    }

    public final int d(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(-16777216);
        this.f2247a = frameLayout;
        SurfaceView surfaceView = new SurfaceView(this);
        this.b = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolderCallbackC0063g1(0));
        FrameLayout frameLayout2 = this.f2247a;
        int[] iArr = null;
        if (frameLayout2 == null) {
            f.h("root");
            throw null;
        }
        SurfaceView surfaceView2 = this.b;
        if (surfaceView2 == null) {
            f.h("surfaceView");
            throw null;
        }
        frameLayout2.addView(surfaceView2, new FrameLayout.LayoutParams(-1, -1, 17));
        SurfaceView surfaceView3 = this.b;
        if (surfaceView3 == null) {
            f.h("surfaceView");
            throw null;
        }
        surfaceView3.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 2));
        FrameLayout frameLayout3 = this.f2247a;
        if (frameLayout3 == null) {
            f.h("root");
            throw null;
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388629);
        layoutParams.setMarginEnd(d(10));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.addView(c(this, "‹", new C0033b1(1)));
        linearLayout.addView(c(this, "○", new C0033b1(2)));
        linearLayout.addView(c(this, "▢", new C0033b1(3)));
        linearLayout.addView(c(this, "✕", new C0057f1(this, 0)));
        frameLayout3.addView(linearLayout);
        FrameLayout frameLayout4 = this.f2247a;
        if (frameLayout4 == null) {
            f.h("root");
            throw null;
        }
        setContentView(frameLayout4);
        C0097m.f1044c = this;
        if (C0097m.f1049i == null) {
            finish();
        }
        C0105n1 c0105n1 = C0097m.f1049i;
        if (c0105n1 != null && c0105n1.f1065g > 0 && c0105n1.f1066h > 0) {
            iArr = new int[]{c0105n1.f1065g, c0105n1.f1066h};
        }
        if (iArr != null) {
            a(iArr[0], iArr[1]);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        C0105n1 c0105n1;
        super.onDestroy();
        if (C0097m.f1044c == this) {
            C0097m.f1044c = null;
        }
        C0105n1 c0105n2 = C0097m.f1049i;
        if (c0105n2 != null) {
            c0105n2.f1064e = null;
        }
        if (!isFinishing() || (c0105n1 = C0097m.f1049i) == null) {
            return;
        }
        c0105n1.g("activity-finish");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }
}
