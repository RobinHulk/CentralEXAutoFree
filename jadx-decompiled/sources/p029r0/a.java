package p029r0;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.Q0;
import p025p0.g;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4057a;
    public final /* synthetic */ l b;

    public /* synthetic */ a(l lVar, int i2) {
        this.f4057a = i2;
        this.b = lVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        l lVar = this.b;
        switch (this.f4057a) {
            case 0:
                EditText editText = textInputLayout.getEditText();
                textInputLayout.setEndIconVisible(editText.hasFocus() && editText.getText().length() > 0);
                textInputLayout.setEndIconCheckable(false);
                e eVar = (e) lVar;
                editText.setOnFocusChangeListener(eVar.f4062e);
                Q0 q1 = eVar.f4061d;
                editText.removeTextChangedListener(q1);
                editText.addTextChangedListener(q1);
                break;
            case 1:
                k kVar = (k) lVar;
                AutoCompleteTextView autoCompleteTextViewD = k.d(kVar, textInputLayout.getEditText());
                int boxBackgroundMode = kVar.f4085a.getBoxBackgroundMode();
                if (boxBackgroundMode == 2) {
                    autoCompleteTextViewD.setDropDownBackgroundDrawable(kVar.f4081m);
                } else if (boxBackgroundMode == 1) {
                    autoCompleteTextViewD.setDropDownBackgroundDrawable(kVar.f4080l);
                }
                if (autoCompleteTextViewD.getKeyListener() == null) {
                    TextInputLayout textInputLayout2 = kVar.f4085a;
                    int boxBackgroundMode2 = textInputLayout2.getBoxBackgroundMode();
                    g boxBackground = textInputLayout2.getBoxBackground();
                    int iV = AbstractC0201a.v(autoCompleteTextViewD, R.attr.colorControlHighlight);
                    int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
                    if (boxBackgroundMode2 == 2) {
                        int iV2 = AbstractC0201a.v(autoCompleteTextViewD, R.attr.colorSurface);
                        g gVar = new g(boxBackground.f3939a.f3924a);
                        int iF = AbstractC0201a.F(iV, iV2, 0.1f);
                        gVar.h(new ColorStateList(iArr, new int[]{iF, 0}));
                        gVar.setTint(iV2);
                        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iF, iV2});
                        g gVar2 = new g(boxBackground.f3939a.f3924a);
                        gVar2.setTint(-1);
                        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar, gVar2), boxBackground});
                        WeakHashMap weakHashMap = N.f4222a;
                        AbstractC0290y.q(autoCompleteTextViewD, layerDrawable);
                    } else if (boxBackgroundMode2 == 1) {
                        int boxBackgroundColor = textInputLayout2.getBoxBackgroundColor();
                        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{AbstractC0201a.F(iV, boxBackgroundColor, 0.1f), boxBackgroundColor}), boxBackground, boxBackground);
                        WeakHashMap weakHashMap2 = N.f4222a;
                        AbstractC0290y.q(autoCompleteTextViewD, rippleDrawable);
                    }
                }
                autoCompleteTextViewD.setOnTouchListener(new i(kVar, autoCompleteTextViewD));
                autoCompleteTextViewD.setOnFocusChangeListener(kVar.f4074e);
                autoCompleteTextViewD.setOnDismissListener(new j(kVar));
                autoCompleteTextViewD.setThreshold(0);
                Q0 q2 = kVar.f4073d;
                autoCompleteTextViewD.removeTextChangedListener(q2);
                autoCompleteTextViewD.addTextChangedListener(q2);
                textInputLayout.setEndIconCheckable(true);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                textInputLayout.setTextInputAccessibilityDelegate(kVar.f);
                textInputLayout.setEndIconVisible(true);
                break;
            default:
                EditText editText2 = textInputLayout.getEditText();
                textInputLayout.setEndIconVisible(true);
                textInputLayout.setEndIconCheckable(true);
                p pVar = (p) lVar;
                pVar.f4086c.setChecked(!p.d(pVar));
                Q0 q3 = pVar.f4113d;
                editText2.removeTextChangedListener(q3);
                editText2.addTextChangedListener(q3);
                break;
        }
    }
}
