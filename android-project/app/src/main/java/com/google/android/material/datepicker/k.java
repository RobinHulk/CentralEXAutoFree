package com.google.android.material.datepicker;

import M.O;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2767a;
    public final /* synthetic */ s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f2768c;

    public /* synthetic */ k(l lVar, s sVar, int i2) {
        this.f2767a = i2;
        this.f2768c = lVar;
        this.b = sVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2767a) {
            case 0:
                l lVar = this.f2768c;
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) lVar.f2773Y.getLayoutManager();
                View viewH0 = linearLayoutManager.H0(0, linearLayoutManager.v(), false);
                int iD = (viewH0 == null ? -1 : O.D(viewH0)) + 1;
                if (iD < lVar.f2773Y.getAdapter().a()) {
                    Calendar calendarA = w.a(this.b.f2798c.f2748a.f2787a);
                    calendarA.add(2, iD);
                    lVar.A(new o(calendarA));
                }
                break;
            default:
                l lVar2 = this.f2768c;
                int iF0 = ((LinearLayoutManager) lVar2.f2773Y.getLayoutManager()).F0() - 1;
                if (iF0 >= 0) {
                    Calendar calendarA2 = w.a(this.b.f2798c.f2748a.f2787a);
                    calendarA2.add(2, iF0);
                    lVar2.A(new o(calendarA2));
                }
                break;
        }
    }
}
