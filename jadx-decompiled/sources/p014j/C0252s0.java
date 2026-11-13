package p014j;

import B.b;
import B.h;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.ex.auto.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: j.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0252s0 extends ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f3682a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3685e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0249q0 f3686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3688i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public h f3690k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f3691l;

    public C0252s0(Context context, boolean z2) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f3682a = new Rect();
        this.b = 0;
        this.f3683c = 0;
        this.f3684d = 0;
        this.f3685e = 0;
        this.f3688i = z2;
        setCacheColorHint(0);
    }

    public final int a(int i2, int i3) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i4 = 0;
        View view = null;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i6 = layoutParams.height;
            view.measure(i2, i6 > 0 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i3) {
                return i3;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0149  */
    /* JADX WARN: Code duplicated, block: B:84:0x015f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0164  */
    /* JADX WARN: Code duplicated, block: B:88:0x0168  */
    /* JADX WARN: Code duplicated, block: B:90:0x0179  */
    /* JADX WARN: Code duplicated, block: B:92:0x017d  */
    /* JADX WARN: Code duplicated, block: B:94:0x0181  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final boolean b(MotionEvent motionEvent, int i2) {
        boolean z2;
        boolean zA;
        View childAt;
        View childAt2;
        h hVar;
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = false;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                z2 = true;
            } else if (actionMasked != 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 || z3) {
                this.f3689j = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.f - getFirstVisiblePosition());
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
            }
            if (z2) {
                if (this.f3690k == null) {
                    this.f3690k = new h(this);
                }
                h hVar2 = this.f3690k;
                boolean z4 = hVar2.f28p;
                hVar2.f28p = true;
                hVar2.onTouch(this, motionEvent);
            } else {
                hVar = this.f3690k;
                if (hVar != null) {
                    if (hVar.f28p) {
                        hVar.d();
                    }
                    hVar.f28p = false;
                }
            }
            return z2;
        }
        z2 = false;
        int iFindPointerIndex = motionEvent.findPointerIndex(i2);
        if (iFindPointerIndex < 0) {
            z2 = false;
        } else {
            int x2 = (int) motionEvent.getX(iFindPointerIndex);
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x2, y2);
            if (iPointToPosition == -1) {
                z3 = true;
            } else {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f = x2;
                float f2 = y2;
                this.f3689j = true;
                AbstractC0243n0.a(this, f, f2);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i3 = this.f;
                if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f = iPointToPosition;
                AbstractC0243n0.a(childAt3, f - childAt3.getLeft(), f2 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z5 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z5) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f3682a;
                rect.set(left, top, right, bottom);
                rect.left -= this.b;
                rect.top -= this.f3683c;
                rect.right += this.f3684d;
                rect.bottom += this.f3685e;
                if (AbstractC0201a.D()) {
                    zA = AbstractC0247p0.a(this);
                } else {
                    Field field = AbstractC0250r0.f3679a;
                    if (field != null) {
                        try {
                            zA = field.getBoolean(this);
                        } catch (IllegalAccessException e2) {
                            e2.printStackTrace();
                            zA = false;
                        }
                    } else {
                        zA = false;
                    }
                }
                if (childAt3.isEnabled() != zA) {
                    boolean z6 = !zA;
                    if (AbstractC0201a.D()) {
                        AbstractC0247p0.b(this, z6);
                    } else {
                        Field field2 = AbstractC0250r0.f3679a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z6));
                            } catch (IllegalAccessException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z5) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    s.b.e(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    s.b.e(selector2, f, f2);
                }
                C0249q0 c0249q0 = this.f3686g;
                if (c0249q0 != null) {
                    c0249q0.b = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z2 = true;
                z3 = false;
            }
        }
        if (z2) {
            this.f3689j = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        } else {
            this.f3689j = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        }
        if (z2) {
            if (this.f3690k == null) {
                this.f3690k = new h(this);
            }
            h hVar3 = this.f3690k;
            boolean z7 = hVar3.f28p;
            hVar3.f28p = true;
            hVar3.onTouch(this, motionEvent);
        } else {
            hVar = this.f3690k;
            if (hVar != null) {
                if (hVar.f28p) {
                    hVar.d();
                }
                hVar.f28p = false;
            }
        }
        return z2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f3682a;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f3691l != null) {
            return;
        }
        super.drawableStateChanged();
        C0249q0 c0249q0 = this.f3686g;
        if (c0249q0 != null) {
            c0249q0.b = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f3689j && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f3688i || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f3688i || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f3688i || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f3688i && this.f3687h) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f3691l = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i2 = Build.VERSION.SDK_INT;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f3691l == null) {
            b bVar = new b(this, 18);
            this.f3691l = bVar;
            post(bVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i2 < 30 || !AbstractC0245o0.f3651d) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        try {
                            AbstractC0245o0.f3649a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                            AbstractC0245o0.b.invoke(this, Integer.valueOf(iPointToPosition));
                            AbstractC0245o0.f3650c.invoke(this, Integer.valueOf(iPointToPosition));
                        } catch (IllegalAccessException e2) {
                            e2.printStackTrace();
                        } catch (InvocationTargetException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
                Drawable selector = getSelector();
                if (selector != null && this.f3689j && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.f3691l;
        if (bVar != null) {
            C0252s0 c0252s0 = (C0252s0) bVar.b;
            c0252s0.f3691l = null;
            c0252s0.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z2) {
        this.f3687h = z2;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0249q0 c0249q0 = null;
        if (drawable != null) {
            C0249q0 c0249q1 = new C0249q0();
            Drawable drawable2 = c0249q1.f3661a;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            c0249q1.f3661a = drawable;
            drawable.setCallback(c0249q1);
            c0249q1.b = true;
            c0249q0 = c0249q1;
        }
        this.f3686g = c0249q0;
        super.setSelector(c0249q0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.b = rect.left;
        this.f3683c = rect.top;
        this.f3684d = rect.right;
        this.f3685e = rect.bottom;
    }
}
