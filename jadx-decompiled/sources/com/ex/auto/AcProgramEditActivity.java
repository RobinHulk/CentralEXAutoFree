package com.ex.auto;

import I0.f;
import T.C0085k;
import T.C0091l;
import T.ViewOnClickListenerC0073i;
import T.Y;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class AcProgramEditActivity extends AbstractActivityC0210j {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f2106y = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2107t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList f2108u = new ArrayList();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public LinearLayout f2109v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f2110w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Switch f2111x;

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ac_program_edit);
        this.f2107t = getIntent().getIntExtra("slot", 0);
        this.f2109v = (LinearLayout) findViewById(R.id.containerAcSteps);
        this.f2110w = (TextView) findViewById(R.id.tvAcEditEmptyHint);
        this.f2111x = (Switch) findViewById(R.id.switchAcRepeat);
        C0085k c0085kT = Y.T(this, this.f2107t);
        ((TextView) findViewById(R.id.tvAcEditTitle)).setText(getString(c0085kT != null ? R.string.k_ac_edit_title_edit : R.string.k_ac_edit_title_new));
        if (c0085kT != null) {
            this.f2108u.addAll(c0085kT.f1026a);
            Switch r2 = this.f2111x;
            if (r2 == null) {
                f.h("switchRepeat");
                throw null;
            }
            r2.setChecked(c0085kT.b);
            ((Button) findViewById(R.id.btnAcEditDelete)).setVisibility(0);
        }
        final int i2 = 0;
        ((Button) findViewById(R.id.btnAcAddTemp)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i3 = 1;
                final int i4 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i2) {
                    case 0:
                        int i5 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i6) {
                                switch (i4) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i6 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i7) {
                                switch (i3) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i7 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i4)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i8 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i4, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i9 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i4)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i11 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i11, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i3 = 1;
        ((Button) findViewById(R.id.btnAcAddFan)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i4 = 1;
                final int i5 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i3) {
                    case 0:
                        int i6 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i7) {
                                switch (i5) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i7 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i8) {
                                switch (i4) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i8 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i5)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i9 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i5, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i5)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i12 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i12, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i4 = 2;
        ((Button) findViewById(R.id.btnAcAddWait)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i5 = 1;
                final int i6 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i4) {
                    case 0:
                        int i7 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i8) {
                                switch (i6) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i8 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                switch (i5) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i9 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i6)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i6, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i12 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i6)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i13 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i13, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i5 = 3;
        ((Button) findViewById(R.id.btnAcAddRecirc)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i6 = 1;
                final int i7 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i5) {
                    case 0:
                        int i8 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                switch (i7) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i9 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                switch (i6) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i7)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i7, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i12 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i13 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i7)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i14 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i14, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i6 = 4;
        ((Button) findViewById(R.id.btnAcEditBack)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i7 = 1;
                final int i8 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i6) {
                    case 0:
                        int i9 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                switch (i8) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i11) {
                                switch (i7) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i8)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i12 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i8, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i13 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i14 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i8)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i15 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i15, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i7 = 5;
        ((Button) findViewById(R.id.btnAcEditDelete)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i8 = 1;
                final int i9 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i7) {
                    case 0:
                        int i10 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i11) {
                                switch (i9) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i12) {
                                switch (i8) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i12 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i9)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i13 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i9, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i14 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i15 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i9)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i16 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i16, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        final int i8 = 6;
        ((Button) findViewById(R.id.btnAcEditSave)).setOnClickListener(new View.OnClickListener(this) { // from class: T.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                final int i9 = 1;
                final int i10 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i8) {
                    case 0:
                        int i11 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i12) {
                                switch (i10) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i12 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: T.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i13) {
                                switch (i9) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f2108u.add(new C0091l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f2108u.add(new C0091l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i13 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0067h(numberPicker3, numberPicker4, acProgramEditActivity, i10)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i14 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterfaceOnClickListenerC0055f(acProgramEditActivity, i10, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i15 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.finish();
                        return;
                    case 5:
                        int i16 = AcProgramEditActivity.f2106y;
                        acProgramEditActivity.getClass();
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new DialogInterfaceOnClickListenerC0061g(acProgramEditActivity, i10)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    default:
                        ArrayList arrayList = acProgramEditActivity.f2108u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i17 = acProgramEditActivity.f2107t;
                        ArrayList<C0091l> arrayListJ0 = w0.i.j0(arrayList);
                        Switch r1 = acProgramEditActivity.f2111x;
                        if (r1 == null) {
                            I0.f.h("switchRepeat");
                            throw null;
                        }
                        boolean zIsChecked = r1.isChecked();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        for (C0091l c0091l : arrayListJ0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", c0091l.f1035a);
                            jSONObject2.put("value", c0091l.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", zIsChecked);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i17, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                }
            }
        });
        t();
    }

    public final int s(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x00f2  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void t() {
        String string;
        LinearLayout linearLayout = this.f2109v;
        String str = "container";
        if (linearLayout == null) {
            f.h("container");
            throw null;
        }
        linearLayout.removeAllViews();
        TextView textView = this.f2110w;
        if (textView == null) {
            f.h("emptyHint");
            throw null;
        }
        ArrayList arrayList = this.f2108u;
        int i2 = 8;
        textView.setVisibility(arrayList.isEmpty() ? 0 : 8);
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            LinearLayout linearLayout2 = this.f2109v;
            if (linearLayout2 == null) {
                f.h(str);
                throw null;
            }
            C0091l c0091l = (C0091l) arrayList.get(i3);
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(0);
            linearLayout3.setGravity(16);
            linearLayout3.setBackgroundResource(R.drawable.bg_central_ex_card);
            linearLayout3.setPadding(s(14), s(10), s(14), s(10));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = i3 == 0 ? 0 : s(i2);
            linearLayout3.setLayoutParams(layoutParams);
            TextView textView2 = new TextView(this);
            StringBuilder sb = new StringBuilder();
            int i4 = i3 + 1;
            sb.append(i4);
            sb.append(". ");
            String str2 = c0091l.f1035a;
            int iHashCode = str2.hashCode();
            String str3 = str;
            double d2 = c0091l.b;
            switch (iHashCode) {
                case -934914614:
                    if (!str2.equals("recirc")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_recirc, getString(d2 == 1.0d ? R.string.k_ac_edit_recirc_internal_short : R.string.k_ac_edit_recirc_external_short));
                        f.d(string, "getString(...)");
                    }
                    break;
                case 101139:
                    if (!str2.equals("fan")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_fan, Integer.valueOf((int) d2));
                        f.d(string, "getString(...)");
                    }
                    break;
                case 3556308:
                    if (!str2.equals("temp")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_temp, Integer.valueOf((int) d2));
                        f.d(string, "getString(...)");
                    }
                    break;
                case 3641717:
                    if (!str2.equals("wait")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_wait, Y.G((int) d2));
                        f.d(string, "getString(...)");
                    }
                    break;
                default:
                    string = "?";
                    break;
            }
            sb.append(string);
            textView2.setText(sb.toString());
            textView2.setTextColor(getColor(R.color.cx_text_primary));
            textView2.setTextSize(16.0f);
            textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout3.addView(textView2);
            Button button = new Button(this);
            button.setText("✕");
            button.setAllCaps(false);
            button.setTextColor(getColor(R.color.cx_danger));
            button.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface)));
            button.setMinWidth(0);
            button.setMinimumWidth(s(48));
            button.setLayoutParams(new LinearLayout.LayoutParams(s(48), s(44)));
            button.setOnClickListener(new ViewOnClickListenerC0073i(this, i3, 0));
            linearLayout3.addView(button);
            linearLayout2.addView(linearLayout3);
            i3 = i4;
            str = str3;
            i2 = 8;
        }
    }
}
