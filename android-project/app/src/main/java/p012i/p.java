package p012i;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import p011h.b;

/* JADX INFO: loaded from: classes.dex */
public final class p extends FrameLayout implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f3394a;

    /* JADX WARN: Multi-variable type inference failed */
    public p(View view) {
        super(view.getContext());
        this.f3394a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // p011h.b
    public final void b() {
        this.f3394a.onActionViewExpanded();
    }

    @Override // p011h.b
    public final void d() {
        this.f3394a.onActionViewCollapsed();
    }
}
