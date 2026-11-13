package p014j;

import M.C0003d;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import com.google.android.material.datepicker.c;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: j.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0265z extends MultiAutoCompleteTextView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f3728d = {R.attr.popupBackground};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3729a;
    public final Z b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final B f3730c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0265z(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.autoCompleteTextViewStyle);
        f1.a(context);
        e1.a(this, getContext());
        C0003d c0003dV = C0003d.v(getContext(), attributeSet, f3728d, com.ex.auto.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) c0003dV.f215c).hasValue(0)) {
            setDropDownBackgroundDrawable(c0003dV.k(0));
        }
        c0003dV.w();
        c cVar = new c(this);
        this.f3729a = cVar;
        cVar.e(attributeSet, com.ex.auto.R.attr.autoCompleteTextViewStyle);
        Z z2 = new Z(this);
        this.b = z2;
        z2.f(attributeSet, com.ex.auto.R.attr.autoCompleteTextViewStyle);
        z2.b();
        B b = new B(this);
        this.f3730c = b;
        b.d(attributeSet, com.ex.auto.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = isFocusable();
        boolean zIsClickable = isClickable();
        boolean zIsLongClickable = isLongClickable();
        int inputType = getInputType();
        KeyListener keyListenerC = b.c(keyListener);
        if (keyListenerC == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerC);
        setRawInputType(inputType);
        setFocusable(zIsFocusable);
        setClickable(zIsClickable);
        setLongClickable(zIsLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.f3729a;
        if (cVar != null) {
            cVar.a();
        }
        Z z2 = this.b;
        if (z2 != null) {
            z2.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f3729a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f3729a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0201a.I(editorInfo, inputConnectionOnCreateInputConnection, this);
        return this.f3730c.e(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f3729a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        c cVar = this.f3729a;
        if (cVar != null) {
            cVar.g(i2);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.b;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.b;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(AbstractC0201a.A(getContext(), i2));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        this.f3730c.f(z2);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f3730c.c(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        c cVar = this.f3729a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        c cVar = this.f3729a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.b;
        z2.i(colorStateList);
        z2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.b;
        z2.j(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        Z z2 = this.b;
        if (z2 != null) {
            z2.g(context, i2);
        }
    }
}
