package M;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;
import p034y.C0269c;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends C0269c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g0 f240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakHashMap f241e = new WeakHashMap();

    public f0(g0 g0Var) {
        this.f240d = g0Var;
    }

    @Override // p034y.C0269c
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        return c0269c != null ? c0269c.a(view, accessibilityEvent) : this.f4239a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // p034y.C0269c
    public final A.e b(View view) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        return c0269c != null ? c0269c.b(view) : super.b(view);
    }

    @Override // p034y.C0269c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        if (c0269c != null) {
            c0269c.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // p034y.C0269c
    public final void d(View view, p035z.e eVar) {
        g0 g0Var = this.f240d;
        boolean zK = g0Var.f246d.K();
        View.AccessibilityDelegate accessibilityDelegate = this.f4239a;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
        if (!zK) {
            RecyclerView recyclerView = g0Var.f246d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().Q(view, eVar);
                C0269c c0269c = (C0269c) this.f241e.get(view);
                if (c0269c != null) {
                    c0269c.d(view, eVar);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // p034y.C0269c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        if (c0269c != null) {
            c0269c.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // p034y.C0269c
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0269c c0269c = (C0269c) this.f241e.get(viewGroup);
        return c0269c != null ? c0269c.f(viewGroup, view, accessibilityEvent) : this.f4239a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // p034y.C0269c
    public final boolean g(View view, int i2, Bundle bundle) {
        g0 g0Var = this.f240d;
        if (!g0Var.f246d.K()) {
            RecyclerView recyclerView = g0Var.f246d;
            if (recyclerView.getLayoutManager() != null) {
                C0269c c0269c = (C0269c) this.f241e.get(view);
                if (c0269c != null) {
                    if (c0269c.g(view, i2, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i2, bundle)) {
                    return true;
                }
                V v2 = recyclerView.getLayoutManager().b.b;
                return false;
            }
        }
        return super.g(view, i2, bundle);
    }

    @Override // p034y.C0269c
    public final void h(View view, int i2) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        if (c0269c != null) {
            c0269c.h(view, i2);
        } else {
            super.h(view, i2);
        }
    }

    @Override // p034y.C0269c
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        C0269c c0269c = (C0269c) this.f241e.get(view);
        if (c0269c != null) {
            c0269c.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
