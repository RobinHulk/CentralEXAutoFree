package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p014j.C0218b;
import p014j.P0;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1466a;
    public View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f1467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f1468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f1469e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1470g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1471h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1472i;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0218b c0218b = new C0218b(this);
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.q(this, c0218b);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p005d.a.f2906a);
        boolean z2 = false;
        this.f1468d = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f1469e = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f1472i = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f1470g = true;
            this.f = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f1470g ? !(this.f1468d != null || this.f1469e != null) : this.f == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1468d;
        if (drawable != null && drawable.isStateful()) {
            this.f1468d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1469e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1469e.setState(getDrawableState());
        }
        Drawable drawable3 = this.f;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1468d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1469e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.b = findViewById(R.id.action_bar);
        this.f1467c = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1466a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        boolean z3 = true;
        if (this.f1470g) {
            Drawable drawable = this.f;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.f1468d == null) {
                z3 = false;
            } else if (this.b.getVisibility() == 0) {
                this.f1468d.setBounds(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom());
            } else {
                View view = this.f1467c;
                if (view == null || view.getVisibility() != 0) {
                    this.f1468d.setBounds(0, 0, 0, 0);
                } else {
                    this.f1468d.setBounds(this.f1467c.getLeft(), this.f1467c.getTop(), this.f1467c.getRight(), this.f1467c.getBottom());
                }
            }
            this.f1471h = false;
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        if (this.b == null && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE && (i4 = this.f1472i) >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i3)), Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i3);
        if (this.b == null) {
            return;
        }
        View.MeasureSpec.getMode(i3);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1468d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1468d);
        }
        this.f1468d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.b;
            if (view != null) {
                this.f1468d.setBounds(view.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom());
            }
        }
        boolean z2 = false;
        if (!this.f1470g ? !(this.f1468d != null || this.f1469e != null) : this.f == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f);
        }
        this.f = drawable;
        boolean z2 = this.f1470g;
        boolean z3 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z2 && (drawable2 = this.f) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z2 ? !(this.f1468d != null || this.f1469e != null) : this.f == null) {
            z3 = true;
        }
        setWillNotDraw(z3);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f1469e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1469e);
        }
        this.f1469e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1471h && this.f1469e != null) {
                throw null;
            }
        }
        boolean z2 = false;
        if (!this.f1470g ? !(this.f1468d != null || this.f1469e != null) : this.f == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(P0 p1) {
    }

    public void setTransitioning(boolean z2) {
        this.f1466a = z2;
        setDescendantFocusability(z2 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.f1468d;
        if (drawable != null) {
            drawable.setVisible(z2, false);
        }
        Drawable drawable2 = this.f1469e;
        if (drawable2 != null) {
            drawable2.setVisible(z2, false);
        }
        Drawable drawable3 = this.f;
        if (drawable3 != null) {
            drawable3.setVisible(z2, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1468d;
        boolean z2 = this.f1470g;
        return (drawable == drawable2 && !z2) || (drawable == this.f1469e && this.f1471h) || ((drawable == this.f && z2) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }
}
