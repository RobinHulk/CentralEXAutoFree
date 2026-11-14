package p029r0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Filterable;
import android.widget.ListAdapter;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Locale;
import p014j.C0242n;
import p014j.E0;
import p014j.N;
import p017k0.i;
import s0.a;

/* JADX INFO: loaded from: classes.dex */
public final class o extends C0242n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E0 f4111e;
    public final AccessibilityManager f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Rect f4112g;

    public o(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.autoCompleteTextViewStyle, 0), attributeSet);
        this.f4112g = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, Y.a.f1372h, R.attr.autoCompleteTextViewStyle, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayD.hasValue(0) && typedArrayD.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f = (AccessibilityManager) context2.getSystemService("accessibility");
        E0 e1 = new E0(context2, null, R.attr.listPopupWindowStyle);
        this.f4111e = e1;
        e1.f3445x = true;
        e1.f3446y.setFocusable(true);
        e1.f3436o = this;
        e1.f3446y.setInputMethodMode(2);
        e1.o(getAdapter());
        e1.f3437p = new N(this, 2);
        typedArrayD.recycle();
    }

    public static void a(o oVar, Object obj) {
        oVar.setText(oVar.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutB = b();
        return (textInputLayoutB == null || !textInputLayoutB.f2829A) ? super.getHint() : textInputLayoutB.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutB = b();
        if (textInputLayoutB != null && textInputLayoutB.f2829A && super.getHint() == null && Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout textInputLayoutB = b();
            int measuredWidth2 = 0;
            if (adapter != null && textInputLayoutB != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                E0 e1 = this.f4111e;
                int iMin = Math.min(adapter.getCount(), Math.max(0, !e1.f3446y.isShowing() ? -1 : e1.f3425c.getSelectedItemPosition()) + 15);
                View view = null;
                int iMax = 0;
                for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
                    int itemViewType = adapter.getItemViewType(iMax2);
                    if (itemViewType != measuredWidth2) {
                        view = null;
                        measuredWidth2 = itemViewType;
                    }
                    view = adapter.getView(iMax2, view, textInputLayoutB);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                Drawable background = e1.f3446y.getBackground();
                if (background != null) {
                    Rect rect = this.f4112g;
                    background.getPadding(rect);
                    iMax += rect.left + rect.right;
                }
                measuredWidth2 = textInputLayoutB.getEndIconView().getMeasuredWidth() + iMax;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, measuredWidth2), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t2) {
        super.setAdapter(t2);
        this.f4111e.o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        AccessibilityManager accessibilityManager;
        if (getInputType() == 0 && (accessibilityManager = this.f) != null && accessibilityManager.isTouchExplorationEnabled()) {
            this.f4111e.f();
        } else {
            super.showDropDown();
        }
    }
}
