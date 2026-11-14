package p014j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import p012i.i;
import p012i.l;
import p012i.n;

/* JADX INFO: loaded from: classes.dex */
public final class J0 extends C0252s0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3455m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3456n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public F0 f3457o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public n f3458p;

    public J0(Context context, boolean z2) {
        super(context, z2);
        if (1 == I0.a(context.getResources().getConfiguration())) {
            this.f3455m = 21;
            this.f3456n = 22;
        } else {
            this.f3455m = 22;
            this.f3456n = 21;
        }
    }

    @Override // p014j.C0252s0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        i iVar;
        int headersCount;
        int iPointToPosition;
        int i2;
        if (this.f3457o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                iVar = (i) headerViewListAdapter.getWrappedAdapter();
            } else {
                iVar = (i) adapter;
                headersCount = 0;
            }
            n nVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = iPointToPosition - headersCount) < 0 || i2 >= iVar.getCount()) ? null : iVar.getItem(i2);
            n nVar = this.f3458p;
            if (nVar != nVarB) {
                l lVar = iVar.f3336a;
                if (nVar != null) {
                    this.f3457o.h(lVar, nVar);
                }
                this.f3458p = nVarB;
                if (nVarB != null) {
                    this.f3457o.e(lVar, nVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i2 == this.f3455m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i2 != this.f3456n) {
            return super.onKeyDown(i2, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (i) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (i) adapter).f3336a.c(false);
        return true;
    }

    public void setHoverListener(F0 f1) {
        this.f3457o = f1;
    }

    @Override // p014j.C0252s0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
