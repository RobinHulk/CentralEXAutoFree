package com.google.android.material.datepicker;

import M.F;
import M.P;
import M.e0;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class s extends F {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f2798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final A.e f2799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2800e;

    public s(ContextThemeWrapper contextThemeWrapper, b bVar, A.e eVar) {
        o oVar = bVar.f2748a;
        o oVar2 = bVar.f2749c;
        if (oVar.compareTo(oVar2) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (oVar2.compareTo(bVar.b) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f2800e = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * p.f2792d) + (m.C(contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f2798c = bVar;
        this.f2799d = eVar;
        if (this.f147a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.b = true;
    }

    @Override // M.F
    public final int a() {
        return this.f2798c.f;
    }

    @Override // M.F
    public final long b(int i2) {
        Calendar calendarA = w.a(this.f2798c.f2748a.f2787a);
        calendarA.add(2, i2);
        calendarA.set(5, 1);
        Calendar calendarA2 = w.a(calendarA);
        calendarA2.get(2);
        calendarA2.get(1);
        calendarA2.getMaximum(7);
        calendarA2.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat.format(calendarA2.getTime());
        calendarA2.getTimeInMillis();
        return calendarA2.getTimeInMillis();
    }

    @Override // M.F
    public final void c(e0 e0Var, int i2) {
        r rVar = (r) e0Var;
        b bVar = this.f2798c;
        Calendar calendarA = w.a(bVar.f2748a.f2787a);
        calendarA.add(2, i2);
        o oVar = new o(calendarA);
        rVar.f2796t.setText(oVar.b);
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) rVar.f2797u.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !oVar.equals(materialCalendarGridView.a().f2793a)) {
            p pVar = new p(oVar, bVar);
            materialCalendarGridView.setNumColumns(oVar.f2790e);
            materialCalendarGridView.setAdapter((ListAdapter) pVar);
        } else {
            materialCalendarGridView.a().notifyDataSetChanged();
        }
        materialCalendarGridView.setOnItemClickListener(new q(this, materialCalendarGridView));
    }

    @Override // M.F
    public final e0 d(ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!m.C(viewGroup.getContext())) {
            return new r(linearLayout, false);
        }
        linearLayout.setLayoutParams(new P(-1, this.f2800e));
        return new r(linearLayout, true);
    }
}
