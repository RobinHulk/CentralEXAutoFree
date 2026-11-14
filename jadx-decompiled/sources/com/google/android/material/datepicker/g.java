package com.google.android.material.datepicker;

import M.L;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class g extends L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f2761a;

    public g(l lVar) {
        this.f2761a = lVar;
        w.c(null);
        w.c(null);
    }

    @Override // M.L
    public final void a(RecyclerView recyclerView) {
        if ((recyclerView.getAdapter() instanceof y) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            this.f2761a.getClass();
            throw null;
        }
    }
}
