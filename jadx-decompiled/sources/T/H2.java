package T;

import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.google.android.material.switchmaterial.SwitchMaterial;
import p007e.C0205e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f616a;
    public final /* synthetic */ ContextWrapper b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f618d;

    public /* synthetic */ H2(ContextWrapper contextWrapper, boolean z2, boolean z3, int i2) {
        this.f616a = i2;
        this.b = contextWrapper;
        this.f617c = z2;
        this.f618d = z3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 1;
        switch (this.f616a) {
            case 0:
                int i3 = MainActivity.u0;
                boolean z2 = this.f617c;
                boolean z3 = this.f618d;
                MainActivity mainActivity = (MainActivity) this.b;
                if (!z2 && !z3 && !mainActivity.D0()) {
                    C0081j1 c0081j1 = new C0081j1(mainActivity);
                    String string = mainActivity.getString(R.string.k_no_internet_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string;
                    c0205e.f = mainActivity.getString(R.string.k_no_internet_message);
                    c0205e.f2997k = false;
                    c0081j1.h(mainActivity.getString(R.string.common_ok), new X1(24, mainActivity));
                    c0205e.f2998l = new M2(mainActivity, i2);
                    c0081j1.j();
                    return;
                }
                String string2 = (z2 || z3) ? mainActivity.getString(R.string.k_continue_question) : mainActivity.getString(R.string.xml_gestos_download_grande);
                I0.f.b(string2);
                C0081j1 c0081j2 = new C0081j1(mainActivity);
                String string3 = mainActivity.getString(R.string.xml_gestos_rapidos_titulo);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f2991d = string3;
                c0205e2.f = string2;
                c0205e2.f2997k = false;
                c0081j2.f(mainActivity.getString(R.string.common_cancel), new X1(25, mainActivity));
                c0081j2.h(mainActivity.getString(R.string.common_confirm), new X1(26, mainActivity));
                c0081j2.j();
                return;
            case 1:
                MainActivity mainActivity2 = (MainActivity) this.b;
                U.a aVar = mainActivity2.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1298g.setEnabled(true);
                if (this.f617c || this.f618d) {
                    mainActivity2.f2388w.execute(new G2(11, mainActivity2));
                    return;
                }
                boolean zD0 = mainActivity2.D0();
                C0081j1 c0081j3 = new C0081j1(mainActivity2);
                String string4 = mainActivity2.getString(R.string.k_missing_connadaptor_title);
                C0205e c0205e3 = (C0205e) c0081j3.b;
                c0205e3.f2991d = string4;
                c0205e3.f = zD0 ? mainActivity2.getString(R.string.k_missing_connadaptor_online) : mainActivity2.getString(R.string.k_missing_connadaptor_offline);
                if (zD0) {
                    c0081j3.h(mainActivity2.getString(R.string.k_download_connadaptor_btn), new X1(21, mainActivity2));
                    c0081j3.f(mainActivity2.getString(R.string.common_cancel), null);
                } else {
                    c0081j3.h(mainActivity2.getString(R.string.common_ok), null);
                }
                c0081j3.j();
                return;
            case 2:
                MainActivity mainActivity3 = (MainActivity) this.b;
                U.a aVar2 = mainActivity3.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.q2.setEnabled(true);
                boolean z4 = this.f617c;
                boolean z5 = this.f618d;
                if (z4) {
                    U.a aVar3 = mainActivity3.f2384t;
                    if (aVar3 != null) {
                        aVar3.Q2.setText(mainActivity3.getString(z5 ? R.string.k_ttl65_on : R.string.k_ttl65_off));
                        return;
                    } else {
                        I0.f.h("binding");
                        throw null;
                    }
                }
                U.a aVar4 = mainActivity3.f2384t;
                if (aVar4 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                SwitchMaterial switchMaterial = aVar4.q2;
                I0.f.d(switchMaterial, "swTtl65");
                mainActivity3.O1(switchMaterial, !z5);
                U.a aVar5 = mainActivity3.f2384t;
                if (aVar5 != null) {
                    aVar5.Q2.setText(mainActivity3.getString(R.string.k_ttl65_falhou));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                boolean z6 = this.f617c;
                boolean z7 = this.f618d;
                if (quickAccessFloaterService.f2459L) {
                    if (!z6) {
                        quickAccessFloaterService.f2459L = false;
                        return;
                    }
                    QuickAccessFloaterService.n0 = true;
                    quickAccessFloaterService.P = SystemClock.elapsedRealtime();
                    C.a aVar6 = new C.a(quickAccessFloaterService, quickAccessFloaterService.f2471a, 2);
                    quickAccessFloaterService.f2463Q = aVar6;
                    quickAccessFloaterService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, aVar6);
                    C0090k4 c0090k4 = new C0090k4(quickAccessFloaterService, 5);
                    quickAccessFloaterService.f2464R = c0090k4;
                    quickAccessFloaterService.registerReceiver(c0090k4, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                    if (z7 && quickAccessFloaterService.S == null) {
                        LinearLayout linearLayout = new LinearLayout(quickAccessFloaterService);
                        linearLayout.setOrientation(1);
                        linearLayout.setGravity(17);
                        linearLayout.setBackgroundColor(-16777216);
                        linearLayout.setClickable(true);
                        linearLayout.setFocusable(false);
                        linearLayout.setOnClickListener(new ViewOnClickListenerC0042c4(quickAccessFloaterService, 1));
                        TextView textView = new TextView(quickAccessFloaterService);
                        textView.setText(DateFormat.format("HH:mm", System.currentTimeMillis()));
                        textView.setTextSize(88.0f);
                        textView.setTypeface(textView.getTypeface(), 1);
                        textView.setTextColor(Color.parseColor("#5A5A5A"));
                        textView.setGravity(17);
                        quickAccessFloaterService.f2465T = textView;
                        linearLayout.addView(textView);
                        quickAccessFloaterService.S = linearLayout;
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 256, -1);
                        try {
                            WindowManager windowManager = quickAccessFloaterService.b;
                            if (windowManager != null) {
                                windowManager.addView(linearLayout, layoutParams);
                            }
                            quickAccessFloaterService.f2471a.post(quickAccessFloaterService.f2466U);
                            return;
                        } catch (Exception e2) {
                            Log.w("QuickAccessFloater", "showScreenOffClockOverlay: " + e2.getMessage() + " — desfazendo turnOffScreen");
                            quickAccessFloaterService.S = null;
                            quickAccessFloaterService.f2465T = null;
                            quickAccessFloaterService.Z();
                            return;
                        }
                    }
                    return;
                }
                return;
        }
    }

    public /* synthetic */ H2(boolean z2, boolean z3, MainActivity mainActivity) {
        this.f616a = 0;
        this.f617c = z2;
        this.f618d = z3;
        this.b = mainActivity;
    }
}
