package androidx.appcompat.view.menu;

import M.C0003d;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.WeakHashMap;
import p005d.a;
import p012i.l;
import p012i.n;
import p012i.z;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements z, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n f1451a;
    public ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RadioButton f1452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f1453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CheckBox f1454e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ImageView f1455g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImageView f1456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f1457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Drawable f1458j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1459k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Context f1460l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1461m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Drawable f1462n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f1463o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LayoutInflater f1464p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1465q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0003d c0003dV = C0003d.v(getContext(), attributeSet, a.f2921r, R.attr.listMenuViewStyle);
        this.f1458j = c0003dV.k(5);
        TypedArray typedArray = (TypedArray) c0003dV.f215c;
        this.f1459k = typedArray.getResourceId(1, -1);
        this.f1461m = typedArray.getBoolean(7, false);
        this.f1460l = context;
        this.f1462n = c0003dV.k(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f1463o = typedArrayObtainStyledAttributes.hasValue(0);
        c0003dV.w();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f1464p == null) {
            this.f1464p = LayoutInflater.from(getContext());
        }
        return this.f1464p;
    }

    private void setSubMenuArrowVisible(boolean z2) {
        ImageView imageView = this.f1455g;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f1456h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1456h.getLayoutParams();
        rect.top = this.f1456h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    /* JADX WARN: Code duplicated, block: B:28:0x005e  */
    @Override // p012i.z
    public final void e(n nVar) {
        boolean z2;
        int i2;
        String string;
        boolean z3;
        this.f1451a = nVar;
        setVisibility(nVar.isVisible() ? 0 : 8);
        setTitle(nVar.f3371e);
        setCheckable(nVar.isCheckable());
        if (nVar.f3379n.o()) {
            if ((nVar.f3379n.n() ? nVar.f3375j : nVar.f3373h) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        nVar.f3379n.n();
        if (z2) {
            n nVar2 = this.f1451a;
            if (nVar2.f3379n.o()) {
                if ((nVar2.f3379n.n() ? nVar2.f3375j : nVar2.f3373h) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            i2 = z3 ? 0 : 8;
        }
        if (i2 == 0) {
            TextView textView = this.f;
            n nVar3 = this.f1451a;
            char c2 = nVar3.f3379n.n() ? nVar3.f3375j : nVar3.f3373h;
            if (c2 == 0) {
                string = "";
            } else {
                l lVar = nVar3.f3379n;
                Resources resources = lVar.f3341a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(lVar.f3341a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i3 = lVar.n() ? nVar3.f3376k : nVar3.f3374i;
                n.c(sb, i3, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                n.c(sb, i3, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                n.c(sb, i3, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                n.c(sb, i3, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                n.c(sb, i3, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                n.c(sb, i3, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                if (c2 == '\b') {
                    sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (c2 == '\n') {
                    sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (c2 != ' ') {
                    sb.append(c2);
                } else {
                    sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.f.getVisibility() != i2) {
            this.f.setVisibility(i2);
        }
        setIcon(nVar.getIcon());
        setEnabled(nVar.isEnabled());
        setSubMenuArrowVisible(nVar.hasSubMenu());
        setContentDescription(nVar.f3382q);
    }

    @Override // p012i.z
    public n getItemData() {
        return this.f1451a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.q(this, this.f1458j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f1453d = textView;
        int i2 = this.f1459k;
        if (i2 != -1) {
            textView.setTextAppearance(this.f1460l, i2);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f1455g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f1462n);
        }
        this.f1456h = (ImageView) findViewById(R.id.group_divider);
        this.f1457i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        if (this.b != null && this.f1461m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        View view;
        if (!z2 && this.f1452c == null && this.f1454e == null) {
            return;
        }
        if ((this.f1451a.f3389x & 4) != 0) {
            if (this.f1452c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f1452c = radioButton;
                LinearLayout linearLayout = this.f1457i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f1452c;
            view = this.f1454e;
        } else {
            if (this.f1454e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f1454e = checkBox;
                LinearLayout linearLayout2 = this.f1457i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f1454e;
            view = this.f1452c;
        }
        if (z2) {
            compoundButton.setChecked(this.f1451a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f1454e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f1452c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z2) {
        CompoundButton compoundButton;
        if ((this.f1451a.f3389x & 4) != 0) {
            if (this.f1452c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f1452c = radioButton;
                LinearLayout linearLayout = this.f1457i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f1452c;
        } else {
            if (this.f1454e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f1454e = checkBox;
                LinearLayout linearLayout2 = this.f1457i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f1454e;
        }
        compoundButton.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.f1465q = z2;
        this.f1461m = z2;
    }

    public void setGroupDividerEnabled(boolean z2) {
        ImageView imageView = this.f1456h;
        if (imageView != null) {
            imageView.setVisibility((this.f1463o || !z2) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f1451a.f3379n.getClass();
        boolean z2 = this.f1465q;
        if (z2 || this.f1461m) {
            ImageView imageView = this.b;
            if (imageView == null && drawable == null && !this.f1461m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.b = imageView2;
                LinearLayout linearLayout = this.f1457i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f1461m) {
                this.b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.b;
            if (!z2) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.b.getVisibility() != 0) {
                this.b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f1453d.getVisibility() != 8) {
                this.f1453d.setVisibility(8);
            }
        } else {
            this.f1453d.setText(charSequence);
            if (this.f1453d.getVisibility() != 0) {
                this.f1453d.setVisibility(0);
            }
        }
    }
}
