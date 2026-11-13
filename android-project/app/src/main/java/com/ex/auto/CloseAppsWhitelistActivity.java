package com.ex.auto;

import I0.f;
import T.E;
import T.F;
import T.ViewOnClickListenerC0079j;
import T.Y;
import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import v0.d;
import w0.i;
import w0.k;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public final class CloseAppsWhitelistActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2236a = 0;

    public final int a(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View, android.widget.ScrollView] */
    /* JADX WARN: Type inference failed for: r14v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r18v0, types: [android.app.Activity, android.content.Context, android.content.ContextWrapper, com.ex.auto.CloseAppsWhitelistActivity] */
    /* JADX WARN: Type inference failed for: r4v11, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        List<d> listF0;
        Drawable applicationIcon;
        super.onCreate(bundle);
        PackageManager packageManager = getPackageManager();
        int i2 = 0;
        try {
            List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
            f.d(installedApplications, "getInstalledApplications(...)");
            ArrayList<ApplicationInfo> arrayList = new ArrayList();
            for (Object obj : installedApplications) {
                ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                int i3 = applicationInfo.flags;
                if ((i3 & 1) == 0 && (i3 & 128) == 0 && !f.a(applicationInfo.packageName, getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(k.V(arrayList));
            for (ApplicationInfo applicationInfo2 : arrayList) {
                String str = applicationInfo2.packageName;
                String string = packageManager.getApplicationLabel(applicationInfo2).toString();
                try {
                    applicationIcon = packageManager.getApplicationIcon(applicationInfo2);
                } catch (Exception unused) {
                    applicationIcon = null;
                }
                arrayList2.add(new d(str, string, applicationIcon));
            }
            listF0 = i.f0(arrayList2, new E(2));
        } catch (Exception unused2) {
            listF0 = q.f4190a;
        }
        Set setK0 = i.k0(Y.X(this));
        ?? linearLayout = new LinearLayout(this);
        boolean z2 = true;
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(getColor(R.color.cx_bg_panel));
        linearLayout.setPadding(a(24), a(24), a(24), a(24));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        int i4 = 16;
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.k_close_apps_whitelist_manage_title));
        int i5 = R.color.cx_text_primary;
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(24.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        int i6 = -2;
        float f = 1.0f;
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button button = new Button(this);
        button.setText(getString(R.string.k_ac_list_back));
        button.setAllCaps(false);
        button.setTextColor(getColor(R.color.cx_text_hi));
        button.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface)));
        button.setTextSize(17.0f);
        button.setLayoutParams(new LinearLayout.LayoutParams(a(150), a(52)));
        button.setOnClickListener(new ViewOnClickListenerC0079j(this, 3));
        linearLayout2.addView(textView);
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_close_apps_whitelist_manage_subtitle));
        textView2.setTextColor(getColor(R.color.cx_text_secondary));
        textView2.setTextSize(15.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = a(6);
        layoutParams.bottomMargin = a(16);
        textView2.setLayoutParams(layoutParams);
        linearLayout.addView(textView2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        ?? r5 = linearLayout3;
        for (d dVar : listF0) {
            String str2 = (String) dVar.f4159a;
            String str3 = (String) dVar.b;
            Drawable drawable = (Drawable) dVar.f4160c;
            ?? linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(i2);
            linearLayout4.setGravity(i4);
            linearLayout4.setClickable(z2);
            linearLayout4.setFocusable(z2);
            linearLayout4.setBackgroundResource(R.drawable.bg_central_ex_card);
            linearLayout4.setPadding(a(14), a(14), a(14), a(14));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i6);
            layoutParams2.topMargin = a(10);
            linearLayout4.setLayoutParams(layoutParams2);
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(drawable);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(a(46), a(46));
            layoutParams3.setMarginEnd(a(18));
            imageView.setLayoutParams(layoutParams3);
            TextView textView3 = new TextView(this);
            textView3.setText(str3);
            textView3.setTextColor(getColor(i5));
            textView3.setTextSize(19.0f);
            textView3.setLayoutParams(new LinearLayout.LayoutParams(0, i6, f));
            CheckBox checkBox = new CheckBox(this);
            checkBox.setChecked(setK0.contains(str2));
            checkBox.setClickable(false);
            checkBox.setFocusable(false);
            checkBox.setButtonTintList(ColorStateList.valueOf(getColor(R.color.cx_accent)));
            checkBox.setScaleX(1.3f);
            checkBox.setScaleY(1.3f);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i6, i6);
            layoutParams4.setMarginStart(a(20));
            checkBox.setLayoutParams(layoutParams4);
            ?? r14 = r5;
            linearLayout4.setOnClickListener(new F(checkBox, setK0, str2, this, 1));
            linearLayout4.addView(imageView);
            linearLayout4.addView(textView3);
            linearLayout4.addView(checkBox);
            r14.addView(linearLayout4);
            r5 = r14;
            i2 = 0;
            z2 = true;
            i4 = 16;
            i5 = R.color.cx_text_primary;
            i6 = -2;
            f = 1.0f;
        }
        linearLayout.addView(r5);
        ?? scrollView = new ScrollView(this);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
    }
}
