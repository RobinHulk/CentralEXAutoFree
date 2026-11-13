package p014j;

import M.C0003d;
import N.d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.ex.auto.R;
import com.google.android.material.datepicker.c;
import p005d.a;
import p007e.AbstractC0201a;
import p034y.N;

/* JADX INFO: renamed from: j.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0248q extends CheckedTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3658a;
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f3659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0257v f3660d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0248q(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        f1.a(context);
        e1.a(this, getContext());
        Z z2 = new Z(this);
        this.f3659c = z2;
        z2.f(attributeSet, R.attr.checkedTextViewStyle);
        z2.b();
        c cVar = new c(this);
        this.b = cVar;
        cVar.e(attributeSet, R.attr.checkedTextViewStyle);
        this.f3658a = new d(this);
        Context context2 = getContext();
        int[] iArr = a.f2915l;
        C0003d c0003dV = C0003d.v(context2, attributeSet, iArr, R.attr.checkedTextViewStyle);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        N.h(this, getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, R.attr.checkedTextViewStyle);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(AbstractC0201a.A(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        setCheckMarkDrawable(AbstractC0201a.A(getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(AbstractC0201a.A(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                setCheckMarkTintList(c0003dV.j(2));
            }
            if (typedArray.hasValue(3)) {
                setCheckMarkTintMode(AbstractC0241m0.c(typedArray.getInt(3, -1), null));
            }
            c0003dV.w();
            getEmojiTextViewHelper().b(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            c0003dV.w();
            throw th;
        }
    }

    private C0257v getEmojiTextViewHelper() {
        if (this.f3660d == null) {
            this.f3660d = new C0257v(this);
        }
        return this.f3660d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Z z2 = this.f3659c;
        if (z2 != null) {
            z2.b();
        }
        c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        d dVar = this.f3658a;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
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

    public ColorStateList getSupportCheckMarkTintList() {
        d dVar = this.f3658a;
        if (dVar != null) {
            return (ColorStateList) dVar.f391e;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        d dVar = this.f3658a;
        if (dVar != null) {
            return (PorterDuff.Mode) dVar.f;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f3659c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f3659c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0201a.I(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
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

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        d dVar = this.f3658a;
        if (dVar != null) {
            if (dVar.f389c) {
                dVar.f389c = false;
            } else {
                dVar.f389c = true;
                dVar.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f3659c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f3659c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
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

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        d dVar = this.f3658a;
        if (dVar != null) {
            dVar.f391e = colorStateList;
            dVar.f388a = true;
            dVar.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        d dVar = this.f3658a;
        if (dVar != null) {
            dVar.f = mode;
            dVar.b = true;
            dVar.b();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f3659c;
        z2.i(colorStateList);
        z2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f3659c;
        z2.j(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        Z z2 = this.f3659c;
        if (z2 != null) {
            z2.g(context, i2);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i2) {
        setCheckMarkDrawable(AbstractC0201a.A(getContext(), i2));
    }
}
