package T;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007e.C0205e;

/* JADX INFO: renamed from: T.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0164y0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1212a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1215e;

    public /* synthetic */ RunnableC0164y0(MainActivity mainActivity, C0089k3 c0089k3, String str, String str2) {
        this.f1212a = 4;
        this.b = mainActivity;
        this.f1215e = c0089k3;
        this.f1213c = str;
        this.f1214d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i2;
        String string;
        I0.i iVar;
        String string2;
        int i3 = 12;
        int i4 = 14;
        int i5 = 0;
        switch (this.f1212a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                String str = Z.f866a;
                String str2 = (String) this.f1213c;
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                String str3 = (String) this.f1214d;
                boolean zA = Z.a(centralWatchdogService, str2, str3);
                L3 l3 = L3.f671a;
                StringBuilder sb = new StringBuilder("CarPlay identity (");
                M.d0.q(sb, (String) this.f1215e, "): ", str2, " (");
                if (str3 == null) {
                    str3 = "?";
                }
                sb.append(str3);
                sb.append(") → ");
                sb.append(zA ? "aceita" : "recusada");
                l3.b("CentralWatchdog", sb.toString());
                return;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                if (homeFloatingWidgetsService.f2267D != ((FrameLayout) this.f1213c)) {
                    return;
                }
                LinearLayout linearLayout = (LinearLayout) this.f1214d;
                linearLayout.removeAllViews();
                ArrayList<B1> arrayList = (ArrayList) this.f1215e;
                float f = 15.0f;
                if (arrayList.isEmpty()) {
                    TextView textView = new TextView(homeFloatingWidgetsService);
                    textView.setText("Não foi possível ler o uso de CPU.");
                    textView.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_muted));
                    textView.setTextSize(15.0f);
                    linearLayout.addView(textView);
                    return;
                }
                for (B1 b1 : arrayList) {
                    LinearLayout linearLayout2 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout2.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = homeFloatingWidgetsService.q(10);
                    linearLayout2.setLayoutParams(layoutParams);
                    LinearLayout linearLayout3 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout3.setOrientation(i5);
                    linearLayout3.setGravity(16);
                    ImageView imageView = new ImageView(homeFloatingWidgetsService);
                    imageView.setImageDrawable(b1.f481c);
                    int iQ = homeFloatingWidgetsService.q(30);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iQ, iQ);
                    layoutParams2.setMarginEnd(homeFloatingWidgetsService.q(i3));
                    imageView.setLayoutParams(layoutParams2);
                    linearLayout3.addView(imageView);
                    TextView textView2 = new TextView(homeFloatingWidgetsService);
                    textView2.setText(b1.b);
                    textView2.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
                    textView2.setTextSize(f);
                    textView2.setMaxLines(1);
                    textView2.setEllipsize(TextUtils.TruncateAt.END);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(i5, -2, 1.0f));
                    linearLayout3.addView(textView2);
                    TextView textView3 = new TextView(homeFloatingWidgetsService);
                    float f2 = b1.f482d;
                    if (f2 >= 10.0f) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(Math.round(f2));
                        sb2.append('%');
                        string = sb2.toString();
                        i2 = 1;
                    } else {
                        i2 = 1;
                        string = String.format("%.1f%%", Arrays.copyOf(new Object[]{Float.valueOf(f2)}, 1));
                    }
                    textView3.setText(string);
                    textView3.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_accent));
                    textView3.setTextSize(16.0f);
                    textView3.setTypeface(textView3.getTypeface(), i2);
                    linearLayout3.addView(textView3);
                    if (b1.f483e) {
                        View view = new View(homeFloatingWidgetsService);
                        view.setLayoutParams(new LinearLayout.LayoutParams(homeFloatingWidgetsService.q(14) + homeFloatingWidgetsService.q(28), homeFloatingWidgetsService.q(1)));
                        linearLayout3.addView(view);
                    } else {
                        TextView textView4 = new TextView(homeFloatingWidgetsService);
                        textView4.setText("✕");
                        textView4.setTextColor(-1);
                        textView4.setTextSize(f);
                        textView4.setGravity(17);
                        int iQ2 = homeFloatingWidgetsService.q(28);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iQ2, iQ2);
                        layoutParams3.setMarginStart(homeFloatingWidgetsService.q(14));
                        textView4.setLayoutParams(layoutParams3);
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setShape(1);
                        gradientDrawable.setColor(-5036514);
                        textView4.setBackground(gradientDrawable);
                        textView4.setOnClickListener(new ViewOnClickListenerC0143u(homeFloatingWidgetsService, 1, b1));
                        linearLayout3.addView(textView4);
                    }
                    linearLayout2.addView(linearLayout3);
                    float fN = A.b.n(f2, 0.0f, 100.0f);
                    float f3 = fN > 0.0f ? fN >= 1.0f ? fN : 1.0f : 0.0f;
                    LinearLayout linearLayout4 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout4.setOrientation(0);
                    linearLayout4.setWeightSum(100.0f);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, homeFloatingWidgetsService.q(6));
                    layoutParams4.topMargin = homeFloatingWidgetsService.q(6);
                    linearLayout4.setLayoutParams(layoutParams4);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setCornerRadius(homeFloatingWidgetsService.q(3));
                    gradientDrawable2.setColor(homeFloatingWidgetsService.getColor(R.color.cx_surface_alt));
                    linearLayout4.setBackground(gradientDrawable2);
                    View view2 = new View(homeFloatingWidgetsService);
                    GradientDrawable gradientDrawable3 = new GradientDrawable();
                    gradientDrawable3.setCornerRadius(homeFloatingWidgetsService.q(3));
                    gradientDrawable3.setColor(homeFloatingWidgetsService.getColor(R.color.cx_accent));
                    view2.setBackground(gradientDrawable3);
                    view2.setLayoutParams(new LinearLayout.LayoutParams(0, -1, f3));
                    linearLayout4.addView(view2);
                    if (f3 < 100.0f) {
                        View view3 = new View(homeFloatingWidgetsService);
                        view3.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 100.0f - f3));
                        linearLayout4.addView(view3);
                    }
                    linearLayout2.addView(linearLayout4);
                    linearLayout.addView(linearLayout2);
                    i5 = 0;
                    i3 = 12;
                    f = 15.0f;
                }
                return;
            case 2:
                MainActivity mainActivity = (MainActivity) this.b;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Float f4 = (Float) this.f1213c;
                aVar.v2.setText(f4 != null ? String.format("%.1fV", Arrays.copyOf(new Object[]{Float.valueOf(f4.floatValue())}, 1)) : "n/d");
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.S2.setText(mainActivity.getString(R.string.k_car_connected));
                mainActivity.j1((Integer) this.f1214d, (Integer) this.f1215e);
                return;
            case 3:
                MainActivity mainActivity2 = (MainActivity) this.b;
                U.a aVar3 = mainActivity2.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar3.f1307l.setEnabled(true);
                String str4 = (String) this.f1214d;
                String str5 = (String) this.f1213c;
                if (str5 != null && str5.equals(str4)) {
                    String string3 = mainActivity2.getString(R.string.carplaymonitor_update_uptodate);
                    I0.f.d(string3, "getString(...)");
                    U.a aVar4 = mainActivity2.f2384t;
                    if (aVar4 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar4.w2.setText(string3);
                    Toast.makeText(mainActivity2, string3, 0).show();
                    return;
                }
                String string4 = str5 != null ? mainActivity2.getString(R.string.k_local_md5, O0.j.V0(8, str5)) : mainActivity2.getString(R.string.k_binary_not_found_locally);
                I0.f.b(string4);
                U.a aVar5 = mainActivity2.f2384t;
                if (aVar5 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar5.w2.setText(mainActivity2.getString(R.string.k_new_version_available_generic, string4));
                C0081j1 c0081j1 = new C0081j1(mainActivity2);
                String string5 = mainActivity2.getString(R.string.k_update_available_carplaymonitor_title);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f2991d = string5;
                c0205e.f = mainActivity2.getString(R.string.k_carplaymonitor_update_message, O0.j.V0(8, str4), string4);
                c0081j1.h(mainActivity2.getString(R.string.common_install), new DialogInterfaceOnClickListenerC0067h(mainActivity2, (C0083j3) this.f1215e, str4, 1));
                c0081j1.f(mainActivity2.getString(R.string.common_cancel), null);
                c0081j1.j();
                return;
            case 4:
                MainActivity mainActivity3 = (MainActivity) this.b;
                C0089k3 c0089k3 = (C0089k3) this.f1215e;
                String str6 = (String) this.f1213c;
                String str7 = (String) this.f1214d;
                int i6 = MainActivity.u0;
                I0.i iVar2 = new I0.i();
                try {
                    mainActivity3.getClass();
                    mainActivity3.C1(8000, Y.C());
                    String str8 = c0089k3.b;
                    E2 e2 = new E2(11, mainActivity3);
                    File file = new File(mainActivity3.getCacheDir(), "ca_fix-update-staging.apk");
                    C0076i2 c0076i2 = new C0076i2(i3, mainActivity3);
                    iVar = iVar2;
                    try {
                        MainActivity.j0(mainActivity3, str8, file, "ca_fix", null, str6, 0, c0076i2, e2, 40);
                        mainActivity3.f2(file, "/data/local/tmp/ca_fix-update.apk", "ca_fix", false);
                        File file2 = new File("/data/local/tmp/ca_fix-update.apk");
                        String strT0 = MainActivity.t0(file2, "MD5");
                        if (!strT0.equals(str6)) {
                            file2.delete();
                            throw new IllegalStateException(mainActivity3.getString(R.string.k_md5_mismatch_manifest, O0.j.V0(8, str6), O0.j.V0(8, strT0)));
                        }
                        mainActivity3.B0().edit().putString("connadaptor_expected_md5", str6).putString("connadaptor_arquivo_versao", str7).apply();
                        mainActivity3.C0(mainActivity3.a0(), str7);
                        mainActivity3.A(mainActivity3.a0(), str7);
                        mainActivity3.f2387v.post(new G2(i4, mainActivity3));
                        String strC1 = mainActivity3.C1(120000, MainActivity.a2());
                        if (O0.j.x0(strC1, "Falha no ADB local", false)) {
                            throw new IllegalStateException(O0.j.X0(strC1).toString());
                        }
                        Pattern patternCompile = Pattern.compile("Failure \\[([A-Z_]+)");
                        I0.f.d(patternCompile, "compile(...)");
                        Matcher matcher = patternCompile.matcher(strC1);
                        I0.f.d(matcher, "matcher(...)");
                        O0.e eVarE = A.b.e(matcher, 0, strC1);
                        String str9 = eVarE != null ? (String) ((O0.d) eVarE.a()).get(1) : null;
                        if (str9 != null) {
                            throw new IllegalStateException(str9.equals("INSTALL_FAILED_VERSION_DOWNGRADE") ? mainActivity3.getString(R.string.k_connadaptor_install_downgrade, mainActivity3.d0(str7)) : mainActivity3.getString(R.string.k_connadaptor_install_failure, str9));
                        }
                        iVar.f122a = true;
                        mainActivity3.n0 = O0.j.x0(strC1, "BIND_ATIVO=1", false);
                        string2 = mainActivity3.getString(R.string.k_cafix_updated_monitor_restarted, O0.j.X0(strC1).toString());
                        I0.f.b(string2);
                        mainActivity3.f2387v.post(new RunnableC0168z(mainActivity3, string2, iVar, i4));
                        return;
                    } catch (Exception e3) {
                        e = e3;
                        String message = e.getMessage();
                        if (message == null) {
                            message = e.getClass().getSimpleName();
                        }
                        string2 = mainActivity3.getString(R.string.k_connadaptor_error, message);
                    }
                } catch (Exception e4) {
                    e = e4;
                    iVar = iVar2;
                }
                break;
            case 5:
                int i7 = MainActivity.u0;
                String str10 = (String) this.f1213c;
                boolean zX0 = O0.j.x0(str10, "Success", true);
                MainActivity mainActivity4 = (MainActivity) this.b;
                String string6 = zX0 ? mainActivity4.getString(R.string.k_app_removed_success) : mainActivity4.getString(R.string.k_app_remove_failed);
                I0.f.b(string6);
                Toast.makeText(mainActivity4, string6, 0).show();
                mainActivity4.v("Apps", "pm uninstall " + ((String) this.f1214d) + ": " + str10);
                ((H0.a) this.f1215e).a();
                return;
            case 6:
                MainActivity mainActivity5 = (MainActivity) this.b;
                String str11 = (String) this.f1213c;
                String str12 = (String) this.f1214d;
                File file3 = (File) this.f1215e;
                int i8 = MainActivity.u0;
                try {
                    C0089k3 c0089k3P0 = mainActivity5.p0(str11, str12);
                    String strV0 = MainActivity.V0(c0089k3P0.f1033a);
                    if (strV0 == null) {
                        return;
                    }
                    File file4 = new File(mainActivity5.getCacheDir(), "ca_fix-outra-variante");
                    MainActivity.j0(mainActivity5, c0089k3P0.b, file4, "ca_fix ".concat(str12), null, strV0, 2, null, null, 200);
                    String absolutePath = file3.getAbsolutePath();
                    I0.f.d(absolutePath, "getAbsolutePath(...)");
                    mainActivity5.f2(file4, absolutePath, "ca_fix ".concat(str12), false);
                    L3.f671a.b("Update", "outra variante baixada e guardada em cache: " + str12 + '/' + str11);
                    return;
                } catch (Exception e5) {
                    StringBuilder sbJ = M.d0.j("outra variante (", str12, ") não baixou: ");
                    sbJ.append(e5.getMessage());
                    mainActivity5.w("Update", sbJ.toString());
                    return;
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                x4 x4Var = (x4) this.b;
                SplitFloaterService splitFloaterService = (SplitFloaterService) this.f1213c;
                y4 y4Var = (y4) this.f1214d;
                x4 x4Var2 = (x4) this.f1215e;
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                I0.l lVar = z4.f1244a;
                boolean zJ = z4.j(x4Var, splitFloaterService.d(y4Var));
                String str13 = z4.f;
                boolean zJ2 = z4.j(x4Var2, splitFloaterService.e(y4Var));
                String str14 = z4.f;
                splitFloaterService.f2517o = false;
                splitFloaterService.f2511i.post(new t4(splitFloaterService, 0));
                if (zJ && zJ2) {
                    return;
                }
                if (zJ) {
                    str13 = str14;
                }
                String string7 = splitFloaterService.getString(R.string.k_split_adjust_failed, str13);
                I0.f.d(string7, "getString(...)");
                splitFloaterService.g(string7);
                return;
            default:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                tempBattPillFloaterService.f2530h = (Float) this.f1213c;
                tempBattPillFloaterService.f2531i = (Float) this.f1214d;
                tempBattPillFloaterService.f();
                tempBattPillFloaterService.f2528e.postDelayed((H4) this.f1215e, 5000L);
                return;
        }
    }

    public /* synthetic */ RunnableC0164y0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f1212a = i2;
        this.b = obj;
        this.f1213c = obj2;
        this.f1214d = obj3;
        this.f1215e = obj4;
    }

    public /* synthetic */ RunnableC0164y0(String str, MainActivity mainActivity, String str2, H0.a aVar) {
        this.f1212a = 5;
        this.f1213c = str;
        this.b = mainActivity;
        this.f1214d = str2;
        this.f1215e = aVar;
    }
}
