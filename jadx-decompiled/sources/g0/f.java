package g0;

import android.widget.CompoundButton;
import com.google.android.material.chip.ChipGroup;

/* JADX INFO: loaded from: classes.dex */
public final class f implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChipGroup f3214a;

    public f(ChipGroup chipGroup) {
        this.f3214a = chipGroup;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        ChipGroup chipGroup = this.f3214a;
        if (chipGroup.f2746l) {
            return;
        }
        if (chipGroup.getCheckedChipIds().isEmpty() && chipGroup.f2742h) {
            chipGroup.b(compoundButton.getId(), true);
            chipGroup.f2745k = compoundButton.getId();
            return;
        }
        int id = compoundButton.getId();
        if (!z2) {
            if (chipGroup.f2745k == id) {
                chipGroup.setCheckedId(-1);
            }
        } else {
            int i2 = chipGroup.f2745k;
            if (i2 != -1 && i2 != id && chipGroup.f2741g) {
                chipGroup.b(i2, false);
            }
            chipGroup.setCheckedId(id);
        }
    }
}
