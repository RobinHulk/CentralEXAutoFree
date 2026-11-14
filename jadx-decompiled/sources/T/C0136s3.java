package T;

import android.widget.SeekBar;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.s3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0136s3 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1145a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0136s3(Object obj, int i2) {
        this.f1145a = i2;
        this.b = obj;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        switch (this.f1145a) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.b;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.O2.setText(mainActivity.B(i2));
                return;
            case 1:
                MainActivity mainActivity2 = (MainActivity) this.b;
                U.a aVar2 = mainActivity2.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.P2.setText(mainActivity2.B(i2));
                return;
            default:
                if (z2) {
                    ((H0.l) this.b).b(Integer.valueOf(i2));
                    return;
                }
                return;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i2 = this.f1145a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        Object obj = this.b;
        switch (this.f1145a) {
            case 0:
                if (seekBar != null) {
                    int progress = seekBar.getProgress();
                    int i2 = MainActivity.u0;
                    ((MainActivity) obj).B0().edit().putInt("status_brightness_pct", progress).apply();
                }
                break;
            case 1:
                if (seekBar != null) {
                    int progress2 = seekBar.getProgress();
                    int i3 = MainActivity.u0;
                    ((MainActivity) obj).B0().edit().putInt("status_brightness_pct2", progress2).apply();
                }
                break;
        }
    }
}
