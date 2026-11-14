package p014j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.google.android.material.datepicker.c;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: j.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0259w extends ImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3708a;
    public final C0261x b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3709c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0259w(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        f1.a(context);
        this.f3709c = false;
        e1.a(this, getContext());
        c cVar = new c(this);
        this.f3708a = cVar;
        cVar.e(attributeSet, i2);
        C0261x c0261x = new C0261x(this);
        this.b = c0261x;
        c0261x.b(attributeSet, i2);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.f3708a;
        if (cVar != null) {
            cVar.a();
        }
        C0261x c0261x = this.b;
        if (c0261x != null) {
            c0261x.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f3708a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f3708a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        g1 g1Var;
        C0261x c0261x = this.b;
        if (c0261x == null || (g1Var = c0261x.b) == null) {
            return null;
        }
        return g1Var.f3603a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        g1 g1Var;
        C0261x c0261x = this.b;
        if (c0261x == null || (g1Var = c0261x.b) == null) {
            return null;
        }
        return g1Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(this.b.f3710a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f3708a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        c cVar = this.f3708a;
        if (cVar != null) {
            cVar.g(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0261x c0261x = this.b;
        if (c0261x != null) {
            c0261x.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        C0261x c0261x = this.b;
        if (c0261x != null && drawable != null && !this.f3709c) {
            c0261x.f3711c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (c0261x != null) {
            c0261x.a();
            if (this.f3709c) {
                return;
            }
            ImageView imageView = c0261x.f3710a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(c0261x.f3711c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i2) {
        super.setImageLevel(i2);
        this.f3709c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        C0261x c0261x = this.b;
        ImageView imageView = c0261x.f3710a;
        if (i2 != 0) {
            Drawable drawableA = AbstractC0201a.A(imageView.getContext(), i2);
            if (drawableA != null) {
                AbstractC0241m0.a(drawableA);
            }
            imageView.setImageDrawable(drawableA);
        } else {
            imageView.setImageDrawable(null);
        }
        c0261x.a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0261x c0261x = this.b;
        if (c0261x != null) {
            c0261x.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        c cVar = this.f3708a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        c cVar = this.f3708a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0261x c0261x = this.b;
        if (c0261x != null) {
            if (c0261x.b == null) {
                c0261x.b = new g1();
            }
            g1 g1Var = c0261x.b;
            g1Var.f3603a = colorStateList;
            g1Var.f3605d = true;
            c0261x.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0261x c0261x = this.b;
        if (c0261x != null) {
            if (c0261x.b == null) {
                c0261x.b = new g1();
            }
            g1 g1Var = c0261x.b;
            g1Var.b = mode;
            g1Var.f3604c = true;
            c0261x.a();
        }
    }
}
