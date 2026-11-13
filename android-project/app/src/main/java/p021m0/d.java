package p021m0;

import Y.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import p007e.AbstractC0201a;
import p026q.n;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3881a;
    public final ColorStateList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3884e;
    public final ColorStateList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f3885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f3886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f3887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3889k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f3890l;

    public d(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, a.f1385u);
        this.f3881a = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.b = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 3);
        AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 4);
        AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 5);
        this.f3882c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f3883d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i3 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f3888j = typedArrayObtainStyledAttributes.getResourceId(i3, 0);
        this.f3884e = typedArrayObtainStyledAttributes.getString(i3);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 6);
        this.f3885g = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f3886h = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.f3887i = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f3890l;
        int i2 = this.f3882c;
        if (typeface == null && (str = this.f3884e) != null) {
            this.f3890l = Typeface.create(str, i2);
        }
        if (this.f3890l == null) {
            int i3 = this.f3883d;
            if (i3 == 1) {
                this.f3890l = Typeface.SANS_SERIF;
            } else if (i3 == 2) {
                this.f3890l = Typeface.SERIF;
            } else if (i3 != 3) {
                this.f3890l = Typeface.DEFAULT;
            } else {
                this.f3890l = Typeface.MONOSPACE;
            }
            this.f3890l = Typeface.create(this.f3890l, i2);
        }
    }

    public final void b(Context context, AbstractC0201a abstractC0201a) {
        a();
        int i2 = this.f3888j;
        if (i2 == 0) {
            this.f3889k = true;
        }
        if (this.f3889k) {
            abstractC0201a.K(this.f3890l, true);
            return;
        }
        try {
            b bVar = new b(this, abstractC0201a);
            ThreadLocal threadLocal = n.f4025a;
            if (context.isRestricted()) {
                bVar.a(-4);
            } else {
                n.a(context, i2, new TypedValue(), 0, bVar, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f3889k = true;
            abstractC0201a.J(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f3884e, e2);
            this.f3889k = true;
            abstractC0201a.J(-3);
        }
    }

    public final void c(Context context, TextPaint textPaint, AbstractC0201a abstractC0201a) {
        a();
        d(textPaint, this.f3890l);
        b(context, new c(this, textPaint, abstractC0201a));
        ColorStateList colorStateList = this.b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f;
        textPaint.setShadowLayer(this.f3887i, this.f3885g, this.f3886h, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void d(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i2 = (~typeface.getStyle()) & this.f3882c;
        textPaint.setFakeBoldText((i2 & 1) != 0);
        textPaint.setTextSkewX((i2 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f3881a);
    }
}
