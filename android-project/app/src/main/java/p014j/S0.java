package p014j;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.SearchView;
import p029r0.e;
import p029r0.k;

/* JADX INFO: loaded from: classes.dex */
public final class S0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3487a;
    public final /* synthetic */ Object b;

    public /* synthetic */ S0(Object obj, int i2) {
        this.f3487a = i2;
        this.b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z2) {
        switch (this.f3487a) {
            case 0:
                SearchView searchView = (SearchView) this.b;
                View.OnFocusChangeListener onFocusChangeListener = searchView.f1548K;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z2);
                }
                break;
            case 1:
                ((e) this.b).d(!TextUtils.isEmpty(((EditText) view).getText()) && z2);
                break;
            default:
                k kVar = (k) this.b;
                kVar.f4085a.setEndIconActivated(z2);
                if (!z2) {
                    kVar.g(false);
                    kVar.f4077i = false;
                }
                break;
        }
    }
}
