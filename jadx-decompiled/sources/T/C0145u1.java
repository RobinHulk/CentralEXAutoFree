package T;

import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0145u1 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1159a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ C0145u1(HomeFloatingWidgetsService homeFloatingWidgetsService, int i2) {
        this.f1159a = i2;
        this.b = homeFloatingWidgetsService;
    }

    @Override // H0.a
    public final Object a() {
        switch (this.f1159a) {
            case 0:
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                if (homeFloatingWidgetsService.f2267D == null) {
                    FrameLayout frameLayout = new FrameLayout(homeFloatingWidgetsService);
                    frameLayout.setBackgroundColor(-1291845632);
                    LinearLayout linearLayout = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(homeFloatingWidgetsService.q(20), homeFloatingWidgetsService.q(18), homeFloatingWidgetsService.q(20), homeFloatingWidgetsService.q(20));
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(homeFloatingWidgetsService.q(22));
                    gradientDrawable.setColor(homeFloatingWidgetsService.getColor(R.color.cx_surface));
                    gradientDrawable.setStroke(homeFloatingWidgetsService.q(1), 587202559);
                    linearLayout.setBackground(gradientDrawable);
                    linearLayout.setLayoutParams(new FrameLayout.LayoutParams(homeFloatingWidgetsService.q(460), -2, 17));
                    linearLayout.setOnClickListener(new ViewOnClickListenerC0160x1(0));
                    LinearLayout linearLayout2 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout2.setOrientation(0);
                    linearLayout2.setGravity(16);
                    linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                    TextView textView = new TextView(homeFloatingWidgetsService);
                    textView.setText("Apps por uso de CPU");
                    textView.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
                    textView.setTextSize(19.0f);
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    linearLayout2.addView(textView);
                    TextView textView2 = new TextView(homeFloatingWidgetsService);
                    textView2.setText("✕");
                    textView2.setTextColor(-1);
                    textView2.setTextSize(18.0f);
                    textView2.setGravity(17);
                    int iQ = homeFloatingWidgetsService.q(34);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(1);
                    gradientDrawable2.setColor(homeFloatingWidgetsService.getColor(R.color.cx_surface_alt));
                    textView2.setBackground(gradientDrawable2);
                    textView2.setOnClickListener(new ViewOnClickListenerC0140t1(homeFloatingWidgetsService, 24));
                    linearLayout2.addView(textView2);
                    linearLayout.addView(linearLayout2);
                    LinearLayout linearLayout3 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout3.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = homeFloatingWidgetsService.q(14);
                    linearLayout3.setLayoutParams(layoutParams);
                    TextView textView3 = new TextView(homeFloatingWidgetsService);
                    textView3.setText("Lendo processos…");
                    textView3.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_muted));
                    textView3.setTextSize(15.0f);
                    textView3.setPadding(0, homeFloatingWidgetsService.q(10), 0, homeFloatingWidgetsService.q(10));
                    linearLayout3.addView(textView3);
                    linearLayout.addView(linearLayout3);
                    frameLayout.addView(linearLayout);
                    frameLayout.setOnClickListener(new ViewOnClickListenerC0140t1(homeFloatingWidgetsService, 25));
                    ViewGroup.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, 2038, 264, -3);
                    homeFloatingWidgetsService.f2267D = frameLayout;
                    try {
                        WindowManager windowManager = homeFloatingWidgetsService.f2279a;
                        if (windowManager == null) {
                            I0.f.h("wm");
                            throw null;
                        }
                        windowManager.addView(frameLayout, layoutParams2);
                        G1 g1 = homeFloatingWidgetsService.f2268E;
                        Handler handler = homeFloatingWidgetsService.f2280c;
                        if (g1 != null) {
                            handler.removeCallbacks(g1);
                        }
                        G1 g2 = new G1(homeFloatingWidgetsService, frameLayout, linearLayout3);
                        homeFloatingWidgetsService.f2268E = g2;
                        handler.post(g2);
                    } catch (Throwable th) {
                        M.d0.r(th, new StringBuilder("cpuPanel: "), "HomeFloatingWidgets");
                        homeFloatingWidgetsService.f2267D = null;
                    }
                }
                return v0.e.f4161c;
            default:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = this.b;
                homeFloatingWidgetsService2.f2280c.post(new RunnableC0155w1(homeFloatingWidgetsService2, 0));
                return v0.e.f4161c;
        }
    }
}
