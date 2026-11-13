package p035z;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4266a;
    public final e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4267c;

    public a(int i2, e eVar, int i3) {
        this.f4266a = i2;
        this.b = eVar;
        this.f4267c = i3;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f4266a);
        this.b.f4278a.performAction(this.f4267c, bundle);
    }
}
