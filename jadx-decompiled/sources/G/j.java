package G;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public final class j implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f105a;
    public i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f106c = true;

    public j(EditText editText) {
        this.f105a = editText;
    }

    public static void a(EditText editText, int i2) {
        int length;
        if (i2 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
            if (editableText == null) {
                length = 0;
            } else {
                iVarA.getClass();
                length = editableText.length();
            }
            iVarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        EditText editText = this.f105a;
        if (editText.isInEditMode() || !this.f106c || androidx.emoji2.text.i.f1695j == null || i3 > i4 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = androidx.emoji2.text.i.a().b();
        if (iB != 0) {
            if (iB == 1) {
                androidx.emoji2.text.i.a().e((Spannable) charSequence, i2, i4 + i2);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
        if (this.b == null) {
            this.b = new i(editText);
        }
        iVarA.f(this.b);
    }
}
