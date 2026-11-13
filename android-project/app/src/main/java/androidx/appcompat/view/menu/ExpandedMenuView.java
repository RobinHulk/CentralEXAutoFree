package androidx.appcompat.view.menu;

import M.C0003d;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import p012i.A;
import p012i.k;
import p012i.l;
import p012i.n;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements k, A, AdapterView.OnItemClickListener {
    public static final int[] b = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f1450a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0003d c0003dV = C0003d.v(context, attributeSet, b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(c0003dV.k(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(c0003dV.k(1));
        }
        c0003dV.w();
    }

    @Override // p012i.k
    public final boolean a(n nVar) {
        return this.f1450a.q(nVar, null, 0);
    }

    @Override // p012i.A
    public final void c(l lVar) {
        this.f1450a = lVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        a((n) getAdapter().getItem(i2));
    }
}
