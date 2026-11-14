package T;

import android.car.hardware.property.CarPropertyManager;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: T.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0076i2 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1005a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ C0076i2(int i2, MainActivity mainActivity) {
        this.f1005a = i2;
        this.b = mainActivity;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0759  */
    /* JADX WARN: Code duplicated, block: B:107:0x075d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0783  */
    @Override // H0.a
    public final Object a() throws IOException {
        U.a aVar;
        int i2;
        int i3 = 21;
        int i4 = 23;
        MainActivity mainActivity = this.b;
        switch (this.f1005a) {
            case 0:
                int i5 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.f2388w.execute(new U1(21, mainActivity));
                return v0.e.f4161c;
            case 1:
                int i6 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.f2388w.execute(new RunnableC0040c2(mainActivity, true, 0));
                Object objK0 = mainActivity.K0("getAVASMode", Arrays.copyOf(new Object[0], 0));
                Integer num = objK0 instanceof Integer ? (Integer) objK0 : null;
                int iIntValue = num != null ? num.intValue() : -1;
                if (iIntValue > 0) {
                    mainActivity.f2355L = iIntValue;
                }
                mainActivity.f2356M = iIntValue == 0;
                boolean z2 = mainActivity.B0().getBoolean("avas_muted_saved", false);
                if (iIntValue >= 0 && z2 && iIntValue != 0) {
                    mainActivity.K0("setAVASMode", 0);
                    mainActivity.f2356M = true;
                } else if (iIntValue >= 0 && !z2 && iIntValue == 0) {
                    int i7 = mainActivity.f2355L;
                    if (i7 < 1) {
                        i7 = 1;
                    }
                    mainActivity.K0("setAVASMode", Integer.valueOf(i7));
                    mainActivity.f2356M = false;
                }
                mainActivity.g1();
                L0.c cVar = new L0.c(1, 3, 1);
                ArrayList arrayList = new ArrayList(w0.k.V(cVar));
                Iterator it = cVar.iterator();
                while (((L0.b) it).f136c) {
                    arrayList.add(mainActivity.getString(R.string.k_type_n, Integer.valueOf(((L0.b) it).a())));
                }
                ArrayAdapter arrayAdapter = new ArrayAdapter(mainActivity, android.R.layout.simple_spinner_item, arrayList);
                arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.D1.setAdapter((SpinnerAdapter) arrayAdapter);
                CarPropertyManager carPropertyManager = mainActivity.f2350G;
                if (carPropertyManager != null) {
                    Integer numC = null;
                    for (int i8 : AbstractC0121q.f1100a) {
                        numC = U.c(carPropertyManager, 557871191, i8);
                        if (numC != null) {
                            if (numC != null) {
                                aVar = mainActivity.f2384t;
                                if (aVar != null) {
                                    I0.f.h("binding");
                                    throw null;
                                }
                                aVar.D1.setSelection(A.b.o(numC.intValue() - 1, 0, 2));
                                mainActivity.B0().edit().putInt("avas_sound_type_saved", numC.intValue()).apply();
                            }
                        }
                    }
                    if (numC != null) {
                        aVar = mainActivity.f2384t;
                        if (aVar != null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar.D1.setSelection(A.b.o(numC.intValue() - 1, 0, 2));
                        mainActivity.B0().edit().putInt("avas_sound_type_saved", numC.intValue()).apply();
                    }
                }
                return v0.e.f4161c;
            case 2:
                int i9 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.f2388w.execute(new U1(i4, mainActivity));
                if (mainActivity.f2346C != mainActivity.f2344A && mainActivity.f2390y.isEmpty()) {
                    mainActivity.o1();
                }
                return v0.e.f4161c;
            case 3:
                int i10 = MainActivity.u0;
                final MainActivity mainActivity2 = this.b;
                mainActivity2.C();
                U.a aVar3 = mainActivity2.f2384t;
                if (aVar3 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                LinearLayout linearLayout = aVar3.f1281R0.f1351t;
                linearLayout.removeAllViews();
                float f = mainActivity2.getResources().getDisplayMetrics().density;
                String string = mainActivity2.getString(R.string.k_widgets_header);
                I0.f.d(string, "getString(...)");
                linearLayout.addView(MainActivity.L(mainActivity2, string));
                String string2 = mainActivity2.getString(R.string.k_widgets_desc);
                I0.f.d(string2, "getString(...)");
                TextView textViewK = MainActivity.K(mainActivity2, f, string2);
                int i11 = (int) (6 * f);
                int i12 = (int) (4 * f);
                textViewK.setPadding(0, i11, 0, i12);
                linearLayout.addView(textViewK);
                LinearLayout linearLayout2 = new LinearLayout(mainActivity2);
                linearLayout2.setOrientation(1);
                linearLayout2.setBackgroundResource(R.drawable.bg_central_ex_card);
                int i13 = (int) (16 * f);
                linearLayout2.setPadding(i13, i13, i13, i13);
                String string3 = mainActivity2.getString(R.string.k_widget_bg_opacity_label);
                I0.f.d(string3, "getString(...)");
                linearLayout2.addView(MainActivity.O(mainActivity2, f, string3, mainActivity2.B0().getInt("widget_bg_opacity_pct", 100), 0, 100, new W1(i3, mainActivity2)));
                String string4 = mainActivity2.getString(R.string.k_widget_bg_opacity_desc);
                I0.f.d(string4, "getString(...)");
                linearLayout2.addView(MainActivity.K(mainActivity2, f, string4));
                String string5 = mainActivity2.getString(R.string.k_widgets_poslock_all_label);
                I0.f.d(string5, "getString(...)");
                boolean z3 = mainActivity2.B0().getBoolean("widgets_poslock_all", false);
                W1 w1 = new W1(i4, mainActivity2);
                LinearLayout linearLayout3 = new LinearLayout(mainActivity2);
                linearLayout3.setOrientation(0);
                linearLayout3.setGravity(16);
                float f2 = 8;
                int i14 = (int) (mainActivity2.getResources().getDisplayMetrics().density * f2);
                SwitchMaterial switchMaterialJ2 = mainActivity2.j2(z3, w1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMarginEnd(i14);
                linearLayout3.addView(switchMaterialJ2, layoutParams);
                TextView textView = new TextView(mainActivity2);
                textView.setText(string5);
                textView.setTextColor(mainActivity2.getColor(R.color.cx_text_hi));
                textView.setTextSize(16.0f);
                linearLayout3.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.topMargin = i11;
                linearLayout2.addView(linearLayout3, layoutParams2);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                int i15 = (int) (10 * f);
                layoutParams3.topMargin = i15;
                linearLayout.addView(linearLayout2, layoutParams3);
                LinearLayout linearLayout4 = new LinearLayout(mainActivity2);
                linearLayout4.setOrientation(1);
                linearLayout4.setBackgroundResource(R.drawable.bg_central_ex_card);
                linearLayout4.setPadding(i13, i13, i13, i13);
                LinearLayout linearLayout5 = new LinearLayout(mainActivity2);
                linearLayout5.setOrientation(0);
                linearLayout5.setGravity(16);
                SwitchMaterial switchMaterialJ3 = mainActivity2.j2(mainActivity2.B0().getBoolean("widget_float_apps_enabled", false), new W1(24, mainActivity2));
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                int i16 = (int) (f2 * f);
                layoutParams4.setMarginEnd(i16);
                linearLayout5.addView(switchMaterialJ3, layoutParams4);
                String string6 = mainActivity2.getString(R.string.k_widget_apps_title);
                I0.f.d(string6, "getString(...)");
                TextView textViewL = MainActivity.L(mainActivity2, string6);
                textViewL.setTextSize(17.0f);
                linearLayout5.addView(textViewL, new LinearLayout.LayoutParams(-2, -2));
                linearLayout5.addView(new View(mainActivity2), new LinearLayout.LayoutParams(0, 1, 1.0f));
                linearLayout5.addView(MainActivity.M(mainActivity2, f, "widget_float_apps_pinned"));
                linearLayout4.addView(linearLayout5, new LinearLayout.LayoutParams(-1, -2));
                String string7 = mainActivity2.getString(R.string.k_widget_apps_desc);
                I0.f.d(string7, "getString(...)");
                linearLayout4.addView(MainActivity.K(mainActivity2, f, string7));
                Button button = new Button(mainActivity2);
                button.setText(mainActivity2.getString(R.string.k_widget_apps_choose));
                button.setAllCaps(false);
                button.setTextSize(15.0f);
                button.setOnClickListener(new T1(21, mainActivity2));
                int i17 = (int) (48 * f);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, i17);
                layoutParams5.topMargin = i15;
                linearLayout4.addView(button, layoutParams5);
                LinearLayout linearLayout6 = new LinearLayout(mainActivity2);
                linearLayout6.setOrientation(0);
                String string8 = mainActivity2.getString(R.string.k_widget_apps_rows);
                I0.f.d(string8, "getString(...)");
                LinearLayout linearLayoutP = MainActivity.P(mainActivity2, f, string8, "widget_apps_rows", 2);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams6.setMarginEnd(i16);
                linearLayout6.addView(linearLayoutP, layoutParams6);
                String string9 = mainActivity2.getString(R.string.k_widget_apps_cols);
                I0.f.d(string9, "getString(...)");
                LinearLayout linearLayoutP2 = MainActivity.P(mainActivity2, f, string9, "widget_apps_cols", 3);
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams7.setMarginStart(i16);
                linearLayout6.addView(linearLayoutP2, layoutParams7);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                int i18 = (int) (12 * f);
                layoutParams8.topMargin = i18;
                linearLayout4.addView(linearLayout6, layoutParams8);
                LinearLayout linearLayout7 = new LinearLayout(mainActivity2);
                linearLayout7.setOrientation(0);
                String string10 = mainActivity2.getString(R.string.k_widget_size_short_label);
                I0.f.d(string10, "getString(...)");
                int i19 = i11;
                LinearLayout linearLayoutO = MainActivity.O(mainActivity2, f, string10, mainActivity2.B0().getInt("widget_float_apps_size_pct", 100), 50, 200, new W1(25, mainActivity2));
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams9.setMarginEnd(i16);
                linearLayout7.addView(linearLayoutO, layoutParams9);
                String string11 = mainActivity2.getString(R.string.k_widget_alpha_short_label);
                I0.f.d(string11, "getString(...)");
                LinearLayout linearLayoutO2 = MainActivity.O(mainActivity2, f, string11, mainActivity2.B0().getInt("widget_float_apps_alpha_pct", 100), 0, 100, new W1(26, mainActivity2));
                LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams10.setMarginStart(i16);
                linearLayout7.addView(linearLayoutO2, layoutParams10);
                LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-1, -2);
                int i20 = (int) (14 * f);
                layoutParams11.topMargin = i20;
                linearLayout4.addView(linearLayout7, layoutParams11);
                LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams12.topMargin = i18;
                linearLayout.addView(linearLayout4, layoutParams12);
                LinearLayout linearLayout8 = new LinearLayout(mainActivity2);
                linearLayout8.setOrientation(1);
                linearLayout8.setBackgroundResource(R.drawable.bg_central_ex_card);
                linearLayout8.setPadding(i13, i13, i13, i13);
                LinearLayout linearLayout9 = new LinearLayout(mainActivity2);
                linearLayout9.setOrientation(0);
                linearLayout9.setGravity(16);
                SwitchMaterial switchMaterialJ4 = mainActivity2.j2(mainActivity2.B0().getBoolean("widget_float_volume_enabled", false), new W1(27, mainActivity2));
                LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams13.setMarginEnd(i16);
                linearLayout9.addView(switchMaterialJ4, layoutParams13);
                String string12 = mainActivity2.getString(R.string.k_widget_volume_title);
                I0.f.d(string12, "getString(...)");
                TextView textViewL2 = MainActivity.L(mainActivity2, string12);
                textViewL2.setTextSize(17.0f);
                linearLayout9.addView(textViewL2, new LinearLayout.LayoutParams(-2, -2));
                linearLayout9.addView(new View(mainActivity2), new LinearLayout.LayoutParams(0, 1, 1.0f));
                linearLayout9.addView(MainActivity.M(mainActivity2, f, "widget_float_volume_pinned"));
                linearLayout8.addView(linearLayout9, new LinearLayout.LayoutParams(-1, -2));
                String string13 = mainActivity2.getString(R.string.k_widget_volume_desc);
                I0.f.d(string13, "getString(...)");
                linearLayout8.addView(MainActivity.K(mainActivity2, f, string13));
                LinearLayout linearLayout10 = new LinearLayout(mainActivity2);
                final int i21 = 0;
                linearLayout10.setOrientation(0);
                final Button button2 = new Button(mainActivity2);
                button2.setAllCaps(false);
                button2.setTextSize(15.0f);
                button2.setText(mainActivity2.getString(mainActivity2.B0().getBoolean("widget_volume_vertical", false) ? R.string.k_widget_volume_vertical : R.string.k_widget_volume_horizontal));
                mainActivity2.i2(button2, true);
                button2.setOnClickListener(new View.OnClickListener() { // from class: T.s2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Button button3 = button2;
                        MainActivity mainActivity3 = mainActivity2;
                        switch (i21) {
                            case 0:
                                int i22 = MainActivity.u0;
                                boolean z4 = mainActivity3.B0().getBoolean("widget_volume_vertical", false);
                                M.d0.m(mainActivity3, "widget_volume_vertical", !z4);
                                button3.setText(mainActivity3.getString(!z4 ? R.string.k_widget_volume_vertical : R.string.k_widget_volume_horizontal));
                                List list = HomeFloatingWidgetsService.f2262Q;
                                Y.Z("volume");
                                break;
                            default:
                                int i23 = MainActivity.u0;
                                boolean z5 = mainActivity3.B0().getBoolean("widget_volume_signs", false);
                                M.d0.m(mainActivity3, "widget_volume_signs", !z5);
                                button3.setText(mainActivity3.getString(!z5 ? R.string.k_widget_volume_signs : R.string.k_widget_volume_slider));
                                List list2 = HomeFloatingWidgetsService.f2262Q;
                                Y.Z("volume");
                                break;
                        }
                    }
                });
                final Button button3 = new Button(mainActivity2);
                button3.setAllCaps(false);
                button3.setTextSize(15.0f);
                button3.setText(mainActivity2.getString(mainActivity2.B0().getBoolean("widget_volume_signs", false) ? R.string.k_widget_volume_signs : R.string.k_widget_volume_slider));
                final int i22 = 1;
                mainActivity2.i2(button3, true);
                button3.setOnClickListener(new View.OnClickListener() { // from class: T.s2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Button button4 = button3;
                        MainActivity mainActivity3 = mainActivity2;
                        switch (i22) {
                            case 0:
                                int i23 = MainActivity.u0;
                                boolean z4 = mainActivity3.B0().getBoolean("widget_volume_vertical", false);
                                M.d0.m(mainActivity3, "widget_volume_vertical", !z4);
                                button4.setText(mainActivity3.getString(!z4 ? R.string.k_widget_volume_vertical : R.string.k_widget_volume_horizontal));
                                List list = HomeFloatingWidgetsService.f2262Q;
                                Y.Z("volume");
                                break;
                            default:
                                int i24 = MainActivity.u0;
                                boolean z5 = mainActivity3.B0().getBoolean("widget_volume_signs", false);
                                M.d0.m(mainActivity3, "widget_volume_signs", !z5);
                                button4.setText(mainActivity3.getString(!z5 ? R.string.k_widget_volume_signs : R.string.k_widget_volume_slider));
                                List list2 = HomeFloatingWidgetsService.f2262Q;
                                Y.Z("volume");
                                break;
                        }
                    }
                });
                LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, i17, 1.0f);
                layoutParams14.setMarginEnd(i12);
                linearLayout10.addView(button2, layoutParams14);
                LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(0, i17, 1.0f);
                layoutParams15.setMarginStart(i12);
                linearLayout10.addView(button3, layoutParams15);
                LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams16.topMargin = i18;
                linearLayout8.addView(linearLayout10, layoutParams16);
                LinearLayout linearLayout11 = new LinearLayout(mainActivity2);
                linearLayout11.setOrientation(0);
                String string14 = mainActivity2.getString(R.string.k_widget_size_short_label);
                I0.f.d(string14, "getString(...)");
                LinearLayout linearLayoutO3 = MainActivity.O(mainActivity2, f, string14, mainActivity2.B0().getInt("widget_float_volume_size_pct", 100), 50, 200, new W1(28, mainActivity2));
                LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams17.setMarginEnd(i16);
                linearLayout11.addView(linearLayoutO3, layoutParams17);
                String string15 = mainActivity2.getString(R.string.k_widget_alpha_short_label);
                I0.f.d(string15, "getString(...)");
                LinearLayout linearLayoutO4 = MainActivity.O(mainActivity2, f, string15, mainActivity2.B0().getInt("widget_float_volume_alpha_pct", 100), 0, 100, new W1(22, mainActivity2));
                LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                layoutParams18.setMarginStart(i16);
                linearLayout11.addView(linearLayoutO4, layoutParams18);
                LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams19.topMargin = i20;
                linearLayout8.addView(linearLayout11, layoutParams19);
                LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams20.topMargin = i18;
                linearLayout.addView(linearLayout8, layoutParams20);
                String string16 = mainActivity2.getString(R.string.k_widget_size_short_label);
                I0.f.d(string16, "getString(...)");
                String string17 = mainActivity2.getString(R.string.k_widget_alpha_short_label);
                I0.f.d(string17, "getString(...)");
                for (List list : w0.i.X(w0.j.T(MainActivity.S(mainActivity2, f, R.string.k_widget_float_drive_regen_title, R.string.k_widget_float_drive_regen_desc, "widget_float_drive_regen_enabled", "widget_float_drive_regen_pinned", "widget_float_drive_regen_size_pct", "widget_float_drive_regen_alpha_pct", string16, string17, "drive_regen"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_fan_title, R.string.k_widget_float_fan_desc, "widget_float_fan_enabled", "widget_float_fan_pinned", "widget_float_fan_size_pct", "widget_float_fan_alpha_pct", string16, string17, "fan"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_temp_title, R.string.k_widget_float_temp_desc, "widget_float_temp_enabled", "widget_float_temp_pinned", "widget_float_temp_size_pct", "widget_float_temp_alpha_pct", string16, string17, "temp"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_vent_title, R.string.k_widget_float_vent_desc, "widget_float_vent_enabled", "widget_float_vent_pinned", "widget_float_vent_size_pct", "widget_float_vent_alpha_pct", string16, string17, "vent"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_vent_fan_title, R.string.k_widget_float_vent_fan_desc, "widget_float_vent_fan_enabled", "widget_float_vent_fan_pinned", "widget_float_vent_fan_size_pct", "widget_float_vent_fan_alpha_pct", string16, string17, "vent_fan"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_heating_title, R.string.k_widget_float_heating_desc, "widget_float_heating_enabled", "widget_float_heating_pinned", "widget_float_heating_size_pct", "widget_float_heating_alpha_pct", string16, string17, "heating"), MainActivity.S(mainActivity2, f, R.string.k_widget_float_sysinfo_title, R.string.k_widget_float_sysinfo_desc, "widget_float_sysinfo_enabled", "widget_float_sysinfo_pinned", "widget_float_sysinfo_size_pct", "widget_float_sysinfo_alpha_pct", string16, string17, "sysinfo")), 2)) {
                    LinearLayout linearLayout12 = new LinearLayout(mainActivity2);
                    linearLayout12.setOrientation(0);
                    View view = (View) list.get(0);
                    LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                    layoutParams21.setMarginEnd(list.size() > 1 ? i19 : 0);
                    linearLayout12.addView(view, layoutParams21);
                    if (list.size() > 1) {
                        View view2 = (View) list.get(1);
                        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                        i2 = i19;
                        layoutParams22.setMarginStart(i2);
                        linearLayout12.addView(view2, layoutParams22);
                    } else {
                        i2 = i19;
                        linearLayout12.addView(new View(mainActivity2), new LinearLayout.LayoutParams(0, 0, 1.0f));
                    }
                    LinearLayout.LayoutParams layoutParams23 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams23.topMargin = i18;
                    linearLayout.addView(linearLayout12, layoutParams23);
                    i19 = i2;
                }
                return v0.e.f4161c;
            case 4:
                int i23 = MainActivity.u0;
                mainActivity.T0();
                return v0.e.f4161c;
            case 5:
                int i24 = MainActivity.u0;
                List list2 = J3.f637a;
                return J3.h(mainActivity, "botão");
            case 6:
                int i25 = MainActivity.u0;
                mainActivity.o1();
                return v0.e.f4161c;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i26 = MainActivity.u0;
                List list3 = J3.f637a;
                return J3.f(mainActivity, 0);
            case Response.NO /* 8 */:
                int i27 = MainActivity.u0;
                return mainActivity.getSharedPreferences("tela_preta_prefs", 0);
            case 9:
                int i28 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.f2388w.execute(new U1(i4, mainActivity));
                return v0.e.f4161c;
            case 10:
                int i29 = MainActivity.u0;
                C0119p3 c0119p3S0 = mainActivity.s0();
                String str = c0119p3S0.f1097d;
                if (str == null) {
                    return null;
                }
                if (O0.j.E0(str)) {
                    str = null;
                }
                if (str != null) {
                    return new v0.a(c0119p3S0.f1096c, str);
                }
                return null;
            case 11:
                int i30 = MainActivity.u0;
                return mainActivity.createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
            default:
                C0089k3 c0089k3Q0 = MainActivity.q0(mainActivity, null, 3);
                String strV0 = MainActivity.V0(c0089k3Q0.f1033a);
                if (strV0 != null) {
                    return new v0.a(c0089k3Q0.b, strV0);
                }
                return null;
        }
    }
}
