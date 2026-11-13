package p014j;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.AutoCompleteTextView;
import androidx.appcompat.widget.SearchView;
import com.google.android.material.textfield.TextInputLayout;
import p002b0.c;
import p029r0.e;
import p029r0.k;
import p029r0.p;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3485a;
    public final /* synthetic */ Object b;

    public /* synthetic */ Q0(Object obj, int i2) {
        this.f3485a = i2;
        this.b = obj;
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void d(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void e(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void f(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void g(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void h(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void i(int i2, int i3, int i4, CharSequence charSequence) {
    }

    private final void j(int i2, int i3, int i4, CharSequence charSequence) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f3485a) {
            case 0:
                break;
            case 1:
                e eVar = (e) this.b;
                if (eVar.f4085a.getSuffixText() == null) {
                    eVar.d(editable.length() > 0);
                    break;
                }
                break;
            case 2:
                k kVar = (k) this.b;
                AutoCompleteTextView autoCompleteTextViewD = k.d(kVar, kVar.f4085a.getEditText());
                autoCompleteTextViewD.post(new c(this, autoCompleteTextViewD));
                break;
            case 3:
                break;
            default:
                TextInputLayout textInputLayout = (TextInputLayout) this.b;
                textInputLayout.s(!textInputLayout.f2843H0, false);
                if (textInputLayout.f2868h) {
                    textInputLayout.m(editable.length());
                }
                if (textInputLayout.f2880o) {
                    textInputLayout.t(editable.length());
                }
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        switch (this.f3485a) {
            case 3:
                p pVar = (p) this.b;
                pVar.f4086c.setChecked(!p.d(pVar));
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        switch (this.f3485a) {
            case 0:
                SearchView searchView = (SearchView) this.b;
                Editable text = searchView.f1564p.getText();
                searchView.V = text;
                boolean zIsEmpty = TextUtils.isEmpty(text);
                searchView.x(!zIsEmpty);
                int i5 = 8;
                if (searchView.f1556U && !searchView.f1551N && zIsEmpty) {
                    searchView.f1569u.setVisibility(8);
                    i5 = 0;
                }
                searchView.f1571w.setVisibility(i5);
                searchView.t();
                searchView.w();
                charSequence.toString();
                break;
        }
    }
}
