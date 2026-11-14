package G;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class d extends androidx.emoji2.text.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f97a;
    public final WeakReference b;

    public d(TextView textView, e eVar) {
        this.f97a = new WeakReference(textView);
        this.b = new WeakReference(eVar);
    }

    @Override // androidx.emoji2.text.f
    public final void b() {
        InputFilter[] filters;
        int length;
        TextView textView = (TextView) this.f97a.get();
        InputFilter inputFilter = (InputFilter) this.b.get();
        if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
            return;
        }
        for (InputFilter inputFilter2 : filters) {
            if (inputFilter2 == inputFilter) {
                if (textView.isAttachedToWindow()) {
                    CharSequence text = textView.getText();
                    androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
                    if (text == null) {
                        length = 0;
                    } else {
                        iVarA.getClass();
                        length = text.length();
                    }
                    CharSequence charSequenceE = iVarA.e(text, 0, length);
                    if (text == charSequenceE) {
                        return;
                    }
                    int selectionStart = Selection.getSelectionStart(charSequenceE);
                    int selectionEnd = Selection.getSelectionEnd(charSequenceE);
                    textView.setText(charSequenceE);
                    if (charSequenceE instanceof Spannable) {
                        Spannable spannable = (Spannable) charSequenceE;
                        if (selectionStart >= 0 && selectionEnd >= 0) {
                            Selection.setSelection(spannable, selectionStart, selectionEnd);
                            return;
                        } else if (selectionStart >= 0) {
                            Selection.setSelection(spannable, selectionStart);
                            return;
                        } else {
                            if (selectionEnd >= 0) {
                                Selection.setSelection(spannable, selectionEnd);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
        }
    }
}
