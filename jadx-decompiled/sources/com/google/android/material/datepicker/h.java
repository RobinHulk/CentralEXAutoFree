package com.google.android.material.datepicker;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import p034y.C0269c;

/* JADX INFO: loaded from: classes.dex */
public final class h extends C0269c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2763e;

    public /* synthetic */ h(Object obj, int i2) {
        this.f2762d = i2;
        this.f2763e = obj;
    }

    @Override // p034y.C0269c
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f2762d) {
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f2763e).f2807d);
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // p034y.C0269c
    public final void d(View view, p035z.e eVar) {
        switch (this.f2762d) {
            case 0:
                View.AccessibilityDelegate accessibilityDelegate = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                l lVar = (l) this.f2763e;
                accessibilityNodeInfo.setHintText(lVar.f2775a0.getVisibility() == 0 ? lVar.w().getResources().getString(R.string.mtrl_picker_toggle_to_year_selection) : lVar.w().getResources().getString(R.string.mtrl_picker_toggle_to_day_selection));
                break;
            case 1:
                View.AccessibilityDelegate accessibilityDelegate2 = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo2 = eVar.f4278a;
                accessibilityDelegate2.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                CheckableImageButton checkableImageButton = (CheckableImageButton) this.f2763e;
                accessibilityNodeInfo2.setCheckable(checkableImageButton.f2808e);
                accessibilityNodeInfo2.setChecked(checkableImageButton.f2807d);
                break;
            default:
                View.AccessibilityDelegate accessibilityDelegate3 = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo3 = eVar.f4278a;
                accessibilityDelegate3.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                accessibilityNodeInfo3.setCheckable(((NavigationMenuItemView) this.f2763e).f2817x);
                break;
        }
    }
}
