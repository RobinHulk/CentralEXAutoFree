package com.google.android.material.datepicker;

import M.A;
import M.C0003d;
import M.h0;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class l<S> extends t {
    public int S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public b f2769T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public o f2770U;
    public int V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C0003d f2771W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public RecyclerView f2772X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public RecyclerView f2773Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public View f2774Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public View f2775a0;

    public final void A(o oVar) {
        s sVar = (s) this.f2773Y.getAdapter();
        int iD = sVar.f2798c.f2748a.d(oVar);
        int iD2 = iD - sVar.f2798c.f2748a.d(this.f2770U);
        boolean z2 = Math.abs(iD2) > 3;
        boolean z3 = iD2 > 0;
        this.f2770U = oVar;
        if (z2 && z3) {
            this.f2773Y.Y(iD - 3);
            this.f2773Y.post(new androidx.emoji2.text.g(this, iD, 1));
        } else if (!z2) {
            this.f2773Y.post(new androidx.emoji2.text.g(this, iD, 1));
        } else {
            this.f2773Y.Y(iD + 3);
            this.f2773Y.post(new androidx.emoji2.text.g(this, iD, 1));
        }
    }

    public final void B(int i2) {
        this.V = i2;
        if (i2 == 2) {
            this.f2772X.getLayoutManager().i0(this.f2770U.f2789d - ((y) this.f2772X.getAdapter()).f2804c.f2769T.f2748a.f2789d);
            this.f2774Z.setVisibility(0);
            this.f2775a0.setVisibility(8);
            return;
        }
        if (i2 == 1) {
            this.f2774Z.setVisibility(8);
            this.f2775a0.setVisibility(0);
            A(this.f2770U);
        }
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.S = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2769T = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f2770U = (o) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i2;
        int i3;
        A a2;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(h(), this.S);
        this.f2771W = new C0003d(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        o oVar = this.f2769T.f2748a;
        if (m.C(contextThemeWrapper)) {
            i2 = R.layout.mtrl_calendar_vertical;
            i3 = 1;
        } else {
            i2 = R.layout.mtrl_calendar_horizontal;
            i3 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        N.i(gridView, new B.j(1));
        gridView.setAdapter((ListAdapter) new e());
        gridView.setNumColumns(oVar.f2790e);
        gridView.setEnabled(false);
        this.f2773Y = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.f2773Y.setLayoutManager(new f(this, i3, i3));
        this.f2773Y.setTag("MONTHS_VIEW_GROUP_TAG");
        s sVar = new s(contextThemeWrapper, this.f2769T, new A.e(this, 13));
        this.f2773Y.setAdapter(sVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView3 = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f2772X = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.f2772X.setLayoutManager(new GridLayoutManager(integer));
            this.f2772X.setAdapter(new y(this));
            this.f2772X.g(new g(this));
        }
        if (viewInflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            N.i(materialButton, new h(this, 0));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.f2774Z = viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
            this.f2775a0 = viewInflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            B(1);
            materialButton.setText(this.f2770U.b);
            this.f2773Y.h(new i(this, sVar, materialButton));
            materialButton.setOnClickListener(new j(this, 0));
            materialButton3.setOnClickListener(new k(this, sVar, 0));
            materialButton2.setOnClickListener(new k(this, sVar, 1));
        }
        if (!m.C(contextThemeWrapper) && (recyclerView2 = (a2 = new A()).f139a) != (recyclerView = this.f2773Y)) {
            h0 h0Var = a2.f140c;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.f2041e0;
                if (arrayList != null) {
                    arrayList.remove(h0Var);
                }
                a2.f139a.setOnFlingListener(null);
            }
            a2.f139a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                a2.f139a.h(h0Var);
                a2.f139a.setOnFlingListener(a2);
                a2.b = new Scroller(a2.f139a.getContext(), new DecelerateInterpolator());
                a2.f();
            }
        }
        this.f2773Y.Y(sVar.f2798c.f2748a.d(this.f2770U));
        return viewInflate;
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void r(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.S);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f2769T);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f2770U);
    }
}
