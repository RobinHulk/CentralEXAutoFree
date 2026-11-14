package com.google.android.material.datepicker;

import android.os.Message;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import p007e.C0208h;
import p014j.l1;

/* JADX INFO: loaded from: classes.dex */
public final class j implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2766a;
    public final /* synthetic */ Object b;

    public /* synthetic */ j(Object obj, int i2) {
        this.f2766a = i2;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        switch (this.f2766a) {
            case 0:
                l lVar = (l) this.b;
                int i2 = lVar.V;
                if (i2 == 2) {
                    lVar.B(1);
                    return;
                } else {
                    if (i2 == 1) {
                        lVar.B(2);
                        return;
                    }
                    return;
                }
            case 1:
                m mVar = (m) this.b;
                Button button = mVar.f2786q0;
                mVar.getClass();
                throw null;
            case 2:
                C0208h c0208h = (C0208h) this.b;
                if (view == c0208h.f3023i && (message3 = c0208h.f3025k) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view != c0208h.f3026l || (message2 = c0208h.f3028n) == null) {
                    messageObtain = (view != c0208h.f3029o || (message = c0208h.f3031q) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                c0208h.f3015F.obtainMessage(1, c0208h.b).sendToTarget();
                return;
            case 3:
                ((p011h.a) this.b).a();
                return;
            case 4:
                l1 l1Var = ((Toolbar) this.b).f1589L;
                p012i.n nVar = l1Var == null ? null : l1Var.b;
                if (nVar != null) {
                    nVar.collapseActionView();
                    return;
                }
                return;
            case 5:
                Editable text = ((p029r0.e) this.b).f4085a.getEditText().getText();
                if (text != null) {
                    text.clear();
                    return;
                }
                return;
            case 6:
                p029r0.k kVar = (p029r0.k) this.b;
                p029r0.k.e(kVar, (AutoCompleteTextView) kVar.f4085a.getEditText());
                return;
            default:
                p029r0.p pVar = (p029r0.p) this.b;
                EditText editText = pVar.f4085a.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (p029r0.p.d(pVar)) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                    return;
                }
                return;
        }
    }
}
