package N;

import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;
import p007e.AbstractC0201a;
import p014j.AbstractC0241m0;
import p014j.C0248q;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f388a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Parcelable f391e;
    public Object f;

    public /* synthetic */ d(TextView textView) {
        this.f391e = null;
        this.f = null;
        this.f388a = false;
        this.b = false;
        this.f390d = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f390d;
        Drawable drawableA = B.d.a(compoundButton);
        if (drawableA != null) {
            if (this.f388a || this.b) {
                Drawable drawableMutate = drawableA.mutate();
                if (this.f388a) {
                    s.b.h(drawableMutate, (ColorStateList) this.f391e);
                }
                if (this.b) {
                    s.b.i(drawableMutate, (PorterDuff.Mode) this.f);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        C0248q c0248q = (C0248q) this.f390d;
        Drawable checkMarkDrawable = c0248q.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f388a || this.b) {
                Drawable drawableMutate = checkMarkDrawable.mutate();
                if (this.f388a) {
                    s.b.h(drawableMutate, (ColorStateList) this.f391e);
                }
                if (this.b) {
                    s.b.i(drawableMutate, (PorterDuff.Mode) this.f);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(c0248q.getDrawableState());
                }
                c0248q.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public Bundle c(String str) {
        if (!this.b) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = (Bundle) this.f391e;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = (Bundle) this.f391e;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = (Bundle) this.f391e;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f391e = null;
        }
        return bundle2;
    }

    public void d(AttributeSet attributeSet, int i2) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f390d;
        Context context = compoundButton.getContext();
        int[] iArr = p005d.a.f2916m;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, i2);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        N.h(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, i2);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(AbstractC0201a.A(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(AbstractC0201a.A(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(AbstractC0201a.A(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                B.c.c(compoundButton, c0003dV.j(2));
            }
            if (typedArray.hasValue(3)) {
                B.c.d(compoundButton, AbstractC0241m0.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            c0003dV.w();
        }
    }

    public void e(String str, c cVar) {
        Object obj;
        p018l.f fVar = (p018l.f) this.f390d;
        p018l.c cVarA = fVar.a(str);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            p018l.c cVar2 = new p018l.c(str, cVar);
            fVar.f3833d++;
            p018l.c cVar3 = fVar.b;
            if (cVar3 == null) {
                fVar.f3831a = cVar2;
                fVar.b = cVar2;
            } else {
                cVar3.f3827c = cVar2;
                cVar2.f3828d = cVar3;
                fVar.b = cVar2;
            }
            obj = null;
        }
        if (((c) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public d() {
        this.f390d = new p018l.f();
        this.f389c = true;
    }
}
