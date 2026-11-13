package p029r0;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public final class i implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoCompleteTextView f4071a;
    public final /* synthetic */ k b;

    public i(k kVar, AutoCompleteTextView autoCompleteTextView) {
        this.b = kVar;
        this.f4071a = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            k kVar = this.b;
            kVar.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() - kVar.f4079k;
            if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                kVar.f4077i = false;
            }
            k.e(kVar, this.f4071a);
        }
        return false;
    }
}
