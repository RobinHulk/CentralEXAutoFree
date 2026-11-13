package com.google.android.material.datepicker;

import M.e0;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p034y.C0287v;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class r extends e0 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f2796t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final MaterialCalendarGridView f2797u;

    public r(LinearLayout linearLayout, boolean z2) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f2796t = textView;
        WeakHashMap weakHashMap = N.f4222a;
        new C0287v(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3).d(textView, Boolean.TRUE);
        this.f2797u = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z2) {
            return;
        }
        textView.setVisibility(8);
    }
}
