package p014j;

import N.d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.google.android.material.datepicker.c;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: j.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0246p extends CheckBox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3654a;
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f3655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0257v f3656d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0246p(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        f1.a(context);
        e1.a(this, getContext());
        d dVar = new d(this);
        this.f3654a = dVar;
        dVar.d(attributeSet, i2);
        c cVar = new c(this);
        this.b = cVar;
        cVar.e(attributeSet, i2);
        Z z2 = new Z(this);
        this.f3655c = z2;
        z2.f(attributeSet, i2);
        getEmojiTextViewHelper().b(attributeSet, i2);
    }

    private C0257v getEmojiTextViewHelper() {
        if (this.f3656d == null) {
            this.f3656d = new C0257v(this);
        }
        return this.f3656d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        Z z2 = this.f3655c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        d dVar = this.f3654a;
        if (dVar != null) {
            dVar.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        d dVar = this.f3654a;
        if (dVar != null) {
            return (ColorStateList) dVar.f391e;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        d dVar = this.f3654a;
        if (dVar != null) {
            return (PorterDuff.Mode) dVar.f;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f3655c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f3655c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.b;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        c cVar = this.b;
        if (cVar != null) {
            cVar.g(i2);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        d dVar = this.f3654a;
        if (dVar != null) {
            if (dVar.f389c) {
                dVar.f389c = false;
            } else {
                dVar.f389c = true;
                dVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f3655c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f3655c;
        if (z2 != null) {
            z2.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        d dVar = this.f3654a;
        if (dVar != null) {
            dVar.f391e = colorStateList;
            dVar.f388a = true;
            dVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        d dVar = this.f3654a;
        if (dVar != null) {
            dVar.f = mode;
            dVar.b = true;
            dVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f3655c;
        z2.i(colorStateList);
        z2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f3655c;
        z2.j(mode);
        z2.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i2) {
        setButtonDrawable(AbstractC0201a.A(getContext(), i2));
    }
}
