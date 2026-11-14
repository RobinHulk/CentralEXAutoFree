package p014j;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.ex.auto.R;
import p012i.ViewTreeObserverOnGlobalLayoutListenerC0214d;

/* JADX INFO: loaded from: classes.dex */
public final class P extends E0 implements S {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public CharSequence f3479B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public M f3480C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final Rect f3481D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f3482E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final /* synthetic */ T f3483F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(T t2, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle);
        this.f3483F = t2;
        this.f3481D = new Rect();
        this.f3436o = t2;
        this.f3445x = true;
        this.f3446y.setFocusable(true);
        this.f3437p = new N(this, 0);
    }

    @Override // p014j.S
    public final void d(int i2, int i3) {
        ViewTreeObserver viewTreeObserver;
        A a2 = this.f3446y;
        boolean zIsShowing = a2.isShowing();
        s();
        this.f3446y.setInputMethodMode(2);
        f();
        C0252s0 c0252s0 = this.f3425c;
        c0252s0.setChoiceMode(1);
        J.d(c0252s0, i2);
        J.c(c0252s0, i3);
        T t2 = this.f3483F;
        int selectedItemPosition = t2.getSelectedItemPosition();
        C0252s0 c0252s1 = this.f3425c;
        if (a2.isShowing() && c0252s1 != null) {
            c0252s1.setListSelectionHidden(false);
            c0252s1.setSelection(selectedItemPosition);
            if (c0252s1.getChoiceMode() != 0) {
                c0252s1.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = t2.getViewTreeObserver()) == null) {
            return;
        }
        ViewTreeObserverOnGlobalLayoutListenerC0214d viewTreeObserverOnGlobalLayoutListenerC0214d = new ViewTreeObserverOnGlobalLayoutListenerC0214d(this, 3);
        viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0214d);
        this.f3446y.setOnDismissListener(new O(this, viewTreeObserverOnGlobalLayoutListenerC0214d));
    }

    @Override // p014j.S
    public final CharSequence j() {
        return this.f3479B;
    }

    @Override // p014j.S
    public final void l(CharSequence charSequence) {
        this.f3479B = charSequence;
    }

    @Override // p014j.E0, p014j.S
    public final void o(ListAdapter listAdapter) {
        super.o(listAdapter);
        this.f3480C = (M) listAdapter;
    }

    @Override // p014j.S
    public final void p(int i2) {
        this.f3482E = i2;
    }

    public final void s() {
        int i2;
        A a2 = this.f3446y;
        Drawable background = a2.getBackground();
        T t2 = this.f3483F;
        if (background != null) {
            background.getPadding(t2.f3494h);
            boolean zA = u1.a(t2);
            Rect rect = t2.f3494h;
            i2 = zA ? rect.right : -rect.left;
        } else {
            Rect rect2 = t2.f3494h;
            rect2.right = 0;
            rect2.left = 0;
            i2 = 0;
        }
        int paddingLeft = t2.getPaddingLeft();
        int paddingRight = t2.getPaddingRight();
        int width = t2.getWidth();
        int i3 = t2.f3493g;
        if (i3 == -2) {
            int iA = t2.a(this.f3480C, a2.getBackground());
            int i4 = t2.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = t2.f3494h;
            int i5 = (i4 - rect3.left) - rect3.right;
            if (iA > i5) {
                iA = i5;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i3 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i3);
        }
        this.f = u1.a(t2) ? (((width - paddingRight) - this.f3427e) - this.f3482E) + i2 : paddingLeft + this.f3482E + i2;
    }
}
