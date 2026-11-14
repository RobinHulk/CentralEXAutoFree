package T;

import android.widget.ImageView;
import android.widget.SeekBar;
import com.ex.auto.HomeFloatingWidgetsService;
import p034y.C0272f;

/* JADX INFO: loaded from: classes.dex */
public final class E1 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0272f f550a;
    public final /* synthetic */ ImageView b;

    public E1(C0272f c0272f, ImageView imageView) {
        this.f550a = c0272f;
        this.b = imageView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (z2) {
            C0272f c0272f = this.f550a;
            c0272f.o(i2);
            HomeFloatingWidgetsService.l(c0272f, this.b);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
