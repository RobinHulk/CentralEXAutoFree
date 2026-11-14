package com.ex.auto;

import A.b;
import I0.f;
import L0.c;
import T.C0085k;
import T.ViewOnClickListenerC0073i;
import T.ViewOnClickListenerC0079j;
import T.Y;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import p007e.AbstractActivityC0210j;
import w0.k;

/* JADX INFO: loaded from: classes.dex */
public final class AcProgramListActivity extends AbstractActivityC0210j {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f2112u = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LinearLayout f2113t;

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ac_program_list);
        this.f2113t = (LinearLayout) findViewById(R.id.containerAcSlots);
        ((Button) findViewById(R.id.btnAcListBack)).setOnClickListener(new ViewOnClickListenerC0079j(this, 0));
    }

    @Override // p007e.AbstractActivityC0210j, android.app.Activity
    public final void onResume() {
        String string;
        super.onResume();
        LinearLayout linearLayout = this.f2113t;
        if (linearLayout == null) {
            f.h("container");
            throw null;
        }
        linearLayout.removeAllViews();
        c cVarI0 = b.i0(0, 3);
        ArrayList arrayList = new ArrayList(k.V(cVarI0));
        Iterator it = cVarI0.iterator();
        while (((L0.b) it).f136c) {
            arrayList.add(Y.T(this, ((L0.b) it).a()));
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            LinearLayout linearLayout2 = this.f2113t;
            if (linearLayout2 == null) {
                f.h("container");
                throw null;
            }
            C0085k c0085k = (C0085k) arrayList.get(i2);
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(1);
            linearLayout3.setBackgroundResource(R.drawable.bg_central_ex_card);
            linearLayout3.setPadding(s(16), s(16), s(16), s(16));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = i2 == 0 ? 0 : s(12);
            linearLayout3.setLayoutParams(layoutParams);
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(0);
            linearLayout4.setGravity(16);
            TextView textView = new TextView(this);
            int i3 = i2 + 1;
            textView.setText(getString(R.string.k_ac_slot_label, Integer.valueOf(i3)));
            textView.setTextColor(getColor(R.color.cx_text_primary));
            textView.setTextSize(18.0f);
            textView.setTypeface(textView.getTypeface(), 1);
            textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout4.addView(textView);
            linearLayout3.addView(linearLayout4);
            TextView textView2 = new TextView(this);
            if (c0085k != null) {
                string = Y.i0(c0085k);
            } else {
                string = getString(R.string.k_ac_list_empty_slot);
                f.d(string, "getString(...)");
            }
            textView2.setText(string);
            textView2.setTextColor(getColor(R.color.cx_text_secondary));
            textView2.setTextSize(15.0f);
            int iS = s(6);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = iS;
            textView2.setLayoutParams(layoutParams2);
            linearLayout3.addView(textView2);
            Button button = new Button(this);
            button.setText(getString(c0085k != null ? R.string.k_ac_list_edit : R.string.k_ac_list_create));
            button.setAllCaps(false);
            button.setTextColor(getColor(R.color.cx_text_hi));
            button.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface)));
            button.setTextSize(15.0f);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, s(48));
            layoutParams3.topMargin = s(12);
            button.setLayoutParams(layoutParams3);
            button.setOnClickListener(new ViewOnClickListenerC0073i(this, i2, 1));
            linearLayout3.addView(button);
            linearLayout2.addView(linearLayout3);
            i2 = i3;
        }
    }

    public final int s(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }
}
