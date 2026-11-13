package p025p0;

import Y.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AbstractC0201a f3970a = new i();
    public AbstractC0201a b = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AbstractC0201a f3971c = new i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AbstractC0201a f3972d = new i();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f3973e = new a(0.0f);
    public c f = new a(0.0f);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f3974g = new a(0.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f3975h = new a(0.0f);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f3976i = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f3977j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f3978k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f3979l = new e();

    public static j a(Context context, int i2, int i3, a aVar) {
        if (i3 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
            i2 = i3;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, a.f1382r);
        try {
            int i4 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i5 = typedArrayObtainStyledAttributes.getInt(3, i4);
            int i6 = typedArrayObtainStyledAttributes.getInt(4, i4);
            int i7 = typedArrayObtainStyledAttributes.getInt(2, i4);
            int i8 = typedArrayObtainStyledAttributes.getInt(1, i4);
            c cVarC = c(typedArrayObtainStyledAttributes, 5, aVar);
            c cVarC2 = c(typedArrayObtainStyledAttributes, 8, cVarC);
            c cVarC3 = c(typedArrayObtainStyledAttributes, 9, cVarC);
            c cVarC4 = c(typedArrayObtainStyledAttributes, 7, cVarC);
            c cVarC5 = c(typedArrayObtainStyledAttributes, 6, cVarC);
            j jVar = new j();
            AbstractC0201a abstractC0201aQ = AbstractC0201a.q(i5);
            jVar.f3960a = abstractC0201aQ;
            j.b(abstractC0201aQ);
            jVar.f3963e = cVarC2;
            AbstractC0201a abstractC0201aQ2 = AbstractC0201a.q(i6);
            jVar.b = abstractC0201aQ2;
            j.b(abstractC0201aQ2);
            jVar.f = cVarC3;
            AbstractC0201a abstractC0201aQ3 = AbstractC0201a.q(i7);
            jVar.f3961c = abstractC0201aQ3;
            j.b(abstractC0201aQ3);
            jVar.f3964g = cVarC4;
            AbstractC0201a abstractC0201aQ4 = AbstractC0201a.q(i8);
            jVar.f3962d = abstractC0201aQ4;
            j.b(abstractC0201aQ4);
            jVar.f3965h = cVarC5;
            return jVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static j b(Context context, AttributeSet attributeSet, int i2, int i3) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f1378n, i2, i3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i2, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i3 = typedValuePeekValue.type;
        if (i3 == 5) {
            return new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i3 == 6 ? new h(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z2 = this.f3979l.getClass().equals(e.class) && this.f3977j.getClass().equals(e.class) && this.f3976i.getClass().equals(e.class) && this.f3978k.getClass().equals(e.class);
        float fA = this.f3973e.a(rectF);
        return z2 && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f3975h.a(rectF) > fA ? 1 : (this.f3975h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f3974g.a(rectF) > fA ? 1 : (this.f3974g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.b instanceof i) && (this.f3970a instanceof i) && (this.f3971c instanceof i) && (this.f3972d instanceof i));
    }

    public final j e() {
        j jVar = new j();
        jVar.f3960a = this.f3970a;
        jVar.b = this.b;
        jVar.f3961c = this.f3971c;
        jVar.f3962d = this.f3972d;
        jVar.f3963e = this.f3973e;
        jVar.f = this.f;
        jVar.f3964g = this.f3974g;
        jVar.f3965h = this.f3975h;
        jVar.f3966i = this.f3976i;
        jVar.f3967j = this.f3977j;
        jVar.f3968k = this.f3978k;
        jVar.f3969l = this.f3979l;
        return jVar;
    }

    public final k f(float f) {
        j jVarE = e();
        jVarE.f3963e = new a(f);
        jVarE.f = new a(f);
        jVarE.f3964g = new a(f);
        jVarE.f3965h = new a(f);
        return jVarE.a();
    }
}
