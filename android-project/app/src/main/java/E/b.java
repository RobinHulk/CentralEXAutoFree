package E;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import p020m.l;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.C0269c;
import p034y.N;
import p035z.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends C0269c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Rect f49n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final p025p0.e f50o = new p025p0.e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final p025p0.e f51p = new p025p0.e();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f55h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Chip f56i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f57j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f52d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f53e = new Rect();
    public final Rect f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f54g = new int[2];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f58k = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f59l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f60m = Integer.MIN_VALUE;

    public b(Chip chip) {
        if (chip == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f56i = chip;
        this.f55h = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = N.f4222a;
        if (AbstractC0290y.c(chip) == 0) {
            AbstractC0290y.s(chip, 1);
        }
    }

    @Override // p034y.C0269c
    public final A.e b(View view) {
        if (this.f57j == null) {
            this.f57j = new a(this);
        }
        return this.f57j;
    }

    @Override // p034y.C0269c
    public final void d(View view, p035z.e eVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f4239a;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f4278a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = ((g0.c) this).f3159q;
        accessibilityNodeInfo.setCheckable(chip.d());
        accessibilityNodeInfo.setClickable(chip.isClickable());
        if (chip.d() || chip.isClickable()) {
            accessibilityNodeInfo.setClassName(chip.d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setText(chip.getText());
    }

    public final boolean j(int i2) {
        if (this.f59l != i2) {
            return false;
        }
        this.f59l = Integer.MIN_VALUE;
        g0.c cVar = (g0.c) this;
        if (i2 == 1) {
            Chip chip = cVar.f3159q;
            chip.f2732m = false;
            chip.refreshDrawableState();
        }
        q(i2, 8);
        return true;
    }

    public final p035z.e k(int i2) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        p035z.e eVar = new p035z.e(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        accessibilityNodeInfoObtain.setClassName("android.view.View");
        Rect rect = f49n;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        Chip chip = this.f56i;
        accessibilityNodeInfoObtain.setParent(chip);
        o(i2, eVar);
        if (eVar.e() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f53e;
        eVar.d(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(chip.getContext().getPackageName());
        eVar.b = i2;
        accessibilityNodeInfoObtain.setSource(chip, i2);
        if (this.f58k == i2) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            eVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            eVar.a(64);
        }
        boolean z2 = this.f59l == i2;
        if (z2) {
            eVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            eVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z2);
        int[] iArr = this.f54g;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.f52d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            eVar.d(rect3);
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.f;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (parent instanceof View) {
                        View view = (View) parent;
                        if (view.getAlpha() > 0.0f && view.getVisibility() == 0) {
                            parent = view.getParent();
                        }
                    }
                    if (parent != null) {
                        accessibilityNodeInfoObtain.setVisibleToUser(true);
                    }
                }
            }
        }
        return eVar;
    }

    public abstract void l(ArrayList arrayList);

    /* JADX WARN: Code duplicated, block: B:115:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ae A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00be  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00db  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:57:0x010a  */
    /* JADX WARN: Code duplicated, block: B:66:0x011f  */
    /* JADX WARN: Code duplicated, block: B:68:0x013d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0193  */
    public final boolean m(int i2, Rect rect) {
        int i3;
        int i4;
        Object obj;
        p035z.e eVar;
        int i5;
        Rect rect2;
        int i6;
        Rect rect3;
        int i7;
        p035z.e eVar2;
        int i8;
        int iK;
        int iL;
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        l lVar = new l();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            lVar.c(i9, k(i9));
        }
        int i10 = this.f59l;
        int i11 = Integer.MIN_VALUE;
        p035z.e eVar3 = i10 == Integer.MIN_VALUE ? null : (p035z.e) lVar.b(i10, null);
        p025p0.e eVar4 = f50o;
        p025p0.e eVar5 = f51p;
        Chip chip = this.f56i;
        if (i2 == 1 || i2 == 2) {
            i3 = 0;
            i4 = -1;
            WeakHashMap weakHashMap = N.f4222a;
            boolean z2 = AbstractC0291z.d(chip) == 1;
            eVar5.getClass();
            int i12 = lVar.f3874c;
            ArrayList arrayList2 = new ArrayList(i12);
            for (int i13 = 0; i13 < i12; i13++) {
                arrayList2.add((p035z.e) lVar.b[i13]);
            }
            Collections.sort(arrayList2, new c(z2, eVar4));
            if (i2 == 1) {
                int size = arrayList2.size();
                if (eVar3 != null) {
                    size = arrayList2.indexOf(eVar3);
                }
                int i14 = size - 1;
                if (i14 >= 0) {
                    obj = arrayList2.get(i14);
                } else {
                    obj = null;
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (eVar3 == null ? -1 : arrayList2.lastIndexOf(eVar3)) + 1;
                if (iLastIndexOf < size2) {
                    obj = arrayList2.get(iLastIndexOf);
                } else {
                    obj = null;
                }
            }
            eVar = (p035z.e) obj;
        } else {
            if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect4 = new Rect();
            int i15 = this.f59l;
            if (i15 != Integer.MIN_VALUE) {
                n(i15).d(rect4);
            } else {
                if (rect != null) {
                    rect4.set(rect);
                } else {
                    int width = chip.getWidth();
                    int height = chip.getHeight();
                    if (i2 == 17) {
                        i4 = -1;
                        rect4.set(width, 0, width, height);
                    } else if (i2 == 33) {
                        i4 = -1;
                        rect4.set(0, height, width, height);
                    } else if (i2 == 66) {
                        rect4.set(-1, 0, -1, height);
                        i4 = -1;
                    } else {
                        if (i2 != 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                        rect4.set(0, -1, width, -1);
                        i4 = -1;
                    }
                }
                rect2 = new Rect(rect4);
                if (i2 != 17) {
                    i3 = 0;
                    rect2.offset(rect4.width() + 1, 0);
                } else if (i2 != 33) {
                    i3 = 0;
                    rect2.offset(0, rect4.height() + 1);
                } else if (i2 != 66) {
                    i3 = 0;
                    rect2.offset(-(rect4.width() + 1), 0);
                } else {
                    if (i2 == 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    i3 = 0;
                    rect2.offset(0, -(rect4.height() + 1));
                }
                eVar5.getClass();
                i6 = lVar.f3874c;
                rect3 = new Rect();
                eVar = null;
                for (i7 = i3; i7 < i6; i7++) {
                    eVar2 = (p035z.e) lVar.b[i7];
                    if (eVar2 == eVar3) {
                        eVar4.getClass();
                        eVar2.d(rect3);
                        if (A.b.F(i2, rect4, rect3)) {
                            if (A.b.F(i2, rect4, rect2) || A.b.g(i2, rect4, rect3, rect2)) {
                                rect2.set(rect3);
                                eVar = eVar2;
                            } else if (A.b.g(i2, rect4, rect2, rect3)) {
                                int iK2 = A.b.K(i2, rect4, rect3);
                                int iL2 = A.b.L(i2, rect4, rect3);
                                i8 = (iL2 * iL2) + (iK2 * 13 * iK2);
                                iK = A.b.K(i2, rect4, rect2);
                                iL = A.b.L(i2, rect4, rect2);
                                if (i8 < (iL * iL) + (iK * 13 * iK)) {
                                    rect2.set(rect3);
                                    eVar = eVar2;
                                }
                            }
                        }
                    }
                }
            }
            i4 = -1;
            rect2 = new Rect(rect4);
            if (i2 != 17) {
                i3 = 0;
                rect2.offset(rect4.width() + 1, 0);
            } else if (i2 != 33) {
                i3 = 0;
                rect2.offset(0, rect4.height() + 1);
            } else if (i2 != 66) {
                i3 = 0;
                rect2.offset(-(rect4.width() + 1), 0);
            } else {
                if (i2 == 130) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
                i3 = 0;
                rect2.offset(0, -(rect4.height() + 1));
            }
            eVar5.getClass();
            i6 = lVar.f3874c;
            rect3 = new Rect();
            eVar = null;
            while (i7 < i6) {
                eVar2 = (p035z.e) lVar.b[i7];
                if (eVar2 == eVar3) {
                    eVar4.getClass();
                    eVar2.d(rect3);
                    if (A.b.F(i2, rect4, rect3)) {
                        if (A.b.F(i2, rect4, rect2)) {
                            rect2.set(rect3);
                            eVar = eVar2;
                        } else if (A.b.g(i2, rect4, rect2, rect3)) {
                            int iK3 = A.b.K(i2, rect4, rect3);
                            int iL3 = A.b.L(i2, rect4, rect3);
                            i8 = (iL3 * iL3) + (iK3 * 13 * iK3);
                            iK = A.b.K(i2, rect4, rect2);
                            iL = A.b.L(i2, rect4, rect2);
                            if (i8 < (iL * iL) + (iK * 13 * iK)) {
                                rect2.set(rect3);
                                eVar = eVar2;
                            }
                        }
                    }
                }
            }
        }
        p035z.e eVar6 = eVar;
        if (eVar6 != null) {
            int i16 = i3;
            while (true) {
                if (i16 >= lVar.f3874c) {
                    i5 = i4;
                    break;
                }
                if (lVar.b[i16] == eVar6) {
                    i5 = i16;
                    break;
                }
                i16++;
            }
            i11 = lVar.f3873a[i5];
        }
        return p(i11);
    }

    public final p035z.e n(int i2) {
        if (i2 != -1) {
            return k(i2);
        }
        Chip chip = this.f56i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(chip);
        p035z.e eVar = new p035z.e(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = N.f4222a;
        chip.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            eVar.f4278a.addChild(chip, ((Integer) arrayList.get(i3)).intValue());
        }
        return eVar;
    }

    public abstract void o(int i2, p035z.e eVar);

    public final boolean p(int i2) {
        int i3;
        Chip chip = this.f56i;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i3 = this.f59l) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            j(i3);
        }
        this.f59l = i2;
        g0.c cVar = (g0.c) this;
        if (i2 == 1) {
            Chip chip2 = cVar.f3159q;
            chip2.f2732m = true;
            chip2.refreshDrawableState();
        }
        q(i2, 8);
        return true;
    }

    public final void q(int i2, int i3) {
        View view;
        ViewParent parent;
        AccessibilityEvent accessibilityEventObtain;
        if (i2 == Integer.MIN_VALUE || !this.f55h.isEnabled() || (parent = (view = this.f56i).getParent()) == null) {
            return;
        }
        if (i2 != -1) {
            accessibilityEventObtain = AccessibilityEvent.obtain(i3);
            p035z.e eVarN = n(i2);
            accessibilityEventObtain.getText().add(eVarN.e());
            AccessibilityNodeInfo accessibilityNodeInfo = eVarN.f4278a;
            accessibilityEventObtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            accessibilityEventObtain.setScrollable(accessibilityNodeInfo.isScrollable());
            accessibilityEventObtain.setPassword(accessibilityNodeInfo.isPassword());
            accessibilityEventObtain.setEnabled(accessibilityNodeInfo.isEnabled());
            accessibilityEventObtain.setChecked(accessibilityNodeInfo.isChecked());
            if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            accessibilityEventObtain.setClassName(accessibilityNodeInfo.getClassName());
            h.a(accessibilityEventObtain, view, i2);
            accessibilityEventObtain.setPackageName(view.getContext().getPackageName());
        } else {
            accessibilityEventObtain = AccessibilityEvent.obtain(i3);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
        }
        parent.requestSendAccessibilityEvent(view, accessibilityEventObtain);
    }

    public final void r(int i2) {
        int i3 = this.f60m;
        if (i3 == i2) {
            return;
        }
        this.f60m = i2;
        q(i2, 128);
        q(i3, 256);
    }
}
