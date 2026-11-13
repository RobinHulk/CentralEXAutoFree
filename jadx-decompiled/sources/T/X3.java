package T;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class X3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f844a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ X3(QuickAccessFloaterService quickAccessFloaterService, int i2) {
        this.f844a = i2;
        this.b = quickAccessFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LinearLayout linearLayout;
        Set setSingleton;
        Drawable applicationIcon;
        int i2 = 12;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f844a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.i();
                break;
            case 1:
                if (!quickAccessFloaterService.f2502z) {
                    quickAccessFloaterService.q();
                }
                quickAccessFloaterService.i();
                LinearLayout linearLayout2 = quickAccessFloaterService.f2484i;
                boolean z2 = linearLayout2 != null && linearLayout2.getVisibility() == 0;
                LinearLayout linearLayout3 = quickAccessFloaterService.f2484i;
                if (linearLayout3 != null && (linearLayout = quickAccessFloaterService.f2481g) != null) {
                    linearLayout.removeView(linearLayout3);
                }
                LinearLayout linearLayoutG = quickAccessFloaterService.g();
                linearLayoutG.setVisibility(z2 ? 0 : 8);
                quickAccessFloaterService.f2484i = linearLayoutG;
                LinearLayout linearLayout4 = quickAccessFloaterService.f2481g;
                if (linearLayout4 != null) {
                    linearLayout4.addView(linearLayoutG);
                }
                if (z2) {
                    quickAccessFloaterService.I();
                }
                quickAccessFloaterService.M(4000L);
                break;
            case 2:
                List list2 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.e();
                break;
            case 3:
                List list3 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.u().startScan();
                quickAccessFloaterService.u().reconnect();
                break;
            case 4:
                List list4 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.S(false);
                break;
            case 5:
                if (quickAccessFloaterService.f2478e == null) {
                    LinearLayout linearLayout5 = new LinearLayout(quickAccessFloaterService);
                    linearLayout5.setOrientation(1);
                    linearLayout5.setGravity(17);
                    linearLayout5.setBackgroundColor(Color.parseColor("#B0000000"));
                    linearLayout5.setClickable(true);
                    linearLayout5.setFocusable(true);
                    LinearLayout linearLayout6 = new LinearLayout(quickAccessFloaterService);
                    linearLayout6.setOrientation(1);
                    linearLayout6.setBackground(quickAccessFloaterService.K(QuickAccessFloaterService.f2440o0, 18, Integer.valueOf(QuickAccessFloaterService.f2442q0), 1));
                    linearLayout6.setPadding(quickAccessFloaterService.p(20), quickAccessFloaterService.p(18), quickAccessFloaterService.p(20), quickAccessFloaterService.p(18));
                    TextView textView = new TextView(quickAccessFloaterService);
                    textView.setText(quickAccessFloaterService.getString(R.string.k_screen_off_title));
                    textView.setTextSize(18.0f);
                    textView.setTypeface(textView.getTypeface(), 1);
                    int i3 = QuickAccessFloaterService.f2446v0;
                    textView.setTextColor(i3);
                    linearLayout6.addView(textView);
                    TextView textView2 = new TextView(quickAccessFloaterService);
                    textView2.setText(quickAccessFloaterService.getString(R.string.k_screen_off_message));
                    textView2.setTextSize(15.0f);
                    textView2.setTextColor(QuickAccessFloaterService.f2447w0);
                    textView2.setPadding(0, quickAccessFloaterService.p(10), 0, quickAccessFloaterService.p(16));
                    linearLayout6.addView(textView2, new LinearLayout.LayoutParams(quickAccessFloaterService.p(260), -2));
                    TextView textView3 = new TextView(quickAccessFloaterService);
                    textView3.setText(quickAccessFloaterService.getString(R.string.k_got_it));
                    textView3.setTextSize(15.0f);
                    textView3.setTypeface(textView3.getTypeface(), 1);
                    textView3.setGravity(17);
                    textView3.setTextColor(i3);
                    textView3.setBackground(quickAccessFloaterService.K(QuickAccessFloaterService.f2443r0, 12, null, 0));
                    textView3.setPadding(0, quickAccessFloaterService.p(12), 0, quickAccessFloaterService.p(12));
                    textView3.setOnClickListener(new ViewOnClickListenerC0042c4(quickAccessFloaterService, 2));
                    linearLayout6.addView(textView3, new LinearLayout.LayoutParams(-1, -2));
                    linearLayout5.addView(linearLayout6);
                    quickAccessFloaterService.f2478e = linearLayout5;
                    ViewGroup.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 256, -3);
                    try {
                        WindowManager windowManager = quickAccessFloaterService.b;
                        if (windowManager != null) {
                            windowManager.addView(linearLayout5, layoutParams);
                        }
                    } catch (Exception e2) {
                        M.d0.n(e2, new StringBuilder("showScreenOffWarning: "), "QuickAccessFloater");
                        quickAccessFloaterService.f2478e = null;
                        quickAccessFloaterService.S(false);
                        return;
                    }
                    break;
                }
                break;
            case 6:
                List list5 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.e();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                List list6 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.getClass();
                String strG = QuickAccessFloaterService.G(5000, "settings get global policy_control");
                if (O0.s.w0(strG, "ADB_FAIL")) {
                    quickAccessFloaterService.f2471a.post(new X3(quickAccessFloaterService, 13));
                } else {
                    boolean zX0 = O0.j.x0(strG, "immersive.full", false);
                    QuickAccessFloaterService.G(5000, zX0 ? "settings delete global policy_control" : "settings put global policy_control immersive.full=*");
                    QuickAccessFloaterService.G(5000, "am force-stop com.android.systemui");
                    L3.f671a.b("QuickAccess", "tela cheia: ".concat(zX0 ? "desligada" : "ligada"));
                }
                break;
            case Response.NO /* 8 */:
                List list7 = QuickAccessFloaterService.f2436j0;
                if (z4.c()) {
                    quickAccessFloaterService.f2471a.post(new X3(quickAccessFloaterService, i2));
                }
                break;
            case 9:
                List list8 = QuickAccessFloaterService.f2436j0;
                Object objF0 = w0.q.f4190a;
                PackageManager packageManager = quickAccessFloaterService.getPackageManager();
                try {
                    List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                    I0.f.d(installedApplications, "getInstalledApplications(...)");
                    ArrayList<ApplicationInfo> arrayList = new ArrayList();
                    for (Object obj : installedApplications) {
                        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                        int i4 = applicationInfo.flags;
                        if ((i4 & 1) == 0 && (i4 & 128) == 0 && !I0.f.a(applicationInfo.packageName, quickAccessFloaterService.getPackageName())) {
                            arrayList.add(obj);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        for (ApplicationInfo applicationInfo2 : arrayList) {
                            sb.append("pidof '");
                            sb.append(applicationInfo2.packageName);
                            sb.append("' >/dev/null 2>&1 && echo RUNNING:");
                            sb.append(applicationInfo2.packageName);
                            sb.append('\n');
                        }
                        String string = sb.toString();
                        I0.f.d(string, "toString(...)");
                        Iterator it = new N0.c(new N0.c(O0.j.G0(quickAccessFloaterService.b(10000, string)), new C0029a3(8), 3), new C0029a3(9), 1).iterator();
                        if (it.hasNext()) {
                            String str = (String) it.next();
                            List list9 = QuickAccessFloaterService.f2436j0;
                            I0.f.e(str, "it");
                            String strK0 = O0.j.K0(str, "RUNNING:");
                            if (it.hasNext()) {
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                linkedHashSet.add(strK0);
                                while (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    List list10 = QuickAccessFloaterService.f2436j0;
                                    I0.f.e(str2, "it");
                                    linkedHashSet.add(O0.j.K0(str2, "RUNNING:"));
                                }
                                setSingleton = linkedHashSet;
                            } else {
                                setSingleton = Collections.singleton(strK0);
                                I0.f.d(setSingleton, "singleton(...)");
                            }
                        } else {
                            setSingleton = w0.s.f4192a;
                        }
                        ArrayList<ApplicationInfo> arrayList2 = new ArrayList();
                        for (Object obj2 : arrayList) {
                            if (setSingleton.contains(((ApplicationInfo) obj2).packageName)) {
                                arrayList2.add(obj2);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(w0.k.V(arrayList2));
                        for (ApplicationInfo applicationInfo3 : arrayList2) {
                            String str3 = applicationInfo3.packageName;
                            String string2 = packageManager.getApplicationLabel(applicationInfo3).toString();
                            try {
                                applicationIcon = packageManager.getApplicationIcon(applicationInfo3);
                            } catch (Exception unused) {
                                applicationIcon = null;
                            }
                            arrayList3.add(new v0.d(str3, string2, applicationIcon));
                        }
                        objF0 = w0.i.f0(arrayList3, new E(12));
                    }
                } catch (Exception e3) {
                    M.d0.n(e3, new StringBuilder("runningUserApps: "), "QuickAccessFloater");
                }
                quickAccessFloaterService.f2471a.post(new H(objF0, 29, quickAccessFloaterService));
                break;
            case 10:
                if (quickAccessFloaterService.f2502z) {
                    quickAccessFloaterService.m();
                }
                break;
            case 11:
                TextView textView4 = quickAccessFloaterService.f2496t;
                if (textView4 != null) {
                    quickAccessFloaterService.U(textView4);
                }
                break;
            case Response.BAD /* 12 */:
                List list11 = QuickAccessFloaterService.f2436j0;
                quickAccessFloaterService.getClass();
                AlertDialog alertDialogCreate = new AlertDialog.Builder(quickAccessFloaterService).setTitle(quickAccessFloaterService.getString(R.string.k_feature_enabled_title)).setMessage(quickAccessFloaterService.getString(R.string.k_freeform_setup_message)).setPositiveButton(quickAccessFloaterService.getString(R.string.common_ok), (DialogInterface.OnClickListener) null).setCancelable(false).create();
                Window window = alertDialogCreate.getWindow();
                if (window != null) {
                    window.setType(2038);
                }
                try {
                    alertDialogCreate.show();
                } catch (Exception e4) {
                    M.d0.n(e4, new StringBuilder("showFreeformSetupDialog: "), "QuickAccessFloater");
                    return;
                }
                break;
            case 13:
                List list12 = QuickAccessFloaterService.f2436j0;
                Toast.makeText(quickAccessFloaterService, quickAccessFloaterService.getString(R.string.k_qa_fullscreen_sem_adb), 1).show();
                break;
            default:
                List list13 = QuickAccessFloaterService.f2436j0;
                try {
                    A.b.k0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(quickAccessFloaterService.f2460M));
                } catch (Exception e5) {
                    M.d0.n(e5, new StringBuilder("wakeScreen: "), "QuickAccessFloater");
                }
                try {
                    quickAccessFloaterService.b(3000, "settings put global heads_up_notifications_enabled " + quickAccessFloaterService.f2461N);
                    break;
                } catch (Exception unused2) {
                }
                try {
                    quickAccessFloaterService.b(3000, "settings put global audio_speed_volume_enable " + quickAccessFloaterService.f2462O);
                } catch (Exception unused3) {
                    return;
                }
                break;
        }
    }
}
