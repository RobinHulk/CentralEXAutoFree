package p004c0;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import com.ex.auto.R;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;
import p014j.u1;

/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2103a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(Object obj, int i2) {
        this.f2103a = i2;
        this.b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int dimensionPixelSize;
        switch (this.f2103a) {
            case 0:
                ((BottomAppBar$Behavior) this.b).getClass();
                throw null;
            default:
                SearchView searchView = (SearchView) this.b;
                View view2 = searchView.f1572x;
                if (view2.getWidth() > 1) {
                    Resources resources = searchView.getContext().getResources();
                    int paddingLeft = searchView.f1566r.getPaddingLeft();
                    Rect rect = new Rect();
                    boolean zA = u1.a(searchView);
                    if (searchView.f1550M) {
                        dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
                    } else {
                        dimensionPixelSize = 0;
                    }
                    SearchView.SearchAutoComplete searchAutoComplete = searchView.f1564p;
                    searchAutoComplete.getDropDownBackground().getPadding(rect);
                    searchAutoComplete.setDropDownHorizontalOffset(zA ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                    searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                    return;
                }
                return;
        }
    }
}
