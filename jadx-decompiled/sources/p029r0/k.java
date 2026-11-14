package p029r0;

import M.C0013n;
import Z.a;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.Q0;
import p014j.S0;
import p025p0.e;
import p025p0.f;
import p025p0.g;
import p025p0.i;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class k extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Q0 f4073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final S0 f4074e;
    public final h f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f4075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f4076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f4079k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public StateListDrawable f4080l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public g f4081m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AccessibilityManager f4082n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ValueAnimator f4083o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ValueAnimator f4084p;

    public k(TextInputLayout textInputLayout) {
        super(textInputLayout);
        int i2 = 2;
        this.f4073d = new Q0(this, i2);
        this.f4074e = new S0(this, i2);
        this.f = new h(this, textInputLayout);
        this.f4075g = new a(this, 1);
        this.f4076h = new b(this, 1);
        this.f4077i = false;
        this.f4078j = false;
        this.f4079k = Long.MAX_VALUE;
    }

    public static AutoCompleteTextView d(k kVar, EditText editText) {
        kVar.getClass();
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    public static void e(k kVar, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            kVar.getClass();
            return;
        }
        kVar.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() - kVar.f4079k;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            kVar.f4077i = false;
        }
        if (kVar.f4077i) {
            kVar.f4077i = false;
            return;
        }
        kVar.g(!kVar.f4078j);
        if (!kVar.f4078j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    @Override // p029r0.l
    public final void a() {
        int i2 = 2;
        Context context = this.b;
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        g gVarF = f(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        g gVarF2 = f(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f4081m = gVarF;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f4080l = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, gVarF);
        this.f4080l.addState(new int[0], gVarF2);
        Drawable drawableA = AbstractC0201a.A(context, R.drawable.mtrl_dropdown_arrow);
        TextInputLayout textInputLayout = this.f4085a;
        textInputLayout.setEndIconDrawable(drawableA);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        textInputLayout.setEndIconOnClickListener(new j(this, 6));
        LinkedHashSet linkedHashSet = textInputLayout.f2858b0;
        a aVar = this.f4075g;
        linkedHashSet.add(aVar);
        if (textInputLayout.f2863e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f2865f0.add(this.f4076h);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = a.f1389a;
        valueAnimatorOfFloat.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat.setDuration(67);
        valueAnimatorOfFloat.addUpdateListener(new C0013n(this, i2));
        this.f4084p = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(50);
        valueAnimatorOfFloat2.addUpdateListener(new C0013n(this, i2));
        this.f4083o = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new p002b0.a(this, 2));
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.s(this.f4086c, 2);
        this.f4082n = (AccessibilityManager) context.getSystemService("accessibility");
    }

    @Override // p029r0.l
    public final boolean b(int i2) {
        return i2 != 0;
    }

    public final g f(float f, float f2, float f3, int i2) {
        i iVar = new i();
        i iVar2 = new i();
        i iVar3 = new i();
        i iVar4 = new i();
        e eVar = new e();
        e eVar2 = new e();
        e eVar3 = new e();
        e eVar4 = new e();
        p025p0.a aVar = new p025p0.a(f);
        p025p0.a aVar2 = new p025p0.a(f);
        p025p0.a aVar3 = new p025p0.a(f2);
        p025p0.a aVar4 = new p025p0.a(f2);
        p025p0.k kVar = new p025p0.k();
        kVar.f3970a = iVar;
        kVar.b = iVar2;
        kVar.f3971c = iVar3;
        kVar.f3972d = iVar4;
        kVar.f3973e = aVar;
        kVar.f = aVar2;
        kVar.f3974g = aVar4;
        kVar.f3975h = aVar3;
        kVar.f3976i = eVar;
        kVar.f3977j = eVar2;
        kVar.f3978k = eVar3;
        kVar.f3979l = eVar4;
        Paint paint = g.f3938w;
        String simpleName = g.class.getSimpleName();
        Context context = this.b;
        int iO = AbstractC0201a.O(context, R.attr.colorSurface, simpleName);
        g gVar = new g();
        gVar.f(context);
        gVar.h(ColorStateList.valueOf(iO));
        gVar.g(f3);
        gVar.setShapeAppearanceModel(kVar);
        f fVar = gVar.f3939a;
        if (fVar.f3928g == null) {
            fVar.f3928g = new Rect();
        }
        gVar.f3939a.f3928g.set(0, i2, 0, i2);
        gVar.invalidateSelf();
        return gVar;
    }

    public final void g(boolean z2) {
        if (this.f4078j != z2) {
            this.f4078j = z2;
            this.f4084p.cancel();
            this.f4083o.start();
        }
    }
}
