package g0;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import com.ex.auto.R;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c extends E.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f3159q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Chip chip, Chip chip2) {
        super(chip2);
        this.f3159q = chip;
    }

    @Override // E.b
    public final void l(ArrayList arrayList) {
        boolean z2 = false;
        arrayList.add(0);
        Rect rect = Chip.f2722u;
        Chip chip = this.f3159q;
        if (chip.c()) {
            e eVar = chip.f2725e;
            if (eVar != null && eVar.f3176K) {
                z2 = true;
            }
            if (!z2 || chip.f2727h == null) {
                return;
            }
            arrayList.add(1);
        }
    }

    @Override // E.b
    public final void o(int i2, p035z.e eVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
        if (i2 != 1) {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f2722u);
            return;
        }
        Chip chip = this.f3159q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfo.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        eVar.b(p035z.d.f4268e);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
    }
}
