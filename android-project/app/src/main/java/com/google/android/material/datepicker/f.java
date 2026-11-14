package com.google.android.material.datepicker;

import M.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class f extends LinearLayoutManager {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ int f2759E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final /* synthetic */ l f2760F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(l lVar, int i2, int i3) {
        super(i2);
        this.f2760F = lVar;
        this.f2759E = i3;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, M.O
    public final void s0(RecyclerView recyclerView, int i2) {
        u uVar = new u(recyclerView.getContext());
        uVar.f373a = i2;
        t0(uVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void v0(a0 a0Var, int[] iArr) {
        int i2 = this.f2759E;
        l lVar = this.f2760F;
        if (i2 == 0) {
            iArr[0] = lVar.f2773Y.getWidth();
            iArr[1] = lVar.f2773Y.getWidth();
        } else {
            iArr[0] = lVar.f2773Y.getHeight();
            iArr[1] = lVar.f2773Y.getHeight();
        }
    }
}
