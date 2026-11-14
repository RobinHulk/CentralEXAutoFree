package com.google.android.material.datepicker;

import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.AbstractC0241m0;
import p014j.C0251s;
import p014j.g1;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2752a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f2755e;
    public Object f;

    public c(View view) {
        this.f2752a = -1;
        this.b = view;
        this.f2753c = C0251s.a();
    }

    public static c b(Context context, int i2) {
        AbstractC0201a.h("Cannot create a CalendarItemStyle with a styleResId of 0", i2 != 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, Y.a.f1375k);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateListY = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 4);
        ColorStateList colorStateListY2 = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 9);
        ColorStateList colorStateListY3 = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 7);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        p025p0.k kVarA = p025p0.k.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new p025p0.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new c(colorStateListY, colorStateListY2, colorStateListY3, dimensionPixelSize, kVarA, rect);
    }

    public void a() {
        View view = (View) this.b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((g1) this.f2754d) != null) {
                if (((g1) this.f) == null) {
                    this.f = new g1();
                }
                g1 g1Var = (g1) this.f;
                g1Var.f3603a = null;
                g1Var.f3605d = false;
                g1Var.b = null;
                g1Var.f3604c = false;
                WeakHashMap weakHashMap = N.f4222a;
                ColorStateList colorStateListG = D.g(view);
                if (colorStateListG != null) {
                    g1Var.f3605d = true;
                    g1Var.f3603a = colorStateListG;
                }
                PorterDuff.Mode modeH = D.h(view);
                if (modeH != null) {
                    g1Var.f3604c = true;
                    g1Var.b = modeH;
                }
                if (g1Var.f3605d || g1Var.f3604c) {
                    C0251s.e(background, g1Var, view.getDrawableState());
                    return;
                }
            }
            g1 g1Var2 = (g1) this.f2755e;
            if (g1Var2 != null) {
                C0251s.e(background, g1Var2, view.getDrawableState());
                return;
            }
            g1 g1Var3 = (g1) this.f2754d;
            if (g1Var3 != null) {
                C0251s.e(background, g1Var3, view.getDrawableState());
            }
        }
    }

    public ColorStateList c() {
        g1 g1Var = (g1) this.f2755e;
        if (g1Var != null) {
            return g1Var.f3603a;
        }
        return null;
    }

    public PorterDuff.Mode d() {
        g1 g1Var = (g1) this.f2755e;
        if (g1Var != null) {
            return g1Var.b;
        }
        return null;
    }

    public void e(AttributeSet attributeSet, int i2) {
        ColorStateList colorStateListF;
        View view = (View) this.b;
        Context context = view.getContext();
        int[] iArr = p005d.a.f2904A;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, i2);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        View view2 = (View) this.b;
        N.h(view2, view2.getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, i2);
        try {
            if (typedArray.hasValue(0)) {
                this.f2752a = typedArray.getResourceId(0, -1);
                C0251s c0251s = (C0251s) this.f2753c;
                Context context2 = view.getContext();
                int i3 = this.f2752a;
                synchronized (c0251s) {
                    colorStateListF = c0251s.f3681a.f(context2, i3);
                }
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (typedArray.hasValue(1)) {
                D.q(view, c0003dV.j(1));
            }
            if (typedArray.hasValue(2)) {
                D.r(view, AbstractC0241m0.c(typedArray.getInt(2, -1), null));
            }
            c0003dV.w();
        } catch (Throwable th) {
            c0003dV.w();
            throw th;
        }
    }

    public void f() {
        this.f2752a = -1;
        h(null);
        a();
    }

    public void g(int i2) {
        ColorStateList colorStateListF;
        this.f2752a = i2;
        C0251s c0251s = (C0251s) this.f2753c;
        if (c0251s != null) {
            Context context = ((View) this.b).getContext();
            synchronized (c0251s) {
                colorStateListF = c0251s.f3681a.f(context, i2);
            }
        } else {
            colorStateListF = null;
        }
        h(colorStateListF);
        a();
    }

    public void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((g1) this.f2754d) == null) {
                this.f2754d = new g1();
            }
            g1 g1Var = (g1) this.f2754d;
            g1Var.f3603a = colorStateList;
            g1Var.f3605d = true;
        } else {
            this.f2754d = null;
        }
        a();
    }

    public void i(ColorStateList colorStateList) {
        if (((g1) this.f2755e) == null) {
            this.f2755e = new g1();
        }
        g1 g1Var = (g1) this.f2755e;
        g1Var.f3603a = colorStateList;
        g1Var.f3605d = true;
        a();
    }

    public void j(PorterDuff.Mode mode) {
        if (((g1) this.f2755e) == null) {
            this.f2755e = new g1();
        }
        g1 g1Var = (g1) this.f2755e;
        g1Var.b = mode;
        g1Var.f3604c = true;
        a();
    }

    public c(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i2, p025p0.k kVar, Rect rect) {
        AbstractC0201a.i(rect.left);
        AbstractC0201a.i(rect.top);
        AbstractC0201a.i(rect.right);
        AbstractC0201a.i(rect.bottom);
        this.b = rect;
        this.f2753c = colorStateList2;
        this.f2754d = colorStateList;
        this.f2755e = colorStateList3;
        this.f2752a = i2;
        this.f = kVar;
    }
}
