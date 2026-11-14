package p029r0;

import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public final class j implements AutoCompleteTextView.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f4072a;

    public j(k kVar) {
        this.f4072a = kVar;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public final void onDismiss() {
        k kVar = this.f4072a;
        kVar.f4077i = true;
        kVar.f4079k = System.currentTimeMillis();
        kVar.g(false);
    }
}
