package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: loaded from: classes.dex */
public final class q implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f2795a;
    public final /* synthetic */ s b;

    public q(s sVar, MaterialCalendarGridView materialCalendarGridView) {
        this.b = sVar;
        this.f2795a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        MaterialCalendarGridView materialCalendarGridView = this.f2795a;
        p pVarA = materialCalendarGridView.a();
        if (i2 < pVarA.f2793a.c() || i2 > pVarA.b()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i2).longValue() >= ((l) this.b.f2799d.b).f2769T.f2750d.f2756a) {
            throw null;
        }
    }
}
