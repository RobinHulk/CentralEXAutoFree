package T;

import android.content.SharedPreferences;
import android.widget.SeekBar;
import com.ex.auto.TempBattPillFloaterService;

/* JADX INFO: renamed from: T.t3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0142t3 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1154a;
    public final /* synthetic */ SharedPreferences b;

    public /* synthetic */ C0142t3(SharedPreferences sharedPreferences, int i2) {
        this.f1154a = i2;
        this.b = sharedPreferences;
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
        switch (this.f1154a) {
            case 0:
                if (z2) {
                    this.b.edit().putInt("pill_alpha", i2).apply();
                    TempBattPillFloaterService tempBattPillFloaterService = TempBattPillFloaterService.f2524u;
                    TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f2524u;
                    if (tempBattPillFloaterService2 != null) {
                        tempBattPillFloaterService2.a(i2);
                    }
                }
                break;
            default:
                if (z2) {
                    int i3 = i2 + 50;
                    this.b.edit().putInt("pill_size_pct", i3).apply();
                    TempBattPillFloaterService tempBattPillFloaterService3 = TempBattPillFloaterService.f2524u;
                    TempBattPillFloaterService tempBattPillFloaterService4 = TempBattPillFloaterService.f2524u;
                    if (tempBattPillFloaterService4 != null) {
                        tempBattPillFloaterService4.b(i3);
                    }
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i2 = this.f1154a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i2 = this.f1154a;
    }
}
