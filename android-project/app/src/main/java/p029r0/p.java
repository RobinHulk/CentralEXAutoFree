package p029r0;

import android.graphics.drawable.Drawable;
import android.text.method.PasswordTransformationMethod;
import android.widget.EditText;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashSet;
import p007e.AbstractC0201a;
import p014j.Q0;

/* JADX INFO: loaded from: classes.dex */
public final class p extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Q0 f4113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f4114e;
    public final b f;

    public p(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f4113d = new Q0(this, 3);
        this.f4114e = new a(this, 2);
        this.f = new b(this, 2);
    }

    public static boolean d(p pVar) {
        EditText editText = pVar.f4085a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // p029r0.l
    public final void a() {
        Drawable drawableA = AbstractC0201a.A(this.b, R.drawable.design_password_eye);
        TextInputLayout textInputLayout = this.f4085a;
        textInputLayout.setEndIconDrawable(drawableA);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        textInputLayout.setEndIconOnClickListener(new j(this, 7));
        LinkedHashSet linkedHashSet = textInputLayout.f2858b0;
        a aVar = this.f4114e;
        linkedHashSet.add(aVar);
        if (textInputLayout.f2863e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f2865f0.add(this.f);
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }
}
