package com.ex.auto;

import I0.f;
import T.E;
import T.F;
import T.ViewOnClickListenerC0079j;
import T.Y;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import v0.d;
import w0.i;
import w0.k;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public final class FavoriteAppsActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2260a = 0;

    public final int a(int i2) {
        return (int) (i2 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        List<d> listF0;
        super.onCreate(bundle);
        PackageManager packageManager = getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        ?? r7 = 0;
        try {
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            f.d(listQueryIntentActivities, "queryIntentActivities(...)");
            HashSet hashSet = new HashSet();
            ArrayList<ResolveInfo> arrayList = new ArrayList();
            for (Object obj : listQueryIntentActivities) {
                if (hashSet.add(((ResolveInfo) obj).activityInfo.packageName)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(k.V(arrayList));
            for (ResolveInfo resolveInfo : arrayList) {
                arrayList2.add(new d(resolveInfo.activityInfo.packageName, resolveInfo.loadLabel(packageManager).toString(), resolveInfo.loadIcon(packageManager)));
            }
            listF0 = i.f0(arrayList2, new E(3));
        } catch (Exception unused) {
            listF0 = q.f4190a;
        }
        Set setK0 = i.k0(Y.Y(this));
        LinearLayout linearLayout = new LinearLayout(this);
        boolean z2 = true;
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(getColor(R.color.cx_bg_panel));
        linearLayout.setPadding(a(24), a(24), a(24), a(24));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        int i2 = 16;
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.k_favorite_apps_manage_title));
        int i3 = R.color.cx_text_primary;
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(24.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        int i4 = -2;
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button button = new Button(this);
        button.setText(getString(R.string.k_ac_list_back));
        button.setAllCaps(false);
        button.setTextColor(getColor(R.color.cx_text_hi));
        button.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface)));
        button.setTextSize(17.0f);
        button.setLayoutParams(new LinearLayout.LayoutParams(a(150), a(52)));
        button.setOnClickListener(new ViewOnClickListenerC0079j(this, 4));
        linearLayout2.addView(textView);
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_favorite_apps_manage_subtitle));
        textView2.setTextColor(getColor(R.color.cx_text_secondary));
        textView2.setTextSize(15.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = a(6);
        layoutParams.bottomMargin = a(16);
        textView2.setLayoutParams(layoutParams);
        linearLayout.addView(textView2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        for (d dVar : listF0) {
            String str = (String) dVar.f4159a;
            String str2 = (String) dVar.b;
            Drawable drawable = (Drawable) dVar.f4160c;
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(r7);
            linearLayout4.setGravity(i2);
            linearLayout4.setClickable(z2);
            linearLayout4.setFocusable(z2);
            linearLayout4.setBackgroundResource(R.drawable.bg_central_ex_card);
            linearLayout4.setPadding(a(14), a(14), a(14), a(14));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i4);
            layoutParams2.topMargin = a(10);
            linearLayout4.setLayoutParams(layoutParams2);
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(drawable);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(a(46), a(46));
            layoutParams3.setMarginEnd(a(18));
            imageView.setLayoutParams(layoutParams3);
            TextView textView3 = new TextView(this);
            textView3.setText(str2);
            textView3.setTextColor(getColor(i3));
            textView3.setTextSize(19.0f);
            textView3.setLayoutParams(new LinearLayout.LayoutParams(i4, i4));
            CheckBox checkBox = new CheckBox(this);
            checkBox.setChecked(setK0.contains(str));
            checkBox.setClickable(r7);
            checkBox.setFocusable((boolean) r7);
            checkBox.setButtonTintList(ColorStateList.valueOf(getColor(R.color.cx_accent)));
            checkBox.setScaleX(1.3f);
            checkBox.setScaleY(1.3f);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i4, i4);
            layoutParams4.setMarginStart(a(20));
            checkBox.setLayoutParams(layoutParams4);
            linearLayout4.setOnClickListener(new F(checkBox, setK0, str, this, 2));
            linearLayout4.addView(imageView);
            linearLayout4.addView(textView3);
            linearLayout4.addView(checkBox);
            linearLayout3.addView(linearLayout4);
            r7 = 0;
            z2 = true;
            i2 = 16;
            i3 = R.color.cx_text_primary;
            i4 = -2;
        }
        linearLayout.addView(linearLayout3);
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
    }
}
