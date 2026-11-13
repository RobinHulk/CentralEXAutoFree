package p014j;

import M.C0003d;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import com.google.android.material.datepicker.c;
import p005d.a;
import p007e.AbstractC0201a;
import p011h.d;
import p012i.ViewTreeObserverOnGlobalLayoutListenerC0214d;

/* JADX INFO: loaded from: classes.dex */
public final class T extends Spinner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f3488i = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3489a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H f3490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SpinnerAdapter f3491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3492e;
    public final S f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3493g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f3494h;

    /* JADX WARN: Code duplicated, block: B:26:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x006a  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7  */
    public T(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, com.ex.auto.R.attr.spinnerStyle);
        this.f3494h = new Rect();
        e1.a(this, getContext());
        int[] iArr = a.f2925v;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
        this.f3489a = new c(this);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            this.b = new d(context, resourceId);
        } else {
            this.b = context;
        }
        int i2 = -1;
        TypedArray typedArray2 = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3488i, com.ex.auto.R.attr.spinnerStyle, 0);
            try {
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i2 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i2 != 0) {
                        L l2 = new L(this);
                        this.f = l2;
                        l2.f3462c = typedArray.getString(2);
                    } else if (i2 == 1) {
                        P p2 = new P(this, this.b, attributeSet);
                        C0003d c0003dV2 = C0003d.v(this.b, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
                        this.f3493g = ((TypedArray) c0003dV2.f215c).getLayoutDimension(3, -2);
                        p2.m(c0003dV2.k(1));
                        p2.f3479B = typedArray.getString(2);
                        c0003dV2.w();
                        this.f = p2;
                        this.f3490c = new H(this, this, p2);
                    }
                    textArray = typedArray.getTextArray(0);
                    if (textArray != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
                        arrayAdapter.setDropDownViewResource(com.ex.auto.R.layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    c0003dV.w();
                    this.f3492e = true;
                    spinnerAdapter = this.f3491d;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f3491d = null;
                    }
                    this.f3489a.e(attributeSet, com.ex.auto.R.attr.spinnerStyle);
                }
            } catch (Throwable th) {
                th = th;
                typedArray2 = typedArrayObtainStyledAttributes;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray2 != null) {
                typedArray2.recycle();
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i2 != 0) {
            L l3 = new L(this);
            this.f = l3;
            l3.f3462c = typedArray.getString(2);
        } else if (i2 == 1) {
            P p3 = new P(this, this.b, attributeSet);
            C0003d c0003dV3 = C0003d.v(this.b, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
            this.f3493g = ((TypedArray) c0003dV3.f215c).getLayoutDimension(3, -2);
            p3.m(c0003dV3.k(1));
            p3.f3479B = typedArray.getString(2);
            c0003dV3.w();
            this.f = p3;
            this.f3490c = new H(this, this, p3);
        }
        textArray = typedArray.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter2.setDropDownViewResource(com.ex.auto.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        c0003dV.w();
        this.f3492e = true;
        spinnerAdapter = this.f3491d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f3491d = null;
        }
        this.f3489a.e(attributeSet, com.ex.auto.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f3494h;
        drawable.getPadding(rect);
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.f3489a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        S s2 = this.f;
        return s2 != null ? s2.c() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        S s2 = this.f;
        return s2 != null ? s2.g() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f != null ? this.f3493g : super.getDropDownWidth();
    }

    public final S getInternalPopup() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        S s2 = this.f;
        return s2 != null ? s2.i() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        S s2 = this.f;
        return s2 != null ? s2.j() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f3489a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f3489a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        S s2 = this.f;
        if (s2 == null || !s2.b()) {
            return;
        }
        s2.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        Q q2 = (Q) parcelable;
        super.onRestoreInstanceState(q2.getSuperState());
        if (!q2.f3484a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0214d(this, 2));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        Q q2 = new Q(super.onSaveInstanceState());
        S s2 = this.f;
        q2.f3484a = s2 != null && s2.b();
        return q2;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        H h2 = this.f3490c;
        if (h2 == null || !h2.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        S s2 = this.f;
        if (s2 == null) {
            return super.performClick();
        }
        if (s2.b()) {
            return true;
        }
        this.f.d(J.b(this), J.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f3489a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        c cVar = this.f3489a;
        if (cVar != null) {
            cVar.g(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        S s2 = this.f;
        if (s2 == null) {
            super.setDropDownHorizontalOffset(i2);
        } else {
            s2.p(i2);
            s2.a(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        S s2 = this.f;
        if (s2 != null) {
            s2.n(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f != null) {
            this.f3493g = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        S s2 = this.f;
        if (s2 != null) {
            s2.m(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(AbstractC0201a.A(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        S s2 = this.f;
        if (s2 != null) {
            s2.l(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        c cVar = this.f3489a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        c cVar = this.f3489a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f3492e) {
            this.f3491d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        S s2 = this.f;
        if (s2 != null) {
            Context context = this.b;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            M m2 = new M();
            m2.f3464a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                m2.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                K.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            s2.o(m2);
        }
    }
}
