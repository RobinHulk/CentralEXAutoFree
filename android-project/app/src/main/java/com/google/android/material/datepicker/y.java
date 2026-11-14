package com.google.android.material.datepicker;

import M.C0003d;
import M.F;
import M.e0;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class y extends F {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f2804c;

    public y(l lVar) {
        this.f2804c = lVar;
    }

    @Override // M.F
    public final int a() {
        return this.f2804c.f2769T.f2751e;
    }

    @Override // M.F
    public final void c(e0 e0Var, int i2) {
        l lVar = this.f2804c;
        int i3 = lVar.f2769T.f2748a.f2789d + i2;
        TextView textView = ((x) e0Var).f2803t;
        String string = textView.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i3)));
        textView.setContentDescription(String.format(string, Integer.valueOf(i3)));
        C0003d c0003d = lVar.f2771W;
        if (w.b().get(1) == i3) {
            Object obj = c0003d.f215c;
        } else {
            Object obj2 = c0003d.b;
        }
        throw null;
    }

    @Override // M.F
    public final e0 d(ViewGroup viewGroup) {
        return new x((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
