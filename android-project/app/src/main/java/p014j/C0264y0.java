package p014j;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: renamed from: j.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0264y0 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3727a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0264y0(Object obj, int i2) {
        this.f3727a = i2;
        this.b = obj;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i2, long j2) {
        C0252s0 c0252s0;
        switch (this.f3727a) {
            case 0:
                if (i2 != -1 && (c0252s0 = ((E0) this.b).f3425c) != null) {
                    c0252s0.setListSelectionHidden(false);
                    break;
                }
                break;
            default:
                ((SearchView) this.b).q(i2);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i2 = this.f3727a;
    }
}
