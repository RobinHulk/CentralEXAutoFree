package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.google.android.material.datepicker.h;
import p014j.C0259w;
import p017k0.a;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends C0259w implements Checkable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f2806g = {R.attr.state_checked};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2808e;
    public boolean f;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.imageButtonStyle);
        this.f2808e = true;
        this.f = true;
        N.i(this, new h(this, 1));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2807d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        return this.f2807d ? View.mergeDrawableStates(super.onCreateDrawableState(i2 + 1), f2806g) : super.onCreateDrawableState(i2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f46a);
        setChecked(aVar.f3741c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f3741c = this.f2807d;
        return aVar;
    }

    public void setCheckable(boolean z2) {
        if (this.f2808e != z2) {
            this.f2808e = z2;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (!this.f2808e || this.f2807d == z2) {
            return;
        }
        this.f2807d = z2;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z2) {
        this.f = z2;
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        if (this.f) {
            super.setPressed(z2);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2807d);
    }
}
