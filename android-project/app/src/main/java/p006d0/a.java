package p006d0;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2930a = 1;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2932d;

    public a(TextView textView, Typeface typeface, int i2) {
        this.f2931c = textView;
        this.f2932d = typeface;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2930a) {
            case 0:
                ((BottomSheetBehavior) this.f2932d).A(this.f2931c, this.b);
                break;
            default:
                ((TextView) this.f2931c).setTypeface((Typeface) this.f2932d, this.b);
                break;
        }
    }

    public a(BottomSheetBehavior bottomSheetBehavior, View view, int i2) {
        this.f2932d = bottomSheetBehavior;
        this.f2931c = view;
        this.b = i2;
    }
}
