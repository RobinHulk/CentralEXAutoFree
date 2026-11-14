package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import p012i.A;
import p012i.l;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements A {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // p012i.A
    public final void c(l lVar) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
