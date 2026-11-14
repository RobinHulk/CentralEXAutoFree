package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f2757a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2758c;

    public e() {
        Calendar calendarC = w.c(null);
        this.f2757a = calendarC;
        this.b = calendarC.getMaximum(7);
        this.f2758c = calendarC.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.b;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        int i3 = this.b;
        if (i2 >= i3) {
            return null;
        }
        int i4 = i2 + this.f2758c;
        if (i4 > i3) {
            i4 -= i3;
        }
        return Integer.valueOf(i4);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i3 = i2 + this.f2758c;
        int i4 = this.b;
        if (i3 > i4) {
            i3 -= i4;
        }
        Calendar calendar = this.f2757a;
        calendar.set(7, i3);
        textView.setText(calendar.getDisplayName(7, 4, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
