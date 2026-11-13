package p029r0;

import android.graphics.drawable.Drawable;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public final class f extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4066d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(TextInputLayout textInputLayout, int i2) {
        super(textInputLayout);
        this.f4066d = i2;
    }

    @Override // p029r0.l
    public final void a() {
        switch (this.f4066d) {
            case 0:
                TextInputLayout textInputLayout = this.f4085a;
                textInputLayout.setEndIconOnClickListener(null);
                textInputLayout.setEndIconOnLongClickListener(null);
                break;
            default:
                TextInputLayout textInputLayout2 = this.f4085a;
                textInputLayout2.setEndIconOnClickListener(null);
                textInputLayout2.setEndIconDrawable((Drawable) null);
                textInputLayout2.setEndIconContentDescription((CharSequence) null);
                break;
        }
    }
}
