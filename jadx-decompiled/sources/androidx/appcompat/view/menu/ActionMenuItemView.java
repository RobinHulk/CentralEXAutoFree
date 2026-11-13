package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import p005d.a;
import p012i.AbstractC0213c;
import p012i.C0212b;
import p012i.k;
import p012i.l;
import p012i.n;
import p012i.z;
import p014j.C0219b0;
import p014j.InterfaceC0236k;
import p014j.r1;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends C0219b0 implements z, View.OnClickListener, InterfaceC0236k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n f1439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f1440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f1441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public k f1442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C0212b f1443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AbstractC0213c f1444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1447o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1448p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1449q;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f1445m = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f2907c, 0, 0);
        this.f1447o = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f1449q = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f1448p = -1;
        setSaveEnabled(false);
    }

    @Override // p014j.InterfaceC0236k
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // p014j.InterfaceC0236k
    public final boolean b() {
        return !TextUtils.isEmpty(getText()) && this.f1439g.getIcon() == null;
    }

    @Override // p012i.z
    public final void e(n nVar) {
        this.f1439g = nVar;
        setIcon(nVar.getIcon());
        setTitle(nVar.getTitleCondensed());
        setId(nVar.f3368a);
        setVisibility(nVar.isVisible() ? 0 : 8);
        setEnabled(nVar.isEnabled());
        if (nVar.hasSubMenu() && this.f1443k == null) {
            this.f1443k = new C0212b(this);
        }
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // p012i.z
    public n getItemData() {
        return this.f1439g;
    }

    public final void h() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f1440h);
        if (this.f1441i != null && ((this.f1439g.f3390y & 4) != 4 || (!this.f1445m && !this.f1446n))) {
            z2 = false;
        }
        boolean z4 = z3 & z2;
        setText(z4 ? this.f1440h : null);
        CharSequence charSequence = this.f1439g.f3382q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z4 ? null : this.f1439g.f3371e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f1439g.f3383r;
        if (TextUtils.isEmpty(charSequence2)) {
            r1.a(this, z4 ? null : this.f1439g.f3371e);
        } else {
            r1.a(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k kVar = this.f1442j;
        if (kVar != null) {
            kVar.a(this.f1439g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1445m = g();
        h();
    }

    @Override // p014j.C0219b0, android.widget.TextView, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i4 = this.f1448p) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int i5 = this.f1447o;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i5) : i5;
        if (mode != 1073741824 && i5 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i3);
        }
        if (!zIsEmpty || this.f1441i == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f1441i.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0212b c0212b;
        if (this.f1439g.hasSubMenu() && (c0212b = this.f1443k) != null && c0212b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z2) {
    }

    public void setChecked(boolean z2) {
    }

    public void setExpandedFormat(boolean z2) {
        if (this.f1446n != z2) {
            this.f1446n = z2;
            n nVar = this.f1439g;
            if (nVar != null) {
                l lVar = nVar.f3379n;
                lVar.f3349k = true;
                lVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f1441i = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.f1449q;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
            } else {
                i2 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i2);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(k kVar) {
        this.f1442j = kVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i2, int i3, int i4, int i5) {
        this.f1448p = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(AbstractC0213c abstractC0213c) {
        this.f1444l = abstractC0213c;
    }

    public void setTitle(CharSequence charSequence) {
        this.f1440h = charSequence;
        h();
    }
}
