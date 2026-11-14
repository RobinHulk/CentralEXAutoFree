package B;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;
import p034y.C0269c;

/* JADX INFO: loaded from: classes.dex */
public final class j extends C0269c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f30d;

    @Override // p034y.C0269c
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f30d) {
            case 0:
                super.c(view, accessibilityEvent);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                accessibilityEvent.setClassName(ScrollView.class.getName());
                accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
                accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
                p035z.g.c(accessibilityEvent, nestedScrollView.getScrollX());
                p035z.g.d(accessibilityEvent, nestedScrollView.getScrollRange());
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // p034y.C0269c
    public final void d(View view, p035z.e eVar) {
        int scrollRange;
        switch (this.f30d) {
            case 0:
                View.AccessibilityDelegate accessibilityDelegate = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                accessibilityNodeInfo.setClassName("android.widget.ScrollView");
                if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                    accessibilityNodeInfo.setScrollable(true);
                    if (nestedScrollView.getScrollY() > 0) {
                        eVar.b(p035z.d.f4269g);
                        eVar.b(p035z.d.f4273k);
                    }
                    if (nestedScrollView.getScrollY() < scrollRange) {
                        eVar.b(p035z.d.f);
                        eVar.b(p035z.d.f4274l);
                    }
                    break;
                }
                break;
            case 1:
                View.AccessibilityDelegate accessibilityDelegate2 = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo2 = eVar.f4278a;
                accessibilityDelegate2.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCollectionInfo(null);
                break;
            default:
                View.AccessibilityDelegate accessibilityDelegate3 = this.f4239a;
                AccessibilityNodeInfo accessibilityNodeInfo3 = eVar.f4278a;
                accessibilityDelegate3.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                accessibilityNodeInfo3.setCollectionInfo(null);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    /* JADX WARN: Code duplicated, block: B:31:0x0093  */
    @Override // p034y.C0269c
    public boolean g(View view, int i2, Bundle bundle) {
        int iMin;
        switch (this.f30d) {
            case 0:
                if (super.g(view, i2, bundle)) {
                    return true;
                }
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                if (nestedScrollView.isEnabled()) {
                    int height = nestedScrollView.getHeight();
                    Rect rect = new Rect();
                    if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                        height = rect.height();
                    }
                    if (i2 == 4096) {
                        iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                        if (iMin != nestedScrollView.getScrollY()) {
                            nestedScrollView.t(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), true);
                            return true;
                        }
                    } else if (i2 == 8192 || i2 == 16908344) {
                        int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                        if (iMax != nestedScrollView.getScrollY()) {
                            nestedScrollView.t(0 - nestedScrollView.getScrollX(), iMax - nestedScrollView.getScrollY(), true);
                            return true;
                        }
                    } else if (i2 == 16908346) {
                        iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                        if (iMin != nestedScrollView.getScrollY()) {
                            nestedScrollView.t(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), true);
                            return true;
                        }
                    }
                }
                return false;
            default:
                return super.g(view, i2, bundle);
        }
    }
}
