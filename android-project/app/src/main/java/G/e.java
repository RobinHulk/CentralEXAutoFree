package G;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class e implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f98a;
    public d b;

    public e(TextView textView) {
        this.f98a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
        TextView textView = this.f98a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int iB = androidx.emoji2.text.i.a().b();
        if (iB != 0) {
            if (iB == 1) {
                if ((i5 == 0 && i4 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i2 != 0 || i3 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i2, i3);
                }
                return androidx.emoji2.text.i.a().e(charSequence, 0, charSequence.length());
            }
            if (iB != 3) {
                return charSequence;
            }
        }
        androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
        if (this.b == null) {
            this.b = new d(textView, this);
        }
        iVarA.f(this.b);
        return charSequence;
    }
}
