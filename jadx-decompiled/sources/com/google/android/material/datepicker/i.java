package com.google.android.material.datepicker;

import M.O;
import M.S;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class i extends S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f2764a;
    public final /* synthetic */ MaterialButton b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f2765c;

    public i(l lVar, s sVar, MaterialButton materialButton) {
        this.f2765c = lVar;
        this.f2764a = sVar;
        this.b = materialButton;
    }

    @Override // M.S
    public final void a(RecyclerView recyclerView, int i2) {
        if (i2 == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // M.S
    public final void b(RecyclerView recyclerView, int i2, int i3) {
        int iF0;
        l lVar = this.f2765c;
        if (i2 < 0) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) lVar.f2773Y.getLayoutManager();
            View viewH0 = linearLayoutManager.H0(0, linearLayoutManager.v(), false);
            iF0 = viewH0 == null ? -1 : O.D(viewH0);
        } else {
            iF0 = ((LinearLayoutManager) lVar.f2773Y.getLayoutManager()).F0();
        }
        b bVar = this.f2764a.f2798c;
        Calendar calendarA = w.a(bVar.f2748a.f2787a);
        calendarA.add(2, iF0);
        lVar.f2770U = new o(calendarA);
        Calendar calendarA2 = w.a(bVar.f2748a.f2787a);
        calendarA2.add(2, iF0);
        calendarA2.set(5, 1);
        Calendar calendarA3 = w.a(calendarA2);
        calendarA3.get(2);
        calendarA3.get(1);
        calendarA3.getMaximum(7);
        calendarA3.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(calendarA3.getTime());
        calendarA3.getTimeInMillis();
        this.b.setText(str);
    }
}
