package E;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class a extends A.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f48d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(29);
        this.f48d = bVar;
    }

    @Override // A.e
    public final p035z.e s(int i2) {
        return new p035z.e(AccessibilityNodeInfo.obtain(this.f48d.n(i2).f4278a));
    }

    @Override // A.e
    public final p035z.e t(int i2) {
        b bVar = this.f48d;
        int i3 = i2 == 2 ? bVar.f58k : bVar.f59l;
        if (i3 == Integer.MIN_VALUE) {
            return null;
        }
        return s(i3);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0049  */
    @Override // A.e
    public final boolean w(int i2, int i3, Bundle bundle) {
        int i4;
        b bVar = this.f48d;
        Chip chip = bVar.f56i;
        if (i2 == -1) {
            WeakHashMap weakHashMap = N.f4222a;
            return AbstractC0290y.j(chip, i3, bundle);
        }
        boolean z2 = true;
        if (i3 == 1) {
            return bVar.p(i2);
        }
        if (i3 == 2) {
            return bVar.j(i2);
        }
        boolean z3 = false;
        if (i3 == 64) {
            AccessibilityManager accessibilityManager = bVar.f55h;
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i4 = bVar.f58k) != i2) {
                if (i4 != Integer.MIN_VALUE) {
                    bVar.f58k = Integer.MIN_VALUE;
                    bVar.f56i.invalidate();
                    bVar.q(i4, 65536);
                }
                bVar.f58k = i2;
                chip.invalidate();
                bVar.q(i2, 32768);
            } else {
                z2 = false;
            }
        } else {
            if (i3 != 128) {
                g0.c cVar = (g0.c) bVar;
                if (i3 != 16) {
                    return false;
                }
                Chip chip2 = cVar.f3159q;
                if (i2 == 0) {
                    return chip2.performClick();
                }
                if (i2 != 1) {
                    return false;
                }
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.f2727h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z3 = true;
                }
                chip2.f2736q.q(1, 1);
                return z3;
            }
            if (bVar.f58k == i2) {
                bVar.f58k = Integer.MIN_VALUE;
                chip.invalidate();
                bVar.q(i2, 65536);
            } else {
                z2 = false;
            }
        }
        return z2;
    }
}
