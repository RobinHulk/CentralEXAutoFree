package M;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import p034y.C0269c;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends C0269c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f0 f247e;

    public g0(RecyclerView recyclerView) {
        this.f246d = recyclerView;
        f0 f0Var = this.f247e;
        if (f0Var != null) {
            this.f247e = f0Var;
        } else {
            this.f247e = new f0(this);
        }
    }

    @Override // p034y.C0269c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f246d.K()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().O(accessibilityEvent);
        }
    }

    @Override // p034y.C0269c
    public final void d(View view, p035z.e eVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f4239a;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        RecyclerView recyclerView = this.f246d;
        if (recyclerView.K() || recyclerView.getLayoutManager() == null) {
            return;
        }
        O layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        V v2 = recyclerView2.b;
        if (recyclerView2.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
            eVar.a(8192);
            accessibilityNodeInfo.setScrollable(true);
        }
        if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
            eVar.a(4096);
            accessibilityNodeInfo.setScrollable(true);
        }
        a0 a0Var = recyclerView2.f2037c0;
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.F(v2, a0Var), layoutManager.x(v2, a0Var), false, 0));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[PHI: r0
  0x0056: PHI (r0v8 int) = (r0v4 int), (r0v12 int) binds: [B:27:0x0073, B:19:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p034y.C0269c
    public final boolean g(View view, int i2, Bundle bundle) {
        int iC;
        int iA;
        if (super.g(view, i2, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f246d;
        if (recyclerView.K() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        O layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        V v2 = recyclerView2.b;
        if (i2 == 4096) {
            iC = recyclerView2.canScrollVertically(1) ? (layoutManager.f169o - layoutManager.C()) - layoutManager.z() : 0;
            if (layoutManager.b.canScrollHorizontally(1)) {
                iA = (layoutManager.f168n - layoutManager.A()) - layoutManager.B();
            } else {
                iA = 0;
            }
        } else if (i2 != 8192) {
            iA = 0;
            iC = 0;
        } else {
            iC = recyclerView2.canScrollVertically(-1) ? -((layoutManager.f169o - layoutManager.C()) - layoutManager.z()) : 0;
            if (layoutManager.b.canScrollHorizontally(-1)) {
                iA = -((layoutManager.f168n - layoutManager.A()) - layoutManager.B());
            } else {
                iA = 0;
            }
        }
        if (iC == 0 && iA == 0) {
            return false;
        }
        layoutManager.b.Z(iA, iC, true);
        return true;
    }
}
