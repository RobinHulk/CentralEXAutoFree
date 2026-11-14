package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.d1;
import p015j0.a;
import p017k0.i;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class SwitchMaterial extends d1 {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final int[][] f2824a0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final a f2825T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ColorStateList f2826U;
    public ColorStateList V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f2827W;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        super(s0.a.a(context, attributeSet, com.ex.auto.R.attr.switchStyle, com.ex.auto.R.style.Widget_MaterialComponents_CompoundButton_Switch), attributeSet);
        Context context2 = getContext();
        this.f2825T = new a(context2);
        int[] iArr = Y.a.f1384t;
        i.a(context2, attributeSet, com.ex.auto.R.attr.switchStyle, com.ex.auto.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        i.b(context2, attributeSet, iArr, com.ex.auto.R.attr.switchStyle, com.ex.auto.R.style.Widget_MaterialComponents_CompoundButton_Switch, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.switchStyle, com.ex.auto.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        this.f2827W = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f2826U == null) {
            int iV = AbstractC0201a.v(this, com.ex.auto.R.attr.colorSurface);
            int iV2 = AbstractC0201a.v(this, com.ex.auto.R.attr.colorControlActivated);
            float dimension = getResources().getDimension(com.ex.auto.R.dimen.mtrl_switch_thumb_elevation);
            a aVar = this.f2825T;
            if (aVar.f3731a) {
                float fI = 0.0f;
                for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                    WeakHashMap weakHashMap = N.f4222a;
                    fI += D.i((View) parent);
                }
                dimension += fI;
            }
            int iA = aVar.a(iV, dimension);
            this.f2826U = new ColorStateList(f2824a0, new int[]{AbstractC0201a.F(iV, iV2, 1.0f), iA, AbstractC0201a.F(iV, iV2, 0.38f), iA});
        }
        return this.f2826U;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.V == null) {
            int iV = AbstractC0201a.v(this, com.ex.auto.R.attr.colorSurface);
            int iV2 = AbstractC0201a.v(this, com.ex.auto.R.attr.colorControlActivated);
            int iV3 = AbstractC0201a.v(this, com.ex.auto.R.attr.colorOnSurface);
            this.V = new ColorStateList(f2824a0, new int[]{AbstractC0201a.F(iV, iV2, 0.54f), AbstractC0201a.F(iV, iV3, 0.32f), AbstractC0201a.F(iV, iV2, 0.12f), AbstractC0201a.F(iV, iV3, 0.12f)});
        }
        return this.V;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f2827W && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f2827W && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f2827W = z2;
        if (z2) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }
}
