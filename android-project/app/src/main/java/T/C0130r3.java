package T;

import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.r3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0130r3 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1134a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f1135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1136d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f1137e;
    public final /* synthetic */ H0.l f;

    public /* synthetic */ C0130r3(int i2, TextView textView, MainActivity mainActivity, String str, H0.l lVar, int i3) {
        this.f1134a = i3;
        this.b = i2;
        this.f1135c = textView;
        this.f1136d = mainActivity;
        this.f1137e = str;
        this.f = lVar;
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
        switch (this.f1134a) {
            case 0:
                int i3 = i2 + this.b;
                this.f1135c.setText(this.f1136d.getString(R.string.k_percent_label, this.f1137e, Integer.valueOf(i3)));
                if (z2) {
                    this.f.b(Integer.valueOf(i3));
                }
                break;
            default:
                int i4 = i2 + this.b;
                this.f1135c.setText(this.f1136d.getString(R.string.k_percent_label, this.f1137e, Integer.valueOf(i4)));
                if (z2) {
                    this.f.b(Integer.valueOf(i4));
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i2 = this.f1134a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i2 = this.f1134a;
    }
}
