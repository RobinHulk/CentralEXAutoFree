package p029r0;

import android.text.method.KeyListener;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;
import p035z.e;

/* JADX INFO: loaded from: classes.dex */
public final class h extends r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f4070e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(k kVar, TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f4070e = kVar;
    }

    @Override // p029r0.r, p034y.C0269c
    public final void d(View view, e eVar) {
        super.d(view, eVar);
        KeyListener keyListener = this.f4070e.f4085a.getEditText().getKeyListener();
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
        if (keyListener == null) {
            accessibilityNodeInfo.setClassName("android.widget.Spinner");
        }
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // p034y.C0269c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        k kVar = this.f4070e;
        AutoCompleteTextView autoCompleteTextViewD = k.d(kVar, kVar.f4085a.getEditText());
        if (accessibilityEvent.getEventType() == 1 && kVar.f4082n.isTouchExplorationEnabled()) {
            k.e(kVar, autoCompleteTextViewD);
        }
    }
}
